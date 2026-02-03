/*
 * displayCommunication.c
 *
 *  Created on: Feb 3, 2026
 *      Author: mateo
 */

#include "displayCommunication.h"
#include "softwareTimer_ms.h"
#include "usart.h"

SoftwareTimerHandler displayTimer;

volatile uint8_t currentFloorNumber = 0;
volatile uint8_t inputsState = 0;

void initializeDisplayTimer(void)
{
	initSoftwareTimer(&displayTimer, USART_TIMER_MS, displayCommunicationTimerHandler, 1, 0);
	startSoftwareTimer(&displayTimer);
}

void displayCommunicationTimerHandler(void)
{
	char floorMsg[] = {'A', 'T', '+', 'F', 'L', 'O', 'O', 'R', '=', 0x00};
	char inpuMsg[] = {'A', 'T', '+', 'B', 'I', 'T', '=', 0x00};

	uint8_t sendStatus = 0;

	floorMsg[9] = currentFloorNumber;
	inpuMsg[7] = inputsState;

	if(HAL_UART_Transmit(&huart1, (uint8_t *)floorMsg, sizeof(floorMsg), 100))
	{
		sendStatus = 1;
	}

	if(HAL_UART_Transmit(&huart1, (uint8_t *)inpuMsg, sizeof(inpuMsg), 100))
	{
		sendStatus = 1;
	}

}
