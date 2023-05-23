/*
 * elec_Wed.c
 *
 *  Created on: 2023年5月17日
 *      Author: 畅想未来
 */

#include "xil_io.h"
#include "stdio.h"
#include "xgpio_l.h"
#include "xintc_l.h"
#include "xtmrctr_l.h"
#define RESET_VALUE 100000

void display_seg();
void initial_seg();
void btn_handler();
void My_ISR() __attribute__((interrupt_handler));

int i = 0;
unsigned short currentBtn, lastBtn, realBtn;
unsigned short input;
unsigned short num;
unsigned short judge;
unsigned short change;
unsigned short pos = 0xfffe;
unsigned short minusSymbol = 0xbf;
//segCode为0-f的七段数码管译码显示码，以8421BCD码为下标，如segCode[3]=0xb0
unsigned short segCode[] = {0xc0,0xf9,0xa4,0xb0,0x99,0x92,0x82,0xf8,0x80,0x90/*,0x88,0x83,0xa7,0xa1,0x86,0x8e*/};


int main() {
	print("main func on run");
    // 和程序控制一样，设置LED为输出，switch为输入
    Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_TRI2_OFFSET, 0x0);
    Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_TRI_OFFSET, 0xffff);
    Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_IER_OFFSET, XGPIO_IR_CH1_MASK);
    Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_GIE_OFFSET, XGPIO_GIE_GINTR_ENABLE_MASK);
    Xil_Out32(XPAR_AXI_INTC_0_BASEADDR + XIN_IER_OFFSET, XPAR_AXI_GPIO_0_IP2INTC_IRPT_MASK);  // interrupt channel
    Xil_Out32(XPAR_AXI_INTC_0_BASEADDR + XIN_MER_OFFSET, XIN_INT_MASTER_ENABLE_MASK | XIN_INT_HARDWARE_ENABLE_MASK);

    Xil_Out32(XPAR_AXI_GPIO_1_BASEADDR + XGPIO_TRI_OFFSET, 0x0);  // set seg show signal as output
    Xil_Out32(XPAR_AXI_GPIO_1_BASEADDR + XGPIO_TRI2_OFFSET, 0x0);  // set seg pos signal as output
    Xil_Out32(XPAR_AXI_GPIO_2_BASEADDR + XGPIO_TRI_OFFSET, 0x1f);  // btn input
// 同上的GPIO_0部分
    Xil_Out32(XPAR_AXI_GPIO_2_BASEADDR + XGPIO_IER_OFFSET, XGPIO_IR_CH1_MASK);  // allow channel 1 interrupt
    Xil_Out32(XPAR_AXI_GPIO_2_BASEADDR + XGPIO_GIE_OFFSET, XGPIO_GIE_GINTR_ENABLE_MASK);  // allow GPIO interrupt output
// TCSR：Timer Control/Status Register
    // xil_printf("before:0x%x\n",Xil_In32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET));
    Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET,
              Xil_In32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET) & ~XTC_CSR_ENABLE_TMR_MASK);  // write TCSR, stop counter
    // xil_printf("after:0x%x\n",Xil_In32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET));

// 写TLR，预置初始值为RESET_VALUE（100000）
// TLR:Timer Load Register，用于设置定时器的计数器初始值。
    Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TLR_OFFSET, RESET_VALUE);  // write TLR, preset counter value

// XTC_CSR_LOAD_MASK：用于启用定时器的加载操作的掩码值
// 启动定时器的加载操作
    Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET,
              Xil_In32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET) | XTC_CSR_LOAD_MASK);  // get counter initial value

