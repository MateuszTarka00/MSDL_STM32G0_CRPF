/*
 * displayCommunication.h
 *
 *  Created on: Feb 3, 2026
 *      Author: mateo
 */

#ifndef INC_DISPLAYCOMMUNICATION_H_
#define INC_DISPLAYCOMMUNICATION_H_

#include "main.h"

#define USART_TIMER_MS 100

extern volatile uint8_t currentFloorNumber;
extern volatile uint8_t inputsState;

void initializeDisplayTimer(void);
void displayCommunicationTimerHandler(void);

#endif /* INC_DISPLAYCOMMUNICATION_H_ */
