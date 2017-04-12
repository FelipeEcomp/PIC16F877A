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
	FNCALL	intlevel1,_routine
	global	intlevel1
	FNROOT	intlevel1
	global	_count
	global	_data
	global	_flag
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
	global	_TMR0IE
_TMR0IE	set	93
	global	_TMR0IF
_TMR0IF	set	90
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
	global	_PS0
_PS0	set	1032
	global	_PS1
_PS1	set	1033
	global	_PS2
_PS2	set	1034
	global	_PSA
_PSA	set	1035
	global	_T0CS
_T0CS	set	1037
	global	_T0SE
_T0SE	set	1036
	global	_TRISA0
_TRISA0	set	1064
	global	_TRISA1
_TRISA1	set	1065
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
	file	"temporizador_2.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssCOMMON,class=COMMON,bit,space=1
global __pbitbssCOMMON
__pbitbssCOMMON:
_flag:
       ds      1

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_count:
       ds      1

_data:
       ds      1

; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_routine
?_routine:	; 0 bytes @ 0x0
	global	??_routine
??_routine:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	5
	global	??_main
??_main:	; 0 bytes @ 0x5
	ds	3
;;Data sizes: Strings 0, constant 0, data 0, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8      11
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
;; Critical Paths under _routine in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _routine in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _routine in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _routine in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _routine in BANK2
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
;; (1) _routine                                              5     5      0       0
;;                                              0 COMMON     5     5      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;
;; _routine (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       1       0        7.1%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      8       B       1       78.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       0       2        0.0%
;;ABS                  0      0       B       3        0.0%
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
;;DATA                 0      0       B      12        0.0%

	global	_main
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 60 in file "C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\temporizador_2\temporizador_2.c"
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
	file	"C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\temporizador_2\temporizador_2.c"
	line	60
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg]
	line	61
	
l2642:	
# 61 "C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\temporizador_2\temporizador_2.c"
	psect config,class=CONFIG,delta=2 ;#
# 61 "C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\temporizador_2\temporizador_2.c"
	dw 0xFFFF & 0xFFFB & 0xFFBF & 0xFFFF & 0xFFFE & 0xFFFF & 0xFF7F & 0xFFFF ;#
psect	maintext
	line	63
;temporizador_2.c: 63: TRISA0 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1064/8)^080h,(1064)&7
	line	64
;temporizador_2.c: 64: TRISA1 = 1;
	bsf	(1065/8)^080h,(1065)&7
	line	66
	
l2644:	
;temporizador_2.c: 66: TRISB = 0b11111111;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	67
	
l2646:	
;temporizador_2.c: 67: TRISB1 = 0;
	bcf	(1073/8)^080h,(1073)&7
	line	68
	
l2648:	
;temporizador_2.c: 68: TRISB2 = 0;
	bcf	(1074/8)^080h,(1074)&7
	line	69
	
l2650:	
;temporizador_2.c: 69: TRISB3 = 0;
	bcf	(1075/8)^080h,(1075)&7
	line	71
	
l2652:	
;temporizador_2.c: 71: INTE = 1;
	bsf	(92/8),(92)&7
	line	72
	
l2654:	
;temporizador_2.c: 72: INTF = 0;
	bcf	(89/8),(89)&7
	line	73
	
l2656:	
;temporizador_2.c: 73: INTEDG = 1;
	bsf	(1038/8)^080h,(1038)&7
	line	75
	
l2658:	
;temporizador_2.c: 75: ADCS1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(255/8),(255)&7
	line	76
	
l2660:	
;temporizador_2.c: 76: ADCS2 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1278/8)^080h,(1278)&7
	line	77
	
l2662:	
;temporizador_2.c: 77: ADCS0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(254/8),(254)&7
	line	79
	
l2664:	
;temporizador_2.c: 79: CHS0 = 0;
	bcf	(251/8),(251)&7
	line	80
	
l2666:	
;temporizador_2.c: 80: CHS1 = 0;
	bcf	(252/8),(252)&7
	line	81
	
l2668:	
;temporizador_2.c: 81: CHS2 = 0;
	bcf	(253/8),(253)&7
	line	83
	
