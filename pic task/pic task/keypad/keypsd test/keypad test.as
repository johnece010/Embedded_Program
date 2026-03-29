opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6446"

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
	FNCALL	_main,_lcd_init
	FNCALL	_main,_delay
	FNCALL	_main,_lcd_command
	FNCALL	_main,_lcd_data
	FNCALL	_lcd_init,_lcd_command
	FNCALL	_lcd_data,_delay
	FNCALL	_lcd_command,_delay
	FNROOT	_main
	global	_PORTB
psect	text84,local,class=CODE,delta=2
global __ptext84
__ptext84:
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	file	"keypad test.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_lcd_command
?_lcd_command:	; 0 bytes @ 0x0
	global	?_lcd_data
?_lcd_data:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	delay@x
delay@x:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	??_lcd_command
??_lcd_command:	; 0 bytes @ 0x2
	global	??_lcd_data
??_lcd_data:	; 0 bytes @ 0x2
	global	lcd_command@com
lcd_command@com:	; 1 bytes @ 0x2
	global	lcd_data@data
lcd_data@data:	; 1 bytes @ 0x2
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x3
	global	??_main
??_main:	; 0 bytes @ 0x3
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      3       3
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_lcd_command
;;   _main->_lcd_data
;;   _lcd_init->_lcd_command
;;   _lcd_data->_delay
;;   _lcd_command->_delay
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0     105
;;                           _lcd_init
;;                              _delay
;;                        _lcd_command
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             0     0      0      30
;;                        _lcd_command
;; ---------------------------------------------------------------------------------
;; (1) _lcd_data                                             1     1      0      30
;;                                              2 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _lcd_command                                          1     1      0      30
;;                                              2 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                2     0      2      15
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_init
;;     _lcd_command
;;       _delay
;;   _delay
;;   _lcd_command
;;     _delay
;;   _lcd_data
;;     _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      3       3       1       21.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0       0       3        0.0%
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
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 43 in file "D:\Madhu\madhu pic folder\keypad\keypsd test\keypad test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_init
;;		_delay
;;		_lcd_command
;;		_lcd_data
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Madhu\madhu pic folder\keypad\keypsd test\keypad test.c"
	line	43
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	44
	
l1774:	
;keypad test.c: 44: TRISD=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	45
;keypad test.c: 45: PORTD=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	47
;keypad test.c: 47: TRISC=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	48
;keypad test.c: 48: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	50
	
