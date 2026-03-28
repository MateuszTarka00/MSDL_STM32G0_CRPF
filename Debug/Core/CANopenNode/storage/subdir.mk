################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/CANopenNode/storage/CO_storage.c \
../Core/CANopenNode/storage/CO_storageEeprom.c 

C_DEPS += \
./Core/CANopenNode/storage/CO_storage.d \
./Core/CANopenNode/storage/CO_storageEeprom.d 

OBJS += \
./Core/CANopenNode/storage/CO_storage.o \
./Core/CANopenNode/storage/CO_storageEeprom.o 


# Each subdirectory must supply rules for building sources it contributes
Core/CANopenNode/storage/%.o Core/CANopenNode/storage/%.su Core/CANopenNode/storage/%.cyclo: ../Core/CANopenNode/storage/%.c Core/CANopenNode/storage/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G0B1xx '-DCMSIS_device_header=<stm32g0xx.h>' -c -I../Core/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM0 -I../Core/CANopenNode -I../Core/CANopenNode_STM32 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-CANopenNode-2f-storage

clean-Core-2f-CANopenNode-2f-storage:
	-$(RM) ./Core/CANopenNode/storage/CO_storage.cyclo ./Core/CANopenNode/storage/CO_storage.d ./Core/CANopenNode/storage/CO_storage.o ./Core/CANopenNode/storage/CO_storage.su ./Core/CANopenNode/storage/CO_storageEeprom.cyclo ./Core/CANopenNode/storage/CO_storageEeprom.d ./Core/CANopenNode/storage/CO_storageEeprom.o ./Core/CANopenNode/storage/CO_storageEeprom.su

.PHONY: clean-Core-2f-CANopenNode-2f-storage