l2670:	
;temporizador_2.c: 83: ADFM = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1279/8)^080h,(1279)&7
	line	85
	
l2672:	
;temporizador_2.c: 85: PCFG3 = 1;
	bsf	(1275/8)^080h,(1275)&7
	line	86
	
l2674:	
;temporizador_2.c: 86: PCFG2 = 1;
	bsf	(1274/8)^080h,(1274)&7
	line	87
	
l2676:	
;temporizador_2.c: 87: PCFG1 = 1;
	bsf	(1273/8)^080h,(1273)&7
	line	88
	
l2678:	
;temporizador_2.c: 88: PCFG0 = 0;
	bcf	(1272/8)^080h,(1272)&7
	line	91
	
l2680:	
;temporizador_2.c: 91: T0CS = 0;
	bcf	(1037/8)^080h,(1037)&7
	line	92
	
l2682:	
;temporizador_2.c: 92: T0SE = 0;
	bcf	(1036/8)^080h,(1036)&7
	line	93
	
l2684:	
;temporizador_2.c: 93: PSA = 0;
	bcf	(1035/8)^080h,(1035)&7
	line	94
	
l2686:	
;temporizador_2.c: 94: PS2 = 1;
	bsf	(1034/8)^080h,(1034)&7
	line	95
	
l2688:	
;temporizador_2.c: 95: PS1 = 1;
	bsf	(1033/8)^080h,(1033)&7
	line	96
	
l2690:	
;temporizador_2.c: 96: PS0 = 1;
	bsf	(1032/8)^080h,(1032)&7
	line	98
	
l2692:	
;temporizador_2.c: 98: TMR0IF = 0;
	bcf	(90/8),(90)&7
	line	99
	
l2694:	
;temporizador_2.c: 99: TMR0IE = 1;
	bsf	(93/8),(93)&7
	line	100
	
l2696:	
;temporizador_2.c: 100: ADIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(102/8),(102)&7
	line	101
	
l2698:	
;temporizador_2.c: 101: ADIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1126/8)^080h,(1126)&7
	line	102
	
l2700:	
;temporizador_2.c: 102: PEIE = 1;
	bsf	(94/8),(94)&7
	line	103
	
l2702:	
;temporizador_2.c: 103: GIE = 1;
	bsf	(95/8),(95)&7
	line	108
	
l2704:	
;temporizador_2.c: 108: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	109
;temporizador_2.c: 109: _delay((unsigned long)((500)*(20000000/4000.0)));
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

	line	110
	
l2706:	
;temporizador_2.c: 110: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	111
;temporizador_2.c: 111: _delay((unsigned long)((500)*(20000000/4000.0)));
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

	line	112
	
l2708:	
;temporizador_2.c: 112: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	113
;temporizador_2.c: 113: _delay((unsigned long)((500)*(20000000/4000.0)));
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

	line	114
	
l2710:	
;temporizador_2.c: 114: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	115
;temporizador_2.c: 115: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	175
movwf	((??_main+0)+0+1),f
	movlw	193
movwf	((??_main+0)+0),f
u2337:
	decfsz	((??_main+0)+0),f
	goto	u2337
	decfsz	((??_main+0)+0+1),f
	goto	u2337
	decfsz	((??_main+0)+0+2),f
	goto	u2337
	clrwdt
opt asmopt_on

	line	117
	
l2712:	
;temporizador_2.c: 117: RB2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	line	118
;temporizador_2.c: 118: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	175
movwf	((??_main+0)+0+1),f
	movlw	193
movwf	((??_main+0)+0),f
u2347:
	decfsz	((??_main+0)+0),f
	goto	u2347
	decfsz	((??_main+0)+0+1),f
	goto	u2347
	decfsz	((??_main+0)+0+2),f
	goto	u2347
	clrwdt
opt asmopt_on

	line	119
	
l2714:	
;temporizador_2.c: 119: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	120
;temporizador_2.c: 120: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	175
movwf	((??_main+0)+0+1),f
	movlw	193
movwf	((??_main+0)+0),f
u2357:
	decfsz	((??_main+0)+0),f
	goto	u2357
	decfsz	((??_main+0)+0+1),f
	goto	u2357
	decfsz	((??_main+0)+0+2),f
	goto	u2357
	clrwdt