l1776:	
;keypad test.c: 50: TRISB=0XF8;
	movlw	(0F8h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	51
	
l1778:	
;keypad test.c: 51: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	53
	
l1780:	
;keypad test.c: 53: lcd_init();
	fcall	_lcd_init
	line	54
	
l1782:	
;keypad test.c: 54: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	56
;keypad test.c: 56: while(1)
	
l574:	
	line	58
	
l1784:	
;keypad test.c: 57: {
;keypad test.c: 58: lcd_command(0x80);
	movlw	(080h)
	fcall	_lcd_command
	line	59
	
l1786:	
;keypad test.c: 59: RB0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	line	60
	
l1788:	
;keypad test.c: 60: RB1=0;
	bcf	(49/8),(49)&7
	line	61
	
l1790:	
;keypad test.c: 61: RB2=0;
	bcf	(50/8),(50)&7
	line	62
	
l1792:	
;keypad test.c: 62: if(RB3==1)
	btfss	(51/8),(51)&7
	goto	u2151
	goto	u2150
u2151:
	goto	l575
u2150:
	line	65
	
l1794:	
;keypad test.c: 63: {
;keypad test.c: 65: lcd_data('1');
	movlw	(031h)
	fcall	_lcd_data
	line	66
	
l575:	
	line	67
	
l1796:	
;keypad test.c: 66: }
;keypad test.c: 67: if(RB4==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7
	goto	u2161
	goto	u2160
u2161:
	goto	l576
u2160:
	line	70
	
l1798:	
;keypad test.c: 68: {
;keypad test.c: 70: lcd_data('4');
	movlw	(034h)
	fcall	_lcd_data
	line	71
	
l576:	
	line	72
	
l1800:	
;keypad test.c: 71: }
;keypad test.c: 72: if(RB5==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(53/8),(53)&7
	goto	u2171
	goto	u2170
u2171:
	goto	l577
u2170:
	line	75
	
l1802:	
;keypad test.c: 73: {
;keypad test.c: 75: lcd_data('7');
	movlw	(037h)
	fcall	_lcd_data
	line	76
	
l577:	
	line	77
	
l1804:	
;keypad test.c: 76: }
;keypad test.c: 77: if(RB6==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(54/8),(54)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l578
u2180:
	line	79
	
l1806:	
;keypad test.c: 78: {
;keypad test.c: 79: lcd_data('*');
	movlw	(02Ah)
	fcall	_lcd_data
	line	80
	
l578:	
	line	81
	
l1808:	
;keypad test.c: 80: }
;keypad test.c: 81: RB0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	line	82
	
l1810:	
;keypad test.c: 82: RB1=1;
	bsf	(49/8),(49)&7
	line	83
	
l1812:	
;keypad test.c: 83: RB2=0;
	bcf	(50/8),(50)&7
	line	84
	
l1814:	
;keypad test.c: 84: if(RB3==1)
	btfss	(51/8),(51)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l579
u2190:
	line	87
	
l1816:	
;keypad test.c: 85: {
;keypad test.c: 87: lcd_data('2');
	movlw	(032h)
	fcall	_lcd_data
	line	88
	
l579:	
	line	89
	
l1818:	
;keypad test.c: 88: }
;keypad test.c: 89: if(RB4==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l580
u2200:
	line	92
	
l1820:	
;keypad test.c: 90: {
;keypad test.c: 92: lcd_data('5');
	movlw	(035h)
	fcall	_lcd_data
	line	93
	
l580:	
	line	94
	
l1822:	
;keypad test.c: 93: }
;keypad test.c: 94: if(RB5==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(53/8),(53)&7
	goto	u2211
	goto	u2210
u2211:
	goto	l581
u2210:
	line	97
	
l1824:	
;keypad test.c: 95: {
;keypad test.c: 97: lcd_data('8');
	movlw	(038h)
	fcall	_lcd_data
	line	98
	
l581:	
	line	99
	
l1826:	
;keypad test.c: 98: }
;keypad test.c: 99: if(RB6==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(54/8),(54)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l582
u2220:
	line	101
	
l1828:	
;keypad test.c: 100: {
;keypad test.c: 101: lcd_data('0');
	movlw	(030h)
	fcall	_lcd_data
	line	102
	
l582:	
	line	104
	
l1830:	
;keypad test.c: 102: }
;keypad test.c: 104: RB0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	line	105
	
l1832:	
;keypad test.c: 105: RB1=0;
	bcf	(49/8),(49)&7
	line	106
	
l1834:	
;keypad test.c: 106: RB2=1;
	bsf	(50/8),(50)&7
	line	107
	
l1836:	
;keypad test.c: 107: if(RB3==1)
	btfss	(51/8),(51)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l583
u2230:
	line	110
	
l1838:	
;keypad test.c: 108: {
;keypad test.c: 110: lcd_data('3');
	movlw	(033h)
	fcall	_lcd_data
	line	111
	
l583:	
	line	112
	
l1840:	
;keypad test.c: 111: }
;keypad test.c: 112: if(RB4==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l584
u2240:
	line	115
	
l1842:	
;keypad test.c: 113: {
;keypad test.c: 115: lcd_data('6');
	movlw	(036h)
	fcall	_lcd_data
	line	116
	
l584:	
	line	117
	
l1844:	
;keypad test.c: 116: }
;keypad test.c: 117: if(RB5==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(53/8),(53)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l585
u2250:
	line	120
	
l1846:	
;keypad test.c: 118: {
;keypad test.c: 120: lcd_data('9');
	movlw	(039h)
	fcall	_lcd_data
	line	121
	
l585:	
	line	122
	
l1848:	
;keypad test.c: 121: }
;keypad test.c: 122: if(RB6==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(54/8),(54)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l586
u2260:
	line	124
	
l1850:	
;keypad test.c: 123: {
;keypad test.c: 124: lcd_data('#');
	movlw	(023h)
	fcall	_lcd_data
	line	125
	
l586:	
	line	126
	
l587:	
	line	56
	goto	l574
	
l588:	
	line	127
	
l589:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_init
psect	text85,local,class=CODE,delta=2
global __ptext85
__ptext85:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 36 in file "D:\Madhu\madhu pic folder\keypad\keypsd test\keypad test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_command
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text85
	file	"D:\Madhu\madhu pic folder\keypad\keypsd test\keypad test.c"
	line	36
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 7
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	37
	
l1772:	
;keypad test.c: 37: lcd_command(0x38);
	movlw	(038h)
	fcall	_lcd_command
	line	38
;keypad test.c: 38: lcd_command(0x06);
	movlw	(06h)
	fcall	_lcd_command
	line	39
;keypad test.c: 39: lcd_command(0x0c);
	movlw	(0Ch)
	fcall	_lcd_command
	line	40
;keypad test.c: 40: lcd_command(0x01);
	movlw	(01h)
	fcall	_lcd_command
	line	41
	
l571:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_data
psect	text86,local,class=CODE,delta=2
global __ptext86
__ptext86:

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 27 in file "D:\Madhu\madhu pic folder\keypad\keypsd test\keypad test.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text86
	file	"D:\Madhu\madhu pic folder\keypad\keypsd test\keypad test.c"
	line	27
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 7
; Regs used in _lcd_data: [wreg+status,2+status,0+pclath+cstack]
;lcd_data@data stored from wreg
	movwf	(lcd_data@data)
	line	28
	
l1760:	
;keypad test.c: 28: PORTD=data;
	movf	(lcd_data@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	29
	
l1762:	
;keypad test.c: 29: RC0=1;
	bsf	(56/8),(56)&7
	line	30
	
l1764:	
;keypad test.c: 30: RC1=0;
	bcf	(57/8),(57)&7
	line	31
	
l1766:	
;keypad test.c: 31: RC2=1;
	bsf	(58/8),(58)&7
	line	32
	
l1768:	
;keypad test.c: 32: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	33
	
l1770:	
;keypad test.c: 33: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	34
	
l568:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
;; =============== function _lcd_data ends ============

	signat	_lcd_data,4216
	global	_lcd_command
psect	text87,local,class=CODE,delta=2
global __ptext87
__ptext87:

;; *************** function _lcd_command *****************
;; Defined at:
;;		line 18 in file "D:\Madhu\madhu pic folder\keypad\keypsd test\keypad test.c"
;; Parameters:    Size  Location     Type
;;  com             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  com             1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_lcd_init
;;		_main
;; This function uses a non-reentrant model
;;
psect	text87
	file	"D:\Madhu\madhu pic folder\keypad\keypsd test\keypad test.c"
	line	18
	global	__size_of_lcd_command
	__size_of_lcd_command	equ	__end_of_lcd_command-_lcd_command
	
_lcd_command:	
	opt	stack 7
; Regs used in _lcd_command: [wreg+status,2+status,0+pclath+cstack]
;lcd_command@com stored from wreg
	movwf	(lcd_command@com)
	line	19
	
l1748:	
;keypad test.c: 19: PORTD=com;
	movf	(lcd_command@com),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	20
	
l1750:	
;keypad test.c: 20: RC0=0;
	bcf	(56/8),(56)&7
	line	21
	
l1752:	
;keypad test.c: 21: RC1=0;
	bcf	(57/8),(57)&7
	line	22
	
l1754:	
;keypad test.c: 22: RC2=1;
	bsf	(58/8),(58)&7
	line	23
	
l1756:	
;keypad test.c: 23: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	24
	
l1758:	
;keypad test.c: 24: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	25
	
l565:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_command
	__end_of_lcd_command:
;; =============== function _lcd_command ends ============

	signat	_lcd_command,4216
	global	_delay
psect	text88,local,class=CODE,delta=2
global __ptext88
__ptext88:

;; *************** function _delay *****************
;; Defined at:
;;		line 14 in file "D:\Madhu\madhu pic folder\keypad\keypsd test\keypad test.c"
;; Parameters:    Size  Location     Type
;;  x               2    0[COMMON] unsigned int 
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
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_command
;;		_lcd_data
;;		_main
;; This function uses a non-reentrant model
;;
psect	text88
	file	"D:\Madhu\madhu pic folder\keypad\keypsd test\keypad test.c"
	line	14
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	15
	
l958:	
;keypad test.c: 15: while(x--);
	goto	l559
	
l560:	
	
l559:	
	
l960:	
	movlw	low(01h)
	subwf	(delay@x),f
	movlw	high(01h)
	skipc
	decf	(delay@x+1),f
	subwf	(delay@x+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@x+1)),w
	skipz
	goto	u15
	movlw	low(0FFFFh)
	xorwf	((delay@x)),w
u15:

	skipz
	goto	u11
	goto	u10
u11:
	goto	l560
u10:
	
l561:	
	line	16
	
l562:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text89,local,class=CODE,delta=2
global __ptext89
__ptext89:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
