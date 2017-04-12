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
unsigned char data = 0;

// A função da interrupção deve ser void e interrupt e com qualquer nome
void interrupt routine(void)
{
	if(INTF)
	{	
		
		CHS0 = ~CHS0;
		CHS1 = 0;
		CHS2 = 0;

		INTF = 0;
	}
		

	if(ADIF)
	{
		data = ADRESH;
	
		ADIF = 0;
	}

	if(TMR0IF)
	{
		count ++;
		if(count == 153)
		{
			GO_DONE = 1;
			LED_01 = flag;
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
	TRISA1 = 1;

	TRISB = 0b11111111; // CONFIGURA TODAS AS PORTAS B EM ORDEM
	TRISB1 = 0; //CONFIGURA DIZENDO QUE ESSE PINO SERA USADO PRA SAIDA (0) ENTRADA SERIA (1)
	TRISB2 = 0;
	TRISB3 = 0;

	INTE = 1;
	INTF = 0;
	INTEDG = 1;

	ADCS1 = 1;	// FOSC/64
	ADCS2 = 1;
	ADCS0 = 0;
	
	CHS0 = 0;	// CANAL ZERO
	CHS1 = 0;
	CHS2 = 0;
	
	ADFM = 0; //JUSTIFICATIVA A ESQUERDA

	PCFG3 = 1; //CONFIGURAÇÃO DE FUNÇÃO DOS PINOS
	PCFG2 = 1;
	PCFG1 = 1;
	PCFG0 = 0;

	
	T0CS = 0; //Timer no modo TIMER
	T0SE = 0; //Borda de subida
	PSA = 0; //Associa o prescaler para o Timer0
	PS2 = 1; //Gera um presclaer de 1:256
	PS1 = 1;	
	PS0 = 1;
	
	TMR0IF = 0;
	TMR0IE = 1;
	ADIF = 0;
	ADIE = 1;
	PEIE = 1;
	GIE = 1;  // É o que faz o Microcontrolador permitir a interrupção
	// Setando os flags para poder gerar interrupção

		
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
	LED_03 = 0;
	__delay_ms(500);
		
	ADON = 1;

	while(1)
	{
		
		if((data&0b10000000) == 0b10000000){LED_03=1;}else{LED_03=0;} 
		if((data&0b01000000) == 0b01000000){LED_02=1;}else{LED_02=0;}
		
	}
	
}