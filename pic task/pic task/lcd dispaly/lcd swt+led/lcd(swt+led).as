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
	FNCALL	_main,_lcd_display
	FNCALL	_lcd_display,_lcd_data
	FNCALL	_lcd_init,_lcd_command
	FNCALL	_lcd_data,_delay
	FNCALL	_lcd_command,_delay
	FNROOT	_main
	global	_PORTB
psect	text90,local,class=CODE,delta=2
global __ptext90
__ptext90:
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
	
STR_3:	
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	102	;'f'
	retlw	102	;'f'
	retlw	0
psect	strings
	
STR_2:	
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	50	;'2'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	102	;'f'
	retlw	102	;'f'
	retlw	0
psect	strings
	
STR_1:	
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	0
psect	strings
	
STR_4:	
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	50	;'2'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	0
psect	strings
STR_6	equ	STR_4+0
STR_5	equ	STR_1+0
STR_8	equ	STR_2+0
STR_7	equ	STR_3+0
	file	"lcd(swt+led).as"
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
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_lcd_data
?_lcd_data:	; 0 bytes @ 0x0
	global	?_lcd_display
?_lcd_display:	; 0 bytes @ 0x0
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
	global	??_lcd_display
??_lcd_display:	; 0 bytes @ 0x3
	global	lcd_display@i
lcd_display@i:	; 2 bytes @ 0x3
	ds	2
	global	lcd_display@m
