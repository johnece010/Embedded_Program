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
	FNCALL	_main,_lcd_display
	FNCALL	_main,_lcd_cmd
	FNCALL	_main,_lcd_data
	FNCALL	_lcd_init,_lcd_cmd
	FNCALL	_lcd_display,_lcd_data
	FNCALL	_lcd_data,_delay
	FNCALL	_lcd_cmd,_delay
	FNROOT	_main
	global	_a
	global	_i
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
	retlw	87	;'W'
	retlw	69	;'E'
	retlw	76	;'L'
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	0
psect	strings
	file	"keypad.as"
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
       ds      18

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
	movlw	low((__pbssBANK0)+012h)
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
	global	?_lcd_cmd
?_lcd_cmd:	; 0 bytes @ 0x0
	global	?_lcd_data
?_lcd_data:	; 0 bytes @ 0x0
	global	?_lcd_display
?_lcd_display:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	delay@x
delay@x:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	??_lcd_cmd
??_lcd_cmd:	; 0 bytes @ 0x2
	global	??_lcd_data
??_lcd_data:	; 0 bytes @ 0x2
	global	lcd_cmd@cmd
lcd_cmd@cmd:	; 1 bytes @ 0x2
	global	lcd_data@data
lcd_data@data:	; 1 bytes @ 0x2
	ds	1
	global	??_lcd_display
??_lcd_display:	; 0 bytes @ 0x3
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x3
	global	lcd_display@j
lcd_display@j:	; 2 bytes @ 0x3
	ds	2
	global	lcd_display@m
lcd_display@m:	; 1 bytes @ 0x5
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x6
	ds	1
