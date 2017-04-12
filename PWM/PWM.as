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
	FNCALL	intlevel1,_Interrupcao
	global	intlevel1
	FNROOT	intlevel1
	global	_duty
	global	_CCPR1H
psect	text76,local,class=CODE,delta=2
global __ptext76
__ptext76:
_CCPR1H	set	22
	global	_CCPR1L
_CCPR1L	set	21
	global	_TMR2
_TMR2	set	17
	global	_CARRY
_CARRY	set	24
	global	_CCP1M0
_CCP1M0	set	184
	global	_CCP1M1
_CCP1M1	set	185
	global	_CCP1M2
_CCP1M2	set	186
	global	_CCP1M3
_CCP1M3	set	187
	global	_CCP1X
_CCP1X	set	189
	global	_CCP1Y
_CCP1Y	set	188
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_T2CKPS0
_T2CKPS0	set	144
	global	_T2CKPS1
_T2CKPS1	set	145
	global	_TMR2IF
_TMR2IF	set	97
	global	_TMR2ON
_TMR2ON	set	146
	global	_TOUTPS0
_TOUTPS0	set	147
	global	_TOUTPS1
_TOUTPS1	set	148
	global	_TOUTPS2
_TOUTPS2	set	149
	global	_TOUTPS3
_TOUTPS3	set	150
	global	_PR2
_PR2	set	146
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TMR2IE
_TMR2IE	set	1121
	global	_TRISB1
_TRISB1	set	1073
	global	_TRISB2
_TRISB2	set	1074
	global	_TRISB3
_TRISB3	set	1075
	global	_TRISC2
_TRISC2	set	1082
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
	file	"PWM.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_duty:
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
	global	?_Interrupcao
?_Interrupcao:	; 0 bytes @ 0x0
	global	??_Interrupcao
??_Interrupcao:	; 0 bytes @ 0x0
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
;; Critical Paths under _Interrupcao in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _Interrupcao in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _Interrupcao in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _Interrupcao in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _Interrupcao in BANK2
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
;; (1) _Interrupcao                                          4     4      0       0
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;
;; _Interrupcao (ROOT)
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
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 31 in file "C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\PWM\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
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
	file	"C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\PWM\pwm.c"
	line	31
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2]
	line	32
	
l2611:	
# 32 "C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\PWM\pwm.c"
	psect config,class=CONFIG,delta=2 ;#
# 32 "C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\PWM\pwm.c"
	dw 0xFFFF & 0xFFFB & 0xFFBF & 0xFFFF & 0xFFFE & 0xFFFF & 0xFF7F & 0xFFFF ;#
psect	maintext
	line	34
	
l2613:	
;pwm.c: 34: TRISB = 0b11111111;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	35
	
l2615:	
;pwm.c: 35: TRISB1 = 0;
	bcf	(1073/8)^080h,(1073)&7
	line	36
	
l2617:	
;pwm.c: 36: TRISB2 = 0;
	bcf	(1074/8)^080h,(1074)&7
	line	37
	
l2619:	
;pwm.c: 37: TRISB3 = 0;
	bcf	(1075/8)^080h,(1075)&7
	line	39
;pwm.c: 39: TRISA = 0b001111;
	movlw	(0Fh)
	movwf	(133)^080h	;volatile
	line	43
	
l2621:	
;pwm.c: 43: CCP1X = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(189/8),(189)&7
	line	44
	
l2623:	
;pwm.c: 44: CCP1Y = 0;
	bcf	(188/8),(188)&7
	line	45
	
l2625:	
;pwm.c: 45: CCPR1L = 0;
	clrf	(21)	;volatile
	line	46
	
l2627:	
;pwm.c: 46: CCPR1H = 0;
	clrf	(22)	;volatile
	line	49
	
l2629:	
;pwm.c: 49: CCP1M3 = 1;
	bsf	(187/8),(187)&7
	line	50
	
l2631:	
;pwm.c: 50: CCP1M2 = 1;
	bsf	(186/8),(186)&7
	line	51
	
l2633:	
;pwm.c: 51: CCP1M1 = 1;
	bsf	(185/8),(185)&7
	line	52
	
l2635:	
;pwm.c: 52: CCP1M0 = 1;
	bsf	(184/8),(184)&7
	line	54
;pwm.c: 54: PR2 = 255;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	59
	
l2637:	
;pwm.c: 59: TRISC2 = 0;
	bcf	(1082/8)^080h,(1082)&7
	line	62
	
l2639:	
;pwm.c: 62: TMR2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(17)	;volatile
	line	63
	
l2641:	
;pwm.c: 63: TOUTPS3 = 0;
	bcf	(150/8),(150)&7
	line	64
	
