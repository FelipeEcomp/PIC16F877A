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
#define PORTA_RA4 RA4

void main(void)
{
	__CONFIG(CP_OFF & WDTE_OFF & BOREN_OFF & PWRTE_OFF & FOSC_HS & WRT_OFF & LVP_OFF & CPD_OFF);	

	TRISB = 0b11111111; // CONFIGURA TODAS AS PORTAS B EM ORDEM
	TRISB1 = 0; //CONFIGURA DIZENDO QUE ESSE PINO SERA USADO PRA SAIDA (0) ENTRADA SERIA (1)
	TRISB2 = 0;
	TRISB3 = 0;

	TRISA = 0b001111;

	/* Configuração do Comparador Analógico */
	//C2OUT = 1;  //C2 VIN+ < C2 VIN-, se C1INV = 0
	//C1OUT = 1;  //C1 VIN+ < C1 VIN-, se C1INV = 0
	C2INV = 0;  // C2 nao invertido
	C1INV = 0;	// C1 nao invertido
	CIS = 0; // Util when CM2:CM0 = 110
	CM2 = 0; // Two Independent Comparators
	CM1 = 1; //
	CM0 = 1; //

	CMIF = 0;
	CMIE = 0;
	PEIE = 0;
	GIE = 0;
		
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
	LED_03 = 1;
	__delay_ms(500);
	



	while(1)
	{
		
	if(C1OUT)
		{
			LED_02 = 1;
		}else
		{
			LED_02 = 0;
		}
			
		LED_01 = 1;
		__delay_ms(200);
		LED_01 = 0;
		__delay_ms(200);

	}
	
}