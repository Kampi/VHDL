/*
 * main.c
 *
 *  Copyright (C) Daniel Kampert, 2018
 *	Website: www.kampis-elektroecke.de
 *  File info: AXIS-I2S audio player for ZYNQ 7000 FPGA.

  GNU GENERAL PUBLIC LICENSE:
  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program. If not, see <http://www.gnu.org/licenses/>.

  Errors and commissions should be reported to DanielKampert@kampis-elektroecke.de
 */

/** @file main.c
 *  @brief AXIS-I2S audio player for ZYNQ 7000 FPGA.

 *  Software for the AXI-I2S audio player from
 *  https://www.kampis-elektroecke.de/fpga/i2s/abspielen-von-wave-dateien/
 *
 *  @author Daniel Kampert
 */

#include "xllfifo.h"
#include "xscugic.h"
#include "xstatus.h"
#include "xparameters.h"
#include "xil_exception.h"

#include "stdio.h"

#include "SD/SD.h"

#define FIFO_BUFFER_SIZE					128

XLlFifo_Config* ConfigPtr;
XLlFifo Fifo;

XScuGic_Config* GIC_ConfigPtr;
XScuGic GIC;

u16 FifoBuffer[FIFO_BUFFER_SIZE];

static void FifoFill(void)
{
	for(u32 i = 0x00; i < FIFO_BUFFER_SIZE; i++)
	{
		XLlFifo_TxPutWord(&Fifo, FifoBuffer[i]);
	}

	XLlFifo_iTxSetLen(&Fifo, FIFO_BUFFER_SIZE * sizeof(u32));
}

static void FifoHandler(void* CallbackRef)
{
	XLlFifo* InstancePtr = (XLlFifo*)CallbackRef;

	u32 Pending = XLlFifo_IntPending(InstancePtr);
	while(Pending)
	{
		if(Pending & XLLF_INT_TC_MASK)
		{
			SD_CopyDataIntoBuffer(FifoBuffer, (2 * FIFO_BUFFER_SIZE));

			XLlFifo_IntClear(InstancePtr, XLLF_INT_TC_MASK);
		}
		else if(Pending & XLLF_INT_TFPE_MASK)
		{
			FifoFill();

			XLlFifo_IntClear(InstancePtr, XLLF_INT_TFPE_MASK);
		}
		else if(Pending & XLLF_INT_ERROR_MASK)
		{
			xil_printf("	Error: %lu!\n\r", Pending);
			XLlFifo_IntClear(InstancePtr, XLLF_INT_ERROR_MASK);
		}
		else
		{
			XLlFifo_IntClear(InstancePtr, Pending);
		}

		Pending = XLlFifo_IntPending(InstancePtr);
	}
}

int main(void)
{
	xil_printf("-----------I2S Audio player-----------\r\n");
	xil_printf("\r\n");

	xil_printf("[INFO] Looking for FIFO configuration...\r\n");
	ConfigPtr = XLlFfio_LookupConfig(XPAR_FIFO_DEVICE_ID);
	if(ConfigPtr == NULL)
	{
		xil_printf("[ERROR] Invalid FIFO configuration!\r\n");
		return XST_FAILURE;
	}

	xil_printf("[INFO] Initialize FIFO...\r\n");
	if(XLlFifo_CfgInitialize(&Fifo, ConfigPtr, ConfigPtr->BaseAddress) != XST_SUCCESS)
	{
		xil_printf("[ERROR] FIFO Initialization failed!\n\r");
		return XST_FAILURE;
	}

	xil_printf("[INFO] Looking for GIC configuration...\r\n");
	GIC_ConfigPtr = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
	if(GIC_ConfigPtr == NULL)
	{
		xil_printf("[ERROR] Invalid GIC configuration!\n\r");
		return XST_FAILURE;
	}

	xil_printf("[INFO] Initialize GIC...\r\n");
	if(XScuGic_CfgInitialize(&GIC, GIC_ConfigPtr, GIC_ConfigPtr->CpuBaseAddress) != XST_SUCCESS)
	{
		xil_printf("[ERROR] Can not initialize GIC!\n\r");
		return XST_FAILURE;
	}

	// Setup the interrupt
	xil_printf("[INFO] Setup interrupt handler...\r\n");
	XScuGic_SetPriorityTriggerType(&GIC, XPAR_FABRIC_LLFIFO_0_VEC_ID, 0xA0, 0x03);
	if(XScuGic_Connect(&GIC, XPAR_FABRIC_LLFIFO_0_VEC_ID, (Xil_ExceptionHandler)FifoHandler, &Fifo) != XST_SUCCESS)
	{
		xil_printf("[ERROR] Can not connect interrupt handler!\n\r");
		return XST_FAILURE;
	}
	XScuGic_Enable(&GIC, XPAR_FABRIC_LLFIFO_0_VEC_ID);

	// Enable exceptions
	xil_printf("[INFO] Enable exceptions...\r\n");
	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, &GIC);
	Xil_ExceptionEnable();

	// Enable FIFO interrupts
	xil_printf("[INFO] Enable FIFO interrupts...\r\n");
	XLlFifo_IntClear(&Fifo, 0xFFFFFFFf);
	XLlFifo_IntEnable(&Fifo, XLLF_INT_ALL_MASK);

	if(SD_OpenCard())
	{

		return XST_FAILURE;
	}

	SD_LoadFileFromCard("Audio.wav");

	// Initiate the first transmission by filling the buffer
	SD_CopyDataIntoBuffer(FifoBuffer, (2 * FIFO_BUFFER_SIZE));
	FifoFill();

	while(1)
	{
	}

	return XST_SUCCESS;
}
