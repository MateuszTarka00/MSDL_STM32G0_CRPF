/*
 * conf_inputs.c
 *
 *  Created on: Oct 9, 2025
 *      Author: mateo
 */

#include "conf_inputs.h"



typedef union
{
	struct {
	uint8_t id_0:1;
	uint8_t id_1:1;
	uint8_t id_2:1;
	uint8_t id_3:1;
	uint8_t id_4:1;
	uint8_t id_5:1;
	uint8_t unused:2;
	};

	uint8_t nodeID;

}CanOpenNodeID;

/**
 * \brief setting canOpen node
 *
 * sets gpio input based node ID
 *
 * \param [in] NONE
 */

static CanOpenNodeID canOpenNodeID;
static uint8_t buzzerOnOff;


void setCanOpenID(void)
{
	canOpenNodeID.id_0 = !HAL_GPIO_ReadPin(ADD_S0_GPIO_Port, ADD_S0_Pin);
	canOpenNodeID.id_1 = !HAL_GPIO_ReadPin(ADD_S1_GPIO_Port, ADD_S1_Pin);
	canOpenNodeID.id_2 = !HAL_GPIO_ReadPin(ADD_S2_GPIO_Port, ADD_S2_Pin);
	canOpenNodeID.id_3 = !HAL_GPIO_ReadPin(ADD_S3_GPIO_Port, ADD_S3_Pin);
	canOpenNodeID.id_4 = !HAL_GPIO_ReadPin(ADD_S4_GPIO_Port, ADD_S4_Pin);
	canOpenNodeID.id_5 = !HAL_GPIO_ReadPin(ADD_S5_GPIO_Port, ADD_S5_Pin);

	canOpenNodeID.nodeID += DEFAULT_NODE_ID;
}

/**
 * \brief returning canopen node ID
 *
 * \return canOpenID
 */

uint8_t getCanOpenID(void)
{
	return canOpenNodeID.nodeID;
}

uint8_t getCanOpenBaudRate(void)
{
	return !HAL_GPIO_ReadPin(CAN_BUAD_RATE_GPIO_Port, CAN_BUAD_RATE_Pin);
}

void readBuzzerInput(void)
{
	buzzerOnOff = !HAL_GPIO_ReadPin(BUZZER_IN_GPIO_Port, BUZZER_IN_Pin);
}

uint8_t getBuzzerOnOff(void)
{
	return buzzerOnOff;
}





