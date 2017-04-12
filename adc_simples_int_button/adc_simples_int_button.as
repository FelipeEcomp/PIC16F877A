opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

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
	global	_INTE
_INTE	set	92
	global	_INTF
_INTF	set	89
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
	global	_INTEDG
_INTEDG	set	1038
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
	file	"adc_simples_int_button.as"
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
	ds	5
	global	??_main
??_main:	; 0 bytes @ 0x5
	ds	3
;;Data sizes: Strings 0, constant 0, data 0, bss 1, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8       9
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
;;                                              5 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (1) _interupt                                             5     5      0       0
;;                                              0 COMMON     5     5      0
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
;;COMMON               E      8       9       1       64.3%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       0       2        0.0%
;;ABS                  0      0       9       3        0.0%
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
;;DATA                 0      0       9      12        0.0%

	global	_main
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 41 in file "C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\adc_simples_int_button\adc_simples_int_button.c"
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
	file	"C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\adc_simples_int_button\adc_simples_int_button.c"
	line	41
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg]
	line	42
	
l2616:	
# 42 "C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\adc_simples_int_button\adc_simples_int_button.c"
	psect config,class=CONFIG,delta=2 ;#
# 42 "C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\adc_simples_int_button\adc_simples_int_button.c"
	dw 0xFFFF & 0xFFFB & 0xFFBF & 0xFFFF & 0xFFFE & 0xFFFF & 0xFF7F & 0xFFFF ;#
psect	maintext
	line	44
;adc_simples_int_button.c: 44: TRISA0 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1064/8)^080h,(1064)&7
	line	46
	
l2618:	
;adc_simples_int_button.c: 46: TRISB = 0b11111111;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	47
	
l2620:	
;adc_simples_int_button.c: 47: TRISB1 = 0;
	bcf	(1073/8)^080h,(1073)&7
	line	48
	
l2622:	
;adc_simples_int_button.c: 48: TRISB2 = 0;
	bcf	(1074/8)^080h,(1074)&7
	line	49
	
l2624:	
;adc_simples_int_button.c: 49: TRISB3 = 0;
	bcf	(1075/8)^080h,(1075)&7
	line	54
	
l2626:	
;adc_simples_int_button.c: 54: ADCS1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(255/8),(255)&7
	line	55
	
l2628:	
;adc_simples_int_button.c: 55: ADCS2 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1278/8)^080h,(1278)&7
	line	56
	
l2630:	
;adc_simples_int_button.c: 56: ADCS0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(254/8),(254)&7
	line	58
	
l2632:	
;adc_simples_int_button.c: 58: CHS0 = 0;
	bcf	(251/8),(251)&7
	line	59
	
l2634:	
;adc_simples_int_button.c: 59: CHS1 = 0;
	bcf	(252/8),(252)&7
	line	60
	
l2636:	
;adc_simples_int_button.c: 60: CHS2 = 0;
	bcf	(253/8),(253)&7
	line	62
	
l2638:	
;adc_simples_int_button.c: 62: ADFM = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1279/8)^080h,(1279)&7
	line	64
	
l2640:	
;adc_simples_int_button.c: 64: PCFG3 = 1;
	bsf	(1275/8)^080h,(1275)&7
	line	65
	
l2642:	
;adc_simples_int_button.c: 65: PCFG2 = 1;
	bsf	(1274/8)^080h,(1274)&7
	line	66
	
l2644:	
;adc_simples_int_button.c: 66: PCFG1 = 1;
	bsf	(1273/8)^080h,(1273)&7
	line	67
	
l2646:	
;adc_simples_int_button.c: 67: PCFG0 = 0;
	bcf	(1272/8)^080h,(1272)&7
	line	69
	
l2648:	
;adc_simples_int_button.c: 69: INTE = 1;
	bsf	(92/8),(92)&7
	line	70
	
l2650:	
;adc_simples_int_button.c: 70: INTF = 0;
	bcf	(89/8),(89)&7
	line	71
	
l2652:	
;adc_simples_int_button.c: 71: INTEDG = 1;
	bsf	(1038/8)^080h,(1038)&7
	line	72
	
l2654:	
;adc_simples_int_button.c: 72: ADIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(102/8),(102)&7
	line	73
	
l2656:	
;adc_simples_int_button.c: 73: ADIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1126/8)^080h,(1126)&7
	line	74
	
l2658:	
;adc_simples_int_button.c: 74: PEIE = 1;
	bsf	(94/8),(94)&7
	line	75
	
l2660:	
;adc_simples_int_button.c: 75: GIE = 1;
	bsf	(95/8),(95)&7
	line	80
	
l2662:	
;adc_simples_int_button.c: 80: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	81
;adc_simples_int_button.c: 81: _delay((unsigned long)((500)*(20000000/4000.0)));
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

	line	82
	
