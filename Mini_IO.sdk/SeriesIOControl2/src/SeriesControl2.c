/*
 * SeriesControl2.c
 *
 *  Created on: 2023年5月23日
 *      Author: 畅想未来
 */

#include "xparameters.h"
#include <stdio.h>
#include "xil_io.h"
#include "xil_printf.h"
#include "mb_interface.h"
#include "xintc_l.h"
#include "xtmrctr_l.h"
#include "xspi_l.h"

#define intc_ISR 0x41200000
#define intc_IER 0x41200008
#define intc_IAR 0x4120000C
#define intc_MER 0x4120001C

uint32_t tcsr0 = 0;
uint32_t T_Read = 10000;
uint16_t AD_Value;
uint16_t Sw;

void My_ISR(void) __attribute__((interrupt_handler));
void TimerCh0Handler(void);
void Init(void);

int main()
{
	xil_printf("start1\r\n");
	/*定时器初始化*/
	tcsr0=Xil_In32(XPAR_TMRCTR_0_BASEADDR+XTC_TCSR_OFFSET);
	Xil_Out32(XPAR_TMRCTR_0_BASEADDR+XTC_TCSR_OFFSET,tcsr0&(~XTC_CSR_ENABLE_TMR_MASK)); // ENT = 0, 停止T
	Xil_Out32(XPAR_TMRCTR_0_BASEADDR+XTC_TLR_OFFSET,T_Read); // 写LDR, 配置计数初始值

	tcsr0=Xil_In32(XPAR_TMRCTR_0_BASEADDR+XTC_TCSR_OFFSET);
	Xil_Out32(XPAR_TMRCTR_0_BASEADDR+XTC_TCSR_OFFSET,tcsr0|XTC_CSR_LOAD_MASK); // LODA = 1，装载TLR到TCR
	Xil_Out32(XPAR_TMRCTR_0_BASEADDR+XTC_TCSR_OFFSET,tcsr0| ((XTC_CSR_ENABLE_TMR_MASK|XTC_CSR_DOWN_COUNT_MASK|XTC_CSR_AUTO_RELOAD_MASK)&(~XTC_CSR_LOAD_MASK))); // 自动装载：ARHT=1,LOAD =0;
	Xil_Out32(XPAR_TMRCTR_0_BASEADDR+XTC_TCSR_OFFSET,Xil_In32(XPAR_TMRCTR_0_BASEADDR+XTC_TCSR_OFFSET )|XTC_CSR_INT_OCCURED_MASK| XTC_CSR_ENABLE_INT_MASK); // 清除中断标志：TINT=1;允许TIMER中断：ENINT=1；

	/*SPI初始化*/
	//设定SPI主设备，CPOL = 1, CPHA = 0 自动方式，高位优先传递
	Xil_Out32(XPAR_AXI_QUAD_SPI_1_BASEADDR+XSP_CR_OFFSET,XSP_CR_ENABLE_MASK|XSP_CR_MASTER_MODE_MASK|XSP_CR_CLK_POLARITY_MASK);
	//设定SSR寄存器
	Xil_Out32(XPAR_AXI_QUAD_SPI_1_BASEADDR+XSP_SSR_OFFSET,0xfffffffe);
	//使能SPI发送寄存器空中断
	Xil_Out32(XPAR_AXI_QUAD_SPI_1_BASEADDR+XSP_IIER_OFFSET,XSP_INTR_TX_EMPTY_MASK);
	Xil_Out32(XPAR_AXI_QUAD_SPI_1_BASEADDR+XSP_DGIER_OFFSET,XSP_GINTR_ENABLE_MASK);

	//中断控制器使能
	Xil_Out32(intc_IAR,0xffffffff); // 清零所有中断标志
	Xil_Out32(intc_IER,0x15);       // 各通道中断允许
	Xil_Out32(XPAR_INTC_0_BASEADDR+XIN_MER_OFFSET,XIN_INT_MASTER_ENABLE_MASK|XIN_INT_HARDWARE_ENABLE_MASK);

	microblaze_enable_interrupts(); // 允许CPU中断
	return 0;
}

void My_ISR(void)
{
	int intc_Status;
	intc_Status = Xil_In32(intc_ISR);
	if(intc_Status&0x04)
	{
		TimerCh0Handler();
	}
	Xil_Out32(XPAR_AXI_QUAD_SPI_1_BASEADDR+XSP_IISR_OFFSET,Xil_In32(XPAR_AXI_QUAD_SPI_1_BASEADDR+XSP_IISR_OFFSET));
	Xil_Out32(intc_IAR,intc_Status);
}

void TimerCh0Handler(void)
{
	int temp;
	AD_Value = Xil_In16(XPAR_AXI_QUAD_SPI_1_BASEADDR+XSP_DRR_OFFSET)&0xfff;
	temp = AD_Value*3300/0xfff;
	xil_printf("The Voltage is %d mV\n",temp);
	Xil_Out16(XPAR_AXI_QUAD_SPI_1_BASEADDR+XSP_DTR_OFFSET,0); //启动传输
	Xil_Out32(XPAR_TMRCTR_0_BASEADDR+XTC_TCSR_OFFSET,Xil_In32(XPAR_TMRCTR_0_BASEADDR+XTC_TCSR_OFFSET )|XTC_CSR_INT_OCCURED_MASK| XTC_CSR_ENABLE_INT_MASK); // 清除中断标志：写TINT=1;

	Sw = Xil_In16(XPAR_GPIO_0_BASEADDR);
	T_Read = 10000*Sw;
	Xil_Out32(XPAR_TMRCTR_0_BASEADDR+XTC_TLR_OFFSET,T_Read);
}
