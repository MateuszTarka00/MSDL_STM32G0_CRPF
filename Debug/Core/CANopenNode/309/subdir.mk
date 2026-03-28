################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/CANopenNode/309/CO_gateway_ascii.c 

C_DEPS += \
./Core/CANopenNode/309/CO_gateway_ascii.d 

OBJS += \
./Core/CANopenNode/309/CO_gateway_ascii.o 


# Each subdirectory must supply rules for building sources it contributes
Core/CANopenNode/309/%.o Core/CANopenNode/309/%.su Core/CANopenNode/309/%.cyclo: ../Core/CANopenNode/309/%.c Core/CANopenNode/309/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G0B1xx '-DCMSIS_device_header=<stm32g0xx.h>' -c -I../Core/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM0 -I../Core/CANopenNode -I../Core/CANopenNode_STM32 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-CANopenNode-2f-309

clean-Core-2f-CANopenNode-2f-309:
	-$(RM) ./Core/CANopenNode/309/CO_gateway_ascii.cyclo ./Core/CANopenNode/309/CO_gateway_ascii.d ./Core/CANopenNode/309/CO_gateway_ascii.o ./Core/CANopenNode/309/CO_gateway_ascii.su

.PHONY: clean-Core-2f-CANopenNode-2f-309