;;Data sizes: Strings 8, constant 0, data 0, bss 20, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7       9
;; BANK0           80      0      18
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; lcd_display@m	PTR unsigned char  size(1) Largest target is 8
;;		 -> STR_1(CODE[8]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_lcd_display
;;   _lcd_init->_lcd_cmd
;;   _lcd_display->_lcd_data
;;   _lcd_data->_delay
;;   _lcd_cmd->_delay
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
;; (0) _main                                                 1     1      0     195
;;                                              6 COMMON     1     1      0
;;                           _lcd_init
;;                              _delay
;;                        _lcd_display
;;                            _lcd_cmd
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             0     0      0      30
;;                            _lcd_cmd
;; ---------------------------------------------------------------------------------
;; (1) _lcd_display                                          3     3      0      90
;;                                              3 COMMON     3     3      0
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _lcd_data                                             1     1      0      30
;;                                              2 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _lcd_cmd                                              1     1      0      30
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
;;     _lcd_cmd
;;       _delay
;;   _delay
;;   _lcd_display
;;     _lcd_data
;;       _delay
;;   _lcd_cmd
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
;;COMMON               E      7       9       1       64.3%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0      1B       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0      12       5       22.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      1E      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 66 in file "E:\Embedded_Program\Keypad\[4][3]  keypad\keypad.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+0, pclath, cstack
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
;;		_lcd_display
;;		_lcd_cmd
;;		_lcd_data
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\Embedded_Program\Keypad\[4][3]  keypad\keypad.c"
	line	66
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
	line	67
	
l1797:	
;keypad.c: 67: TRISB = 0xF8;
	movlw	(0F8h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	68
	
l1799:	
;keypad.c: 68: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	69
	
l1801:	
;keypad.c: 69: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	70
	
l1803:	
;keypad.c: 70: PORTB = PORTC = PORTD = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	clrf	(7)	;volatile
	clrf	(6)	;volatile
	line	72
	
l1805:	
;keypad.c: 72: lcd_init();
	fcall	_lcd_init
	line	73
	
l1807:	
;keypad.c: 73: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	75
	
l1809:	
;keypad.c: 75: lcd_display("WELCOME");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_display
	line	76
	
l1811:	
;keypad.c: 76: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	77
;keypad.c: 77: while(1)
	
l584:	
	line	81
	
l1813:	
;keypad.c: 78: {
;keypad.c: 81: lcd_cmd(0xC0);
	movlw	(0C0h)
	fcall	_lcd_cmd
	line	82
	
l1815:	
;keypad.c: 82: lcd_cmd(0x0F);
	movlw	(0Fh)
	fcall	_lcd_cmd
	line	83
	
l1817:	
;keypad.c: 83: lcd_cmd(0x06);
	movlw	(06h)
	fcall	_lcd_cmd
	line	84
	
l1819:	
;keypad.c: 84: RB3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	line	85
	
l1821:	
;keypad.c: 85: RB4=0;
	bcf	(52/8),(52)&7
	line	86
	
l1823:	
;keypad.c: 86: RB5=0;
	bcf	(53/8),(53)&7
	line	87
	
l1825:	
;keypad.c: 87: RB6=0;
	bcf	(54/8),(54)&7
	line	88
	
l1827:	
;keypad.c: 88: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u2161
	goto	u2160
u2161:
	goto	l585
u2160:
	line	91
	
l1829:	
;keypad.c: 89: {
;keypad.c: 91: lcd_data('1');
	movlw	(031h)
	fcall	_lcd_data
	line	92
	
l1831:	
;keypad.c: 92: a[i]=1;
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
	line	93
	
l1833:	
;keypad.c: 93: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l1835:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	94
	
l585:	
	line	95
	
l1837:	
;keypad.c: 94: }
;keypad.c: 95: if(RB1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u2171
	goto	u2170
u2171:
	goto	l586
u2170:
	line	97
	
l1839:	
;keypad.c: 96: {
;keypad.c: 97: lcd_data('2');
	movlw	(032h)
	fcall	_lcd_data
	line	98
	
l1841:	
;keypad.c: 98: a[i]=2;
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
	line	99
	
l1843:	
;keypad.c: 99: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l1845:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	100
	
l586:	
	line	101
	
l1847:	
;keypad.c: 100: }
;keypad.c: 101: if(RB2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l587
u2180:
	line	103
	
l1849:	
;keypad.c: 102: {
;keypad.c: 103: lcd_data('3');
	movlw	(033h)
	fcall	_lcd_data
	line	104
	
l1851:	
;keypad.c: 104: a[i]=3;
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
	line	105
	
l1853:	
;keypad.c: 105: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l1855:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	106
	
l587:	
	line	108
	
l1857:	
;keypad.c: 106: }
;keypad.c: 108: RB3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	109
	
l1859:	
;keypad.c: 109: RB4=1;
	bsf	(52/8),(52)&7
	line	110
	
l1861:	
;keypad.c: 110: RB5=0;
	bcf	(53/8),(53)&7
	line	111
	
l1863:	
;keypad.c: 111: RB6=0;
	bcf	(54/8),(54)&7
	line	112
	
l1865:	
;keypad.c: 112: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l588
u2190:
	line	114
	
l1867:	
;keypad.c: 113: {
;keypad.c: 114: lcd_data('4');a[i]=4;
	movlw	(034h)
	fcall	_lcd_data
	
l1869:	
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
	line	115
	
l1871:	
;keypad.c: 115: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l1873:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	116
	
l588:	
	line	117
	
l1875:	
;keypad.c: 116: }
;keypad.c: 117: if(RB1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l589
u2200:
	line	120
	
l1877:	
;keypad.c: 118: {
;keypad.c: 120: lcd_data('5');
	movlw	(035h)
	fcall	_lcd_data
	line	121
	
l1879:	
;keypad.c: 121: a[i]=5;
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
	line	122
	
l1881:	
;keypad.c: 122: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l1883:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	123
	
l589:	
	line	124
	
l1885:	
;keypad.c: 123: }
;keypad.c: 124: if(RB2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7
	goto	u2211
	goto	u2210
u2211:
	goto	l590
u2210:
	line	127
	
l1887:	
;keypad.c: 125: {
;keypad.c: 127: lcd_data('6');
	movlw	(036h)
	fcall	_lcd_data
	line	128
	
l1889:	
;keypad.c: 128: a[i]=6;
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
	line	129
	
l1891:	
;keypad.c: 129: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l1893:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	130
	
l590:	
	line	132
	
l1895:	
;keypad.c: 130: }
;keypad.c: 132: RB3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	133
	
l1897:	
;keypad.c: 133: RB4=0;
	bcf	(52/8),(52)&7
	line	134
	
l1899:	
;keypad.c: 134: RB5=1;
	bsf	(53/8),(53)&7
	line	135
	
l1901:	
;keypad.c: 135: RB6=0;
	bcf	(54/8),(54)&7
	line	136
	
l1903:	
;keypad.c: 136: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l591
u2220:
	line	139
	
l1905:	
;keypad.c: 137: {
;keypad.c: 139: lcd_data('7');
	movlw	(037h)
	fcall	_lcd_data
	line	140
	
l1907:	
;keypad.c: 140: a[i]=7;
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
	line	141
	
l1909:	
;keypad.c: 141: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l1911:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	142
	
l591:	
	line	143
	
l1913:	
;keypad.c: 142: }
;keypad.c: 143: if(RB1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l592
u2230:
	line	146
	
l1915:	
;keypad.c: 144: {
;keypad.c: 146: lcd_data('8');
	movlw	(038h)
	fcall	_lcd_data
	line	147
	
l1917:	
;keypad.c: 147: a[i]=8;
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
	line	148
	
l1919:	
;keypad.c: 148: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l1921:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	149
	
l592:	
	line	150
	
l1923:	
;keypad.c: 149: }
;keypad.c: 150: if(RB2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l593
u2240:
	line	153
	
l1925:	
;keypad.c: 151: {
;keypad.c: 153: lcd_data('9');
	movlw	(039h)
	fcall	_lcd_data
	line	154
	
l1927:	
;keypad.c: 154: a[i]=9;
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
	line	155
	
l1929:	
;keypad.c: 155: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l1931:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	156
	
l593:	
	line	159
	
l1933:	
;keypad.c: 156: }
;keypad.c: 159: RB3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	160
	
l1935:	
;keypad.c: 160: RB4=0;
	bcf	(52/8),(52)&7
	line	161
	
l1937:	
;keypad.c: 161: RB5=0;
	bcf	(53/8),(53)&7
	line	162
	
l1939:	
;keypad.c: 162: RB6=1;
	bsf	(54/8),(54)&7
	line	163
	
l1941:	
;keypad.c: 163: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l594
u2250:
	line	166
	
l1943:	
;keypad.c: 164: {
;keypad.c: 166: lcd_data('*');
	movlw	(02Ah)
	fcall	_lcd_data
	line	168
	
l1945:	
;keypad.c: 168: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l1947:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	169
	
l594:	
	line	170
	
l1949:	
;keypad.c: 169: }
;keypad.c: 170: if(RB1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l595
u2260:
	line	173
	
l1951:	
;keypad.c: 171: {
;keypad.c: 173: lcd_data('0');
	movlw	(030h)
	fcall	_lcd_data
	line	174
	
l1953:	
;keypad.c: 174: a[i]=0;
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
	line	175
	
l1955:	
;keypad.c: 175: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l1957:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	176
	
l595:	
	line	177
	
l1959:	
;keypad.c: 176: }
;keypad.c: 177: if(RB2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7
	goto	u2271
	goto	u2270
u2271:
	goto	l596
u2270:
	line	180
	
l1961:	
;keypad.c: 178: {
;keypad.c: 180: lcd_data('#');
	movlw	(023h)
	fcall	_lcd_data
	line	182
	
l1963:	
;keypad.c: 182: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l1965:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	183
	
l596:	
	line	184
	
l1967:	
;keypad.c: 183: }
;keypad.c: 184: if(i>9)
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0Ah))^80h
	subwf	btemp+0,w
	skipz
	goto	u2285
	movlw	low(0Ah)
	subwf	(_i),w
u2285:

	skipc
	goto	u2281
	goto	u2280
u2281:
	goto	l597
u2280:
	line	186
	
l1969:	
;keypad.c: 185: {
;keypad.c: 186: break;
	goto	l598
	line	187
	
l597:	
	line	188
	
l599:	
	line	77
	goto	l584
	
l598:	
	line	189
	
l600:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_init
psect	text91,local,class=CODE,delta=2
global __ptext91
__ptext91:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 56 in file "E:\Embedded_Program\Keypad\[4][3]  keypad\keypad.c"
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
;;		_lcd_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text91
	file	"E:\Embedded_Program\Keypad\[4][3]  keypad\keypad.c"
	line	56
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 7
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	57
	
l1795:	
;keypad.c: 57: lcd_cmd(0x38);
	movlw	(038h)
	fcall	_lcd_cmd
	line	58
;keypad.c: 58: lcd_cmd(0x0C);
	movlw	(0Ch)
	fcall	_lcd_cmd
	line	59
;keypad.c: 59: lcd_cmd(0x06);
	movlw	(06h)
	fcall	_lcd_cmd
	line	60
;keypad.c: 60: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	61
;keypad.c: 61: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	62
;keypad.c: 62: lcd_cmd(0x0F);
	movlw	(0Fh)
	fcall	_lcd_cmd
	line	63
	
l581:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_display
psect	text92,local,class=CODE,delta=2
global __ptext92
__ptext92:

;; *************** function _lcd_display *****************
;; Defined at:
;;		line 48 in file "E:\Embedded_Program\Keypad\[4][3]  keypad\keypad.c"
;; Parameters:    Size  Location     Type
;;  m               1    wreg     PTR unsigned char 
;;		 -> STR_1(8), 
;; Auto vars:     Size  Location     Type
;;  m               1    5[COMMON] PTR unsigned char 
;;		 -> STR_1(8), 
;;  j               2    3[COMMON] int 
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
psect	text92
	file	"E:\Embedded_Program\Keypad\[4][3]  keypad\keypad.c"
	line	48
	global	__size_of_lcd_display
	__size_of_lcd_display	equ	__end_of_lcd_display-_lcd_display
	
_lcd_display:	
	opt	stack 7
; Regs used in _lcd_display: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_display@m stored from wreg
	movwf	(lcd_display@m)
	line	49
	
l1787:	
;keypad.c: 49: for(int j=0;m[j]!=0;j++)
	movlw	low(0)
	movwf	(lcd_display@j)
	movlw	high(0)
	movwf	((lcd_display@j))+1
	goto	l575
	line	50
	
l576:	
	line	51
	
l1789:	
;keypad.c: 50: {
;keypad.c: 51: lcd_data(m[j]);
	movf	(lcd_display@j),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_data
	line	49
	
l1791:	
	movlw	low(01h)
	addwf	(lcd_display@j),f
	skipnc
	incf	(lcd_display@j+1),f
	movlw	high(01h)
	addwf	(lcd_display@j+1),f
	
l575:	
	
l1793:	
	movf	(lcd_display@j),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2151
	goto	u2150
u2151:
	goto	l576
u2150:
	
l577:	
	line	53
	
l578:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_display
	__end_of_lcd_display:
;; =============== function _lcd_display ends ============

	signat	_lcd_display,4216
	global	_lcd_data
psect	text93,local,class=CODE,delta=2
global __ptext93
__ptext93:

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 38 in file "E:\Embedded_Program\Keypad\[4][3]  keypad\keypad.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text93
	file	"E:\Embedded_Program\Keypad\[4][3]  keypad\keypad.c"
	line	38
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 7
; Regs used in _lcd_data: [wreg+status,2+status,0+pclath+cstack]
;lcd_data@data stored from wreg
	movwf	(lcd_data@data)
	line	39
	
l1775:	
;keypad.c: 39: PORTD = data;
	movf	(lcd_data@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	40
	
l1777:	
;keypad.c: 40: RC0 = 1;
	bsf	(56/8),(56)&7
	line	41
	
l1779:	
;keypad.c: 41: RC1 = 0;
	bcf	(57/8),(57)&7
	line	42
	
l1781:	
;keypad.c: 42: RC2 = 1;
	bsf	(58/8),(58)&7
	line	43
	
l1783:	
;keypad.c: 43: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	44
	
l1785:	
;keypad.c: 44: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	45
	
l572:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
;; =============== function _lcd_data ends ============

	signat	_lcd_data,4216
	global	_lcd_cmd
psect	text94,local,class=CODE,delta=2
global __ptext94
__ptext94:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 28 in file "E:\Embedded_Program\Keypad\[4][3]  keypad\keypad.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    2[COMMON] unsigned char 
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
	file	"E:\Embedded_Program\Keypad\[4][3]  keypad\keypad.c"
	line	28
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 7
; Regs used in _lcd_cmd: [wreg+status,2+status,0+pclath+cstack]
;lcd_cmd@cmd stored from wreg
	movwf	(lcd_cmd@cmd)
	line	29
	
l1763:	
;keypad.c: 29: PORTD = cmd;
	movf	(lcd_cmd@cmd),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	30
	
l1765:	
;keypad.c: 30: RC0 = 0;
	bcf	(56/8),(56)&7
	line	31
	
l1767:	
;keypad.c: 31: RC1 = 0;
	bcf	(57/8),(57)&7
	line	32
	
l1769:	
;keypad.c: 32: RC2 = 1;
	bsf	(58/8),(58)&7
	line	33
	
l1771:	
;keypad.c: 33: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	34
	
l1773:	
;keypad.c: 34: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	35
	
l569:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,4216
	global	_delay
psect	text95,local,class=CODE,delta=2
global __ptext95
__ptext95:

;; *************** function _delay *****************
;; Defined at:
;;		line 22 in file "E:\Embedded_Program\Keypad\[4][3]  keypad\keypad.c"
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
;;		_lcd_cmd
;;		_lcd_data
;;		_main
;; This function uses a non-reentrant model
;;
psect	text95
	file	"E:\Embedded_Program\Keypad\[4][3]  keypad\keypad.c"
	line	22
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	23
	
l973:	
;keypad.c: 23: while(x--);
	goto	l563
	
l564:	
	
l563:	
	
l975:	
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
	line	24
	
l566:	
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
