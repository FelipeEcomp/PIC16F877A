#include <htc.h> //ou #include <16f877A.h>
// Frequ�ncia de Clock do Micro
#ifndef _XTAL_FREQ
	#define _XTAL_FREQ 20000000
#endif

#define LED_01 RB1
#define BUTTON_01 RB0

bit flag = 0;
bit ant7 = 0;

// A fun��o da interrup��o deve ser void e interrupt e com qualquer nome
void interrupt interupt(void)
{	// A ordem dos if's define qual interrup��o tem a prioridade
	if(INTF)
	{
		// Tratamento da Interrup��o Externa
		flag = ~flag;

		// Voc� pode fazer alguma coisa e depois dizer que sua interrup��o acabou limpando o flag (INTF = 0)
		INTF = 0;
	}

	if(RBIF)
	{
		// Tratamento da interrup��o da porta B
		/* while(BUTTON_01)
		{		
			__delay_ms(500);
			LED_01 = 1;
			__delay_ms(500);
			LED_01 = 0;
		}*/

		if(RBIF)
		{
			if(ant7!=RB7)
			{
				if(RB7==1)
				{
					LED_01 = 1;
					ant7 = 1;
				}else
				{
					LED_01 = 0;
					ant7 = 0;
				}
			}
        	RBIF = 0; //limpa o flag
		}
	}
		

	/* if(ADIF)
	{
		// Tratamento da Interrup��o do AD (Interrup��o Interna)
	} */

}
// Interrup��o Externa RB0
// Interrup��o Interna 

void main(void)
{
	__CONFIG(CP_OFF & WDTE_OFF & BOREN_OFF & PWRTE_OFF & FOSC_HS & WRT_OFF & LVP_OFF & CPD_OFF);	

	TRISB = 0B10001100; // CONFIGURA TODAS AS PORTAS B EM ORDEM
	TRISB1 = 0; //CONFIGURA DIZENDO QUE ESSE PINO SERA USADO PRA SAIDA (0) ENTRADA SERIA (1)
	TRISB0 = 1;

	// Setando os flags para poder gerar interrup��o
	INTEDG = 1;		// Ativa a interrup��o na borda de subida se = 1 e na de descida se = 0
	
	RBIF = 0; 		//flag
	RBIE = 1;		//habilita as interrup�oes da porta change
	INTF = 0;		// O flag de interrup��o externa que � alterada pelo circuito
	INTE = 1;		// Flag de interrup��o externa dever� ser setado em 1 para poder ocorrer a interrup��o
	GIE = 1;		// � o que faz o Microcontrolador permitir a interrup��o

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
		if(flag)
		{
			__delay_ms(500);
			LED_01 = 1;
			__delay_ms(500);
			LED_01 = 0;
		}
	}	
	
}

