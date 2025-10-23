/*
 * IO_MappingFunctions.c
 *
 *  Created on: Oct 11, 2025
 *      Author: mateo
 */


#include "IO_MappingFunctions.h"
#include "canOpen_data.h"
#include "OD.h"
#include "DigitalOutput.h"

ODR_t virtualInputMappingRead(OD_stream_t* const stream, void* const buffer, const OD_size_t size, OD_size_t* const bytesRead)
{
	if (pendingVirtualInputMappings > 0)
	{
		for(uint8_t i = 0; i < VIRTUAL_INPUT_MAPPING_SIZE; ++i)
		{
			//find first pending input
			if(virtualInputMapping[i].pending)
			{
				virtualInputMapping[i].pending = 0; //Clear pending input
				--pendingVirtualInputMappings; //Decrease pending inputs count

				memcpy(stream->dataOrig, virtualInputMapping[i].InputFunctionID, sizeof(virtualInputMapping[i].InputFunctionID));
				break;
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

		if(memcmp(identifier, buffer, size - 1))
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
	processFunctionData(&digitaloutputs[subIndex - 1], functionData[size - 1]);

	return ODR_OK;
}