// 定时器配置为启用向下计数模式，自动重装载计数器值，同时允许定时器中断
    Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET,
              (Xil_In32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET) & ~XTC_CSR_LOAD_MASK)
			  | XTC_CSR_ENABLE_TMR_MASK | XTC_CSR_AUTO_RELOAD_MASK | XTC_CSR_ENABLE_INT_MASK | XTC_CSR_DOWN_COUNT_MASK);

    Xil_Out32(XPAR_AXI_INTC_0_BASEADDR + XIN_IER_OFFSET, XPAR_AXI_GPIO_2_IP2INTC_IRPT_MASK | XPAR_AXI_TIMER_0_INTERRUPT_MASK);  //Enable the interrupt controller

    Xil_Out32(XPAR_AXI_INTC_0_BASEADDR + XIN_MER_OFFSET, XIN_INT_MASTER_ENABLE_MASK | XIN_INT_HARDWARE_ENABLE_MASK);
    microblaze_enable_interrupts();  // allow microbalze enable interrupt
    return 0;
}

void My_ISR() {
    int status;
    status = Xil_In32(XPAR_AXI_INTC_0_BASEADDR + XIN_ISR_OFFSET);
    if ((status & XPAR_AXI_GPIO_2_IP2INTC_IRPT_MASK) == XPAR_AXI_GPIO_2_IP2INTC_IRPT_MASK) {
    	print("btn onclick!\n");
        btn_handler();
    }
    Xil_Out32(XPAR_AXI_INTC_0_BASEADDR + XIN_IAR_OFFSET, status);
    if ((status & XPAR_AXI_TIMER_0_INTERRUPT_MASK) == XPAR_AXI_TIMER_0_INTERRUPT_MASK) {
    	display_seg();
    	
    }
    Xil_Out32(XPAR_AXI_INTC_0_BASEADDR + XIN_IAR_OFFSET, status);
}

void btn_handler() {
    // 以下代码为防抖动
    currentBtn = Xil_In8(XPAR_AXI_GPIO_2_BASEADDR + XGPIO_DATA_OFFSET) & 0x1f;
        if (currentBtn) {  // btn onClick
            while (currentBtn) {  // btn not spring up
                currentBtn = (Xil_In8(XPAR_AXI_GPIO_2_BASEADDR + XGPIO_DATA_OFFSET) & 0x1f);
                realBtn = (currentBtn ^ lastBtn) & lastBtn;  // get unpressed btn
                lastBtn = currentBtn;
                if (realBtn) {
                    break;
                }
            }
        }
    switch (realBtn) {
    case 0x01:
        pos = 0xfffe;
        i = 0;
		input = Xil_In16(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_DATA_OFFSET);
        num = input & 0x0007;
        judge = input & 0x0008;
        judge = judge >> 3;
        change = input & 0xc000;
        change = change >> 14;
        xil_printf("switch low 3 bits: %x\n",num);
        xil_printf("symbol : %x\n",judge);
        xil_printf("change :%x\n",change);
        display_seg();
        break;
    default:
        break;
    }
    Xil_Out32(XPAR_AXI_GPIO_2_BASEADDR + XGPIO_ISR_OFFSET, Xil_In32(XPAR_AXI_GPIO_2_BASEADDR + XGPIO_ISR_OFFSET));
}

void display_seg() {
    unsigned short displayNum;
    switch(change) {
        case 0:
            displayNum = num;
            break;
        case 1:
            displayNum = ~num;
            displayNum &= 0x07;
            break;
        case 2:
            if (judge == 1) displayNum = 0x08 - num;
            else displayNum = num;
            break;
        default:
            displayNum = num;
            break;
    }
    Xil_Out8(XPAR_AXI_GPIO_1_BASEADDR + XGPIO_DATA2_OFFSET,(pos == 0xfffe)? segCode[displayNum] : (judge == 0x0001) ?  minusSymbol : 0xff);
    Xil_Out8(XPAR_AXI_GPIO_1_BASEADDR + XGPIO_DATA_OFFSET ,pos);
    i++;
    pos = pos << 1;
    pos++;
    if (i == 2) {
        i = 0;
        pos = 0xfffe;
    }
    Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET, Xil_In32(XPAR_AXI_TIMER_0_BASEADDR+XTC_TCSR_OFFSET));
}
