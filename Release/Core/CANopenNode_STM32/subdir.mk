################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/CANopenNode_STM32/CO_app_STM32.c \
../Core/CANopenNode_STM32/CO_driver_STM32.c \
../Core/CANopenNode_STM32/CO_storageBlank.c \
../Core/CANopenNode_STM32/OD.c 

C_DEPS += \
./Core/CANopenNode_STM32/CO_app_STM32.d \
./Core/CANopenNode_STM32/CO_driver_STM32.d \
./Core/CANopenNode_STM32/CO_storageBlank.d \
./Core/CANopenNode_STM32/OD.d 

OBJS += \
./Core/CANopenNode_STM32/CO_app_STM32.o \
./Core/CANopenNode_STM32/CO_driver_STM32.o \
./Core/CANopenNode_STM32/CO_storageBlank.o \
./Core/CANopenNode_STM32/OD.o 


# Each subdirectory must supply rules for building sources it contributes
Core/CANopenNode_STM32/CO_app_STM32.o: ../Core/CANopenNode_STM32/CO_app_STM32.c Core/CANopenNode_STM32/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -DUSE_HAL_DRIVER -DSTM32G0B1xx '-DCMSIS_device_header=<stm32g0xx.h>' -c -I../Core/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM0 -I"C:/Users/mateo/STM32CubeIDE/workspace_1.6.1/MSDL_STM32G0_CRPF/Core/CANopenNode" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/CANopenNode_STM32/CO_app_STM32.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/CANopenNode_STM32/CO_driver_STM32.o: ../Core/CANopenNode_STM32/CO_driver_STM32.c Core/CANopenNode_STM32/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -DUSE_HAL_DRIVER -DSTM32G0B1xx '-DCMSIS_device_header=<stm32g0xx.h>' -c -I../Core/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM0 -I"C:/Users/mateo/STM32CubeIDE/workspace_1.6.1/MSDL_STM32G0_CRPF/Core/CANopenNode" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/CANopenNode_STM32/CO_driver_STM32.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/CANopenNode_STM32/CO_storageBlank.o: ../Core/CANopenNode_STM32/CO_storageBlank.c Core/CANopenNode_STM32/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -DUSE_HAL_DRIVER -DSTM32G0B1xx '-DCMSIS_device_header=<stm32g0xx.h>' -c -I../Core/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM0 -I"C:/Users/mateo/STM32CubeIDE/workspace_1.6.1/MSDL_STM32G0_CRPF/Core/CANopenNode" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/CANopenNode_STM32/CO_storageBlank.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Core/CANopenNode_STM32/OD.o: ../Core/CANopenNode_STM32/OD.c Core/CANopenNode_STM32/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -DUSE_HAL_DRIVER -DSTM32G0B1xx '-DCMSIS_device_header=<stm32g0xx.h>' -c -I../Core/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM0 -I"C:/Users/mateo/STM32CubeIDE/workspace_1.6.1/MSDL_STM32G0_CRPF/Core/CANopenNode" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/CANopenNode_STM32/OD.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

