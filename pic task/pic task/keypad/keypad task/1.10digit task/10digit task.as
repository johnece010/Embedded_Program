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
	global	_a
	global	_i
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
	file	"10digit task.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_i:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_a:
       ds      20

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+014h)
	fcall	clear_ram
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
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 22, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4       6
;; BANK0           80      0      20
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0     105
;;                                              3 COMMON     1     1      0
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
;;COMMON               E      4       6       1       42.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0      1A       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0      14       5       25.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      1D      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 44 in file "E:\Embedded_Program\pic task\pic task\keypad\keypad task\1.10digit task\10digit task.c"
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
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
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
	file	"E:\Embedded_Program\pic task\pic task\keypad\keypad task\1.10digit task\10digit task.c"
	line	44
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	45
	
l1778:	
;10digit task.c: 45: TRISD=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	46
;10digit task.c: 46: PORTD=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	48
;10digit task.c: 48: TRISC=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	49
;10digit task.c: 49: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	51
	
l1780:	
;10digit task.c: 51: TRISB=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	52
	
l1782:	
;10digit task.c: 52: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	54
	
l1784:	
;10digit task.c: 54: lcd_init();
	fcall	_lcd_init
	line	55
	
l1786:	
;10digit task.c: 55: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	56
	
l1788:	
;10digit task.c: 56: lcd_command(0x80);
	movlw	(080h)
	fcall	_lcd_command
	line	57
;10digit task.c: 57: while(1)
	
l578:	
	line	60
	
