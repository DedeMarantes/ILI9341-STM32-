################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/lvgl/src/widgets/calendar/lv_calendar.c \
../Core/Src/lvgl/src/widgets/calendar/lv_calendar_chinese.c \
../Core/Src/lvgl/src/widgets/calendar/lv_calendar_header_arrow.c \
../Core/Src/lvgl/src/widgets/calendar/lv_calendar_header_dropdown.c 

OBJS += \
./Core/Src/lvgl/src/widgets/calendar/lv_calendar.o \
./Core/Src/lvgl/src/widgets/calendar/lv_calendar_chinese.o \
./Core/Src/lvgl/src/widgets/calendar/lv_calendar_header_arrow.o \
./Core/Src/lvgl/src/widgets/calendar/lv_calendar_header_dropdown.o 

C_DEPS += \
./Core/Src/lvgl/src/widgets/calendar/lv_calendar.d \
./Core/Src/lvgl/src/widgets/calendar/lv_calendar_chinese.d \
./Core/Src/lvgl/src/widgets/calendar/lv_calendar_header_arrow.d \
./Core/Src/lvgl/src/widgets/calendar/lv_calendar_header_dropdown.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/lvgl/src/widgets/calendar/%.o Core/Src/lvgl/src/widgets/calendar/%.su Core/Src/lvgl/src/widgets/calendar/%.cyclo: ../Core/Src/lvgl/src/widgets/calendar/%.c Core/Src/lvgl/src/widgets/calendar/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Core/Src/lvgl -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-lvgl-2f-src-2f-widgets-2f-calendar

clean-Core-2f-Src-2f-lvgl-2f-src-2f-widgets-2f-calendar:
	-$(RM) ./Core/Src/lvgl/src/widgets/calendar/lv_calendar.cyclo ./Core/Src/lvgl/src/widgets/calendar/lv_calendar.d ./Core/Src/lvgl/src/widgets/calendar/lv_calendar.o ./Core/Src/lvgl/src/widgets/calendar/lv_calendar.su ./Core/Src/lvgl/src/widgets/calendar/lv_calendar_chinese.cyclo ./Core/Src/lvgl/src/widgets/calendar/lv_calendar_chinese.d ./Core/Src/lvgl/src/widgets/calendar/lv_calendar_chinese.o ./Core/Src/lvgl/src/widgets/calendar/lv_calendar_chinese.su ./Core/Src/lvgl/src/widgets/calendar/lv_calendar_header_arrow.cyclo ./Core/Src/lvgl/src/widgets/calendar/lv_calendar_header_arrow.d ./Core/Src/lvgl/src/widgets/calendar/lv_calendar_header_arrow.o ./Core/Src/lvgl/src/widgets/calendar/lv_calendar_header_arrow.su ./Core/Src/lvgl/src/widgets/calendar/lv_calendar_header_dropdown.cyclo ./Core/Src/lvgl/src/widgets/calendar/lv_calendar_header_dropdown.d ./Core/Src/lvgl/src/widgets/calendar/lv_calendar_header_dropdown.o ./Core/Src/lvgl/src/widgets/calendar/lv_calendar_header_dropdown.su

.PHONY: clean-Core-2f-Src-2f-lvgl-2f-src-2f-widgets-2f-calendar

