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
	global	_ant7
	global	_flag
	global	_CARRY
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_INTE
_INTE	set	92
	global	_INTF
_INTF	set	89
	global	_RB1
_RB1	set	49
	global	_RB7
_RB7	set	55
	global	_RBIE
_RBIE	set	91
	global	_RBIF
_RBIF	set	88
	global	_TRISB
_TRISB	set	134
	global	_INTEDG
_INTEDG	set	1038
	global	_TRISB0
_TRISB0	set	1072
	global	_TRISB1
_TRISB1	set	1073
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
	file	"hello_led.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssCOMMON,class=COMMON,bit,space=1
global __pbitbssCOMMON
__pbitbssCOMMON:
_ant7:
       ds      1

_flag:
       ds      1

; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
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
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
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
;;BITCOMMON            E      0       1       0        7.1%
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
;;		line 65 in file "C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\interrupcao.c"
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
	file	"C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\interrupcao.c"
	line	65
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg]
	line	66
	
l2625:	
# 66 "C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\interrupcao.c"
	psect config,class=CONFIG,delta=2 ;#
# 66 "C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\interrupcao.c"
	dw 0xFFFF & 0xFFFB & 0xFFBF & 0xFFFF & 0xFFFE & 0xFFFF & 0xFF7F & 0xFFFF ;#
psect	maintext
	line	68
	
l2627:	
;interrupcao.c: 68: TRISB = 0B10001100;
	movlw	(08Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	69
	
l2629:	
;interrupcao.c: 69: TRISB1 = 0;
	bcf	(1073/8)^080h,(1073)&7
	line	70
	
l2631:	
;interrupcao.c: 70: TRISB0 = 1;
	bsf	(1072/8)^080h,(1072)&7
	line	73
	
l2633:	
;interrupcao.c: 73: INTEDG = 1;
	bsf	(1038/8)^080h,(1038)&7
	line	75
	
l2635:	
;interrupcao.c: 75: RBIF = 0;
	bcf	(88/8),(88)&7
	line	76
	
l2637:	
;interrupcao.c: 76: RBIE = 1;
	bsf	(91/8),(91)&7
	line	77
	
l2639:	
;interrupcao.c: 77: INTF = 0;
	bcf	(89/8),(89)&7
	line	78
	
l2641:	
;interrupcao.c: 78: INTE = 1;
	bsf	(92/8),(92)&7
	line	79
	
l2643:	
;interrupcao.c: 79: GIE = 1;
	bsf	(95/8),(95)&7
	line	81
	
l2645:	
;interrupcao.c: 81: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	82
;interrupcao.c: 82: _delay((unsigned long)((500)*(20000000/4000.0)));
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

	line	83
	
l2647:	
;interrupcao.c: 83: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	84
;interrupcao.c: 84: _delay((unsigned long)((500)*(20000000/4000.0)));
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

	line	85
	
l2649:	
;interrupcao.c: 85: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	86
;interrupcao.c: 86: _delay((unsigned long)((500)*(20000000/4000.0)));
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

	line	87
	
l2651:	
;interrupcao.c: 87: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	88
;interrupcao.c: 88: _delay((unsigned long)((500)*(20000000/4000.0)));
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

	goto	l2653
	line	90
;interrupcao.c: 90: while(1)
	
l700:	
	line	92
	
l2653:	
;interrupcao.c: 91: {
;interrupcao.c: 92: if(flag)
	btfss	(_flag/8),(_flag)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l2653
u2290:
	line	94
	
l2655:	
;interrupcao.c: 93: {
;interrupcao.c: 94: _delay((unsigned long)((500)*(20000000/4000.0)));
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

	line	95
	
l2657:	
;interrupcao.c: 95: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	96
;interrupcao.c: 96: _delay((unsigned long)((500)*(20000000/4000.0)));
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

	line	97
	
l2659:	
;interrupcao.c: 97: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	goto	l2653
	line	98
	
l701:	
	goto	l2653
	line	99
	
l702:	
	line	90
	goto	l2653
	
l703:	
	line	101
	
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
;;		line 15 in file "C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\interrupcao.c"
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
psect	text71
	file	"C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\interrupcao.c"
	line	15
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
psect	text71
	line	16
	
i1l1751:	
;interrupcao.c: 16: if(INTF)
	btfss	(89/8),(89)&7
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l1757
u1_20:
	line	19
	
i1l1753:	
;interrupcao.c: 17: {
;interrupcao.c: 19: flag = ~flag;
	movlw	1<<((_flag)&7)
	xorwf	((_flag)/8),f
	line	22
	
i1l1755:	
;interrupcao.c: 22: INTF = 0;
	bcf	(89/8),(89)&7
	goto	i1l1757
	line	23
	
i1l691:	
	line	25
	
i1l1757:	
;interrupcao.c: 23: }
;interrupcao.c: 25: if(RBIF)
	btfss	(88/8),(88)&7
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l697
u2_20:
	line	36
	
i1l1759:	
;interrupcao.c: 26: {
;interrupcao.c: 36: if(RBIF)
	btfss	(88/8),(88)&7
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l697
u3_20:
	line	38
	
i1l1761:	
;interrupcao.c: 37: {
;interrupcao.c: 38: if(ant7!=RB7)
	btfsc	(55/8),(55)&7
	goto	u4_21
	goto	u4_20
u4_21:
	movlw	1
	goto	u4_22
u4_20:
	movlw	0
u4_22:
	movwf	(??_interupt+0)+0
	btfsc	(_ant7/8),(_ant7)&7
	goto	u5_21
	goto	u5_20
u5_21:
	movlw	1
	goto	u5_22
u5_20:
	movlw	0
u5_22:
	xorwf	(??_interupt+0)+0,w
	skipnz
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l694
u6_20:
	line	40
	
i1l1763:	
;interrupcao.c: 39: {
;interrupcao.c: 40: if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u7_21
	goto	u7_20
u7_21:
	goto	i1l695
u7_20:
	line	42
	
i1l1765:	
;interrupcao.c: 41: {
;interrupcao.c: 42: RB1 = 1;
	bsf	(49/8),(49)&7
	line	43
;interrupcao.c: 43: ant7 = 1;
	bsf	(_ant7/8),(_ant7)&7
	line	44
;interrupcao.c: 44: }else
	goto	i1l694
	
i1l695:	
	line	46
;interrupcao.c: 45: {
;interrupcao.c: 46: RB1 = 0;
	bcf	(49/8),(49)&7
	line	47
;interrupcao.c: 47: ant7 = 0;
	bcf	(_ant7/8),(_ant7)&7
	goto	i1l694
	line	48
	
i1l696:	
	line	49
	
i1l694:	
	line	50
;interrupcao.c: 48: }
;interrupcao.c: 49: }
;interrupcao.c: 50: RBIF = 0;
	bcf	(88/8),(88)&7
	goto	i1l697
	line	51
	
i1l693:	
	goto	i1l697
	line	52
	
i1l692:	
	line	60
	
i1l697:	
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
psect	text72,local,class=CODE,delta=2
global __ptext72
__ptext72:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
