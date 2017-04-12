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
	FNCALL	_main,_printf
	FNCALL	_main,_getch
	FNCALL	_printf,_putch
	FNROOT	_main
	global	_input
	global	_INTCON
psect	text95,local,class=CODE,delta=2
global __ptext95
__ptext95:
_INTCON	set	11
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_TXREG
_TXREG	set	25
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RCIF
_RCIF	set	101
	global	_TXIF
_TXIF	set	100
	global	_SPBRG
_SPBRG	set	153
	global	_TRISB
_TRISB	set	134
	global	_TXSTA
_TXSTA	set	152
	global	_TRISB1
_TRISB1	set	1073
	global	_TRISB2
_TRISB2	set	1074
	global	_TRISB3
_TRISB3	set	1075
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
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
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	13
	retlw	80	;'P'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	97	;'a'
	retlw	32	;' '
	retlw	107	;'k'
	retlw	97	;'a'
	retlw	121	;'y'
	retlw	32	;' '
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	73	;'I'
	retlw	32	;' '
	retlw	119	;'w'
	retlw	105	;'i'
	retlw	108	;'l'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	104	;'h'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	98	;'b'
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	107	;'k'
	retlw	58	;':'
	retlw	10
	retlw	0
psect	strings
	
STR_2:	
	retlw	13
	retlw	73	;'I'
	retlw	32	;' '
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	91	;'['
	retlw	37	;'%'
	retlw	99	;'c'
	retlw	93	;']'
	retlw	0
psect	strings
	file	"usart.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_input:
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
	global	?_putch
?_putch:	; 0 bytes @ 0x0
	global	??_putch
??_putch:	; 0 bytes @ 0x0
	global	??_getch
??_getch:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_getch
?_getch:	; 1 bytes @ 0x0
	global	putch@byte
putch@byte:	; 1 bytes @ 0x0
	ds	1
	global	?_printf
?_printf:	; 2 bytes @ 0x1
	ds	2
	global	??_printf
??_printf:	; 0 bytes @ 0x3
	ds	1
	global	printf@flag
printf@flag:	; 1 bytes @ 0x4
	ds	1
	global	printf@ap
printf@ap:	; 1 bytes @ 0x5
	ds	1
	global	printf@f
printf@f:	; 1 bytes @ 0x6
	ds	1
	global	printf@c
printf@c:	; 1 bytes @ 0x7
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x8
	ds	3
;;Data sizes: Strings 56, constant 0, data 0, bss 1, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     11      12
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; printf@f	PTR const unsigned char  size(1) Largest target is 39
;;		 -> STR_2(CODE[17]), STR_1(CODE[39]), 
;;
;; ?_printf	int  size(1) Largest target is 0
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_printf(COMMON[2]), 
;;
;; S2086$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_printf
;;   _printf->_putch
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
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
;; (0) _main                                                 3     3      0     105
;;                                              8 COMMON     3     3      0
;;                             _printf
;;                              _getch
;; ---------------------------------------------------------------------------------
;; (1) _printf                                              12    10      2     105
;;                                              1 COMMON     7     5      2
;;                              _putch
;; ---------------------------------------------------------------------------------
;; (1) _getch                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _putch                                                1     1      0      15
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _printf
;;     _putch
;;   _getch
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      B       C       1       85.7%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       C       3        0.0%
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
;;DATA                 0      0       E      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 18 in file "C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\usart\echo.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_printf
;;		_getch
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\usart\echo.c"
	line	18
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	19
	
l3349:	
# 19 "C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\usart\echo.c"
	psect config,class=CONFIG,delta=2 ;#
# 19 "C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\usart\echo.c"
	dw 0xFFFF & 0xFFFB & 0xFFBF & 0xFFFF & 0xFFFE & 0xFFFF & 0xFF7F & 0xFFFF ;#
psect	maintext
	line	21
	
l3351:	
;echo.c: 21: TRISB = 0b11111111;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	22
	
l3353:	
;echo.c: 22: TRISB1 = 0;
	bcf	(1073/8)^080h,(1073)&7
	line	23
	
