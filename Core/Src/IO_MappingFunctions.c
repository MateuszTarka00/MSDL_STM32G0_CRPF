/*
 * IO_MappingFunctions.c
 *
 *  Created on: Oct 11, 2025
 *      Author: mateo
 */


#include "IO_MappingFunctions.h"
#include "canOpen_data.h"
#include "OD.h"

const uint16_t flashingDurations[] =
{
		50, 	//50 ms
		67, 	//67 ms
		100,	//100 ms
		250,	//250 ms
		333,	//333 ms
		500,	//0.5 s
		1000,	//1 s
		2000,	//2 s
};

const uint16_t impulseDurations[] =
{
		500, 	//500 ms
		1000,	//1 s
		1500,	//1.5 s
		2000,	//2 s
		3000,	//3 s
		5000,	//5 s
		10000,	//10 s
		15000,	//15 s
};

void processFunctionData(const uint8_t functionData)
{

}

ODR_t virtualInputMappingRead(OD_stream_t* const stream, void* const buffer, const OD_size_t size, OD_size_t* const bytesRead)
{
	if (pendingVirtualInputMappings > 0)
	{
		for(uint8_t i = 0; i < VIRTUAL_INPUT_MAPPING_SIZE; ++i)
		{
			//find first pending input
			if(virtualInputMapping[i].inputValue)
			{
				virtualInputMapping[i].inputValue = 0; //Clear pending input
				--pendingVirtualInputMappings; //Decrease pending inputs count

				memcpy(stream->dataOrig, virtualInputMapping[i].InputFunctionID, sizeof(virtualInputMapping[i].InputFunctionID));
			}
		}
	}

	return OD_readOriginal(stream, buffer, size, bytesRead);
}

ODR_t virtualOutputMappingWrite(OD_stream_t* const stream, const void* const buffer, const OD_size_t size, OD_size_t* const bytesWritten)
{
	ODR_t result = OD_writeOriginal(stream, buffer, size, bytesWritten);

	if(result != ODR_OK)
	{
		return result;
	}

	OD_entry_t *entry = OD_find(OD, 0x6200);

	for(uint8_t subIndex = 1; subIndex <= OD_CNT_ARR_6200; ++subIndex)
	{
		uint8_t identifier[6];

		OD_IO_t io;
		{
			result = OD_getSub(entry, subIndex, &io, false);
		}

		OD_stream_t ioStreamCopy = io.stream;
		{
			OD_size_t bytesRead;
			result = io.read(&io.stream, identifier, sizeof(identifier), &bytesRead);
		}

		if(memcmp(identifier, buffer, size - 1) == 0)
		{
			continue;
		}

		result = io.write(&ioStreamCopy, buffer, size, bytesWritten);

		if(result != ODR_OK)
		{
			return result;
		}
	}

	return ODR_OK;

}

ODR_t outputGroupWrite(OD_stream_t* const stream, const void* const buffer, const OD_size_t size, OD_size_t* const bytesWritten)
{
	ODR_t result = OD_writeOriginal(stream, buffer, size, bytesWritten);

	if(result != ODR_OK)
	{
		return result;
	}

	uint8_t outputsShift = VIRTUAL_OUTPUT_MAPPING_SIZE - DIGITAL_OUTPUTS_COUNT;
	uint8_t subIndex = stream->subIndex;

	if (subIndex <= outputsShift || subIndex > OD_CNT_ARR_6200)	// non-existent output?
		return ODR_OK;	// just ignore it...

	const uint8_t *functionData = (const uint8_t *)buffer;
	//distortos::board::digitalOutputs[subIndex - outputsShift - 1].processFunctionData(functionData);
	processFunctionData(functionData[size - 1]);

	return ODR_OK;
}
