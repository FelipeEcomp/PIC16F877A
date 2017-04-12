#include <htc.h> //ou #include <16f877A.h>
// Frequência de Clock do Micro
#ifndef _XTAL_FREQ
	#define _XTAL_FREQ 20000000
#endif

#define LED_01 RB1
#define BUTTON_01 RB0

bit flag = 0;

// A função da interrupção deve ser void e interrupt e com qualquer nome
void interrupt interrupcao1(void)
{	// A ordem dos if's define qual interrupção tem a prioridade
	if(INTF)
	{
		// Tratamento da Interrupção Externa
		if(flag)
		{
			flag = ~flag;
		}
		// Você pode fazer alguma coisa e depois dizer que sua interrupção acabou limpando o flag (INTF = 0)
		INTF = 0;
	}

	if(ADIF)
	{
		// Tratamento da Interrupção do AD (Interrupção Interna)
	}

}
// Interrupção Externa RB0
// Interrupção Interna 

void main(void)
{
	__CONFIG(CP_OFF & WDTE_OFF & BOREN_OFF & PWRTE_OFF & FOSC_HS & WRT_OFF & LVP_OFF & CPD_OFF);	

	TRISB = 0B11111101; // CONFIGURA TODAS AS PORTAS B EM ORDEM
	TRISB1 = 0; //CONFIGURA DIZENDO QUE ESSE PINO SERA USADO PRA SAIDA (0) ENTRADA SERIA (1)
	TRISB0 = 1;

	// Setando os flags para poder gerar interrupção
	INTEDG = 1;		// Ativa a interrupção na borda de subida se = 1 e na de descida se = 0

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