lcd_display@m:	; 1 bytes @ 0x5
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x6
;;Data sizes: Strings 50, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6       6
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; lcd_display@m	PTR unsigned char  size(1) Largest target is 13
;;		 -> STR_8(CODE[13]), STR_7(CODE[13]), STR_6(CODE[12]), STR_5(CODE[12]), 
;;		 -> STR_4(CODE[12]), STR_3(CODE[13]), STR_2(CODE[13]), STR_1(CODE[12]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_lcd_display
;;   _lcd_display->_lcd_data
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
;; (0) _main                                                 0     0      0     165
;;                           _lcd_init
;;                              _delay
;;                        _lcd_command
;;                        _lcd_display
;; ---------------------------------------------------------------------------------
;; (1) _lcd_display                                          3     3      0      90
;;                                              3 COMMON     3     3      0
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             0     0      0      30
;;                        _lcd_command
;; ---------------------------------------------------------------------------------
;; (2) _lcd_data                                             1     1      0      30
;;                                              2 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _lcd_command                                          1     1      0      30
;;                                              2 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (3) _delay                                                2     0      2      15
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_init
;;     _lcd_command
;;       _delay
;;   _delay
;;   _lcd_command
;;     _delay
;;   _lcd_display
;;     _lcd_data
;;       _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      6       6       1       42.9%
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
;;		line 46 in file "E:\Embedded_Program\pic task\pic task\lcd dispaly\lcd swt+led\lcd(swt+led).c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_init
;;		_delay
;;		_lcd_command
;;		_lcd_display
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\Embedded_Program\pic task\pic task\lcd dispaly\lcd swt+led\lcd(swt+led).c"
	line	46
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	47
	
l1786:	
;lcd(swt+led).c: 47: TRISD=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	48
;lcd(swt+led).c: 48: PORTD=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	50
;lcd(swt+led).c: 50: TRISC=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	51
;lcd(swt+led).c: 51: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	53
	
l1788:	
;lcd(swt+led).c: 53: TRISB=0X05;
	movlw	(05h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	54
	
l1790:	
;lcd(swt+led).c: 54: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	56
	
l1792:	
;lcd(swt+led).c: 56: lcd_init();
	fcall	_lcd_init
	line	57
	
l1794:	
;lcd(swt+led).c: 57: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	59
;lcd(swt+led).c: 59: while(1)
	
l580:	
	line	61
	
l1796:	
;lcd(swt+led).c: 60: {
;lcd(swt+led).c: 61: if(RB0==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u2161
	goto	u2160
u2161:
	goto	l581
u2160:
	line	63
	
l1798:	
;lcd(swt+led).c: 62: {
;lcd(swt+led).c: 63: RB1=1;
	bsf	(49/8),(49)&7
	line	64
	
l1800:	
;lcd(swt+led).c: 64: lcd_command(0X01);
	movlw	(01h)
	fcall	_lcd_command
	line	65
;lcd(swt+led).c: 65: lcd_command(0X80);
	movlw	(080h)
	fcall	_lcd_command
	line	66
	
l1802:	
;lcd(swt+led).c: 66: lcd_display("led 1 is on");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_display
	line	67
	
l1804:	
;lcd(swt+led).c: 67: lcd_command(0XC0);
	movlw	(0C0h)
	fcall	_lcd_command
	line	68
;lcd(swt+led).c: 68: lcd_display("led 2 is off");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_lcd_display
	line	69
	
l1806:	
;lcd(swt+led).c: 69: delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	70
;lcd(swt+led).c: 70: }
	goto	l582
	line	72
	
l581:	
;lcd(swt+led).c: 72: else if(RB2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7
	goto	u2171
	goto	u2170
u2171:
	goto	l583
u2170:
	line	74
	
l1808:	
;lcd(swt+led).c: 73: {
;lcd(swt+led).c: 74: RB3=1;
	bsf	(51/8),(51)&7
	line	75
	
l1810:	
;lcd(swt+led).c: 75: lcd_command(0X01);
	movlw	(01h)
	fcall	_lcd_command
	line	76
;lcd(swt+led).c: 76: lcd_command(0X80);
	movlw	(080h)
	fcall	_lcd_command
	line	77
	
l1812:	
;lcd(swt+led).c: 77: lcd_display("led 1 is off");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_lcd_display
	line	78
	
l1814:	
;lcd(swt+led).c: 78: lcd_command(0XC0);
	movlw	(0C0h)
	fcall	_lcd_command
	line	79
;lcd(swt+led).c: 79: lcd_display("led 2 is on");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_lcd_display
	line	80
	
l1816:	
;lcd(swt+led).c: 80: delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	81
;lcd(swt+led).c: 81: }
	goto	l584
	line	83
	
l583:	
;lcd(swt+led).c: 83: else if((RB0==1)&&(RB2==1))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l585
u2180:
	
l1818:	
	btfss	(50/8),(50)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l585
u2190:
	line	85
	
l1820:	
;lcd(swt+led).c: 84: {
;lcd(swt+led).c: 85: RB1=1;
	bsf	(49/8),(49)&7
	line	86
;lcd(swt+led).c: 86: RB3=1;
	bsf	(51/8),(51)&7
	line	87
	
l1822:	
;lcd(swt+led).c: 87: lcd_command(0X01);
	movlw	(01h)
	fcall	_lcd_command
	line	88
;lcd(swt+led).c: 88: lcd_command(0X80);
	movlw	(080h)
	fcall	_lcd_command
	line	89
	
l1824:	
;lcd(swt+led).c: 89: lcd_display("led 1 is on");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_lcd_display
	line	90
	
l1826:	
;lcd(swt+led).c: 90: lcd_command(0XC0);
	movlw	(0C0h)
	fcall	_lcd_command
	line	91
;lcd(swt+led).c: 91: lcd_display("led 2 is on");
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_lcd_display
	line	92
	
l1828:	
;lcd(swt+led).c: 92: delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	93
;lcd(swt+led).c: 93: }
	goto	l586
	line	94
	
l585:	
	line	96
;lcd(swt+led).c: 94: else
;lcd(swt+led).c: 95: {
;lcd(swt+led).c: 96: RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	97
;lcd(swt+led).c: 97: RB3=0;
	bcf	(51/8),(51)&7
	line	98
	
l1830:	
;lcd(swt+led).c: 98: lcd_command(0X01);
	movlw	(01h)
	fcall	_lcd_command
	line	99
;lcd(swt+led).c: 99: lcd_command(0X80);
	movlw	(080h)
	fcall	_lcd_command
	line	100
	
l1832:	
;lcd(swt+led).c: 100: lcd_display("led 1 is off");
	movlw	((STR_7-__stringbase))&0ffh
	fcall	_lcd_display
	line	101
	
l1834:	
;lcd(swt+led).c: 101: lcd_command(0XC0);
	movlw	(0C0h)
	fcall	_lcd_command
	line	102
;lcd(swt+led).c: 102: lcd_display("led 2 is off");
	movlw	((STR_8-__stringbase))&0ffh
	fcall	_lcd_display
	line	103
	
l1836:	
;lcd(swt+led).c: 103: delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	104
	
l586:	
	
l584:	
	
l582:	
	line	105
	
l587:	
	line	59
	goto	l580
	
l588:	
	line	106
	
l589:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_display
psect	text91,local,class=CODE,delta=2
global __ptext91
__ptext91:

;; *************** function _lcd_display *****************
;; Defined at:
;;		line 39 in file "E:\Embedded_Program\pic task\pic task\lcd dispaly\lcd swt+led\lcd(swt+led).c"
;; Parameters:    Size  Location     Type
;;  m               1    wreg     PTR unsigned char 
;;		 -> STR_8(13), STR_7(13), STR_6(12), STR_5(12), 
;;		 -> STR_4(12), STR_3(13), STR_2(13), STR_1(12), 
;; Auto vars:     Size  Location     Type
;;  m               1    5[COMMON] PTR unsigned char 
;;		 -> STR_8(13), STR_7(13), STR_6(12), STR_5(12), 
;;		 -> STR_4(12), STR_3(13), STR_2(13), STR_1(12), 
;;  i               2    3[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text91
	file	"E:\Embedded_Program\pic task\pic task\lcd dispaly\lcd swt+led\lcd(swt+led).c"
	line	39
	global	__size_of_lcd_display
	__size_of_lcd_display	equ	__end_of_lcd_display-_lcd_display
	
_lcd_display:	
	opt	stack 7
; Regs used in _lcd_display: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_display@m stored from wreg
	movwf	(lcd_display@m)
	line	40
	
l1778:	
;lcd(swt+led).c: 40: for(int i=0;m[i]!=0;i++)
	movlw	low(0)
	movwf	(lcd_display@i)
	movlw	high(0)
	movwf	((lcd_display@i))+1
	goto	l574
	line	41
	
l575:	
	line	42
	
l1780:	
;lcd(swt+led).c: 41: {
;lcd(swt+led).c: 42: lcd_data(m[i]);
	movf	(lcd_display@i),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_data
	line	40
	
l1782:	
	movlw	low(01h)
	addwf	(lcd_display@i),f
	skipnc
	incf	(lcd_display@i+1),f
	movlw	high(01h)
	addwf	(lcd_display@i+1),f
	
l574:	
	
l1784:	
	movf	(lcd_display@i),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2151
	goto	u2150
u2151:
	goto	l575
u2150:
	
l576:	
	line	44
	
l577:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_display
	__end_of_lcd_display:
;; =============== function _lcd_display ends ============

	signat	_lcd_display,4216
	global	_lcd_init
psect	text92,local,class=CODE,delta=2
global __ptext92
__ptext92:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 23 in file "E:\Embedded_Program\pic task\pic task\lcd dispaly\lcd swt+led\lcd(swt+led).c"
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
psect	text92
	file	"E:\Embedded_Program\pic task\pic task\lcd dispaly\lcd swt+led\lcd(swt+led).c"
	line	23
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 7
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	24
	
l1776:	
;lcd(swt+led).c: 24: lcd_command(0x38);
	movlw	(038h)
	fcall	_lcd_command
	line	25
;lcd(swt+led).c: 25: lcd_command(0x06);
	movlw	(06h)
	fcall	_lcd_command
	line	26
;lcd(swt+led).c: 26: lcd_command(0x0c);
	movlw	(0Ch)
	fcall	_lcd_command
	line	27
;lcd(swt+led).c: 27: lcd_command(0x01);
	movlw	(01h)
	fcall	_lcd_command
	line	28
	
l568:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_data
psect	text93,local,class=CODE,delta=2
global __ptext93
__ptext93:

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 30 in file "E:\Embedded_Program\pic task\pic task\lcd dispaly\lcd swt+led\lcd(swt+led).c"
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
;;		_lcd_display
;; This function uses a non-reentrant model
;;
psect	text93
	file	"E:\Embedded_Program\pic task\pic task\lcd dispaly\lcd swt+led\lcd(swt+led).c"
	line	30
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 6
; Regs used in _lcd_data: [wreg+status,2+status,0+pclath+cstack]
;lcd_data@data stored from wreg
	movwf	(lcd_data@data)
	line	31
	
l1764:	
;lcd(swt+led).c: 31: PORTD=data;
	movf	(lcd_data@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	32
	
l1766:	
;lcd(swt+led).c: 32: RC0=1;
	bsf	(56/8),(56)&7
	line	33
	
l1768:	
;lcd(swt+led).c: 33: RC1=0;
	bcf	(57/8),(57)&7
	line	34
	
l1770:	
;lcd(swt+led).c: 34: RC2=1;
	bsf	(58/8),(58)&7
	line	35
	
l1772:	
;lcd(swt+led).c: 35: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	36
	
l1774:	
;lcd(swt+led).c: 36: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	37
	
l571:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
;; =============== function _lcd_data ends ============

	signat	_lcd_data,4216
	global	_lcd_command
psect	text94,local,class=CODE,delta=2
global __ptext94
__ptext94:

;; *************** function _lcd_command *****************
;; Defined at:
;;		line 14 in file "E:\Embedded_Program\pic task\pic task\lcd dispaly\lcd swt+led\lcd(swt+led).c"
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
psect	text94
	file	"E:\Embedded_Program\pic task\pic task\lcd dispaly\lcd swt+led\lcd(swt+led).c"
	line	14
	global	__size_of_lcd_command
	__size_of_lcd_command	equ	__end_of_lcd_command-_lcd_command
	
_lcd_command:	
	opt	stack 7
; Regs used in _lcd_command: [wreg+status,2+status,0+pclath+cstack]
;lcd_command@com stored from wreg
	movwf	(lcd_command@com)
	line	15
	
l1752:	
;lcd(swt+led).c: 15: PORTD=com;
	movf	(lcd_command@com),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	16
	
l1754:	
;lcd(swt+led).c: 16: RC0=0;
	bcf	(56/8),(56)&7
	line	17
	
l1756:	
;lcd(swt+led).c: 17: RC1=0;
	bcf	(57/8),(57)&7
	line	18
	
l1758:	
;lcd(swt+led).c: 18: RC2=1;
	bsf	(58/8),(58)&7
	line	19
	
l1760:	
;lcd(swt+led).c: 19: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	20
	
l1762:	
;lcd(swt+led).c: 20: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	21
	
l565:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_command
	__end_of_lcd_command:
;; =============== function _lcd_command ends ============

	signat	_lcd_command,4216
	global	_delay
psect	text95,local,class=CODE,delta=2
global __ptext95
__ptext95:

;; *************** function _delay *****************
;; Defined at:
;;		line 10 in file "E:\Embedded_Program\pic task\pic task\lcd dispaly\lcd swt+led\lcd(swt+led).c"
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
psect	text95
	file	"E:\Embedded_Program\pic task\pic task\lcd dispaly\lcd swt+led\lcd(swt+led).c"
	line	10
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	11
	
l962:	
;lcd(swt+led).c: 11: while(x--);
	goto	l559
	
l560:	
	
l559:	
	
l964:	
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
	line	12
	
l562:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text96,local,class=CODE,delta=2
global __ptext96
__ptext96:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