l1790:	
;10digit task.c: 58: {
;10digit task.c: 60: RB3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	line	61
	
l1792:	
;10digit task.c: 61: RB4=0;
	bcf	(52/8),(52)&7
	line	62
	
l1794:	
;10digit task.c: 62: RB5=0;
	bcf	(53/8),(53)&7
	line	63
	
l1796:	
;10digit task.c: 63: RB6=0;
	bcf	(54/8),(54)&7
	line	64
	
l1798:	
;10digit task.c: 64: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u2151
	goto	u2150
u2151:
	goto	l579
u2150:
	line	67
	
l1800:	
;10digit task.c: 65: {
;10digit task.c: 67: lcd_data('1');
	movlw	(031h)
	fcall	_lcd_data
	line	68
	
l1802:	
;10digit task.c: 68: a[i]=1;
	movf	(_i),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_a&0ffh
	movwf	fsr0
	movlw	low(01h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(01h)
	movwf	indf
	line	69
	
l1804:	
;10digit task.c: 69: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l1806:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	70
	
l579:	
	line	71
	
l1808:	
;10digit task.c: 70: }
;10digit task.c: 71: if(RB1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u2161
	goto	u2160
u2161:
	goto	l580
u2160:
	line	73
	
l1810:	
;10digit task.c: 72: {
;10digit task.c: 73: lcd_data('2');
	movlw	(032h)
	fcall	_lcd_data
	line	74
	
l1812:	
;10digit task.c: 74: a[i]=2;
	movf	(_i),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_a&0ffh
	movwf	fsr0
	movlw	low(02h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(02h)
	movwf	indf
	line	75
	
l1814:	
;10digit task.c: 75: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l1816:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	76
	
l580:	
	line	77
	
l1818:	
;10digit task.c: 76: }
;10digit task.c: 77: if(RB2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7
	goto	u2171
	goto	u2170
u2171:
	goto	l581
u2170:
	line	79
	
l1820:	
;10digit task.c: 78: {
;10digit task.c: 79: lcd_data('3');
	movlw	(033h)
	fcall	_lcd_data
	line	80
	
l1822:	
;10digit task.c: 80: a[i]=3;
	movf	(_i),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_a&0ffh
	movwf	fsr0
	movlw	low(03h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(03h)
	movwf	indf
	line	81
	
l1824:	
;10digit task.c: 81: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l1826:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	82
	
l581:	
	line	84
	
l1828:	
;10digit task.c: 82: }
;10digit task.c: 84: RB3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	85
	
l1830:	
;10digit task.c: 85: RB4=1;
	bsf	(52/8),(52)&7
	line	86
	
l1832:	
;10digit task.c: 86: RB5=0;
	bcf	(53/8),(53)&7
	line	87
	
l1834:	
;10digit task.c: 87: RB6=0;
	bcf	(54/8),(54)&7
	line	88
	
l1836:	
;10digit task.c: 88: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l582
u2180:
	line	90
	
l1838:	
;10digit task.c: 89: {
;10digit task.c: 90: lcd_data('4');a[i]=4;
	movlw	(034h)
	fcall	_lcd_data
	
l1840:	
	movf	(_i),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_a&0ffh
	movwf	fsr0
	movlw	low(04h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(04h)
	movwf	indf
	line	91
	
l1842:	
;10digit task.c: 91: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l1844:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	92
	
l582:	
	line	93
	
l1846:	
;10digit task.c: 92: }
;10digit task.c: 93: if(RB1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l583
u2190:
	line	96
	
l1848:	
;10digit task.c: 94: {
;10digit task.c: 96: lcd_data('5');
	movlw	(035h)
	fcall	_lcd_data
	line	97
	
l1850:	
;10digit task.c: 97: a[i]=5;
	movf	(_i),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_a&0ffh
	movwf	fsr0
	movlw	low(05h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(05h)
	movwf	indf
	line	98
	
l1852:	
;10digit task.c: 98: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l1854:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	99
	
l583:	
	line	100
	
l1856:	
;10digit task.c: 99: }
;10digit task.c: 100: if(RB2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l584
u2200:
	line	103
	
l1858:	
;10digit task.c: 101: {
;10digit task.c: 103: lcd_data('6');
	movlw	(036h)
	fcall	_lcd_data
	line	104
	
l1860:	
;10digit task.c: 104: a[i]=6;
	movf	(_i),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_a&0ffh
	movwf	fsr0
	movlw	low(06h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(06h)
	movwf	indf
	line	105
	
l1862:	
;10digit task.c: 105: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l1864:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	106
	
l584:	
	line	108
	
l1866:	
;10digit task.c: 106: }
;10digit task.c: 108: RB3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	109
	
l1868:	
;10digit task.c: 109: RB4=0;
	bcf	(52/8),(52)&7
	line	110
	
l1870:	
;10digit task.c: 110: RB5=1;
	bsf	(53/8),(53)&7
	line	111
	
l1872:	
;10digit task.c: 111: RB6=0;
	bcf	(54/8),(54)&7
	line	112
	
l1874:	
;10digit task.c: 112: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u2211
	goto	u2210
u2211:
	goto	l585
u2210:
	line	115
	
l1876:	
;10digit task.c: 113: {
;10digit task.c: 115: lcd_data('7');
	movlw	(037h)
	fcall	_lcd_data
	line	116
	
l1878:	
;10digit task.c: 116: a[i]=7;
	movf	(_i),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_a&0ffh
	movwf	fsr0
	movlw	low(07h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(07h)
	movwf	indf
	line	117
	
l1880:	
;10digit task.c: 117: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l1882:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	118
	
l585:	
	line	119
	
l1884:	
;10digit task.c: 118: }
;10digit task.c: 119: if(RB1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l586
u2220:
	line	122
	
l1886:	
;10digit task.c: 120: {
;10digit task.c: 122: lcd_data('8');
	movlw	(038h)
	fcall	_lcd_data
	line	123
	
l1888:	
;10digit task.c: 123: a[i]=8;
	movf	(_i),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_a&0ffh
	movwf	fsr0
	movlw	low(08h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(08h)
	movwf	indf
	line	124
	
l1890:	
;10digit task.c: 124: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l1892:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	125
	
l586:	
	line	126
	
l1894:	
;10digit task.c: 125: }
;10digit task.c: 126: if(RB2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l587
u2230:
	line	129
	
l1896:	
;10digit task.c: 127: {
;10digit task.c: 129: lcd_data('9');
	movlw	(039h)
	fcall	_lcd_data
	line	130
	
l1898:	
;10digit task.c: 130: a[i]=9;
	movf	(_i),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_a&0ffh
	movwf	fsr0
	movlw	low(09h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(09h)
	movwf	indf
	line	131
	
l1900:	
;10digit task.c: 131: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l1902:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	132
	
l587:	
	line	135
	
l1904:	
;10digit task.c: 132: }
;10digit task.c: 135: RB3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	136
	
l1906:	
;10digit task.c: 136: RB4=0;
	bcf	(52/8),(52)&7
	line	137
	
l1908:	
;10digit task.c: 137: RB5=0;
	bcf	(53/8),(53)&7
	line	138
	
l1910:	
;10digit task.c: 138: RB6=1;
	bsf	(54/8),(54)&7
	line	139
	
l1912:	
;10digit task.c: 139: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l588
u2240:
	line	142
	
l1914:	
;10digit task.c: 140: {
;10digit task.c: 142: lcd_data('*');
	movlw	(02Ah)
	fcall	_lcd_data
	line	144
	
l1916:	
;10digit task.c: 144: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l1918:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	145
	
l588:	
	line	146
	
l1920:	
;10digit task.c: 145: }
;10digit task.c: 146: if(RB1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l589
u2250:
	line	149
	
l1922:	
;10digit task.c: 147: {
;10digit task.c: 149: lcd_data('0');
	movlw	(030h)
	fcall	_lcd_data
	line	150
	
l1924:	
;10digit task.c: 150: a[i]=0;
	movf	(_i),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_a&0ffh
	movwf	fsr0
	movlw	low(0)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	line	151
	
l1926:	
;10digit task.c: 151: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l1928:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	152
	
l589:	
	line	153
	
l1930:	
;10digit task.c: 152: }
;10digit task.c: 153: if(RB2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l590
u2260:
	line	156
	
l1932:	
;10digit task.c: 154: {
;10digit task.c: 156: lcd_data('#');
	movlw	(023h)
	fcall	_lcd_data
	line	158
	
l1934:	
;10digit task.c: 158: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l1936:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	159
	
l590:	
	line	162
	
l591:	
	line	57
	goto	l578
	
l592:	
	line	163
	
l593:	
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
;;		line 37 in file "E:\Embedded_Program\pic task\pic task\keypad\keypad task\1.10digit task\10digit task.c"
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
	file	"E:\Embedded_Program\pic task\pic task\keypad\keypad task\1.10digit task\10digit task.c"
	line	37
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 7
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l1776:	
;10digit task.c: 38: lcd_command(0x38);
	movlw	(038h)
	fcall	_lcd_command
	line	39
;10digit task.c: 39: lcd_command(0x06);
	movlw	(06h)
	fcall	_lcd_command
	line	40
;10digit task.c: 40: lcd_command(0x0C);
	movlw	(0Ch)
	fcall	_lcd_command
	line	41
;10digit task.c: 41: lcd_command(0x01);
	movlw	(01h)
	fcall	_lcd_command
	line	42
	
l575:	
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
;;		line 28 in file "E:\Embedded_Program\pic task\pic task\keypad\keypad task\1.10digit task\10digit task.c"
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
	file	"E:\Embedded_Program\pic task\pic task\keypad\keypad task\1.10digit task\10digit task.c"
	line	28
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 7
; Regs used in _lcd_data: [wreg+status,2+status,0+pclath+cstack]
;lcd_data@data stored from wreg
	movwf	(lcd_data@data)
	line	29
	
l1764:	
;10digit task.c: 29: PORTD=data;
	movf	(lcd_data@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	30
	
l1766:	
;10digit task.c: 30: RC0=1;
	bsf	(56/8),(56)&7
	line	31
	
l1768:	
;10digit task.c: 31: RC1=0;
	bcf	(57/8),(57)&7
	line	32
	
l1770:	
;10digit task.c: 32: RC2=1;
	bsf	(58/8),(58)&7
	line	33
	
l1772:	
;10digit task.c: 33: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	34
	
l1774:	
;10digit task.c: 34: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	35
	
l572:	
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
;;		line 19 in file "E:\Embedded_Program\pic task\pic task\keypad\keypad task\1.10digit task\10digit task.c"
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
	file	"E:\Embedded_Program\pic task\pic task\keypad\keypad task\1.10digit task\10digit task.c"
	line	19
	global	__size_of_lcd_command
	__size_of_lcd_command	equ	__end_of_lcd_command-_lcd_command
	
_lcd_command:	
	opt	stack 7
; Regs used in _lcd_command: [wreg+status,2+status,0+pclath+cstack]
;lcd_command@com stored from wreg
	movwf	(lcd_command@com)
	line	20
	
l1752:	
;10digit task.c: 20: PORTD=com;
	movf	(lcd_command@com),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	21
	
l1754:	
;10digit task.c: 21: RC0=0;
	bcf	(56/8),(56)&7
	line	22
	
l1756:	
;10digit task.c: 22: RC1=0;
	bcf	(57/8),(57)&7
	line	23
	
l1758:	
;10digit task.c: 23: RC2=1;
	bsf	(58/8),(58)&7
	line	24
	
l1760:	
;10digit task.c: 24: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	25
	
l1762:	
;10digit task.c: 25: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	26
	
l569:	
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
;;		line 15 in file "E:\Embedded_Program\pic task\pic task\keypad\keypad task\1.10digit task\10digit task.c"
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
	file	"E:\Embedded_Program\pic task\pic task\keypad\keypad task\1.10digit task\10digit task.c"
	line	15
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	16
	
l962:	
;10digit task.c: 16: while(x--);
	goto	l563
	
l564:	
	
l563:	
	
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
	goto	l564
u10:
	
l565:	
	line	17
	
l566:	
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
