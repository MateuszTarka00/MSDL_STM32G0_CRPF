################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/CANopenNode/extra/CO_trace.c 

C_DEPS += \
./Core/CANopenNode/extra/CO_trace.d 

OBJS += \
./Core/CANopenNode/extra/CO_trace.o 


# Each subdirectory must supply rules for building sources it contributes
Core/CANopenNode/extra/%.o Core/CANopenNode/extra/%.su Core/CANopenNode/extra/%.cyclo: ../Core/CANopenNode/extra/%.c Core/CANopenNode/extra/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G0B1xx '-DCMSIS_device_header=<stm32g0xx.h>' -c -I../Core/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM0 -I../Core/CANopenNode -I../Core/CANopenNode_STM32 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-CANopenNode-2f-extra

clean-Core-2f-CANopenNode-2f-extra:
	-$(RM) ./Core/CANopenNode/extra/CO_trace.cyclo ./Core/CANopenNode/extra/CO_trace.d ./Core/CANopenNode/extra/CO_trace.o ./Core/CANopenNode/extra/CO_trace.su

.PHONY: clean-Core-2f-CANopenNode-2f-extra

