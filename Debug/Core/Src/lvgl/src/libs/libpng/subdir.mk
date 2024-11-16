################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/lvgl/src/libs/libpng/lv_libpng.c 

OBJS += \
./Core/Src/lvgl/src/libs/libpng/lv_libpng.o 

C_DEPS += \
./Core/Src/lvgl/src/libs/libpng/lv_libpng.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/lvgl/src/libs/libpng/%.o Core/Src/lvgl/src/libs/libpng/%.su Core/Src/lvgl/src/libs/libpng/%.cyclo: ../Core/Src/lvgl/src/libs/libpng/%.c Core/Src/lvgl/src/libs/libpng/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Core/Src/lvgl -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-lvgl-2f-src-2f-libs-2f-libpng

clean-Core-2f-Src-2f-lvgl-2f-src-2f-libs-2f-libpng:
	-$(RM) ./Core/Src/lvgl/src/libs/libpng/lv_libpng.cyclo ./Core/Src/lvgl/src/libs/libpng/lv_libpng.d ./Core/Src/lvgl/src/libs/libpng/lv_libpng.o ./Core/Src/lvgl/src/libs/libpng/lv_libpng.su

.PHONY: clean-Core-2f-Src-2f-lvgl-2f-src-2f-libs-2f-libpng

