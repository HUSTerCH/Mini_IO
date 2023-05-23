/*
 * SeriesControl1.c
 *
 *  Created on: 2023年5月23日
 *      Author: 畅想未来
 */
#include "xil_io.h"
#include "stdio.h"
#include "xgpio_l.h"
#include "xintc_l.h"
#include "xtmrctr_l.h"
#include "xspi_l.h"
void SwitchHandler();
void TimerHandler();
void My_ISR() __attribute__((interrupt_handler));
unsigned int RESET_VALUE0;//计数器最大值
u16 volt;
int main() {

	RESET_VALUE0 = 65530;
	// 设定GPIO0为输入（switch）
	Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_TRI_OFFSET,0Xffff);
	Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_IER_OFFSET,XGPIO_IR_CH1_MASK);
	Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_GIE_OFFSET,XGPIO_GIE_GINTR_ENABLE_MASK);

	//计数器使能
	Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET,Xil_In32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET) & ~XTC_CSR_ENABLE_TMR_MASK);
	//装载初值
	Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TLR_OFFSET,RESET_VALUE0);
	Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET,Xil_In32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET)|XTC_CSR_LOAD_MASK);
	//设置自动装载，计数器中断，减计数
	Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET,(Xil_In32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET) & ~XTC_CSR_LOAD_MASK)
	|XTC_CSR_ENABLE_TMR_MASK|XTC_CSR_AUTO_RELOAD_MASK|XTC_CSR_ENABLE_INT_MASK|XTC_CSR_DOWN_COUNT_MASK);

	//设定SPI为主设备。CPOL=1. CPHA=0. 自动方式。高位优无传送
	Xil_Out32(XPAR_AXI_QUAD_SPI_0_BASEADDR + XSP_CR_OFFSET, XSP_CR_ENABLE_MASK | XSP_CR_MASTER_MODE_MASK | XSP_CR_CLK_POLARITY_MASK);
	//设定SSR寄存器
	Xil_Out32(XPAR_AXI_QUAD_SPI_0_BASEADDR + XSP_SSR_OFFSET, 0xfffffffe);
	//开放SPI发送寄存器空中断
	Xil_Out32(XPAR_AXI_QUAD_SPI_0_BASEADDR + XSP_IIER_OFFSET,XSP_INTR_TX_EMPTY_MASK);
	Xil_Out32(XPAR_AXI_QUAD_SPI_0_BASEADDR + XSP_DGIER_OFFSET,XSP_GINTR_ENABLE_MASK);

	//中断控制器计数器，gpio0中断端口使能
	Xil_Out32(XPAR_AXI_INTC_0_BASEADDR + XIN_IER_OFFSET,XPAR_AXI_GPIO_0_IP2INTC_IRPT_MASK|XPAR_AXI_TIMER_0_INTERRUPT_MASK);
	Xil_Out32(XPAR_AXI_INTC_0_BASEADDR + XIN_MER_OFFSET,XIN_INT_MASTER_ENABLE_MASK|XIN_INT_HARDWARE_ENABLE_MASK);
	//处理器中断使能
	microblaze_enable_interrupts();
	return 0;
}
//XPAR_AXI_INTC_0_BASEADDR
//总中断服务程序
void My_ISR() {
	int status;
	status=Xil_In32(XPAR_AXI_INTC_0_BASEADDR  +  XIN_ISR_OFFSET);

	//独立开关产生中断
	if((status & XPAR_AXI_GPIO_0_IP2INTC_IRPT_MASK) == XPAR_AXI_GPIO_0_IP2INTC_IRPT_MASK)
		SwitchHandler();
    //计数器产生中断
	else if((status & XPAR_AXI_TIMER_0_INTERRUPT_MASK) == XPAR_AXI_TIMER_0_INTERRUPT_MASK)
		TimerHandler();
    //写IAR清除中断
	Xil_Out32(XPAR_AXI_INTC_0_BASEADDR + XIN_IAR_OFFSET,status);
}

//产生锯齿波
void TimerHandler() {
	Xil_Out16(XPAR_AXI_QUAD_SPI_0_BASEADDR + XSP_DTR_OFFSET,(volt & 0xfff0) >> 4);
	//写TCSR清除中断
	Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET,Xil_In32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET));
	volt++;
	if(volt == 65530)
	volt = 0;
}

void SwitchHandler() {
	//开关改变计数器装载值以改变锯齿波频率
	RESET_VALUE0=Xil_In32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_DATA_OFFSET);
	//清除中断
	Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_ISR_OFFSET,Xil_In32(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_ISR_OFFSET));
	//对计数器更新装载初值等操作
	xil_printf("%d\n",RESET_VALUE0);
	Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET,Xil_In32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET) & ~XTC_CSR_ENABLE_TMR_MASK);
	Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TLR_OFFSET,RESET_VALUE0);
	Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET,Xil_In32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET) | XTC_CSR_LOAD_MASK);
	Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET,(Xil_In32(XPAR_AXI_TIMER_0_BASEADDR + XTC_TCSR_OFFSET) & ~XTC_CSR_LOAD_MASK)
	| XTC_CSR_ENABLE_TMR_MASK | XTC_CSR_AUTO_RELOAD_MASK | XTC_CSR_ENABLE_INT_MASK | XTC_CSR_DOWN_COUNT_MASK);
}
