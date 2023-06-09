/*
 * ProgramControl2.c
 *
 *  Created on: 2023年5月3日
 *      Author: 畅想未来
 */

#include <stdio.h>
#include "xil_printf.h"
#include "xil_io.h"
#include "xgpio_l.h"


int main() {
    unsigned short num1 = 0, num2 = 0;
    unsigned short lastSwitchState, currentSwitchState;
    Xil_Out16(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_TRI_OFFSET, 0xffff);
    Xil_Out16(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_TRI2_OFFSET, 0x0);
    Xil_Out16(XPAR_AXI_GPIO_2_BASEADDR + XGPIO_TRI_OFFSET, 0x1f);
    unsigned short currentBtn, lastBtn, realBtn;
    while (1) {
        lastSwitchState = currentSwitchState;
        currentBtn = Xil_In8(XPAR_AXI_GPIO_2_BASEADDR+ XGPIO_DATA_OFFSET) & 0x1f;
        if (currentBtn) {
            while (currentBtn) {
                currentBtn = Xil_In8(XPAR_AXI_GPIO_2_BASEADDR+ XGPIO_DATA_OFFSET) & 0x1f;
                realBtn = (currentBtn ^ lastBtn) & lastBtn;
                lastBtn = currentBtn;
                xil_printf("%x\n",realBtn);
                if (realBtn) {
                    break;
                }
            }
        }
        switch (realBtn) {
        case 0x01:
        // C
            currentSwitchState = Xil_In16(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_DATA_OFFSET) & 0xffff;
            if (lastSwitchState != currentSwitchState) {  // change switch state when switch toggle
                num1 = currentSwitchState;
                xil_printf("0x%x",num1);
                Xil_Out16(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_DATA2_OFFSET, num1);
                realBtn = 0;
            }
            break;
        case 0x02:
        // U
                xil_printf("0x%x",num1+num2);
                Xil_Out16(XPAR_AXI_GPIO_0_BASEADDR+XGPIO_DATA2_OFFSET,num1+num2);
                realBtn = 0;
            break;
        case 0x04:
        // L
            break;
        case 0x08:
        // R
            currentSwitchState = Xil_In16(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_DATA_OFFSET) & 0xffff;
            if (lastSwitchState != currentSwitchState) {
                num2 = currentSwitchState;
                xil_printf("0x%x",num2);
                Xil_Out16(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_DATA2_OFFSET, num2);
                realBtn = 0;
            }
            break;
        case 0x10:
        // D
                xil_printf("0x%x",num1*num2);
                Xil_Out16(XPAR_AXI_GPIO_0_BASEADDR+XGPIO_DATA2_OFFSET,num1*num2);
                realBtn = 0;
            break;
        default:
            break;
        }
        
    }
    
}