l2643:	
;pwm.c: 64: TOUTPS2 = 0;
	bcf	(149/8),(149)&7
	line	65
	
l2645:	
;pwm.c: 65: TOUTPS1 = 0;
	bcf	(148/8),(148)&7
	line	66
	
l2647:	
;pwm.c: 66: TOUTPS0 = 0;
	bcf	(147/8),(147)&7
	line	68
	
l2649:	
;pwm.c: 68: T2CKPS1 = 0;
	bcf	(145/8),(145)&7
	line	69
	
l2651:	
;pwm.c: 69: T2CKPS0 = 0;
	bcf	(144/8),(144)&7
	line	71
	
l2653:	
;pwm.c: 71: TMR2IF = 0;
	bcf	(97/8),(97)&7
	line	72
	
l2655:	
;pwm.c: 72: TMR2IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1121/8)^080h,(1121)&7
	line	73
	
l2657:	
;pwm.c: 73: PEIE = 1;
	bsf	(94/8),(94)&7
	line	74
	
l2659:	
;pwm.c: 74: GIE = 1;
	bsf	(95/8),(95)&7
	line	77
	
l2661:	
;pwm.c: 77: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	78
	
l2663:	
;pwm.c: 78: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	175
movwf	((??_main+0)+0+1),f
	movlw	193
movwf	((??_main+0)+0),f
u2237:
	decfsz	((??_main+0)+0),f
	goto	u2237
	decfsz	((??_main+0)+0+1),f
	goto	u2237
	decfsz	((??_main+0)+0+2),f
	goto	u2237
	clrwdt
opt asmopt_on

	line	79
	
l2665:	
;pwm.c: 79: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	80
	
l2667:	
;pwm.c: 80: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	175
movwf	((??_main+0)+0+1),f
	movlw	193
movwf	((??_main+0)+0),f
u2247:
	decfsz	((??_main+0)+0),f
	goto	u2247
	decfsz	((??_main+0)+0+1),f
	goto	u2247
	decfsz	((??_main+0)+0+2),f
	goto	u2247
	clrwdt
opt asmopt_on

	line	81
	
l2669:	
;pwm.c: 81: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	82
	
l2671:	
;pwm.c: 82: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	175
movwf	((??_main+0)+0+1),f
	movlw	193
movwf	((??_main+0)+0),f
u2257:
	decfsz	((??_main+0)+0),f
	goto	u2257
	decfsz	((??_main+0)+0+1),f
	goto	u2257
	decfsz	((??_main+0)+0+2),f
	goto	u2257
	clrwdt
opt asmopt_on

	line	83
	
l2673:	
;pwm.c: 83: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	84
	
l2675:	
;pwm.c: 84: _delay((unsigned long)((500)*(20000000/4000.0)));
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

	line	86
	
l2677:	
;pwm.c: 86: RB2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	line	87
	
l2679:	
;pwm.c: 87: _delay((unsigned long)((500)*(20000000/4000.0)));
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

	line	88
	
l2681:	
;pwm.c: 88: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	89
	
l2683:	
;pwm.c: 89: _delay((unsigned long)((500)*(20000000/4000.0)));
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

	line	90
	
l2685:	
;pwm.c: 90: RB2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	line	91
	
l2687:	
;pwm.c: 91: _delay((unsigned long)((500)*(20000000/4000.0)));
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

	line	92
	
l2689:	
;pwm.c: 92: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	93
	
l2691:	
;pwm.c: 93: _delay((unsigned long)((500)*(20000000/4000.0)));
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

	line	96
	
l2693:	
;pwm.c: 96: RB3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	line	97
	
l2695:	
;pwm.c: 97: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	175
movwf	((??_main+0)+0+1),f
	movlw	193
movwf	((??_main+0)+0),f
u2317:
	decfsz	((??_main+0)+0),f
	goto	u2317
	decfsz	((??_main+0)+0+1),f
	goto	u2317
	decfsz	((??_main+0)+0+2),f
	goto	u2317
	clrwdt
opt asmopt_on

	line	98
	
l2697:	
;pwm.c: 98: RB3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	99
	
l2699:	
;pwm.c: 99: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	175
movwf	((??_main+0)+0+1),f
	movlw	193
movwf	((??_main+0)+0),f
u2327:
	decfsz	((??_main+0)+0),f
	goto	u2327
	decfsz	((??_main+0)+0+1),f
	goto	u2327
	decfsz	((??_main+0)+0+2),f
	goto	u2327
	clrwdt
opt asmopt_on

	line	101
	
l2701:	
;pwm.c: 101: TMR2ON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(146/8),(146)&7
	goto	l2703
	line	103
