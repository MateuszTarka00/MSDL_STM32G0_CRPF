/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32g0xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define BUZZER_OUT_Pin GPIO_PIN_9
#define BUZZER_OUT_GPIO_Port GPIOB
#define BUZZER_IN_Pin GPIO_PIN_4
#define BUZZER_IN_GPIO_Port GPIOE
#define CAN_BUAD_RATE_Pin GPIO_PIN_5
#define CAN_BUAD_RATE_GPIO_Port GPIOE
#define ADD_S5_Pin GPIO_PIN_6
#define ADD_S5_GPIO_Port GPIOE
#define ADD_S4_Pin GPIO_PIN_12
#define ADD_S4_GPIO_Port GPIOC
#define ADD_S3_Pin GPIO_PIN_13
#define ADD_S3_GPIO_Port GPIOC
#define ADD_S2_Pin GPIO_PIN_14
#define ADD_S2_GPIO_Port GPIOC
#define ADD_S1_Pin GPIO_PIN_15
#define ADD_S1_GPIO_Port GPIOC
#define ADD_S0_Pin GPIO_PIN_3
#define ADD_S0_GPIO_Port GPIOF
#define OUT4_Pin GPIO_PIN_1
#define OUT4_GPIO_Port GPIOA
#define OUT5_Pin GPIO_PIN_2
#define OUT5_GPIO_Port GPIOA
#define OUT6_Pin GPIO_PIN_3
#define OUT6_GPIO_Port GPIOA
#define OUT7_Pin GPIO_PIN_4
#define OUT7_GPIO_Port GPIOA
#define OUT8_Pin GPIO_PIN_5
#define OUT8_GPIO_Port GPIOC
#define OUT9_Pin GPIO_PIN_0
#define OUT9_GPIO_Port GPIOB
#define OUT10_Pin GPIO_PIN_1
#define OUT10_GPIO_Port GPIOB
#define OUT11_Pin GPIO_PIN_2
#define OUT11_GPIO_Port GPIOB
#define OUT12_Pin GPIO_PIN_6
#define OUT12_GPIO_Port GPIOF
#define OUT13_Pin GPIO_PIN_7
#define OUT13_GPIO_Port GPIOF
#define OUT14_Pin GPIO_PIN_7
#define OUT14_GPIO_Port GPIOE
#define OUT15_Pin GPIO_PIN_8
#define OUT15_GPIO_Port GPIOE
#define OUT16_Pin GPIO_PIN_9
#define OUT16_GPIO_Port GPIOE
#define IN1_Pin GPIO_PIN_10
#define IN1_GPIO_Port GPIOE
#define IN2_Pin GPIO_PIN_11
#define IN2_GPIO_Port GPIOE
#define IN3_Pin GPIO_PIN_12
#define IN3_GPIO_Port GPIOE
#define IN4_Pin GPIO_PIN_13
#define IN4_GPIO_Port GPIOE
#define IN5_Pin GPIO_PIN_14
#define IN5_GPIO_Port GPIOE
#define IN6_Pin GPIO_PIN_15
#define IN6_GPIO_Port GPIOE
#define IN7_Pin GPIO_PIN_10
#define IN7_GPIO_Port GPIOB
#define IN8_Pin GPIO_PIN_11
#define IN8_GPIO_Port GPIOB
#define IN9_Pin GPIO_PIN_12
#define IN9_GPIO_Port GPIOB
#define IN10_Pin GPIO_PIN_8
#define IN10_GPIO_Port GPIOA
#define IN11_Pin GPIO_PIN_9
#define IN11_GPIO_Port GPIOA
#define IN12_Pin GPIO_PIN_6
#define IN12_GPIO_Port GPIOC
#define IN13_Pin GPIO_PIN_7
#define IN13_GPIO_Port GPIOC
#define IN14_Pin GPIO_PIN_8
#define IN14_GPIO_Port GPIOD
#define IN15_Pin GPIO_PIN_9
#define IN15_GPIO_Port GPIOD
#define IN16_Pin GPIO_PIN_10
#define IN16_GPIO_Port GPIOD
#define CAN_FAULT_Pin GPIO_PIN_2
#define CAN_FAULT_GPIO_Port GPIOE
#define CAN_OK_Pin GPIO_PIN_3
#define CAN_OK_GPIO_Port GPIOE
#define OUT1_Pin GPIO_PIN_6
#define OUT1_GPIO_Port GPIOB
#define OUT2_Pin GPIO_PIN_7
#define OUT2_GPIO_Port GPIOB
#define OUT3_Pin GPIO_PIN_8
#define OUT3_GPIO_Port GPIOB
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