opt asmopt_on

	line	121
	
l2716:	
;temporizador_2.c: 121: RB2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	line	122
;temporizador_2.c: 122: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	175
movwf	((??_main+0)+0+1),f
	movlw	193
movwf	((??_main+0)+0),f
u2367:
	decfsz	((??_main+0)+0),f
	goto	u2367
	decfsz	((??_main+0)+0+1),f
	goto	u2367
	decfsz	((??_main+0)+0+2),f
	goto	u2367
	clrwdt
opt asmopt_on

	line	123
	
l2718:	
;temporizador_2.c: 123: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	124
;temporizador_2.c: 124: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	175
movwf	((??_main+0)+0+1),f
	movlw	193
movwf	((??_main+0)+0),f
u2377:
	decfsz	((??_main+0)+0),f
	goto	u2377
	decfsz	((??_main+0)+0+1),f
	goto	u2377
	decfsz	((??_main+0)+0+2),f
	goto	u2377
	clrwdt
opt asmopt_on

	line	127
	
l2720:	
;temporizador_2.c: 127: RB3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	line	128
;temporizador_2.c: 128: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	175
movwf	((??_main+0)+0+1),f
	movlw	193
movwf	((??_main+0)+0),f
u2387:
	decfsz	((??_main+0)+0),f
	goto	u2387
	decfsz	((??_main+0)+0+1),f
	goto	u2387
	decfsz	((??_main+0)+0+2),f
	goto	u2387
	clrwdt
opt asmopt_on

	line	129
	
l2722:	
;temporizador_2.c: 129: RB3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	130
;temporizador_2.c: 130: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	175
movwf	((??_main+0)+0+1),f
	movlw	193
movwf	((??_main+0)+0),f
u2397:
	decfsz	((??_main+0)+0),f
	goto	u2397
	decfsz	((??_main+0)+0+1),f
	goto	u2397
	decfsz	((??_main+0)+0+2),f
	goto	u2397
	clrwdt
opt asmopt_on

	line	131
	
l2724:	
;temporizador_2.c: 131: RB3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	line	132
;temporizador_2.c: 132: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	175
movwf	((??_main+0)+0+1),f
	movlw	193
movwf	((??_main+0)+0),f
u2407:
	decfsz	((??_main+0)+0),f
	goto	u2407
	decfsz	((??_main+0)+0+1),f
	goto	u2407
	decfsz	((??_main+0)+0+2),f
	goto	u2407
	clrwdt
opt asmopt_on

	line	133
	
l2726:	
;temporizador_2.c: 133: RB3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	134
;temporizador_2.c: 134: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	175
movwf	((??_main+0)+0+1),f
	movlw	193
movwf	((??_main+0)+0),f
u2417:
	decfsz	((??_main+0)+0),f
	goto	u2417
	decfsz	((??_main+0)+0+1),f
	goto	u2417
	decfsz	((??_main+0)+0+2),f
	goto	u2417
	clrwdt
opt asmopt_on

	line	136
	
l2728:	
;temporizador_2.c: 136: ADON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(248/8),(248)&7
	goto	l2730
	line	138
;temporizador_2.c: 138: while(1)
	
l700:	
	line	141
	
l2730:	
;temporizador_2.c: 139: {
;temporizador_2.c: 141: if((data&0b10000000) == 0b10000000){RB3=1;}else{RB3=0;}
	btfss	(_data),(7)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l701
u2280:
	
l2732:	
	bsf	(51/8),(51)&7
	goto	l702
	
l701:	
	bcf	(51/8),(51)&7
	
l702:	
	line	142
;temporizador_2.c: 142: if((data&0b01000000) == 0b01000000){RB2=1;}else{RB2=0;}
	btfss	(_data),(6)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l703
u2290:
	
l2734:	
	bsf	(50/8),(50)&7
	goto	l2730
	
l703:	
	bcf	(50/8),(50)&7
	goto	l2730
	
l704:	
	goto	l2730
	line	144
	
l705:	
	line	138
	goto	l2730
	
l706:	
	line	146
	
l707:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_routine
psect	text77,local,class=CODE,delta=2
global __ptext77
__ptext77:

;; *************** function _routine *****************
;; Defined at:
;;		line 20 in file "C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\temporizador_2\temporizador_2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
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
	file	"C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\temporizador_2\temporizador_2.c"
	line	20
	global	__size_of_routine
	__size_of_routine	equ	__end_of_routine-_routine
	
_routine:	
	opt	stack 7
; Regs used in _routine: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_routine+1)
	movf	fsr0,w
	movwf	(??_routine+2)
	movf	pclath,w
	movwf	(??_routine+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_routine+4)
	ljmp	_routine
