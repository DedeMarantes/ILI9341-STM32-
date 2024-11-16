/*
 * ili9341.c
 *
 *  Created on: Nov 10, 2024
 *      Author: andre
 */
#include "ili9341.h"


void ili9341_writeCmd(uint8_t cmd){
	COMMAND_ENABLE();//Pino DC em nível baixo - Modo Comando
	CS_ENABLE();
	HAL_SPI_Transmit(HSPI_INSTANCE, &cmd, 1, 1000);
	CS_DISABLE();

}

void ili9341_writeData(uint8_t data) {
	DATA_ENABLE();//colocando pino DC em alto - Modo Dados
	CS_ENABLE();
	HAL_SPI_Transmit(HSPI_INSTANCE, &data, 1, 1000);
	CS_DISABLE();
}

void ili9341_writeDataBuffer(uint8_t *buffer, uint8_t len) {
	DATA_ENABLE();
	CS_ENABLE();
	HAL_SPI_Transmit(HSPI_INSTANCE, buffer, len, 1000);
	CS_DISABLE();
}

void ili9341_writeColor(uint16_t color) {
	DATA_ENABLE();
	CS_ENABLE();
	uint8_t buffer[2];
	buffer[0] = color >> 8;
	buffer[1] = color;
	HAL_SPI_Transmit(HSPI_INSTANCE, buffer, sizeof(buffer), 1000);
	CS_DISABLE();
}
void ili9341_hardReset() {
	//reset por hardware, coloca pino rst em nível baixo por pelo menos 10us
	HAL_GPIO_WritePin(RST_PORT, RST_PIN, GPIO_PIN_RESET);
	HAL_Delay(10);
	HAL_GPIO_WritePin(RST_PORT, RST_PIN, GPIO_PIN_SET);
	HAL_Delay(10);
}

void ili9341_SetWindow(uint16_t x0, uint16_t x1, uint16_t y0, uint16_t y1) {
	//Define posição do pixel na linha e coluna posição inicial e final
	uint8_t buffer[4];
	buffer[0] = x0 >> 8;
	buffer[1] = x0;
	buffer[2] = x1 >> 8;
	buffer[3] = x1;
	ili9341_writeCmd(COL_ADDR_SET);
	ili9341_writeDataBuffer(buffer, sizeof(buffer));
	buffer[0] = y0 >> 8;
	buffer[1] = y0;
	buffer[2] = y1 >> 8;
	buffer[3] = y1;
	ili9341_writeCmd(ROW_ADDR_SET);
	ili9341_writeDataBuffer(buffer, sizeof(buffer));
	ili9341_writeCmd(MEM_ADDR_SET);

}

void ili9341_init() {
	ili9341_hardReset();
	ili9341_writeCmd(SOFT_RESET);
	HAL_Delay(20);
	ili9341_writeCmd(DISPLAY_OFF);
	//Power Control A
	ili9341_writeCmd(PWR_CTRL_A);
	ili9341_writeData(0x39);
	ili9341_writeData(0x2C);
	ili9341_writeData(0x00);
	ili9341_writeData(0x34);
	ili9341_writeData(0x02);
	//Power Control B
	ili9341_writeCmd(PWR_CTRL_B);
	ili9341_writeData(0x00);
	ili9341_writeData(0x81);
	ili9341_writeData(0x30);
	//Driver timing control A
	ili9341_writeCmd(DRIVER_TIM_CTRL_A);
	ili9341_writeData(0x85);
	ili9341_writeData(0x01);
	ili9341_writeData(0x79);
	//Driver timing control B
	ili9341_writeCmd(DRIVER_TIM_CTRL_B);
	ili9341_writeData(0x66);
	ili9341_writeData(0x00);
	//Power on sequence control
	ili9341_writeCmd(PWR_SEQ_CTRL);
	ili9341_writeData(0x64);
	ili9341_writeData(0x03);
	ili9341_writeData(0x12);
	ili9341_writeData(0x81);
	//Pump ratio control
	ili9341_writeCmd(PUMP_RATIO_CTRL);
	ili9341_writeData(0x20);
	//Power control 1
	ili9341_writeCmd(PWR_CTRL_1);
	ili9341_writeData(0x21);
	//Power control 2
	ili9341_writeCmd(PWR_CTRL_2);
	ili9341_writeData(0x10);
	//VCOM Control 1
	ili9341_writeCmd(VCOM_CTRL_1);
	ili9341_writeData(0x35);
	ili9341_writeData(0x3E);
	//VCOM Control 2
	ili9341_writeCmd(VCOM_CTRL_2);
	ili9341_writeData(0xBE);
	//Memory Access Control
	ili9341_writeCmd(MEM_ACC_CTRL);
	ili9341_writeData(0x48);
	//Pixel format
	ili9341_writeCmd(PIXEL_FMT);
	ili9341_writeData(0x55);
	//Frame ratio control
	ili9341_writeCmd(FRAME_RATIO_CTRL);
	ili9341_writeData(0x00);
	ili9341_writeData(0x1B);
	//Display Function Control
	ili9341_writeCmd(DISPLAY_FN_CTRL);
	ili9341_writeData(0x08);
	ili9341_writeData(0x82);
	ili9341_writeData(0x27);
	//3Gamma Function Disable
	ili9341_writeCmd(GAMMA_SET);
	ili9341_writeData(0x02);
	//Positive Gama Correction
	ili9341_writeCmd(POSITIVE_GAMMA_CORRECTION);
	ili9341_writeData(0x0F);
	ili9341_writeData(0x31);
	ili9341_writeData(0x2B);
	ili9341_writeData(0x0C);
	ili9341_writeData(0x0E);
	ili9341_writeData(0x08);
	ili9341_writeData(0x4E);
	ili9341_writeData(0xF1);
	ili9341_writeData(0x37);
	ili9341_writeData(0x07);
	ili9341_writeData(0x10);
	ili9341_writeData(0x03);
	ili9341_writeData(0x0E);
	ili9341_writeData(0x09);
	ili9341_writeData(0x00);
	//Negative Gamma Correction
	ili9341_writeCmd(NEGATIVE_GAMMA_CORRECTION);
	ili9341_writeData(0x00);
	ili9341_writeData(0x0E);
	ili9341_writeData(0x14);
	ili9341_writeData(0x03);
	ili9341_writeData(0x11);
	ili9341_writeData(0x07);
	ili9341_writeData(0x31);
	ili9341_writeData(0xC1);
	ili9341_writeData(0x48);
	ili9341_writeData(0x08);
	ili9341_writeData(0x0F);
	ili9341_writeData(0x0C);
	ili9341_writeData(0x31);
	ili9341_writeData(0x36);
	ili9341_writeData(0x0F);
	//Entry Mode Set
	ili9341_writeCmd(ENTRY_MODE_SET);
	ili9341_writeData(0x07);
	//Exit sleep
	ili9341_writeCmd(SLEEP_OUT);
	HAL_Delay(100);
	//Display on
	ili9341_writeCmd(DISPLAY_ON);
	HAL_Delay(100);

}

