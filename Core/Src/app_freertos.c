/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * File Name          : app_freertos.c
  * Description        : Code for freertos applications
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under Ultimate Liberty license
  * SLA0044, the "License"; You may not use this file except in compliance with
  * the License. You may obtain a copy of the License at:
  *                             www.st.com/SLA0044
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "FreeRTOS.h"
#include "task.h"
#include "main.h"
#include "cmsis_os.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "CO_app_STM32.h"
#include "tim.h"
#include "fdcan.h"
#include "conf_inputs.h"
#include "NMT_functions.h"
#include "OD.h"
#include "IO_MappingFunctions.h"
#include "softwareTimer_ms.h"
#include "DigitalInputs.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
#define CANOPEN_TASK_DELAY_MS 20
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN Variables */

/* USER CODE END Variables */
/* Definitions for defaultTask */
osThreadId_t defaultTaskHandle;
const osThreadAttr_t defaultTask_attributes = {
  .name = "defaultTask",
  .priority = (osPriority_t) osPriorityNormal,
  .stack_size = 128 * 4
};
/* Definitions for CanOpenMenagerT */
osThreadId_t CanOpenMenagerTHandle;
const osThreadAttr_t CanOpenMenagerT_attributes = {
  .name = "CanOpenMenagerT",
  .priority = (osPriority_t) osPriorityNormal,
  .stack_size = 512 * 4
};

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */

/* USER CODE END FunctionPrototypes */

void StartDefaultTask(void *argument);
void CanOpenMenager(void *argument);

void MX_FREERTOS_Init(void); /* (MISRA C 2004 rule 8.1) */

/**
  * @brief  FreeRTOS initialization
  * @param  None
  * @retval None
  */
void MX_FREERTOS_Init(void) {
  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* USER CODE BEGIN RTOS_MUTEX */
  /* add mutexes, ... */
  /* USER CODE END RTOS_MUTEX */

  /* USER CODE BEGIN RTOS_SEMAPHORES */
  /* add semaphores, ... */
  /* USER CODE END RTOS_SEMAPHORES */

  /* USER CODE BEGIN RTOS_TIMERS */
  /* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* creation of defaultTask */
  defaultTaskHandle = osThreadNew(StartDefaultTask, NULL, &defaultTask_attributes);

  /* creation of CanOpenMenagerT */
  CanOpenMenagerTHandle = osThreadNew(CanOpenMenager, NULL, &CanOpenMenagerT_attributes);

  /* USER CODE BEGIN RTOS_THREADS */
  /* add threads, ... */
  /* USER CODE END RTOS_THREADS */

  /* USER CODE BEGIN RTOS_EVENTS */
  /* add events, ... */
  /* USER CODE END RTOS_EVENTS */

}

/* USER CODE BEGIN Header_StartDefaultTask */
/**
  * @brief  Function implementing the defaultTask thread.
  * @param  argument: Not used
  * @retval None
  */
/* USER CODE END Header_StartDefaultTask */
void StartDefaultTask(void *argument)
{
  /* USER CODE BEGIN StartDefaultTask */
  /* Infinite loop */
  for(;;)
  {
    osDelay(1);
  }
  /* USER CODE END StartDefaultTask */
}


/* USER CODE BEGIN Header_CanOpenMenager */
/**
* @brief Function implementing the CanOpenMenagerT thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_CanOpenMenager */
void CanOpenMenager(void *argument)
{
  /* USER CODE BEGIN CanOpenMenager */
  setCanOpenID();

  OD_extension_t virtualInputMappingExtension = {0, virtualInputMappingRead, OD_writeOriginal, 0};
  ODR_t result = OD_extension_init(OD_find(OD, 0x6010), &virtualInputMappingExtension);

  OD_extension_t virtualOutputMappingExtension = {0, OD_readOriginal, virtualOutputMappingWrite, 0};
  result = OD_extension_init(OD_find(OD, 0x6011), &virtualOutputMappingExtension);

  OD_extension_t outputGroupExtension = {0, OD_readOriginal, outputGroupWrite, 0};
  result  = OD_extension_init(OD_find(OD, 0x6200), &outputGroupExtension);

  canOpenNodeSTM32.CANHandle = &hfdcan2;
  canOpenNodeSTM32.HWInitFunction = MX_FDCAN2_Init;
  canOpenNodeSTM32.timerHandle = &htim14;
  canOpenNodeSTM32.desiredNodeID = getCanOpenID();

  if(getCanOpenBaudRate() == CANOPEN_BAUDRATE_125)
  {
	  canOpenNodeSTM32.baudrate = 125;
  }
  else
  {
	  canOpenNodeSTM32.baudrate = 250;
  }
  canopen_app_init(&canOpenNodeSTM32);
  CO_NMT_initCallbackChanged(canOpenNodeSTM32.canOpenStack->NMT, nmtStateChangedCallback);
  /* Infinite loop */

  const OD_entry_t *entry = OD_find(OD, 0x6100);

  for(;;)
  {
	HAL_GPIO_WritePin(CAN_OK_GPIO_Port, CAN_OK_Pin , !canOpenNodeSTM32.outStatusLEDGreen);
	HAL_GPIO_WritePin(CAN_FAULT_GPIO_Port, CAN_FAULT_Pin, !canOpenNodeSTM32.outStatusLEDRed);

	canopen_app_process();

	for(uint8_t subIndex = 1; subIndex <= OD_CNT_ARR_6100; ++subIndex)
	{
		OD_IO_t io;
		{
			result = OD_getSub(entry, subIndex, &io, 0);
		}
		CO_LOCK_OD(canOpenNodeSTM32.canOpenStack->CANmodule);

		//check if input is enabled
		uint8_t enabledInput = 0;
		uint8_t *identifier = (uint8_t *)io.stream.dataOrig;
		uint8_t state = 0;

		for(uint8_t i = 0; i < 5; ++i)
		{
			if(identifier[i])
			{
				enabledInput = 1;
				break;
			}
		}

		if(enabledInput)
		{
			state = HAL_GPIO_ReadPin(digitalInput[subIndex - 1].port, digitalInput[subIndex - 1].pin);
			identifier[5] = state;
		}

		if(virtualInputMapping[subIndex - 1].pending) //check if already pending
		{
			continue;
		}

		// check if input has changed
		uint8_t inputChanged = memcmp(virtualInputMapping[subIndex - 1].InputFunctionID, identifier, sizeof(virtualInputMapping[subIndex - 1].InputFunctionID)) != 0;

		if(inputChanged)
		{
			continue;
		}

		memcpy(virtualInputMapping[subIndex - 1].InputFunctionID, identifier, sizeof(virtualInputMapping[subIndex - 1].InputFunctionID));
		virtualInputMapping[subIndex - 1].pending = 1;
		++pendingVirtualInputMappings;

		CO_UNLOCK_OD(canOpenNodeSTM32.canOpenStack->CANmodule);
	}

	osDelay(pdMS_TO_TICKS(CANOPEN_TASK_DELAY_MS));
  }

  /* USER CODE END CanOpenMenager */
}

/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */

/* USER CODE END Application */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
