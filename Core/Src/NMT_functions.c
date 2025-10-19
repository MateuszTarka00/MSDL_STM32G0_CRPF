/*
 * NMT_functions.c
 *
 *  Created on: Oct 11, 2025
 *      Author: mateo
 */


#include "NMT_functions.h"
#include "OD.h"

void nmtStateChangedCallback(const CO_NMT_internalState_t state)
{
	CO_LOCK_OD(canOpenNodeSTM32.canOpenStack->CANmodule);
	//if it is not operational reset configuration
	if(state != CO_NMT_OPERATIONAL)
	{
		OD_entry_t *entry = OD_find(OD, 0x6200);

		for(uint8_t subIndex = 1; subIndex <= OD_CNT_ARR_6200; ++subIndex)
		{
			OD_IO_t io;
			{
				OD_getSub(entry, subIndex, &io, false);
			}

			uint8_t identifier[6];

			OD_stream_t ioStreamCopy = io.stream;
			{
				OD_size_t bytesRead;
				io.read(&io.stream, identifier, sizeof(identifier), &bytesRead);
			}

			identifier[5] = 0;	// reset output

			OD_size_t bytesWritten;
			io.write(&ioStreamCopy, identifier, sizeof(identifier), &bytesWritten);
		}
		CO_UNLOCK_OD(canOpenNodeSTM32.canOpenStack->CANmodule);
		return;
	}
//if it is operational clear pending input messages
	for(uint8_t i = 0; i < VIRTUAL_INPUT_MAPPING_SIZE; ++i)
	{
		memset(virtualInputMapping[i].InputFunctionID, 0, sizeof(virtualInputMapping[i].InputFunctionID));
		virtualInputMapping[i].pending = 0;
	}

	pendingVirtualInputMappings = 0;

	CO_UNLOCK_OD(canOpenNodeSTM32.canOpenStack->CANmodule);
}
