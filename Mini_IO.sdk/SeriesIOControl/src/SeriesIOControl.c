/*
 * SeriesIOControl.c
 *
 *  Created on: 2023.4.26
 *      Author: Luo Chang
 */

#include "xil_io.h"
#include "stdio.h"
#include "xgpio_l.h"
#include "xintc_l.h"
#include "xtmrctr_l.h"
#include <xuartlite_l.h>

#define RESET_VALUE 100000

void UART_SEND();
void UART_RECV();
void Seg_TimerCounterHandler();
void BtnHandler();
void SwitchHandler();
void My_ISR() __attribute__((interrupt_handler));
int i = 0;

unsigned short current_btn, last_btn, real_btn;
char segcode[6] = {0xc6, 0xc1, 0xc7, 0x88, 0xa1, 0xff};
short code[8] = {5, 5, 5, 5, 5, 5, 5, 5};
int k = 0;
short pos = 0xff7f;

int main() {

    Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_TRI2_OFFSET, 0x0);  // 设置LED为输出
    Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_TRI_OFFSET, 0xffff);  // 设置Switch为输入

    Xil_Out32(XPAR_AXI_GPIO_1_BASEADDR + XGPIO_TRI_OFFSET, 0x0);
    Xil_Out32(XPAR_AXI_GPIO_1_BASEADDR + XGPIO_TRI2_OFFSET, 0x0);
    Xil_Out32(XPAR_AXI_GPIO_2_BASEADDR + XGPIO_TRI_OFFSET, 0x1f);

    Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET,
              Xil_In32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET) & ~XTC_CSR_ENABLE_TMR_MASK);  // 写TSCR，停止计数器
    Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TLR_OFFSET, RESET_VALUE);  // 写TLR，预制计数值
    Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET,
              Xil_In32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET) | XTC_CSR_LOAD_MASK);  // 启动定时器的加载操作
    Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET,
              (Xil_In32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET) & ~XTC_CSR_LOAD_MASK) | XTC_CSR_ENABLE_TMR_MASK | XTC_CSR_AUTO_RELOAD_MASK | XTC_CSR_ENABLE_INT_MASK | XTC_CSR_DOWN_COUNT_MASK);
    // 开始计数时运行，自动获取，允许中断，减计数

    // 使能中断，清除RX，TX
    Xil_Out32(XPAR_AXI_UARTLITE_1_BASEADDR + XUL_CONTROL_REG_OFFSET, XUL_CR_ENABLE_INTR | XUL_CR_FIFO_RX_RESET | XUL_CR_FIFO_TX_RESET);  
    Xil_Out32(XPAR_AXI_UARTLITE_2_BASEADDR + XUL_CONTROL_REG_OFFSET, XUL_CR_ENABLE_INTR | XUL_CR_FIFO_RX_RESET | XUL_CR_FIFO_TX_RESET); 
    // 对中断器进行中断使能
    Xil_Out32(XPAR_AXI_INTC_0_BASEADDR + XIN_IER_OFFSET, XPAR_AXI_TIMER_0_INTERRUPT_MASK | XPAR_AXI_UARTLITE_1_INTERRUPT_MASK | XPAR_AXI_UARTLITE_2_INTERRUPT_MASK); 

    Xil_Out32(XPAR_AXI_INTC_0_BASEADDR + XIN_MER_OFFSET, XIN_INT_MASTER_ENABLE_MASK | XIN_INT_HARDWARE_ENABLE_MASK);
    microblaze_enable_interrupts();  //允许处理器中断

    UART_SEND();
    return 0;
}

void My_ISR() {
    int status;
    status = Xil_In32(XPAR_AXI_INTC_0_BASEADDR + XIN_ISR_OFFSET);
    if ((status & XPAR_AXI_TIMER_0_INTERRUPT_MASK) == XPAR_AXI_TIMER_0_INTERRUPT_MASK) {
            Seg_TimerCounterHandler();
    }
    if ((status & XPAR_AXI_UARTLITE_2_INTERRUPT_MASK) == XPAR_AXI_UARTLITE_2_INTERRUPT_MASK) {
        UART_SEND();
    } else if ((status & XPAR_AXI_UARTLITE_1_INTERRUPT_MASK) == XPAR_AXI_UARTLITE_1_INTERRUPT_MASK) {
        UART_RECV();
    }
    Xil_Out32(XPAR_AXI_INTC_0_BASEADDR + XIN_IAR_OFFSET, status);
}

