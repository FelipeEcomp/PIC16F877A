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

unsigned char data = 0;

// A função da interrupção deve ser void e interrupt e com qualquer nome
void interrupt interupt(void)
{

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
	
	

	//CONFIGURAÇÃO DO MODULO AD
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

	ADIF = 0;
	ADIE = 0;
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
	

	ADON = 1; //LIGA O MODULO AD
	
	GO_DONE = 1;
	
	while(1)
	{

	GO_DONE = 1; // INICIA UMA UNICA CONVERSÃO AD

	while(GO_DONE); // Travando o codigo esperando o fim da  conversão AD
		
	data = ADRESH;  // Utilizando interrupção nao precisa desta parte do código	

	// Zera todos e deixa so o mais significativo
	if((data&0b10000000) == 0b10000000){LED_03=1;}else{LED_03=0;} 
	if((data&0b01000000) == 0b01000000){LED_02=1;}else{LED_02=0;}
	if((data&0b00100000) == 0b00100000){LED_01=1;}else{LED_01=0;}
	

	}
	
}

