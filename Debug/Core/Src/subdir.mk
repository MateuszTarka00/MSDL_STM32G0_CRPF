################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/DigitalInputs.c \
../Core/Src/DigitalOutputs.c \
../Core/Src/IO_MappingFunctions.c \
../Core/Src/NMT_functions.c \
../Core/Src/app_freertos.c \
../Core/Src/conf_inputs.c \
../Core/Src/displayCommunication.c \
../Core/Src/fdcan.c \
../Core/Src/flash.c \
../Core/Src/gpio.c \
../Core/Src/iwdg.c \
../Core/Src/main.c \
../Core/Src/softwareTimer_ms.c \
../Core/Src/stm32g0xx_hal_msp.c \
../Core/Src/stm32g0xx_hal_timebase_tim.c \
../Core/Src/stm32g0xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32g0xx.c \
../Core/Src/tim.c \
../Core/Src/usart.c 

C_DEPS += \
./Core/Src/DigitalInputs.d \
./Core/Src/DigitalOutputs.d \
./Core/Src/IO_MappingFunctions.d \
./Core/Src/NMT_functions.d \
./Core/Src/app_freertos.d \
./Core/Src/conf_inputs.d \
./Core/Src/displayCommunication.d \
./Core/Src/fdcan.d \
./Core/Src/flash.d \
./Core/Src/gpio.d \
./Core/Src/iwdg.d \
./Core/Src/main.d \
./Core/Src/softwareTimer_ms.d \
./Core/Src/stm32g0xx_hal_msp.d \
./Core/Src/stm32g0xx_hal_timebase_tim.d \
./Core/Src/stm32g0xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32g0xx.d \
./Core/Src/tim.d \
./Core/Src/usart.d 

OBJS += \
./Core/Src/DigitalInputs.o \
./Core/Src/DigitalOutputs.o \
./Core/Src/IO_MappingFunctions.o \
./Core/Src/NMT_functions.o \
./Core/Src/app_freertos.o \
./Core/Src/conf_inputs.o \
./Core/Src/displayCommunication.o \
./Core/Src/fdcan.o \
./Core/Src/flash.o \
./Core/Src/gpio.o \
./Core/Src/iwdg.o \
./Core/Src/main.o \
./Core/Src/softwareTimer_ms.o \
./Core/Src/stm32g0xx_hal_msp.o \
./Core/Src/stm32g0xx_hal_timebase_tim.o \
./Core/Src/stm32g0xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32g0xx.o \
./Core/Src/tim.o \
./Core/Src/usart.o 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o Core/Src/%.su Core/Src/%.cyclo: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G0B1xx '-DCMSIS_device_header=<stm32g0xx.h>' -c -I../Core/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM0 -I../Core/CANopenNode -I../Core/CANopenNode_STM32 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/DigitalInputs.cyclo ./Core/Src/DigitalInputs.d ./Core/Src/DigitalInputs.o ./Core/Src/DigitalInputs.su ./Core/Src/DigitalOutputs.cyclo ./Core/Src/DigitalOutputs.d ./Core/Src/DigitalOutputs.o ./Core/Src/DigitalOutputs.su ./Core/Src/IO_MappingFunctions.cyclo ./Core/Src/IO_MappingFunctions.d ./Core/Src/IO_MappingFunctions.o ./Core/Src/IO_MappingFunctions.su ./Core/Src/NMT_functions.cyclo ./Core/Src/NMT_functions.d ./Core/Src/NMT_functions.o ./Core/Src/NMT_functions.su ./Core/Src/app_freertos.cyclo ./Core/Src/app_freertos.d ./Core/Src/app_freertos.o ./Core/Src/app_freertos.su ./Core/Src/conf_inputs.cyclo ./Core/Src/conf_inputs.d ./Core/Src/conf_inputs.o ./Core/Src/conf_inputs.su ./Core/Src/displayCommunication.cyclo ./Core/Src/displayCommunication.d ./Core/Src/displayCommunication.o ./Core/Src/displayCommunication.su ./Core/Src/fdcan.cyclo ./Core/Src/fdcan.d ./Core/Src/fdcan.o ./Core/Src/fdcan.su ./Core/Src/flash.cyclo ./Core/Src/flash.d ./Core/Src/flash.o ./Core/Src/flash.su ./Core/Src/gpio.cyclo ./Core/Src/gpio.d ./Core/Src/gpio.o ./Core/Src/gpio.su ./Core/Src/iwdg.cyclo ./Core/Src/iwdg.d ./Core/Src/iwdg.o ./Core/Src/iwdg.su ./Core/Src/main.cyclo ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/main.su ./Core/Src/softwareTimer_ms.cyclo ./Core/Src/softwareTimer_ms.d ./Core/Src/softwareTimer_ms.o ./Core/Src/softwareTimer_ms.su ./Core/Src/stm32g0xx_hal_msp.cyclo ./Core/Src/stm32g0xx_hal_msp.d ./Core/Src/stm32g0xx_hal_msp.o ./Core/Src/stm32g0xx_hal_msp.su ./Core/Src/stm32g0xx_hal_timebase_tim.cyclo ./Core/Src/stm32g0xx_hal_timebase_tim.d ./Core/Src/stm32g0xx_hal_timebase_tim.o ./Core/Src/stm32g0xx_hal_timebase_tim.su ./Core/Src/stm32g0xx_it.cyclo ./Core/Src/stm32g0xx_it.d ./Core/Src/stm32g0xx_it.o ./Core/Src/stm32g0xx_it.su ./Core/Src/syscalls.cyclo ./Core/Src/syscalls.d ./Core/Src/syscalls.o ./Core/Src/syscalls.su ./Core/Src/sysmem.cyclo ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/sysmem.su ./Core/Src/system_stm32g0xx.cyclo ./Core/Src/system_stm32g0xx.d ./Core/Src/system_stm32g0xx.o ./Core/Src/system_stm32g0xx.su ./Core/Src/tim.cyclo ./Core/Src/tim.d ./Core/Src/tim.o ./Core/Src/tim.su ./Core/Src/usart.cyclo ./Core/Src/usart.d ./Core/Src/usart.o ./Core/Src/usart.su

.PHONY: clean-Core-2f-Src

