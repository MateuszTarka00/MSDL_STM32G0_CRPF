/*
 * conf_inputs.h
 *
 *  Created on: Oct 9, 2025
 *      Author: mateo
 */

#ifndef INC_CONF_INPUTS_H_
#define INC_CONF_INPUTS_H_

#include "main.h"

#define CANOPEN_BAUDRATE_125   	0
#define CANOPEN_BAUDRATE_250   	1
#define DEFAULT_NODE_ID			21

void setCanOpenID(void);
uint8_t getCanOpenID(void);
uint8_t getCanOpenBaudRate(void);
void readBuzzerInput(void);
uint8_t getBuzzerOnOff(void);

#endif /* INC_CONF_INPUTS_H_ */
