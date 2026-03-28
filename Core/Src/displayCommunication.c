/*
 * displayCommunication.c
 *
 *  Created on: Feb 3, 2026
 *      Author: mateo
 */

#include "displayCommunication.h"
#include "softwareTimer_ms.h"
#include "usart.h"

volatile uint8_t currentFloorNumber = 0;
volatile uint8_t inputsState = 0;

void displayCommunicationHandler(void)
{
    char floorMsg[20];
    char inpuMsg[20];

    static uint8_t currentFloorNumberTmp = 0xFF;
    static uint8_t inputsStateTmp = 0xFF;

    if(inputsStateTmp != inputsState)
    {
    	inputsStateTmp = inputsState;
    	sprintf(inpuMsg,  "AT+BIT=%u\n", inputsState);
    	HAL_UART_Transmit(&huart1, (uint8_t *)inpuMsg, strlen(inpuMsg), 10);
    }

    if(currentFloorNumberTmp != currentFloorNumber)
    {
    	currentFloorNumberTmp = currentFloorNumber;
    	sprintf(floorMsg, "AT+FLOOR=%u\n", currentFloorNumber);
    	HAL_UART_Transmit(&huart1, (uint8_t *)floorMsg, strlen(floorMsg), 10);
    }

}