l2664:	
;adc_simples_int_button.c: 82: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	83
;adc_simples_int_button.c: 83: _delay((unsigned long)((500)*(20000000/4000.0)));
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

	line	84
	
l2666:	
;adc_simples_int_button.c: 84: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	85
;adc_simples_int_button.c: 85: _delay((unsigned long)((500)*(20000000/4000.0)));
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

	line	86
	
l2668:	
;adc_simples_int_button.c: 86: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	87
;adc_simples_int_button.c: 87: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	175
movwf	((??_main+0)+0+1),f
	movlw	193
movwf	((??_main+0)+0),f
u2307:
	decfsz	((??_main+0)+0),f
	goto	u2307
	decfsz	((??_main+0)+0+1),f
	goto	u2307
	decfsz	((??_main+0)+0+2),f
	goto	u2307
	clrwdt
opt asmopt_on

	line	90
	
l2670:	
;adc_simples_int_button.c: 90: ADON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(248/8),(248)&7
	goto	l2672
	line	96
;adc_simples_int_button.c: 96: while(1)
	
l694:	
	line	107
	
l2672:	
;adc_simples_int_button.c: 97: {
;adc_simples_int_button.c: 107: if((data&0b10000000) == 0b10000000){RB3=1;}else{RB3=0;}
	btfss	(_data),(7)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l695
u2240:
	
l2674:	
	bsf	(51/8),(51)&7
	goto	l696
	
l695:	
	bcf	(51/8),(51)&7
	
l696:	
	line	108
;adc_simples_int_button.c: 108: if((data&0b01000000) == 0b01000000){RB2=1;}else{RB2=0;}
	btfss	(_data),(6)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l697
u2250:
	
l2676:	
	bsf	(50/8),(50)&7
	goto	l698
	
l697:	
	bcf	(50/8),(50)&7
	
l698:	
	line	109
;adc_simples_int_button.c: 109: if((data&0b00100000) == 0b00100000){RB1=1;}else{RB1=0;}
	btfss	(_data),(5)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l699
u2260:
	
l2678:	
	bsf	(49/8),(49)&7
	goto	l2672
	
l699:	
	bcf	(49/8),(49)&7
	goto	l2672
	
l700:	
	goto	l2672
	line	113
	
l701:	
	line	96
	goto	l2672
	
l702:	
	line	115
	
l703:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_interupt
psect	text77,local,class=CODE,delta=2
global __ptext77
__ptext77:

;; *************** function _interupt *****************
;; Defined at:
;;		line 18 in file "C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\adc_simples_int_button\adc_simples_int_button.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text77
	file	"C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\adc_simples_int_button\adc_simples_int_button.c"
	line	18
	global	__size_of_interupt
	__size_of_interupt	equ	__end_of_interupt-_interupt
	
_interupt:	
	opt	stack 7
; Regs used in _interupt: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_interupt+1)
	movf	fsr0,w
	movwf	(??_interupt+2)
	movf	pclath,w
	movwf	(??_interupt+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_interupt+4)
	ljmp	_interupt
psect	text77
	line	20
	
i1l1750:	
;adc_simples_int_button.c: 20: if(INTF)
	btfss	(89/8),(89)&7
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l689
u1_20:
	line	22
	
i1l1752:	
;adc_simples_int_button.c: 21: {
;adc_simples_int_button.c: 22: GO_DONE = 1;
	bsf	(250/8),(250)&7
	line	24
;adc_simples_int_button.c: 24: INTF = 0;
	bcf	(89/8),(89)&7
	line	25
	
i1l689:	
	line	27
;adc_simples_int_button.c: 25: }
;adc_simples_int_button.c: 27: if(ADIF)
	btfss	(102/8),(102)&7
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l691
u2_20:
	line	29
	
i1l1754:	
;adc_simples_int_button.c: 28: {
;adc_simples_int_button.c: 29: data = ADRESH;
	movf	(30),w	;volatile
	movwf	(??_interupt+0)+0
	movf	(??_interupt+0)+0,w
	movwf	(_data)
	line	31
	
i1l1756:	
;adc_simples_int_button.c: 31: ADIF = 0;
	bcf	(102/8),(102)&7
	goto	i1l691
	line	32
	
i1l690:	
	line	34
	
i1l691:	
	movf	(??_interupt+4),w
	movwf	btemp+1
	movf	(??_interupt+3),w
	movwf	pclath
	movf	(??_interupt+2),w
	movwf	fsr0
	swapf	(??_interupt+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_interupt
	__end_of_interupt:
;; =============== function _interupt ends ============

	signat	_interupt,88
psect	text78,local,class=CODE,delta=2
global __ptext78
__ptext78:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