l3355:	
;echo.c: 23: TRISB2 = 0;
	bcf	(1074/8)^080h,(1074)&7
	line	24
	
l3357:	
;echo.c: 24: TRISB3 = 0;
	bcf	(1075/8)^080h,(1075)&7
	line	27
	
l3359:	
;echo.c: 27: INTCON = 0;
	clrf	(11)	;volatile
	line	29
	
l3361:	
;echo.c: 29: TRISC7 = 1; TRISC6 = 1; SPBRG = ((int)(20000000/(16UL * 9600) -1)); RCSTA = (0|0x90); TXSTA = (0x4|0|0x20);
	bsf	(1087/8)^080h,(1087)&7
	
l3363:	
	bsf	(1086/8)^080h,(1086)&7
	
l3365:	
	movlw	(081h)
	movwf	(153)^080h	;volatile
	
l3367:	
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	
l3369:	
	movlw	(024h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	32
	
l3371:	
;echo.c: 32: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	33
	
l3373:	
;echo.c: 33: RB2 = 0;
	bcf	(50/8),(50)&7
	line	34
	
l3375:	
;echo.c: 34: RB3 = 0;
	bcf	(51/8),(51)&7
	line	37
	
l3377:	
;echo.c: 37: RB1 = 1;
	bsf	(49/8),(49)&7
	line	38
	
l3379:	
;echo.c: 38: _delay((unsigned long)((500)*(20000000/4000.0)));
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

	line	39
	
l3381:	
;echo.c: 39: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	40
	
l3383:	
;echo.c: 40: _delay((unsigned long)((500)*(20000000/4000.0)));
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

	line	41
	
l3385:	
;echo.c: 41: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	42
	
l3387:	
;echo.c: 42: _delay((unsigned long)((500)*(20000000/4000.0)));
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

	line	43
	
l3389:	
;echo.c: 43: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	44
	
l3391:	
;echo.c: 44: _delay((unsigned long)((500)*(20000000/4000.0)));
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

	line	47
	
l3393:	
;echo.c: 47: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	48
	
l3395:	
;echo.c: 48: RB2 = 0;
	bcf	(50/8),(50)&7
	line	49
	
l3397:	
;echo.c: 49: RB3 = 0;
	bcf	(51/8),(51)&7
	line	51
	
l3399:	
;echo.c: 51: printf("\rPress a kay and I will echo it back:\n");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_printf
	goto	l3401
	line	52
;echo.c: 52: while(1)
	
l1390:	
	line	54
	
l3401:	
;echo.c: 53: {
;echo.c: 54: input = getch();
	fcall	_getch
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_input)
	line	55
	
l3403:	
;echo.c: 55: printf("\rI detected [%c]",input);
	movf	(_input),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(?_printf)
	movf	1+(??_main+0)+0,w
	movwf	(?_printf+1)
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_printf
	goto	l3401
	line	56
	
l1391:	
	line	52
	goto	l3401
	
l1392:	
	line	58
	
l1393:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_printf
psect	text96,local,class=CODE,delta=2
global __ptext96
__ptext96:

;; *************** function _printf *****************
;; Defined at:
;;		line 461 in file "C:\Arquivos de programas\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_2(17), STR_1(39), 
;; Auto vars:     Size  Location     Type
;;  f               1    6[COMMON] PTR const unsigned char 
;;		 -> STR_2(17), STR_1(39), 
;;  _val            4    0        struct .
;;  c               1    7[COMMON] char 
;;  ap              1    5[COMMON] PTR void [1]
;;		 -> ?_printf(2), 
;;  flag            1    4[COMMON] unsigned char 
;;  prec            1    0        char 
;; Return value:  Size  Location     Type
;;                  2    1[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_putch
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text96
	file	"C:\Arquivos de programas\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	461
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
	opt	stack 6
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;printf@f stored from wreg
	line	537
	movwf	(printf@f)
	
l3331:	
	movlw	(?_printf)&0ffh
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@ap)
	line	540
	goto	l3347
	
l1403:	
	line	542
	
l3333:	
	movf	(printf@c),w
	xorlw	025h
	skipnz
	goto	u2241
	goto	u2240
u2241:
	goto	l1404
u2240:
	line	545
	
l3335:	
	movf	(printf@c),w
	fcall	_putch
	line	546
	goto	l3347
	line	547
	
l1404:	
	line	552
	clrf	(printf@flag)
	line	638
	goto	l3345
	line	640
	
l1406:	
	line	641
	goto	l1412
	line	787
	
l1408:	
	line	802
	
l3337:	
	movf	(printf@ap),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@c)
	
