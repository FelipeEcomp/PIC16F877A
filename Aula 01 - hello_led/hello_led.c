#include <htc.h> //ou #include <16f877A.h>
// Frequ�ncia de Clock do Micro
#ifndef _XTAL_FREQ
	#define _XTAL_FREQ 20000000
#endif

#define LED_01 RB1
#define BUTTON_01 RB0

bit flag = 0;

// A fun��o da interrup��o deve ser void e interrupt e com qualquer nome
void interrupt interrupcao1(void)
{	// A ordem dos if's define qual interrup��o tem a prioridade
	if(INTF)
	{
		// Tratamento da Interrup��o Externa
		if(flag)
		{
			flag = ~flag;
		}
		// Voc� pode fazer alguma coisa e depois dizer que sua interrup��o acabou limpando o flag (INTF = 0)
		INTF = 0;
	}

	if(ADIF)
	{
		// Tratamento da Interrup��o do AD (Interrup��o Interna)
	}

}
// Interrup��o Externa RB0
// Interrup��o Interna 

void main(void)
{
	__CONFIG(CP_OFF & WDTE_OFF & BOREN_OFF & PWRTE_OFF & FOSC_HS & WRT_OFF & LVP_OFF & CPD_OFF);	

	TRISB = 0B11111101; // CONFIGURA TODAS AS PORTAS B EM ORDEM
	TRISB1 = 0; //CONFIGURA DIZENDO QUE ESSE PINO SERA USADO PRA SAIDA (0) ENTRADA SERIA (1)
	TRISB0 = 1;

	// Setando os flags para poder gerar interrup��o
	INTEDG = 1;		// Ativa a interrup��o na borda de subida se = 1 e na de descida se = 0

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
		/*LED_01 = 1;
		__delay_ms(1000);
		LED_01 = 0;
		__delay_ms(1000);*/

		if(BUTTON_01)
		{
			__delay_ms(2000);
			flag=1;

			while(flag==1)
			{
					LED_01 = 1;
					__delay_ms(500);
					LED_01 = 0;
					__delay_ms(500);

					if(BUTTON_01)
					{
						LED_01 = 0;
						flag=0;
					}
			}
		}
	}

}