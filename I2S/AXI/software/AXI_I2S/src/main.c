/*
 * main.c
 *
 *  Copyright (C) Daniel Kampert, 2018
 *	Website: www.kampis-elektroecke.de
 *  File info: AXI-I2S audio example for ZYNQ 7000 FPGA.

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
 *  @brief AXI-I2S audio example for ZYNQ 7000 FPGA.

 *  Software for the AXI-I2S audio example from
 *  <>
 *
 *  @author Daniel Kampert
 */

#include "xllfifo.h"
#include "xscugic.h"
#include "xstatus.h"
#include "xparameters.h"
#include "xil_exception.h"

XLlFifo_Config* ConfigPtr;
XLlFifo Fifo;

XScuGic_Config* GIC_ConfigPtr;
XScuGic GIC;

u32 SourceBuffer[] = {
		0x0000, 0x0809, 0x100A, 0x17FB, 0x1FD4, 0x278D, 0x2F1E, 0x367F,
		0x3DA9,	0x4495,	0x4B3B,	0x5196,	0x579E,	0x5D4E,	0x629F,	0x678D,
		0x6C12,	0x7029,	0x73D0,	0x7701,	0x79BB,	0x7BF9,	0x7DBA,	0x7EFC,
		0x7FBE,	0x7FFF,	0x7FBE,	0x7EFC,	0x7DBA,	0x7BF9,	0x79BB,	0x7701,
		0x73D0,	0x7029,	0x6C12,	0x678D,	0x629F,	0x5D4E,	0x579E,	0x5196,
		0x4B3B,	0x4495,	0x3DA9,	0x367F,	0x2F1E,	0x278D,	0x1FD4,	0x17FB,
		0x100A,	0x0809,	0x0000,	0xF7F7,	0xEFF6,	0xE805,	0xE02C,	0xD873,
		0xD0E2,	0xC981,	0xC257,	0xBB6B,	0xB4C5,	0xAE6A,	0xA862,	0xA2B2,
		0x9D61,	0x9873,	0x93EE,	0x8FD7,	0x8C30,	0x88FF,	0x8645,	0x8407,
		0x8246,	0x8104,	0x8042,	0x8001,	0x8042,	0x8104,	0x8246,	0x8407,
		0x8645,	0x88FF,	0x8C30,	0x8FD7,	0x93EE,	0x9873,	0x9D61,	0xA2B2,
		0xA862,	0xAE6A,	0xB4C5,	0xBB6B,	0xC257,	0xC981,	0xD0E2,	0xD873,
		0xE02C,	0xE805,	0xEFF6,	0xF7F7,
};

static void FifoHandler(void* CallbackRef)
{
	XLlFifo* InstancePtr = (XLlFifo*)CallbackRef;

	u32 Pending = XLlFifo_IntPending(InstancePtr);
	while(Pending)
	{
		if(Pending & XLLF_INT_TFPF_MASK)
		{
			xil_printf("	FIFO Full!\n\r");
			XLlFifo_IntClear(InstancePtr, XLLF_INT_TFPF_MASK);
		}
		if(Pending & XLLF_INT_RC_MASK)
		{
			xil_printf("	FIFO Received!\n\r");
			XLlFifo_IntClear(InstancePtr, XLLF_INT_RC_MASK);
		}
		else if(Pending & XLLF_INT_TC_MASK)
		{
			xil_printf("	FIFO Transmitted!\n\r");
			XLlFifo_IntClear(InstancePtr, XLLF_INT_TC_MASK);
		}
		else if(Pending & XLLF_INT_ERROR_MASK)
		{
			xil_printf("	FIFO Error: %lu!\n\r", Pending);
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
	ConfigPtr = XLlFfio_LookupConfig(XPAR_FIFO_DEVICE_ID);
	if(ConfigPtr == NULL)
	{
		xil_printf("[ERROR] Invalid FIFO configuration!\r\n");
		return XST_FAILURE;
	}

	if(XLlFifo_CfgInitialize(&Fifo, ConfigPtr, ConfigPtr->BaseAddress) != XST_SUCCESS)
	{
		xil_printf("[ERROR] FIFO Initialization failed!\n\r");
		return XST_FAILURE;
	}

	GIC_ConfigPtr = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
	if(NULL == GIC_ConfigPtr)
	{
		xil_printf("[ERROR] Invalid GIC configuration!\n\r");
		return XST_FAILURE;
	}
	XScuGic_CfgInitialize(&GIC, GIC_ConfigPtr, GIC_ConfigPtr->CpuBaseAddress);

	// Setup the interrupt
	XScuGic_SetPriorityTriggerType(&GIC, XPAR_FABRIC_LLFIFO_0_VEC_ID, 0xA0, 0x03);
	if(XScuGic_Connect(&GIC, XPAR_FABRIC_LLFIFO_0_VEC_ID, (Xil_ExceptionHandler)FifoHandler, &Fifo) != XST_SUCCESS)
	{
		xil_printf("[ERROR] Can not connect GpioHandler!\n\r");
		return XST_FAILURE;
	}
	XScuGic_Enable(&GIC, XPAR_FABRIC_LLFIFO_0_VEC_ID);

	// Enable exceptions
	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, &GIC);
	Xil_ExceptionEnable();

	// Enable FIFO interrupts
	XLlFifo_IntClear(&Fifo, 0xFFFFFFFf);
	XLlFifo_IntEnable(&Fifo, XLLF_INT_ALL_MASK);

	// Copy the data bytes from the transmit buffer into the FIFO
	for(u32 i = 0; i < sizeof(SourceBuffer); i++)
	{
		if(XLlFifo_iTxVacancy(&Fifo))
		{
			XLlFifo_TxPutWord(&Fifo, SourceBuffer[i]);
		}
	}

	// Start the transmission
	XLlFifo_iTxSetLen(&Fifo, sizeof(SourceBuffer) * sizeof(u32));

	while(1)
	{
	}

	return XST_SUCCESS;
}