psect	text77
	line	21
	
i1l1754:	
;temporizador_2.c: 21: if(INTF)
	btfss	(89/8),(89)&7
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l1764
u1_20:
	line	24
	
i1l1756:	
;temporizador_2.c: 22: {
;temporizador_2.c: 24: CHS0 = ~CHS0;
	movlw	1<<((251)&7)
	xorwf	((251)/8),f
	line	25
	
i1l1758:	
;temporizador_2.c: 25: CHS1 = 0;
	bcf	(252/8),(252)&7
	line	26
	
i1l1760:	
;temporizador_2.c: 26: CHS2 = 0;
	bcf	(253/8),(253)&7
	line	28
	
i1l1762:	
;temporizador_2.c: 28: INTF = 0;
	bcf	(89/8),(89)&7
	goto	i1l1764
	line	29
	
i1l693:	
	line	32
	
i1l1764:	
;temporizador_2.c: 29: }
;temporizador_2.c: 32: if(ADIF)
	btfss	(102/8),(102)&7
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l1770
u2_20:
	line	34
	
i1l1766:	
;temporizador_2.c: 33: {
;temporizador_2.c: 34: data = ADRESH;
	movf	(30),w	;volatile
	movwf	(??_routine+0)+0
	movf	(??_routine+0)+0,w
	movwf	(_data)
	line	36
	
i1l1768:	
;temporizador_2.c: 36: ADIF = 0;
	bcf	(102/8),(102)&7
	goto	i1l1770
	line	37
	
i1l694:	
	line	39
	
i1l1770:	
;temporizador_2.c: 37: }
;temporizador_2.c: 39: if(TMR0IF)
	btfss	(90/8),(90)&7
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l697
u3_20:
	line	41
	
i1l1772:	
;temporizador_2.c: 40: {
;temporizador_2.c: 41: count ++;
	movlw	(01h)
	movwf	(??_routine+0)+0
	movf	(??_routine+0)+0,w
	addwf	(_count),f
	line	42
	
i1l1774:	
;temporizador_2.c: 42: if(count == 153)
	movf	(_count),w
	xorlw	099h
	skipz
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l1782
u4_20:
	line	44
	
i1l1776:	
;temporizador_2.c: 43: {
;temporizador_2.c: 44: GO_DONE = 1;
	bsf	(250/8),(250)&7
	line	45
;temporizador_2.c: 45: RB1 = flag;
	btfsc	(_flag/8),(_flag)&7
	goto	u5_21
	goto	u5_20
	
u5_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	goto	u6_24
u5_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
u6_24:
	line	46
	
i1l1778:	
;temporizador_2.c: 46: flag = ~flag;
	movlw	1<<((_flag)&7)
	xorwf	((_flag)/8),f
	line	48
	
i1l1780:	
;temporizador_2.c: 48: count = 0;
	clrf	(_count)
	goto	i1l1782
	line	49
	
i1l696:	
	line	51
	
i1l1782:	
;temporizador_2.c: 49: }
;temporizador_2.c: 51: TMR0IF = 0;
	bcf	(90/8),(90)&7
	goto	i1l697
	line	52
	
i1l695:	
	line	53
	
i1l697:	
	movf	(??_routine+4),w
	movwf	btemp+1
	movf	(??_routine+3),w
	movwf	pclath
	movf	(??_routine+2),w
	movwf	fsr0
	swapf	(??_routine+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_routine
	__end_of_routine:
;; =============== function _routine ends ============

	signat	_routine,88
psect	text78,local,class=CODE,delta=2
global __ptext78
__ptext78:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
