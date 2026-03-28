################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/CANopenNode/301/CO_Emergency.c \
../Core/CANopenNode/301/CO_HBconsumer.c \
../Core/CANopenNode/301/CO_NMT_Heartbeat.c \
../Core/CANopenNode/301/CO_ODinterface.c \
../Core/CANopenNode/301/CO_PDO.c \
../Core/CANopenNode/301/CO_SDOclient.c \
../Core/CANopenNode/301/CO_SDOserver.c \
../Core/CANopenNode/301/CO_SYNC.c \
../Core/CANopenNode/301/CO_TIME.c \
../Core/CANopenNode/301/CO_fifo.c \
../Core/CANopenNode/301/crc16-ccitt.c 

C_DEPS += \
./Core/CANopenNode/301/CO_Emergency.d \
./Core/CANopenNode/301/CO_HBconsumer.d \
./Core/CANopenNode/301/CO_NMT_Heartbeat.d \
./Core/CANopenNode/301/CO_ODinterface.d \
./Core/CANopenNode/301/CO_PDO.d \
./Core/CANopenNode/301/CO_SDOclient.d \
./Core/CANopenNode/301/CO_SDOserver.d \
./Core/CANopenNode/301/CO_SYNC.d \
./Core/CANopenNode/301/CO_TIME.d \
./Core/CANopenNode/301/CO_fifo.d \
./Core/CANopenNode/301/crc16-ccitt.d 

OBJS += \
./Core/CANopenNode/301/CO_Emergency.o \
./Core/CANopenNode/301/CO_HBconsumer.o \
./Core/CANopenNode/301/CO_NMT_Heartbeat.o \
./Core/CANopenNode/301/CO_ODinterface.o \
./Core/CANopenNode/301/CO_PDO.o \
./Core/CANopenNode/301/CO_SDOclient.o \
./Core/CANopenNode/301/CO_SDOserver.o \
./Core/CANopenNode/301/CO_SYNC.o \
./Core/CANopenNode/301/CO_TIME.o \
./Core/CANopenNode/301/CO_fifo.o \
./Core/CANopenNode/301/crc16-ccitt.o 


# Each subdirectory must supply rules for building sources it contributes
Core/CANopenNode/301/%.o Core/CANopenNode/301/%.su Core/CANopenNode/301/%.cyclo: ../Core/CANopenNode/301/%.c Core/CANopenNode/301/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G0B1xx '-DCMSIS_device_header=<stm32g0xx.h>' -c -I../Core/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc -I../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM0 -I../Core/CANopenNode -I../Core/CANopenNode_STM32 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-CANopenNode-2f-301

clean-Core-2f-CANopenNode-2f-301:
	-$(RM) ./Core/CANopenNode/301/CO_Emergency.cyclo ./Core/CANopenNode/301/CO_Emergency.d ./Core/CANopenNode/301/CO_Emergency.o ./Core/CANopenNode/301/CO_Emergency.su ./Core/CANopenNode/301/CO_HBconsumer.cyclo ./Core/CANopenNode/301/CO_HBconsumer.d ./Core/CANopenNode/301/CO_HBconsumer.o ./Core/CANopenNode/301/CO_HBconsumer.su ./Core/CANopenNode/301/CO_NMT_Heartbeat.cyclo ./Core/CANopenNode/301/CO_NMT_Heartbeat.d ./Core/CANopenNode/301/CO_NMT_Heartbeat.o ./Core/CANopenNode/301/CO_NMT_Heartbeat.su ./Core/CANopenNode/301/CO_ODinterface.cyclo ./Core/CANopenNode/301/CO_ODinterface.d ./Core/CANopenNode/301/CO_ODinterface.o ./Core/CANopenNode/301/CO_ODinterface.su ./Core/CANopenNode/301/CO_PDO.cyclo ./Core/CANopenNode/301/CO_PDO.d ./Core/CANopenNode/301/CO_PDO.o ./Core/CANopenNode/301/CO_PDO.su ./Core/CANopenNode/301/CO_SDOclient.cyclo ./Core/CANopenNode/301/CO_SDOclient.d ./Core/CANopenNode/301/CO_SDOclient.o ./Core/CANopenNode/301/CO_SDOclient.su ./Core/CANopenNode/301/CO_SDOserver.cyclo ./Core/CANopenNode/301/CO_SDOserver.d ./Core/CANopenNode/301/CO_SDOserver.o ./Core/CANopenNode/301/CO_SDOserver.su ./Core/CANopenNode/301/CO_SYNC.cyclo ./Core/CANopenNode/301/CO_SYNC.d ./Core/CANopenNode/301/CO_SYNC.o ./Core/CANopenNode/301/CO_SYNC.su ./Core/CANopenNode/301/CO_TIME.cyclo ./Core/CANopenNode/301/CO_TIME.d ./Core/CANopenNode/301/CO_TIME.o ./Core/CANopenNode/301/CO_TIME.su ./Core/CANopenNode/301/CO_fifo.cyclo ./Core/CANopenNode/301/CO_fifo.d ./Core/CANopenNode/301/CO_fifo.o ./Core/CANopenNode/301/CO_fifo.su ./Core/CANopenNode/301/crc16-ccitt.cyclo ./Core/CANopenNode/301/crc16-ccitt.d ./Core/CANopenNode/301/crc16-ccitt.o ./Core/CANopenNode/301/crc16-ccitt.su

.PHONY: clean-Core-2f-CANopenNode-2f-301

