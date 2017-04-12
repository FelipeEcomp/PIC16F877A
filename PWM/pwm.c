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

unsigned char duty = 0;

void interrupt Interrupcao(void)
{

	if(TMR2IE)
	{
		CCPR1L = duty;
		CCP1X = 0b0;
		CCP1Y = 0b0;

		TMR2IF = 0;
	}

}

void main(void)
{
	__CONFIG(CP_OFF & WDTE_OFF & BOREN_OFF & PWRTE_OFF & FOSC_HS & WRT_OFF & LVP_OFF & CPD_OFF);	

	TRISB = 0b11111111; // CONFIGURA TODAS AS PORTAS B EM ORDEM
	TRISB1 = 0; //CONFIGURA DIZENDO QUE ESSE PINO SERA USADO PRA SAIDA (0) ENTRADA SERIA (1)
	TRISB2 = 0;
	TRISB3 = 0;

	TRISA = 0b001111;

	// Frequencia = 19.53KHz
	/* CONFIGURAÇÃO DO MÓDULO CPP (PWM) NO CCP1CON */
	CCP1X = 0;	//<5>os dois bits menos significativos dos 10bits do registrador "duty cicle" do PWM
	CCP1Y = 0;	// 
	CCPR1L = 0; //
	CCPR1H = 0; //
	
	
	CCP1M3 = 1;
	CCP1M2 = 1;
	CCP1M1 = 1;
	CCP1M0 = 1;

	PR2 = 255;
	



	TRISC2 = 0;

	// CONFIGURA O USO DO TIMER2 - IMPORTANTE PARA O PWM
	TMR2 = 0;
	TOUTPS3 = 0;
	TOUTPS2 = 0;
	TOUTPS1 = 0;
	TOUTPS0 = 0;

	T2CKPS1 = 0;
	T2CKPS0 = 0;

	TMR2IF = 0;
	TMR2IE = 1;
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
		
	LED_02 = 1;
	__delay_ms(500);
	LED_02 = 0;
	__delay_ms(500);
	LED_02 = 1;
	__delay_ms(500);
	LED_02 = 0;
	__delay_ms(500);
		

	LED_03 = 1;
	__delay_ms(500);
	LED_03 = 0;
	__delay_ms(500);
	
	TMR2ON = 1;		// liga o Timer

	while(1)
	{
			
		LED_01 = 1;
		duty = 0;
		__delay_ms(200);

		LED_01 = 0;
		duty = 63;
		__delay_ms(200);

		LED_01 = 1;
		duty = 127;
		__delay_ms(200);

		LED_01 = 0;
		duty = 190;
		__delay_ms(200);

		LED_01 = 1;
		duty = 255;
		__delay_ms(200);

	}
	
}