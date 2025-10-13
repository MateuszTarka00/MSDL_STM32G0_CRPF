################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/CANopenNode/309/CO_gateway_ascii.c 

C_DEPS += \
./Core/CANopenNode/309/CO_gateway_ascii.d 

OBJS += \
./Core/CANopenNode/309/CO_gateway_ascii.o 


# Each subdirectory must supply rules for building sources it contributes
Core/CANopenNode/309/CO_gateway_ascii.o: ../Core/CANopenNode/309/CO_gateway_ascii.c Core/CANopenNode/309/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -DUSE_HAL_DRIVER -DSTM32G0B1xx '-DCMSIS_device_header=<stm32g0xx.h>' -c -I../Core/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM0 -I"C:/Users/mateo/STM32CubeIDE/workspace_1.6.1/MSDL_STM32G0_CRPF/Core/CANopenNode" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/CANopenNode/309/CO_gateway_ascii.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

