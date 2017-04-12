opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 9453"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNROOT	_main
	FNCALL	intlevel1,_interupt
	global	intlevel1
	FNROOT	intlevel1
	global	_data
	global	_ADRESH
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_ADRESH	set	30
	global	_ADCS0
_ADCS0	set	254
	global	_ADCS1
_ADCS1	set	255
	global	_ADIF
_ADIF	set	102
	global	_ADON
_ADON	set	248
	global	_CARRY
_CARRY	set	24
	global	_CHS0
_CHS0	set	251
	global	_CHS1
_CHS1	set	252
	global	_CHS2
_CHS2	set	253
	global	_GIE
_GIE	set	95
	global	_GO_DONE
_GO_DONE	set	250
	global	_PEIE
_PEIE	set	94
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_TRISB
_TRISB	set	134
	global	_ADCS2
_ADCS2	set	1278
	global	_ADFM
_ADFM	set	1279
	global	_ADIE
_ADIE	set	1126
	global	_PCFG0
_PCFG0	set	1272
	global	_PCFG1
_PCFG1	set	1273
	global	_PCFG2
_PCFG2	set	1274
	global	_PCFG3
_PCFG3	set	1275
	global	_TRISA0
_TRISA0	set	1064
	global	_TRISB1
_TRISB1	set	1073
	global	_TRISB2
_TRISB2	set	1074
	global	_TRISB3
_TRISB3	set	1075
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
	file	"adc_simples.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_data:
       ds      1

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_interupt
?_interupt:	; 0 bytes @ 0x0
	global	??_interupt
??_interupt:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	4
	global	??_main
??_main:	; 0 bytes @ 0x4
	ds	3
;;Data sizes: Strings 0, constant 0, data 0, bss 1, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7       8
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _interupt in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _interupt in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _interupt in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _interupt in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _interupt in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 3     3      0       0
;;                                              4 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (1) _interupt                                             4     4      0       0
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;
;; _interupt (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      7       8       1       57.1%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       0       2        0.0%
;;ABS                  0      0       8       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       8      12        0.0%

	global	_main
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 27 in file "C:\Users\Felipe\Desktop\7º semestre\Microcontroladores - Felipe, Gugu e Bia\adc_simples\adc_simples.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Felipe\Desktop\7º semestre\Microcontroladores - Felipe, Gugu e Bia\adc_simples\adc_simples.c"
	line	27
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg]
	line	28
	
l2609:	
# 28 "C:\Users\Felipe\Desktop\7º semestre\Microcontroladores - Felipe, Gugu e Bia\adc_simples\adc_simples.c"
	psect config,class=CONFIG,delta=2 ;#
# 28 "C:\Users\Felipe\Desktop\7º semestre\Microcontroladores - Felipe, Gugu e Bia\adc_simples\adc_simples.c"
	dw 0xFFFF & 0xFFFB & 0xFFBF & 0xFFFF & 0xFFFE & 0xFFFF & 0xFF7F & 0xFFFF ;#
psect	maintext
	line	30
;adc_simples.c: 30: TRISA0 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1064/8)^080h,(1064)&7
	line	32
	
l2611:	
;adc_simples.c: 32: TRISB = 0b11111111;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	33
	
l2613:	
;adc_simples.c: 33: TRISB1 = 0;
	bcf	(1073/8)^080h,(1073)&7
	line	34
	
l2615:	
;adc_simples.c: 34: TRISB2 = 0;
	bcf	(1074/8)^080h,(1074)&7
	line	35
	
l2617:	
;adc_simples.c: 35: TRISB3 = 0;
	bcf	(1075/8)^080h,(1075)&7
	line	40
	
l2619:	
;adc_simples.c: 40: ADCS1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(255/8),(255)&7
	line	41
	
l2621:	
;adc_simples.c: 41: ADCS2 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1278/8)^080h,(1278)&7
	line	42
	
l2623:	
;adc_simples.c: 42: ADCS0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(254/8),(254)&7
	line	44
	
l2625:	
;adc_simples.c: 44: CHS0 = 0;
	bcf	(251/8),(251)&7
	line	45
	
l2627:	
;adc_simples.c: 45: CHS1 = 0;
	bcf	(252/8),(252)&7
	line	46
	
l2629:	
;adc_simples.c: 46: CHS2 = 0;
	bcf	(253/8),(253)&7
	line	48
	
l2631:	
;adc_simples.c: 48: ADFM = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1279/8)^080h,(1279)&7
	line	50
	
l2633:	
;adc_simples.c: 50: PCFG3 = 1;
	bsf	(1275/8)^080h,(1275)&7
	line	51
	
l2635:	
;adc_simples.c: 51: PCFG2 = 1;
	bsf	(1274/8)^080h,(1274)&7
	line	52
	
l2637:	
;adc_simples.c: 52: PCFG1 = 1;
	bsf	(1273/8)^080h,(1273)&7
	line	53
	
l2639:	
;adc_simples.c: 53: PCFG0 = 0;
	bcf	(1272/8)^080h,(1272)&7
	line	55
	
l2641:	
;adc_simples.c: 55: ADIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(102/8),(102)&7
	line	56
	
l2643:	
;adc_simples.c: 56: ADIE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1126/8)^080h,(1126)&7
	line	57
	
l2645:	
;adc_simples.c: 57: PEIE = 1;
	bsf	(94/8),(94)&7
	line	58
	
