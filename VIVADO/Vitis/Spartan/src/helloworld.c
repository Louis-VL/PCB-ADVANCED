/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

#include "xparameters.h" //get parameters from here
#include "xgpio.h"		//GPIO drivers
#include "xil_types.h"	//function in C like u32

#include "sleep.h"

#define BTN_CHANNEL 1
#define LED_CHANNEL 1
#define BTN_MASK 0b11111111
#define LED_MASK 0b11111111

int main()
{
    init_platform();
    u32 data = 0b00000001;

    print("Hello World\n\r");

    //pointers
    XGpio_Config *cfg_ptr;
    XGpio gpio_led, gpio_sw, gpio_JA, gpio_JB;

    // Initialize LED Device
    cfg_ptr = XGpio_LookupConfig(XPAR_AXI_GPIO_LEDS_DEVICE_ID);
    XGpio_CfgInitialize(&gpio_led, cfg_ptr, cfg_ptr->BaseAddress);

    // Initialize SWITCHES Device
    cfg_ptr = XGpio_LookupConfig(XPAR_AXI_GPIO_SWITCHES_DEVICE_ID);
    XGpio_CfgInitialize(&gpio_sw, cfg_ptr, cfg_ptr->BaseAddress);

    // Initialize JA Device
    cfg_ptr = XGpio_LookupConfig(XPAR_AXI_GPIO_HEADER1_DEVICE_ID);
    XGpio_CfgInitialize(&gpio_JA, cfg_ptr, cfg_ptr->BaseAddress);

    // Initialize JB Device
    cfg_ptr = XGpio_LookupConfig(XPAR_AXI_GPIO_HEADER2_DEVICE_ID);
    XGpio_CfgInitialize(&gpio_JB, cfg_ptr, cfg_ptr->BaseAddress);

    // Set Button Tristate
    XGpio_SetDataDirection(&gpio_sw, BTN_CHANNEL, BTN_MASK);

    // Set Led Tristate
    XGpio_SetDataDirection(&gpio_led, LED_CHANNEL, 0);

    LedStartup(data, gpio_led);

    print("Successfully ran Hello World application");

    while(1){

    	// Read button state, Write button state on leds
    	u64 buttons = Xil_In64(XPAR_AXI_GPIO_SWITCHES_BASEADDR);
    	Xil_Out64(XPAR_AXI_GPIO_LEDS_BASEADDR, buttons);


    	/*data = XGpio_DiscreteRead(&gpio_sw, BTN_CHANNEL);
    	data &= BTN_MASK;
    		if (data != 0) {
    			data = LED_MASK;
    		} else {
    			data = 0;
    		}
    	XGpio_DiscreteWrite(&gpio_led, LED_CHANNEL, data);

    	/*
    	XGpio_DiscreteWrite(&gpio_led, 1, 1);

    	XGpio_DiscreteWrite(&gpio_led, 2, XGpio_DiscreteRead(&gpio_sw, 2));

    	if (XGpio_DiscreteRead(&gpio_sw, 2) == 0){
    		XGpio_DiscreteWrite(&gpio_led, teller, 1);
    		usleep(250000);//1us*250k
    		teller = teller + 1;
    	}
    	*/

    }
    cleanup_platform();
    return 0;
}

LedStartup(u32 data, XGpio gpio_led){

	for (int i = 0; i<7; i++){
	   	XGpio_DiscreteWrite(&gpio_led, LED_CHANNEL, data);
		data = data << 1;
 		usleep(100000);
  	}

	for (int i = 0; i<7; i++){
		XGpio_DiscreteWrite(&gpio_led, LED_CHANNEL, data);
		data = data >> 1;
		usleep(100000);
	}

	usleep(100000);
	XGpio_DiscreteWrite(&gpio_led, LED_CHANNEL, 0b10000001);
	usleep(100000);

	XGpio_DiscreteWrite(&gpio_led, LED_CHANNEL, 0b11000011);
	usleep(100000);

	XGpio_DiscreteWrite(&gpio_led, LED_CHANNEL, 0b11100111);
	usleep(100000);

	XGpio_DiscreteWrite(&gpio_led, LED_CHANNEL, 0b11111111);
	usleep(100000);

	XGpio_DiscreteWrite(&gpio_led, LED_CHANNEL, 0b00000000);
	usleep(200000);

	XGpio_DiscreteWrite(&gpio_led, LED_CHANNEL, 0b11111111);
	usleep(200000);

	XGpio_DiscreteWrite(&gpio_led, LED_CHANNEL, 0b00000000);
	usleep(250000);
}
