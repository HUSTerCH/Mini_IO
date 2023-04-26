/*
 * SeriesIOControl.c
 *
 *  Created on: 2023年4月26日
 *      Author: 畅想未来
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
char segcode[6] = {0xc1, 0xc7, 0xc0, 0x88, 0xc6, 0xff};
short code[8] = {5, 5, 5, 5, 5, 5, 5, 5};
int k = 0;
short pos = 0xff7f;

int main() {

    Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_TRI2_OFFSET, 0x0);  // LED为输出
    Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_TRI_OFFSET, 0xffff);  // Switch为输入

    Xil_Out32(XPAR_AXI_GPIO_1_BASEADDR + XGPIO_TRI_OFFSET, 0x0);  // 设定seg段码为输出方式
    Xil_Out32(XPAR_AXI_GPIO_1_BASEADDR + XGPIO_TRI2_OFFSET, 0x0);  // 设定seg位码为输出方式
    Xil_Out32(XPAR_AXI_GPIO_2_BASEADDR + XGPIO_TRI_OFFSET, 0x1f);  // 设定 BUTTON输入方式

    Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET,
              Xil_In32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET) & ~XTC_CSR_ENABLE_TMR_MASK);  // 写TCSR，停止计数器
    Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TLR_OFFSET, RESET_VALUE);  // 写TLR，预置计数初值
    Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET,
              Xil_In32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET) | XTC_CSR_LOAD_MASK);  // 获载计数初值
    Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET,
              (Xil_In32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET) & ~XTC_CSR_LOAD_MASK) | XTC_CSR_ENABLE_TMR_MASK | XTC_CSR_AUTO_RELOAD_MASK | XTC_CSR_ENABLE_INT_MASK | XTC_CSR_DOWN_COUNT_MASK);
    // 开始计数时运行，自动获取，允许中断，减计数

    Xil_Out32(XPAR_AXI_UARTLITE_1_BASEADDR + XUL_CONTROL_REG_OFFSET, XUL_CR_ENABLE_INTR | XUL_CR_FIFO_RX_RESET | XUL_CR_FIFO_TX_RESET);  // 使能中断，清除RX、TX
    Xil_Out32(XPAR_AXI_UARTLITE_2_BASEADDR + XUL_CONTROL_REG_OFFSET, XUL_CR_ENABLE_INTR | XUL_CR_FIFO_RX_RESET | XUL_CR_FIFO_TX_RESET);  // 使能中断，清除RX、TX
    Xil_Out32(XPAR_AXI_INTC_0_BASEADDR + XIN_IER_OFFSET, XPAR_AXI_TIMER_0_INTERRUPT_MASK | XPAR_AXI_UARTLITE_1_INTERRUPT_MASK | XPAR_AXI_UARTLITE_2_INTERRUPT_MASK);  // 对中断控制器进行中断使能
    Xil_Out32(XPAR_AXI_INTC_0_BASEADDR + XIN_MER_OFFSET, XIN_INT_MASTER_ENABLE_MASK | XIN_INT_HARDWARE_ENABLE_MASK);
    microblaze_enable_interrupts();  // 允许处理器处理中断

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
    Xil_Out32(XPAR_AXI_UARTLITE_2_BASEADDR + XUL_TX_FIFO_OFFSET, (Xil_In32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_DATA_OFFSET) & 0x3f) << 2);  // 发送开关低5~0位
    Xil_Out32(XPAR_AXI_UARTLITE_2_BASEADDR + XUL_TX_FIFO_OFFSET, ((Xil_In32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_DATA_OFFSET) >> 4) & 0x7c) | 0x1);  // 发送开关低10~6位
    Xil_Out32(XPAR_AXI_UARTLITE_2_BASEADDR + XUL_TX_FIFO_OFFSET, ((Xil_In32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_DATA_OFFSET) >> 9) & 0x7c) | 0x2);  // 发送开关低15~11位
    Xil_Out32(XPAR_AXI_UARTLITE_2_BASEADDR + XUL_TX_FIFO_OFFSET, (Xil_In32(XPAR_AXI_GPIO_2_BASEADDR + XGPIO_DATA_OFFSET) << 2) | 0x3);  // 发送按键
}

void UART_RECV() {
    static u32 sw = 0;
    static u32 btn = 0;
    if ((Xil_In32(XPAR_AXI_UARTLITE_1_BASEADDR + XUL_STATUS_REG_OFFSET) & XUL_SR_RX_FIFO_VALID_DATA) == XUL_SR_RX_FIFO_VALID_DATA) {
        u32 tmp = Xil_In32(XPAR_AXI_UARTLITE_1_BASEADDR + XUL_RX_FIFO_OFFSET);
        switch(tmp & 0x3) {
        case 0: {  // 判断为开关低5~0位
            sw &= 0xffc0;
            sw |= tmp >> 2;
            Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_DATA2_OFFSET, sw);
            break;
        }
        case 0x1: {  // 判断为开关低10~6位
            sw &= 0xf83f;
            sw |= (tmp & 0x7c) << 4;
            Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_DATA2_OFFSET, sw);
            break;
        }
        case 0x2 : {  // 判断为开关低15~11位
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
    Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET, Xil_In32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET));
}
