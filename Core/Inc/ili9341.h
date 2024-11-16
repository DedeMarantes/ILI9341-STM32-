/*
 * ili9341.h
 *
 *  Created on: Nov 10, 2024
 *      Author: andre
 */

#ifndef INC_ILI9341_H_
#define INC_ILI9341_H_
#include "stm32f4xx_hal.h"
#include "color.h"

extern SPI_HandleTypeDef hspi1;

#define CS_PORT GPIOB
#define CS_PIN GPIO_PIN_6
#define RST_PORT GPIOA
#define RST_PIN GPIO_PIN_9
#define DC_PORT GPIOA
#define DC_PIN GPIO_PIN_8
#define HSPI_INSTANCE &hspi1

#define CS_ENABLE()  HAL_GPIO_WritePin(CS_PORT, CS_PIN, GPIO_PIN_RESET)
#define CS_DISABLE() HAL_GPIO_WritePin(CS_PORT, CS_PIN, GPIO_PIN_SET)
#define DATA_ENABLE() HAL_GPIO_WritePin(DC_PORT, DC_PIN, GPIO_PIN_SET)
#define COMMAND_ENABLE() HAL_GPIO_WritePin(DC_PORT, DC_PIN, GPIO_PIN_RESET)

//Comandos
#define SOFT_RESET 0x01
#define DISPLAY_OFF 0x28
#define PWR_CTRL_A 0xCB
#define PWR_CTRL_B 0xCF
#define DRIVER_TIM_CTRL_A 0xE8
#define DRIVER_TIM_CTRL_B 0xEA
#define PWR_SEQ_CTRL 0xED
#define PUMP_RATIO_CTRL 0xF7
#define PWR_CTRL_1 0xC0
#define PWR_CTRL_2 0xC1
#define VCOM_CTRL_1 0xC5
#define VCOM_CTRL_2 0xC7
#define MEM_ACC_CTRL 0x36
#define PIXEL_FMT 0x3A
#define FRAME_RATIO_CTRL 0xB1
#define DISPLAY_FN_CTRL 0xB6
#define GAMMA_SET 0xF2
#define POSITIVE_GAMMA_CORRECTION 0xE0
#define NEGATIVE_GAMMA_CORRECTION 0xE1
#define ENTRY_MODE_SET 0xB7
#define COL_ADDR_SET 0x2A
#define ROW_ADDR_SET 0x2B
#define MEM_ADDR_SET 0x2C
#define SLEEP_OUT 0x11
#define DISPLAY_ON 0x29


typedef enum
{
	LCD_ORIENTATION_PORTRAIT 			= 0,
	LCD_ORIENTATION_LANDSCAPE 			= 1,
	LCD_ORIENTATION_PORTRAIT_MIRROR 	= 2,
	LCD_ORIENTATION_LANDSCAPE_MIRROR 	= 3
} lcdOrientationTypeDef;

typedef struct
{
  uint16_t				width;         // Quantidade de pixels horizontal (default orientation)
  uint16_t				height;        // Quantidade de pixels vertical (default orientation)
  lcdOrientationTypeDef	orientation;   // Orientação do display LCD
} lcdPropertiesTypeDef;


void ili9341_init();
void ili9341_test();
void ili9341_drawPixel(lcdPropertiesTypeDef *properties, uint16_t x, uint16_t y, uint16_t color);
void ili9341_writeData(uint8_t data);
void ili9341_writeCmd(uint8_t cmd);
void ili9341_writeDataBuffer(uint8_t *buffer, uint8_t len);
void ili9341_setOrientation(lcdPropertiesTypeDef *lcdProperties);
void ili9341_hardReset();
void ili9341_SetWindow(uint16_t x0, uint16_t x1, uint16_t y0, uint16_t y1);

#endif /* INC_ILI9341_H_ */
