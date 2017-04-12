#include <htc.h>
#include <stdio.h>
#include "usart.h"

// Frequência de Clock do Micro
#ifndef _XTAL_FREQ
	#define _XTAL_FREQ 20000000
#endif

#define BUTTON_01 RB0
#define BUTTON_02 RB7
#define LED_01 RB1
#define LED_02 RB2
#define LED_03 RB3
unsigned int dataTemp = 0;
unsigned int dataLuz = 0;

bit flag = 0;
unsigned char count = 0;
float temp = 0;
float luz = 0;
// A função da interrupção deve ser void e interrupt e com qualquer nome
void interrupt interupt(void)
{
	if(TMR0IF)
	{

		count ++;
		if(count == 153)
		{				
			CHS0 = 0;	// CANAL ZERO
			CHS1 = 0;
			CHS2 = 0;
			
			GO_DONE = 1; 

			flag = ~flag;

			count = 0;
		}

		if(count == 75)
		{			
			CHS0 = 1;	// CANAL ZERO
			CHS1 = 0;
			CHS2 = 0;
			
			GO_DONE = 1; 
			
		}


		TMR0IF = 0;
	}
	
	if(ADIF)
	{

		dataLuz = (ADRESH <<2) + (ADRESL >>6);

		dataTemp = (ADRESH <<2) + (ADRESL >>6);
		
		ADIF = 0;
	}

}



// Interrupção Externa RB0
// Interrupção Interna

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

	init_comms(); // set up the USART - settings defined in usart.h
	
	//configura modulo ac


	//CONFIGURAÇÃO DO MODULO AD
	ADCS1 = 1;	// FOSC/64
	ADCS2 = 1;
	ADCS0 = 0;

	CHS0 = 0;	// CANAL ZERO
	CHS1 = 0;
	CHS2 = 0;
	
	ADFM = 0; //JUSTIFICATIVA A ESQUERDA

	PCFG3 = 0; //CONFIGURAÇÃO DE FUNÇÃO DOS PINOS
	PCFG2 = 1;
	PCFG1 = 0;
	PCFG0 = 0;

	ADIF = 0;
	ADIE = 1;





	// Teste de Inicialização
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
		printf("A DATA eh: %d", dataTemp);

		temp = (5 * dataTemp / 1023.0)*100;

		printf("A temperatura eh: %f", temp);
	
		//temperatura
		if(temp > 20)
		{
			LED_02 = 1;	
		}else
		{
			LED_02 = 0;
		}
//====================================

		//Luz

		luz = (5 * dataLuz / 1023.0)*10;

		printf("A luminosidade eh: %f", luz);

		if(luz < 1.20) //nivel 1 de claridade
		{
			LED_03 = 0;
		}
		else if ( luz >= 1.20 && luz < 2.4)
		{
			LED_03 = 1;
		}
		else if ( luz >= 2.4 && luz < 4.8)
		{
			LED_03 = 1;
		}
		else if ( luz >= 4.8)
		{
			LED_03 = 1;
		}

		

		LED_01 = flag;
	
		
	}
	
} 