l2647:	
;adc_simples.c: 58: GIE = 1;
	bsf	(95/8),(95)&7
	line	63
	
l2649:	
;adc_simples.c: 63: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	64
;adc_simples.c: 64: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	175
movwf	((??_main+0)+0+1),f
	movlw	193
movwf	((??_main+0)+0),f
u2267:
	decfsz	((??_main+0)+0),f
	goto	u2267
	decfsz	((??_main+0)+0+1),f
	goto	u2267
	decfsz	((??_main+0)+0+2),f
	goto	u2267
	clrwdt
opt asmopt_on

	line	65
	
l2651:	
;adc_simples.c: 65: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	66
;adc_simples.c: 66: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	175
movwf	((??_main+0)+0+1),f
	movlw	193
movwf	((??_main+0)+0),f
u2277:
	decfsz	((??_main+0)+0),f
	goto	u2277
	decfsz	((??_main+0)+0+1),f
	goto	u2277
	decfsz	((??_main+0)+0+2),f
	goto	u2277
	clrwdt
opt asmopt_on

	line	67
	
l2653:	
;adc_simples.c: 67: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	68
;adc_simples.c: 68: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	175
movwf	((??_main+0)+0+1),f
	movlw	193
movwf	((??_main+0)+0),f
u2287:
	decfsz	((??_main+0)+0),f
	goto	u2287
	decfsz	((??_main+0)+0+1),f
	goto	u2287
	decfsz	((??_main+0)+0+2),f
	goto	u2287
	clrwdt
opt asmopt_on

	line	69
	
l2655:	
;adc_simples.c: 69: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	70
;adc_simples.c: 70: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	175
movwf	((??_main+0)+0+1),f
	movlw	193
movwf	((??_main+0)+0),f
u2297:
	decfsz	((??_main+0)+0),f
	goto	u2297
	decfsz	((??_main+0)+0+1),f
	goto	u2297
	decfsz	((??_main+0)+0+2),f
	goto	u2297
	clrwdt
opt asmopt_on

	line	73
	
l2657:	
;adc_simples.c: 73: ADON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(248/8),(248)&7
	line	75
	
l2659:	
;adc_simples.c: 75: GO_DONE = 1;
	bsf	(250/8),(250)&7
	goto	l2661
	line	77
;adc_simples.c: 77: while(1)
	
l692:	
	line	80
	
l2661:	
;adc_simples.c: 78: {
;adc_simples.c: 80: GO_DONE = 1;
	bsf	(250/8),(250)&7
	line	82
;adc_simples.c: 82: while(GO_DONE);
	goto	l693
	
l694:	
	
l693:	
	btfsc	(250/8),(250)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l693
u2220:
	goto	l2663
	
l695:	
	line	84
	
l2663:	
;adc_simples.c: 84: data = ADRESH;
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_data)
	line	87
	
l2665:	
;adc_simples.c: 87: if((data&0b10000000) == 0b10000000){RB3=1;}else{RB3=0;}
	btfss	(_data),(7)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l696
u2230:
	
l2667:	
	bsf	(51/8),(51)&7
	goto	l697
	
l696:	
	bcf	(51/8),(51)&7
	
l697:	
	line	88
;adc_simples.c: 88: if((data&0b01000000) == 0b01000000){RB2=1;}else{RB2=0;}
	btfss	(_data),(6)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l698
u2240:
	
l2669:	
	bsf	(50/8),(50)&7
	goto	l699
	
l698:	
	bcf	(50/8),(50)&7
	
l699:	
	line	89
;adc_simples.c: 89: if((data&0b00100000) == 0b00100000){RB1=1;}else{RB1=0;}
	btfss	(_data),(5)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l700
u2250:
	
l2671:	
	bsf	(49/8),(49)&7
	goto	l2661
	
l700:	
	bcf	(49/8),(49)&7
	goto	l2661
	
l701:	
	goto	l2661
	line	92
	
l702:	
	line	77
	goto	l2661
	
l703:	
	line	94
	
l704:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_interupt
psect	text71,local,class=CODE,delta=2
global __ptext71
__ptext71:

;; *************** function _interupt *****************
;; Defined at:
;;		line 18 in file "C:\Users\Felipe\Desktop\7º semestre\Microcontroladores - Felipe, Gugu e Bia\adc_simples\adc_simples.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text71
	file	"C:\Users\Felipe\Desktop\7º semestre\Microcontroladores - Felipe, Gugu e Bia\adc_simples\adc_simples.c"
	line	18
	global	__size_of_interupt
	__size_of_interupt	equ	__end_of_interupt-_interupt
	
_interupt:	
	opt	stack 7
; Regs used in _interupt: []
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_interupt+0)
	movf	fsr0,w
	movwf	(??_interupt+1)
	movf	pclath,w
	movwf	(??_interupt+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_interupt+3)
	ljmp	_interupt
psect	text71
	line	20
	
i1l689:	
	movf	(??_interupt+3),w
	movwf	btemp+1
	movf	(??_interupt+2),w
	movwf	pclath
	movf	(??_interupt+1),w
	movwf	fsr0
	swapf	(??_interupt+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_interupt
	__end_of_interupt:
;; =============== function _interupt ends ============

	signat	_interupt,88
psect	text72,local,class=CODE,delta=2
global __ptext72
__ptext72:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
