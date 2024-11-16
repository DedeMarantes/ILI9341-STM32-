################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/lvgl/src/widgets/tabview/lv_tabview.c 

OBJS += \
./Core/Src/lvgl/src/widgets/tabview/lv_tabview.o 

C_DEPS += \
./Core/Src/lvgl/src/widgets/tabview/lv_tabview.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/lvgl/src/widgets/tabview/%.o Core/Src/lvgl/src/widgets/tabview/%.su Core/Src/lvgl/src/widgets/tabview/%.cyclo: ../Core/Src/lvgl/src/widgets/tabview/%.c Core/Src/lvgl/src/widgets/tabview/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Core/Src/lvgl -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-lvgl-2f-src-2f-widgets-2f-tabview

clean-Core-2f-Src-2f-lvgl-2f-src-2f-widgets-2f-tabview:
	-$(RM) ./Core/Src/lvgl/src/widgets/tabview/lv_tabview.cyclo ./Core/Src/lvgl/src/widgets/tabview/lv_tabview.d ./Core/Src/lvgl/src/widgets/tabview/lv_tabview.o ./Core/Src/lvgl/src/widgets/tabview/lv_tabview.su

.PHONY: clean-Core-2f-Src-2f-lvgl-2f-src-2f-widgets-2f-tabview

