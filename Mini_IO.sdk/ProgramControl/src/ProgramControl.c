/*
 * ProgramControl.c
 *
 *  Created on: Apr 11, 2023
 *      Author: Luo Chang
 */

#include <stdio.h>
#include "xil_printf.h"
#include "xil_io.h"
#include "xgpio_l.h"

// show on seg
void display(char segcode[], short tmp[], short position, int k) {
    // k is shift bit
    for (int i = 0; i < 8; i++) {
        Xil_Out8(XPAR_AXI_GPIO_1_BASEADDR + XGPIO_DATA2_OFFSET, segcode[tmp[(i + k) % 8]]);  // display signal at each bit
        Xil_Out8(XPAR_AXI_GPIO_1_BASEADDR + XGPIO_DATA_OFFSET, position);  // position change
        for (int j = 0; j < 10000; j++);  // light on 8 segs
        position = position >> 1;
    }
}

int main() {
    unsigned short lastSwitchState, currentSwitchState;  //switch state at last cycle and this cycle
    unsigned short led;  // output to LED
    Xil_Out16(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_TRI_OFFSET, 0xffff);  // set switch as input
    Xil_Out16(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_TRI2_OFFSET, 0x0);  // set LED as output

    unsigned short currentBtn, lastBtn, realBtn;
    char segcode[6] = {0xc6, 0xc1, 0xc7, 0x88, 0xc0, 0xff};  // seg signal as {C, U, L, R, D, null}
    short tmp[8] = {5, 5, 5, 5, 5, 5, 5, 5};
    int k = 0;  // shift bit
    short position = 0xff7f;
    Xil_Out8(XPAR_AXI_GPIO_1_BASEADDR + XGPIO_TRI_OFFSET, 0x0);
    Xil_Out8(XPAR_AXI_GPIO_1_BASEADDR + XGPIO_TRI2_OFFSET, 0x0);
    Xil_Out16(XPAR_AXI_GPIO_2_BASEADDR + XGPIO_TRI_OFFSET, 0x1f);
    while (1) {
        lastSwitchState = currentSwitchState;
        currentSwitchState = Xil_In16(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_DATA_OFFSET) & 0xffff;
        if (lastSwitchState != currentSwitchState) {  // change switch state when switch toggle
            led = currentSwitchState;
        }
        Xil_Out16(XPAR_AXI_GPIO_0_BASEADDR + XGPIO_DATA2_OFFSET, led);  // output to LED

        display(segcode, tmp, position, k);  // show on seg
        position = 0xff7f;
        currentBtn = Xil_In8(XPAR_AXI_GPIO_2_BASEADDR + XGPIO_DATA_OFFSET) & 0x1f;
        if (currentBtn) {  // btn onClick
            while (currentBtn) {  // btn not spring up
                display(segcode, tmp, position, k);
                currentBtn = (Xil_In8(XPAR_AXI_GPIO_2_BASEADDR + XGPIO_DATA_OFFSET) & 0x1f);
                realBtn = (currentBtn ^ lastBtn) & lastBtn;  // get unpressed btn
                lastBtn = currentBtn;
                if (realBtn) {
                    break;
                }
            }
            // judge which btn was pressed
            switch (realBtn) {
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
        }
    }
    return 0;
}