void UART_SEND() {
    Xil_Out32(XPAR_AXI_UARTLITE_2_BASEADDR + XUL_TX_FIFO_OFFSET, (Xil_In32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_DATA_OFFSET) & 0x3f) << 2);  // 发送开关低5-0位
    Xil_Out32(XPAR_AXI_UARTLITE_2_BASEADDR + XUL_TX_FIFO_OFFSET, ((Xil_In32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_DATA_OFFSET) >> 4) & 0x7c) | 0x1);  // 发送开关低10-6位
    Xil_Out32(XPAR_AXI_UARTLITE_2_BASEADDR + XUL_TX_FIFO_OFFSET, ((Xil_In32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_DATA_OFFSET) >> 9) & 0x7c) | 0x2);  // 发送开关低15-11位
    Xil_Out32(XPAR_AXI_UARTLITE_2_BASEADDR + XUL_TX_FIFO_OFFSET, (Xil_In32(XPAR_AXI_GPIO_2_BASEADDR + XGPIO_DATA_OFFSET) << 2) | 0x3);  // 发送按键
}

void UART_RECV() {
    static u32 sw = 0;
    static u32 btn = 0;
    if ((Xil_In32(XPAR_AXI_UARTLITE_1_BASEADDR + XUL_STATUS_REG_OFFSET) & XUL_SR_RX_FIFO_VALID_DATA) == XUL_SR_RX_FIFO_VALID_DATA) {
        u32 tmp = Xil_In32(XPAR_AXI_UARTLITE_1_BASEADDR + XUL_RX_FIFO_OFFSET);
        switch(tmp & 0x3) {//发送过来的数据低两位和0x3做和运算，作为判断位
        case 0: {  // 判断为开关5-0位
            sw &= 0xffc0;
            sw |= tmp >> 2;
            Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_DATA2_OFFSET, sw);
            break;
        }
        case 0x1: {  // 判断为开关10-6位
            sw &= 0xf83f;
            sw |= (tmp & 0x7c) << 4;
            Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_DATA2_OFFSET, sw);
            break;
        }
        case 0x2 : {  // 判断为开关15-11位
            sw &= 0x7ff;
            sw |= (tmp & 0x7c) << 9;
            Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_DATA2_OFFSET, sw);
            break;
        }
        case 0x3: {  // 判断为按键
            if (btn == (tmp & 0x7c) >> 2) {
                    return;
                }
            btn = (tmp & 0x7c) >> 2;
            switch(btn) {
            case 0: {
                break;
            }
            case 0x01: {
                code[k] = 0;
                k = (k + 1) % 8;
                break;
            }
            case 0x02: {
                code[k] = 1;
                k = (k + 1) % 8;
                break;
            }
            case 0x04: {
                code[k] = 2;
                k = (k + 1) % 8;
                break;
            }
            case 0x08: {
                code[k] = 3;
                k = (k + 1) % 8;
                break;
            }
            case 0x10: {
                code[k] = 4;
                k = (k + 1) % 8;
                break;
            }
            }
        }
        }
    }
    // 接收&处理完数据后，打开 UART1 接收中断、重置接收 FIFO 和发送 FIFO端口，这样可以保证在下一次接收数据时不会存在任何未知的数据
    Xil_Out32(XPAR_AXI_UARTLITE_1_BASEADDR + XUL_CONTROL_REG_OFFSET, XUL_CR_ENABLE_INTR | XUL_CR_FIFO_RX_RESET | XUL_CR_FIFO_TX_RESET);
}

void Seg_TimerCounterHandler() {
    Xil_Out32(XPAR_AXI_GPIO_1_BASEADDR + XGPIO_DATA2_OFFSET, segcode[code[(i + k) % 8]]);
    Xil_Out32(XPAR_AXI_GPIO_1_BASEADDR + XGPIO_DATA_OFFSET, pos);
    pos = pos >> 1;
    i++;
    if (i == 8) {
        i = 0;
        pos = 0xff7f;
    }
    // 重置 AXI Timer IP 核的计数器寄存器的值，从而在下一个计时周期开始之前将计时器的值重置为 0
    Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET, Xil_In32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET));
}
