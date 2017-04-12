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
	global	_count
	global	_flag
	global	_CARRY
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_RB1
_RB1	set	49
	global	_RB3
_RB3	set	51
	global	_TMR0IE
_TMR0IE	set	93
	global	_TMR0IF
_TMR0IF	set	90
	global	_TRISB
_TRISB	set	134
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
	file	"temporizador.as"
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

; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
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
;; COMMON          14      8      10
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
;;COMMON               E      8       A       1       71.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       0       2        0.0%
;;ABS                  0      0       A       3        0.0%
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
;;DATA                 0      0       A      12        0.0%

	global	_main
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 40 in file "C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\temporizador\timer.c"
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
	file	"C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\temporizador\timer.c"
	line	40
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg]
	line	41
	
l2618:	
# 41 "C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\temporizador\timer.c"
	psect config,class=CONFIG,delta=2 ;#
# 41 "C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\temporizador\timer.c"
	dw 0xFFFF & 0xFFFB & 0xFFBF & 0xFFFF & 0xFFFE & 0xFFFF & 0xFF7F & 0xFFFF ;#
psect	maintext
	line	43
;timer.c: 43: TRISA0 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1064/8)^080h,(1064)&7
	line	45
	
l2620:	
;timer.c: 45: TRISB = 0b11111111;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	46
	
l2622:	
;timer.c: 46: TRISB1 = 0;
	bcf	(1073/8)^080h,(1073)&7
	line	47
	
l2624:	
;timer.c: 47: TRISB2 = 0;
	bcf	(1074/8)^080h,(1074)&7
	line	48
	
l2626:	
;timer.c: 48: TRISB3 = 0;
	bcf	(1075/8)^080h,(1075)&7
	line	50
	
l2628:	
;timer.c: 50: T0CS = 0;
	bcf	(1037/8)^080h,(1037)&7
	line	51
	
l2630:	
;timer.c: 51: T0SE = 0;
	bcf	(1036/8)^080h,(1036)&7
	line	52
	
l2632:	
;timer.c: 52: PSA = 0;
	bcf	(1035/8)^080h,(1035)&7
	line	53
	
l2634:	
;timer.c: 53: PS2 = 1;
	bsf	(1034/8)^080h,(1034)&7
	line	54
	
l2636:	
;timer.c: 54: PS1 = 1;
	bsf	(1033/8)^080h,(1033)&7
	line	55
	
l2638:	
;timer.c: 55: PS0 = 1;
	bsf	(1032/8)^080h,(1032)&7
	line	57
	
l2640:	
;timer.c: 57: TMR0IF = 0;
	bcf	(90/8),(90)&7
	line	58
	
l2642:	
;timer.c: 58: TMR0IE = 1;
	bsf	(93/8),(93)&7
	line	59
	
l2644:	
;timer.c: 59: PEIE = 1;
	bsf	(94/8),(94)&7
	line	60
	
l2646:	
;timer.c: 60: GIE = 1;
	bsf	(95/8),(95)&7
	line	64
	
l2648:	
;timer.c: 64: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	65
;timer.c: 65: _delay((unsigned long)((500)*(20000000/4000.0)));
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

	line	66
	
l2650:	
;timer.c: 66: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	67
;timer.c: 67: _delay((unsigned long)((500)*(20000000/4000.0)));
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

	line	68
	
l2652:	
;timer.c: 68: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	69
;timer.c: 69: _delay((unsigned long)((500)*(20000000/4000.0)));
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

	line	70
	
l2654:	
;timer.c: 70: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	71
;timer.c: 71: _delay((unsigned long)((500)*(20000000/4000.0)));
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

	goto	l2656
	line	73
;timer.c: 73: while(1)
	
l696:	
	line	75
	
l2656:	
;timer.c: 74: {
;timer.c: 75: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	76
;timer.c: 76: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u2307:
	decfsz	((??_main+0)+0),f
	goto	u2307
	decfsz	((??_main+0)+0+1),f
	goto	u2307
	decfsz	((??_main+0)+0+2),f
	goto	u2307
	nop2
opt asmopt_on

	line	77
	
l2658:	
;timer.c: 77: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	78
;timer.c: 78: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u2317:
	decfsz	((??_main+0)+0),f
	goto	u2317
	decfsz	((??_main+0)+0+1),f
	goto	u2317
	decfsz	((??_main+0)+0+2),f
	goto	u2317
	nop2
opt asmopt_on

	goto	l2656
	line	79
	
l697:	
	line	73
	goto	l2656
	
l698:	
	line	81
	
l699:	
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
;;		line 19 in file "C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\temporizador\timer.c"
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
psect	text71
	file	"C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\temporizador\timer.c"
	line	19
	global	__size_of_interupt
	__size_of_interupt	equ	__end_of_interupt-_interupt
	
_interupt:	
	opt	stack 7
; Regs used in _interupt: [wreg+status,2+status,0]
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
	line	20
	
i1l1746:	
;timer.c: 20: if(TMR0IF)
	btfss	(90/8),(90)&7
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l693
u1_20:
	line	22
	
i1l1748:	
;timer.c: 21: {
;timer.c: 22: count ++;
	movlw	(01h)
	movwf	(??_interupt+0)+0
	movf	(??_interupt+0)+0,w
	addwf	(_count),f
	line	23
	
i1l1750:	
;timer.c: 23: if(count == 153)
	movf	(_count),w
	xorlw	099h
	skipz
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l1758
u2_20:
	line	25
	
i1l1752:	
;timer.c: 24: {
;timer.c: 25: RB3 = flag;
	btfsc	(_flag/8),(_flag)&7
	goto	u3_21
	goto	u3_20
	
u3_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	goto	u4_24
u3_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
u4_24:
	line	26
	
i1l1754:	
;timer.c: 26: flag = ~flag;
	movlw	1<<((_flag)&7)
	xorwf	((_flag)/8),f
	line	28
	
i1l1756:	
;timer.c: 28: count = 0;
	clrf	(_count)
	goto	i1l1758
	line	29
	
i1l692:	
	line	31
	
i1l1758:	
;timer.c: 29: }
;timer.c: 31: TMR0IF = 0;
	bcf	(90/8),(90)&7
	goto	i1l693
	line	32
	
i1l691:	
	line	33
	
i1l693:	
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
