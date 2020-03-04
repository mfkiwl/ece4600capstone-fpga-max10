#include <stdio.h>
#include <stdlib.h>
#include "uart.h"
#include <nrf.h>

typedef enum STATES
{
	STATE_STARTUP = 0,
	STATE_READY,
	STATE_ADVERTISING,
	STATE_SLAVE,
	STATE_SEARCHING,
	STATE_MASTER,
	STATE_DOWNLOAD,
} STATES;

volatile STATES main_state = STATE_STARTUP;

void main(void)
{
	//TODO: Make sure interrupts are disabled here, if they could cause a problem.
	//Alternatively, initialize the peripherals in the right order, that problems cannot happen.

	__disable_irq();
	//Initialize peripherals...
	uart_init();

	__enable_irq();


	printf("Initialization complete. Entering pairing mode\n");
	while (1)
	{
		UartPacket* packet = queue_dequeue(&uart_rxq);
		if (packet)
		{
			if (uart_check_crc(packet))
			{
				//Echo...
				uart_transmit(packet);
			}
			else
			{
				queue_enqueue(&uart_emq, packet);
			}
		}
		switch (main_state)
		{
		case STATE_STARTUP:

			break;
		case STATE_ADVERTISING:

			break;
		case STATE_SLAVE:

			break;
		case STATE_SEARCHING:

			break;
		case STATE_MASTER:

			break;
		case STATE_DOWNLOAD:

			break;
		default:

			break;
		}
	}
}

//TODO: Setup state machine:
// - Pairing mode (default, at startup)
// - Slave mode (after master-initiated pairing)
// - Master mode (activated by "master mode" UART packet from computer)
//There will be many sub-states...

//TODO: State machine will control FPGA configuration, HV power status