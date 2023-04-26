/*
 * InterruptControl.c
 *
 *  Created on: Apr 11, 2023
 *      Author: Luo Chang
 */
#include "xil_io.h"
#include "stdio.h"
#include "xgpio_l.h"
#include "xintc_l.h"
#include "xtmrctr_l.h"
#define RESET_VALUE 100000

void segTimerCounterHandler();
void btnHandler();
void switchHandler();
void My_ISR() __attribute__((interrupt_handler));
int i = 0;

unsigned short currentBtn, lastBtn, realBtn;
char segcode[6] = {0xc6, 0xc1, 0xc7, 0x88, 0xc0, 0xff};
short tmp[8] = {5, 5, 5, 5, 5, 5, 5, 5};
int k = 0;
short pos = 0xff7f;

int main() {
    Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_TRI2_OFFSET, 0x0);  // set LED as output
    Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_TRI_OFFSET, 0xffff);  // Switch as output

    Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_IER_OFFSET, XGPIO_IR_CH1_MASK);
    Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_GIE_OFFSET, XGPIO_GIE_GINTR_ENABLE_MASK);

    Xil_Out32(XPAR_AXI_INTC_0_BASEADDR + XIN_IER_OFFSET, XPAR_AXI_GPIO_0_IP2INTC_IRPT_MASK);  // interrupt channel
    Xil_Out32(XPAR_AXI_INTC_0_BASEADDR + XIN_MER_OFFSET, XIN_INT_MASTER_ENABLE_MASK | XIN_INT_HARDWARE_ENABLE_MASK);

    Xil_Out32(XPAR_AXI_GPIO_1_BASEADDR + XGPIO_TRI_OFFSET, 0x0);  // set seg show signal as output
    Xil_Out32(XPAR_AXI_GPIO_1_BASEADDR + XGPIO_TRI2_OFFSET, 0x0);  // set seg pos signal as output
    Xil_Out32(XPAR_AXI_GPIO_2_BASEADDR + XGPIO_TRI_OFFSET, 0x1f);  // btn input

    Xil_Out32(XPAR_AXI_GPIO_2_BASEADDR + XGPIO_IER_OFFSET, XGPIO_IR_CH1_MASK);  // allow channel 1 interrupt
    Xil_Out32(XPAR_AXI_GPIO_2_BASEADDR + XGPIO_GIE_OFFSET, XGPIO_GIE_GINTR_ENABLE_MASK);  // allow GPIO interrupt output

    Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET,
              Xil_In32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET) & ~XTC_CSR_ENABLE_TMR_MASK);  // write TCSR, stop counter

    Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TLR_OFFSET, RESET_VALUE);  // write TLR, preset counter value

    Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET,
              Xil_In32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET) | XTC_CSR_LOAD_MASK);  // get counter initial value

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
    if((status & XPAR_AXI_GPIO_0_IP2INTC_IRPT_MASK) == XPAR_AXI_GPIO_0_IP2INTC_IRPT_MASK) {
            switchHandler();
        }
    Xil_Out32(XPAR_AXI_INTC_0_BASEADDR + XIN_IAR_OFFSET, status);
    if ((status & XPAR_AXI_TIMER_0_INTERRUPT_MASK) == XPAR_AXI_TIMER_0_INTERRUPT_MASK) {
    	segTimerCounterHandler();
    }
    if ((status & XPAR_AXI_GPIO_2_IP2INTC_IRPT_MASK) == XPAR_AXI_GPIO_2_IP2INTC_IRPT_MASK) {
        btnHandler();
    }
    Xil_Out32(XPAR_AXI_INTC_0_BASEADDR + XIN_IAR_OFFSET, status);
}

void segTimerCounterHandler() {
    Xil_Out8(XPAR_AXI_GPIO_1_BASEADDR + XGPIO_DATA2_OFFSET, segcode[tmp[(i + k) % 8]]);
    Xil_Out8(XPAR_AXI_GPIO_1_BASEADDR + XGPIO_DATA_OFFSET, pos);
    pos = pos >> 1;
    i++;
    if (i == 8) {
        i = 0;
        pos = 0xff7f;
    }
    Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET, Xil_In32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET));  // clear interrupt
}

void btnHandler() {
    int btncode;
    btncode = Xil_In32(XPAR_AXI_GPIO_2_BASEADDR + XGPIO_DATA_OFFSET);
    switch (btncode) {
    case 0x01: 
        tmp[k] = 0;
        k = (k + 1) % 8;
        break;
    case 0x02: 
        tmp[k] = 1;
        k = (k + 1) % 8;
        break;
    case 0x04: 
        tmp[k] = 2;
        k = (k + 1) % 8;
        break;
    case 0x08: 
        tmp[k] = 3;
        k = (k + 1) % 8;
        break;
    case 0x10: 
        tmp[k] = 4;
        k = (k + 1) % 8;
        break;
    
    }
    Xil_Out32(XPAR_AXI_GPIO_2_BASEADDR + XGPIO_ISR_OFFSET, Xil_In32(XPAR_AXI_GPIO_2_BASEADDR + XGPIO_ISR_OFFSET));
}

void switchHandler() {
    Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_DATA2_OFFSET, Xil_In32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_DATA_OFFSET));
    Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_ISR_OFFSET, Xil_In32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_ISR_OFFSET));
}

