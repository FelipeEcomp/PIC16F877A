#include <htc.h> //ou #include <16f877A.h>
// Frequência de Clock do Micro
#ifndef _XTAL_FREQ
	#define _XTAL_FREQ 20000000
#endif

#define LED_01 RB1
#define BUTTON_01 RB0

bit flag = 0;
bit ant7 = 0;

// A função da interrupção deve ser void e interrupt e com qualquer nome
void interrupt interupt(void)
{	// A ordem dos if's define qual interrupção tem a prioridade
	if(INTF)
	{
		// Tratamento da Interrupção Externa
		flag = ~flag;

		// Você pode fazer alguma coisa e depois dizer que sua interrupção acabou limpando o flag (INTF = 0)
		INTF = 0;
	}

	if(RBIF)
	{
		// Tratamento da interrupção da porta B
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
		// Tratamento da Interrupção do AD (Interrupção Interna)
	} */

}
// Interrupção Externa RB0
// Interrupção Interna 

void main(void)
{
	__CONFIG(CP_OFF & WDTE_OFF & BOREN_OFF & PWRTE_OFF & FOSC_HS & WRT_OFF & LVP_OFF & CPD_OFF);	

	TRISB = 0B10001100; // CONFIGURA TODAS AS PORTAS B EM ORDEM
	TRISB1 = 0; //CONFIGURA DIZENDO QUE ESSE PINO SERA USADO PRA SAIDA (0) ENTRADA SERIA (1)
	TRISB0 = 1;

	// Setando os flags para poder gerar interrupção
	INTEDG = 1;		// Ativa a interrupção na borda de subida se = 1 e na de descida se = 0
	
	RBIF = 0; 		//flag
	RBIE = 1;		//habilita as interrupçoes da porta change
	INTF = 0;		// O flag de interrupção externa que é alterada pelo circuito
	INTE = 1;		// Flag de interrupção externa deverá ser setado em 1 para poder ocorrer a interrupção
	GIE = 1;		// É o que faz o Microcontrolador permitir a interrupção

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

