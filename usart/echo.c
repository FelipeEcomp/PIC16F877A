#include <htc.h>
#include <stdio.h>
#include "usart.h"

#ifndef _XTAL_FREQ
	#define _XTAL_FREQ 20000000
#endif

#define BUTTON_01 RB0
#define BUTTON_02 RB7
#define LED_01 RB1
#define LED_02 RB2
#define LED_03 RB3

unsigned char input;

void main(void)
{
	__CONFIG(CP_OFF & WDTE_OFF & BOREN_OFF & PWRTE_OFF & FOSC_HS & WRT_OFF & LVP_OFF & CPD_OFF);

	TRISB = 0b11111111;
	TRISB1 = 0; // Config de saída da PORTB1
	TRISB2 = 0;
	TRISB3 = 0;


	INTCON = 0; // purpose of disabling the interrupts

	init_comms(); // set up the USART - settings defined in usart.h

	
	LED_01 = 0;
	LED_02 = 0;	
	LED_03 = 0;

	/* Teste de Start*/
	LED_01 = 1;
	__delay_ms(500);
	LED_01 = 0;
	__delay_ms(500);
	LED_01 = 1;
	__delay_ms(500);
	LED_01 = 0;
	__delay_ms(500);
	/* FimTeste de Start*/

	LED_01 = 0;
	LED_02 = 0;
	LED_03 = 0;

	printf("\rPress a kay and I will echo it back:\n");
	while(1)
	{
		input = getch();
		printf("\rI detected [%c]",input);
	}

}