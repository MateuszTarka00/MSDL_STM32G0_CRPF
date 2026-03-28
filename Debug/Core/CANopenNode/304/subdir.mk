################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/CANopenNode/304/CO_GFC.c \
../Core/CANopenNode/304/CO_SRDO.c 

C_DEPS += \
./Core/CANopenNode/304/CO_GFC.d \
./Core/CANopenNode/304/CO_SRDO.d 

OBJS += \
./Core/CANopenNode/304/CO_GFC.o \
./Core/CANopenNode/304/CO_SRDO.o 


# Each subdirectory must supply rules for building sources it contributes
Core/CANopenNode/304/%.o Core/CANopenNode/304/%.su Core/CANopenNode/304/%.cyclo: ../Core/CANopenNode/304/%.c Core/CANopenNode/304/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G0B1xx '-DCMSIS_device_header=<stm32g0xx.h>' -c -I../Core/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM0 -I../Core/CANopenNode -I../Core/CANopenNode_STM32 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-CANopenNode-2f-304

clean-Core-2f-CANopenNode-2f-304:
	-$(RM) ./Core/CANopenNode/304/CO_GFC.cyclo ./Core/CANopenNode/304/CO_GFC.d ./Core/CANopenNode/304/CO_GFC.o ./Core/CANopenNode/304/CO_GFC.su ./Core/CANopenNode/304/CO_SRDO.cyclo ./Core/CANopenNode/304/CO_SRDO.d ./Core/CANopenNode/304/CO_SRDO.o ./Core/CANopenNode/304/CO_SRDO.su

.PHONY: clean-Core-2f-CANopenNode-2f-304

