/*
 * flash.h
 *
 *  Created on: 23 paź 2025
 *      Author: mateo
 */

#ifndef INC_FLASH_H_
#define INC_FLASH_H_

#include "main.h"

void Flash_ErasePage(uint32_t pageIndex);
void Flash_WriteStruct(uint32_t pageIndex, const ConfigData_t *data);
void Flash_ReadStruct(uint32_t pageIndex, ConfigData_t *data);
uint32_t Flash_GetPageAddress(uint32_t pageIndex);


#endif /* INC_FLASH_H_ */
