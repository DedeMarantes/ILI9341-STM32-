################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/lvgl/src/drivers/sdl/lv_sdl_keyboard.c \
../Core/Src/lvgl/src/drivers/sdl/lv_sdl_mouse.c \
../Core/Src/lvgl/src/drivers/sdl/lv_sdl_mousewheel.c \
../Core/Src/lvgl/src/drivers/sdl/lv_sdl_window.c 

OBJS += \
./Core/Src/lvgl/src/drivers/sdl/lv_sdl_keyboard.o \
./Core/Src/lvgl/src/drivers/sdl/lv_sdl_mouse.o \
./Core/Src/lvgl/src/drivers/sdl/lv_sdl_mousewheel.o \
./Core/Src/lvgl/src/drivers/sdl/lv_sdl_window.o 

C_DEPS += \
./Core/Src/lvgl/src/drivers/sdl/lv_sdl_keyboard.d \
./Core/Src/lvgl/src/drivers/sdl/lv_sdl_mouse.d \
./Core/Src/lvgl/src/drivers/sdl/lv_sdl_mousewheel.d \
./Core/Src/lvgl/src/drivers/sdl/lv_sdl_window.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/lvgl/src/drivers/sdl/%.o Core/Src/lvgl/src/drivers/sdl/%.su Core/Src/lvgl/src/drivers/sdl/%.cyclo: ../Core/Src/lvgl/src/drivers/sdl/%.c Core/Src/lvgl/src/drivers/sdl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Core/Src/lvgl -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-lvgl-2f-src-2f-drivers-2f-sdl

clean-Core-2f-Src-2f-lvgl-2f-src-2f-drivers-2f-sdl:
	-$(RM) ./Core/Src/lvgl/src/drivers/sdl/lv_sdl_keyboard.cyclo ./Core/Src/lvgl/src/drivers/sdl/lv_sdl_keyboard.d ./Core/Src/lvgl/src/drivers/sdl/lv_sdl_keyboard.o ./Core/Src/lvgl/src/drivers/sdl/lv_sdl_keyboard.su ./Core/Src/lvgl/src/drivers/sdl/lv_sdl_mouse.cyclo ./Core/Src/lvgl/src/drivers/sdl/lv_sdl_mouse.d ./Core/Src/lvgl/src/drivers/sdl/lv_sdl_mouse.o ./Core/Src/lvgl/src/drivers/sdl/lv_sdl_mouse.su ./Core/Src/lvgl/src/drivers/sdl/lv_sdl_mousewheel.cyclo ./Core/Src/lvgl/src/drivers/sdl/lv_sdl_mousewheel.d ./Core/Src/lvgl/src/drivers/sdl/lv_sdl_mousewheel.o ./Core/Src/lvgl/src/drivers/sdl/lv_sdl_mousewheel.su ./Core/Src/lvgl/src/drivers/sdl/lv_sdl_window.cyclo ./Core/Src/lvgl/src/drivers/sdl/lv_sdl_window.d ./Core/Src/lvgl/src/drivers/sdl/lv_sdl_window.o ./Core/Src/lvgl/src/drivers/sdl/lv_sdl_window.su

.PHONY: clean-Core-2f-Src-2f-lvgl-2f-src-2f-drivers-2f-sdl

