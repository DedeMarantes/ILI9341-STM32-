################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/lvgl/src/libs/tjpgd/lv_tjpgd.c \
../Core/Src/lvgl/src/libs/tjpgd/tjpgd.c 

OBJS += \
./Core/Src/lvgl/src/libs/tjpgd/lv_tjpgd.o \
./Core/Src/lvgl/src/libs/tjpgd/tjpgd.o 

C_DEPS += \
./Core/Src/lvgl/src/libs/tjpgd/lv_tjpgd.d \
./Core/Src/lvgl/src/libs/tjpgd/tjpgd.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/lvgl/src/libs/tjpgd/%.o Core/Src/lvgl/src/libs/tjpgd/%.su Core/Src/lvgl/src/libs/tjpgd/%.cyclo: ../Core/Src/lvgl/src/libs/tjpgd/%.c Core/Src/lvgl/src/libs/tjpgd/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Core/Src/lvgl -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-lvgl-2f-src-2f-libs-2f-tjpgd

clean-Core-2f-Src-2f-lvgl-2f-src-2f-libs-2f-tjpgd:
	-$(RM) ./Core/Src/lvgl/src/libs/tjpgd/lv_tjpgd.cyclo ./Core/Src/lvgl/src/libs/tjpgd/lv_tjpgd.d ./Core/Src/lvgl/src/libs/tjpgd/lv_tjpgd.o ./Core/Src/lvgl/src/libs/tjpgd/lv_tjpgd.su ./Core/Src/lvgl/src/libs/tjpgd/tjpgd.cyclo ./Core/Src/lvgl/src/libs/tjpgd/tjpgd.d ./Core/Src/lvgl/src/libs/tjpgd/tjpgd.o ./Core/Src/lvgl/src/libs/tjpgd/tjpgd.su

.PHONY: clean-Core-2f-Src-2f-lvgl-2f-src-2f-libs-2f-tjpgd