;pwm.c: 103: while(1)
	
l693:	
	line	106
	
l2703:	
;pwm.c: 104: {
;pwm.c: 106: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	107
	
l2705:	
;pwm.c: 107: duty = 0;
	clrf	(_duty)
	line	108
	
l2707:	
;pwm.c: 108: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u2337:
	decfsz	((??_main+0)+0),f
	goto	u2337
	decfsz	((??_main+0)+0+1),f
	goto	u2337
	decfsz	((??_main+0)+0+2),f
	goto	u2337
	nop2
opt asmopt_on

	line	110
	
l2709:	
;pwm.c: 110: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	111
	
l2711:	
;pwm.c: 111: duty = 63;
	movlw	(03Fh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_duty)
	line	112
	
l2713:	
;pwm.c: 112: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u2347:
	decfsz	((??_main+0)+0),f
	goto	u2347
	decfsz	((??_main+0)+0+1),f
	goto	u2347
	decfsz	((??_main+0)+0+2),f
	goto	u2347
	nop2
opt asmopt_on

	line	114
	
l2715:	
;pwm.c: 114: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	115
	
l2717:	
;pwm.c: 115: duty = 127;
	movlw	(07Fh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_duty)
	line	116
	
l2719:	
;pwm.c: 116: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u2357:
	decfsz	((??_main+0)+0),f
	goto	u2357
	decfsz	((??_main+0)+0+1),f
	goto	u2357
	decfsz	((??_main+0)+0+2),f
	goto	u2357
	nop2
opt asmopt_on

	line	118
	
l2721:	
;pwm.c: 118: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	119
	
l2723:	
;pwm.c: 119: duty = 190;
	movlw	(0BEh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_duty)
	line	120
	
l2725:	
;pwm.c: 120: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u2367:
	decfsz	((??_main+0)+0),f
	goto	u2367
	decfsz	((??_main+0)+0+1),f
	goto	u2367
	decfsz	((??_main+0)+0+2),f
	goto	u2367
	nop2
opt asmopt_on

	line	122
	
l2727:	
;pwm.c: 122: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	123
	
l2729:	
;pwm.c: 123: duty = 255;
	movlw	(0FFh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_duty)
	line	124
	
l2731:	
;pwm.c: 124: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u2377:
	decfsz	((??_main+0)+0),f
	goto	u2377
	decfsz	((??_main+0)+0+1),f
	goto	u2377
	decfsz	((??_main+0)+0+2),f
	goto	u2377
	nop2
opt asmopt_on

	goto	l2703
	line	126
	
l694:	
	line	103
	goto	l2703
	
l695:	
	line	128
	
l696:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Interrupcao
psect	text77,local,class=CODE,delta=2
global __ptext77
__ptext77:

;; *************** function _Interrupcao *****************
;; Defined at:
;;		line 17 in file "C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\PWM\pwm.c"
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
psect	text77
	file	"C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\PWM\pwm.c"
	line	17
	global	__size_of_Interrupcao
	__size_of_Interrupcao	equ	__end_of_Interrupcao-_Interrupcao
	
_Interrupcao:	
	opt	stack 7
; Regs used in _Interrupcao: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_Interrupcao+0)
	movf	fsr0,w
	movwf	(??_Interrupcao+1)
	movf	pclath,w
	movwf	(??_Interrupcao+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_Interrupcao+3)
	ljmp	_Interrupcao
psect	text77
	line	19
	
i1l1743:	
;pwm.c: 19: if(TMR2IE)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1121/8)^080h,(1121)&7
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l690
u1_20:
	line	21
	
i1l1745:	
;pwm.c: 20: {
;pwm.c: 21: CCPR1L = duty;
	movf	(_duty),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	22
	
i1l1747:	
;pwm.c: 22: CCP1X = 0b0;
	bcf	(189/8),(189)&7
	line	23
	
i1l1749:	
;pwm.c: 23: CCP1Y = 0b0;
	bcf	(188/8),(188)&7
	line	25
	
i1l1751:	
;pwm.c: 25: TMR2IF = 0;
	bcf	(97/8),(97)&7
	goto	i1l690
	line	26
	
i1l689:	
	line	28
	
i1l690:	
	movf	(??_Interrupcao+3),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	movf	(??_Interrupcao+2),w
	movwf	pclath
	movf	(??_Interrupcao+1),w
	movwf	fsr0
	swapf	(??_Interrupcao+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_Interrupcao
	__end_of_Interrupcao:
;; =============== function _Interrupcao ends ============

	signat	_Interrupcao,88
psect	text78,local,class=CODE,delta=2
global __ptext78
__ptext78:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
