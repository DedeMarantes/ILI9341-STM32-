################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/lvgl/src/widgets/spinner/lv_spinner.c 

OBJS += \
./Core/Src/lvgl/src/widgets/spinner/lv_spinner.o 

C_DEPS += \
./Core/Src/lvgl/src/widgets/spinner/lv_spinner.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/lvgl/src/widgets/spinner/%.o Core/Src/lvgl/src/widgets/spinner/%.su Core/Src/lvgl/src/widgets/spinner/%.cyclo: ../Core/Src/lvgl/src/widgets/spinner/%.c Core/Src/lvgl/src/widgets/spinner/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Core/Src/lvgl -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-lvgl-2f-src-2f-widgets-2f-spinner

clean-Core-2f-Src-2f-lvgl-2f-src-2f-widgets-2f-spinner:
	-$(RM) ./Core/Src/lvgl/src/widgets/spinner/lv_spinner.cyclo ./Core/Src/lvgl/src/widgets/spinner/lv_spinner.d ./Core/Src/lvgl/src/widgets/spinner/lv_spinner.o ./Core/Src/lvgl/src/widgets/spinner/lv_spinner.su

.PHONY: clean-Core-2f-Src-2f-lvgl-2f-src-2f-widgets-2f-spinner