l3339:	
	movlw	(02h)
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	addwf	(printf@ap),f
	goto	l3341
	line	805
	
l1409:	
	line	812
	
l3341:	
	movf	(printf@c),w
	fcall	_putch
	line	813
	goto	l3347
	line	825
	
l3343:	
	goto	l3347
	line	638
	
l1405:	
	
l3345:	
	movlw	01h
	addwf	(printf@f),f
	movlw	-01h
	addwf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(printf@c)
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 99
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; jumptable            260     6 (fixed)
; rangetable           104     6 (fixed)
; spacedrange          206     9 (fixed)
; locatedrange         100     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1412
	xorlw	99^0	; case 99
	skipnz
	goto	l3337
	goto	l3341
	opt asmopt_on

	line	825
	
l1410:	
	goto	l3347
	line	1525
	
l1402:	
	line	540
	
l3347:	
	movlw	01h
	addwf	(printf@f),f
	movlw	-01h
	addwf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@c)
	movf	((printf@c)),f
	skipz
	goto	u2251
	goto	u2250
u2251:
	goto	l3333
u2250:
	goto	l1412
	
l1411:	
	goto	l1412
	line	1527
	
l1407:	
	line	1533
;	Return value of _printf is never used
	
l1412:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_getch
psect	text97,local,class=CODE,delta=2
global __ptext97
__ptext97:

;; *************** function _getch *****************
;; Defined at:
;;		line 16 in file "C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\usart\usart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_getche
;; This function uses a non-reentrant model
;;
psect	text97
	file	"C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\usart\usart.c"
	line	16
	global	__size_of_getch
	__size_of_getch	equ	__end_of_getch-_getch
	
_getch:	
	opt	stack 7
; Regs used in _getch: [wreg]
	line	18
	
l2463:	
;usart.c: 18: while(!RCIF)
	goto	l691
	
l692:	
	line	19
;usart.c: 19: continue;
	
l691:	
	line	18
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u21
	goto	u20
u21:
	goto	l691
u20:
	goto	l2465
	
l693:	
	line	20
	
l2465:	
;usart.c: 20: return RCREG;
	movf	(26),w	;volatile
	goto	l694
	
l2467:	
	line	21
	
l694:	
	return
	opt stack 0
GLOBAL	__end_of_getch
	__end_of_getch:
;; =============== function _getch ends ============

	signat	_getch,89
	global	_putch
psect	text98,local,class=CODE,delta=2
global __ptext98
__ptext98:

;; *************** function _putch *****************
;; Defined at:
;;		line 8 in file "C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\usart\usart.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    0[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;;		_getche
;; This function uses a non-reentrant model
;;
psect	text98
	file	"C:\Documents and Settings\Admin\Desktop\Microcontroladores - Felipe, Gugu e Bia\usart\usart.c"
	line	8
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 6
; Regs used in _putch: [wreg]
;putch@byte stored from wreg
	movwf	(putch@byte)
	line	10
	
l2459:	
;usart.c: 10: while(!TXIF)
	goto	l685
	
l686:	
	line	11
;usart.c: 11: continue;
	
l685:	
	line	10
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u11
	goto	u10
u11:
	goto	l685
u10:
	goto	l2461
	
l687:	
	line	12
	
l2461:	
;usart.c: 12: TXREG = byte;
	movf	(putch@byte),w
	movwf	(25)	;volatile
	line	13
	
l688:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
psect	text99,local,class=CODE,delta=2
global __ptext99
__ptext99:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
