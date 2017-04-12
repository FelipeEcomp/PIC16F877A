#include <htc.h>
#include <stdio.h>
#include "usart.h"

// Frequ�ncia de Clock do Micro
#ifndef _XTAL_FREQ
	#define _XTAL_FREQ 20000000
#endif

#define BUTTON_01 RB0
#define BUTTON_02 RB7
#define LED_01 RB1
#define LED_02 RB2
#define LED_03 RB3
unsigned int data = 0;

bit flag = 0;
unsigned char count = 0;
float temp = 0;
// A fun��o da interrup��o deve ser void e interrupt e com qualquer nome
void interrupt interupt(void)
{
	if(TMR0IF)
	{

		count ++;
		if(count == 153)
		{
			data = ADRESH;
		
			GO_DONE = 1; ADIF = 0;

			flag = ~flag;

			count = 0;
		}

		TMR0IF = 0;
	}
}



// Interrup��o Externa RB0
// Interrup��o Interna

void main(void)
{
	__CONFIG(CP_OFF & WDTE_OFF & BOREN_OFF & PWRTE_OFF & FOSC_HS & WRT_OFF & LVP_OFF & CPD_OFF);	

	TRISA0 = 1;

	TRISB = 0b11111111; // CONFIGURA TODAS AS PORTAS B EM ORDEM
	TRISB1 = 0; //CONFIGURA DIZENDO QUE ESSE PINO SERA USADO PRA SAIDA (0) ENTRADA SERIA (1)
	TRISB2 = 0;
	TRISB3 = 0;
	
	T0CS = 0; //Timer no modo TIMER
	T0SE = 0;
	PSA = 0;
	PS2 = 1;
	PS1 = 1;	
	PS0 = 1;

	TMR0IF = 0;
	TMR0IE = 1;
	PEIE = 1;
	GIE = 1;

	
//configura modulo ac


	//CONFIGURA��O DO MODULO AD
	ADCS1 = 1;	// FOSC/64
	ADCS2 = 1;
	ADCS0 = 0;

	CHS0 = 0;	// CANAL ZERO
	CHS1 = 0;
	CHS2 = 0;
	
	ADFM = 0; //JUSTIFICATIVA A ESQUERDA

	PCFG3 = 1; //CONFIGURA��O DE FUN��O DOS PINOS
	PCFG2 = 1;
	PCFG1 = 1;
	PCFG0 = 0;

ADIF = 0;
	ADIE = 1;





	// Teste de Inicializa��o
	LED_01 = 1;
	__delay_ms(500);
	LED_01 = 0;
	__delay_ms(500);
	LED_01 = 1;
	__delay_ms(500);
	LED_01 = 0;
	__delay_ms(500);
	

	ADON = 1; //LIGA O MODULO AD
	
	GO_DONE = 1;	

	while(1)
	{
		//temperatura
		temp = 5 * data / 1023.0;
		printf("A temperatura eh: %f", temp);
	
		if(temp == 25 || temp == 26 || temp == 27)
		{
			LED_01 = 1;	
		}
		



	}
	
}
 