void ili9341_setOrientation(lcdPropertiesTypeDef *lcdProperties) {
	ili9341_writeCmd(MEM_ACC_CTRL);
	HAL_Delay(1);
	switch (lcdProperties->orientation) {
		case LCD_ORIENTATION_PORTRAIT:
			ili9341_writeData(0x40 | 0x08);//MX=1 BGR=1
			lcdProperties->width = 240;
			lcdProperties->height = 320;
			break;
		case LCD_ORIENTATION_LANDSCAPE:
			ili9341_writeData(0x20 | 0x08); //MV=1 BGR=1
			lcdProperties->width = 320;
			lcdProperties->height = 240;
			break;
		case LCD_ORIENTATION_PORTRAIT_MIRROR:
			ili9341_writeData(0x80 | 0x08); //MY=1 BGR=1
			lcdProperties->width = 240;
			lcdProperties->height = 320;
			break;
		case LCD_ORIENTATION_LANDSCAPE_MIRROR:
			ili9341_writeData(0x80 | 0x40 | 0x20 | 0x08); //MY =1 MX=1 MV=1 BGR=1
			lcdProperties->width = 320;
			lcdProperties->height = 240;
			break;
		default:
			break;
	}
}

void ili9341_drawPixel(lcdPropertiesTypeDef *properties, uint16_t x, uint16_t y, uint16_t color) {
	//checar valores
	if(x < 0 || y < 0 || x >= properties->width || y >= properties->height ) return;
	//Desenhar pixel de determinada cor em determinada posição (x,y)
	//de 8 em 8 bits valores eixo x e y
	uint8_t bufferC[2] = {color >> 8, color};
	ili9341_SetWindow(x, x+1, y, y+1);
	ili9341_writeDataBuffer(bufferC, sizeof(bufferC));//Escrever dados relacionado a cor
}

void ili9341_test(lcdPropertiesTypeDef *lcdProperties){
	ili9341_SetWindow(0, lcdProperties->width - 1, 0, lcdProperties->height - 1); //definir tela inteira como janela
	uint8_t stripSize = lcdProperties->height / 8;// dividir em 8 colunas
	//loop  para montar 8 colunes uma de cada cor
	for (uint16_t y = 0; y < lcdProperties->height; y++) {
		for (uint16_t x = 0; x < lcdProperties->width; x++) {
			  if (y > lcdProperties->height - 1 - (stripSize * 1)) ili9341_writeColor(COLOR_WHITE);
			  else if (y > lcdProperties->height - 1 - (stripSize * 2)) ili9341_writeColor(COLOR_BLUE);
			  else if (y > lcdProperties->height - 1 - (stripSize * 3)) ili9341_writeColor(COLOR_GREEN);
			  else if (y > lcdProperties->height - 1 - (stripSize * 4)) ili9341_writeColor(COLOR_CYAN);
			  else if (y > lcdProperties->height - 1 - (stripSize * 5)) ili9341_writeColor(COLOR_RED);
			  else if (y > lcdProperties->height - 1 - (stripSize * 6)) ili9341_writeColor(COLOR_MAGENTA);
			  else if (y > lcdProperties->height - 1 - (stripSize * 7)) ili9341_writeColor(COLOR_YELLOW);
			  else ili9341_writeColor(COLOR_BLACK);
		}
	}
}

