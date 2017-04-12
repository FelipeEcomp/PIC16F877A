#include<htc.h>

// Frequência de Clock do Micro
#ifndef _XTAL_FREQ
	#define _XTAL_FREQ 20000000
#endif

#define BUTTON_01 RB0
#define BUTTON_02 RB7
#define LED_01 RB1
#define LED_02 RB2
#define LED_03 RB3

bit flag = 0;
unsigned char count = 0;

// A função da interrupção deve ser void e interrupt e com qualquer nome
void interrupt interupt(void)
{
	if(TMR0IF)
	{
		count ++;
		if(count == 153)
		{
			LED_03 = flag;
			flag = ~flag;

			count = 0;
		}

		TMR0IF = 0;
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

	
	// Teste de Inicialização
	LED_01 = 1;
	__delay_ms(500);
	LED_01 = 0;
	__delay_ms(500);
	LED_01 = 1;
	__delay_ms(500);
	LED_01 = 0;
	__delay_ms(500);
		
	while(1)
	{
		LED_01 = 1;
		__delay_ms(200);
		LED_01 = 0;
		__delay_ms(200);
	}
	
}
 