################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/lvgl/src/themes/simple/lv_theme_simple.c 

OBJS += \
./Core/Src/lvgl/src/themes/simple/lv_theme_simple.o 

C_DEPS += \
./Core/Src/lvgl/src/themes/simple/lv_theme_simple.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/lvgl/src/themes/simple/%.o Core/Src/lvgl/src/themes/simple/%.su Core/Src/lvgl/src/themes/simple/%.cyclo: ../Core/Src/lvgl/src/themes/simple/%.c Core/Src/lvgl/src/themes/simple/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Core/Src/lvgl -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-lvgl-2f-src-2f-themes-2f-simple

clean-Core-2f-Src-2f-lvgl-2f-src-2f-themes-2f-simple:
	-$(RM) ./Core/Src/lvgl/src/themes/simple/lv_theme_simple.cyclo ./Core/Src/lvgl/src/themes/simple/lv_theme_simple.d ./Core/Src/lvgl/src/themes/simple/lv_theme_simple.o ./Core/Src/lvgl/src/themes/simple/lv_theme_simple.su

.PHONY: clean-Core-2f-Src-2f-lvgl-2f-src-2f-themes-2f-simple
