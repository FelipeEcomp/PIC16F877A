
#include <htc.h>
#include <stdio.h>
#include "usart.h"

void 
putch(unsigned char byte) 
{
	// envia um byte 
	while(!TXIF)	// nível lógico alto quando o registrador está vazio
		continue;
	TXREG = byte;
}

unsigned char 
getch() {
	// recebe um byte 
	while(!RCIF)	//nível lógico alto quando o registrador não está vazio 
		continue;
	return RCREG;	
}

unsigned char
getche(void)
{
	unsigned char c;
	putch(c = getch());
	return c;
}

