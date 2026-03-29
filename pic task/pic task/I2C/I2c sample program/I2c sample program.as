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
	FNCALL	_main,_lcd_command
	FNCALL	_main,_lcd_display
	FNCALL	_main,_delay
	FNCALL	_main,_DS1307_WRITE
	FNCALL	_main,_DS1307_READ
	FNCALL	_DS1307_READ,_lcd_command
	FNCALL	_DS1307_READ,_bcd_to_ascii
	FNCALL	_DS1307_READ,_delay
	FNCALL	_DS1307_READ,_lcd_data
	FNCALL	_bcd_to_ascii,_lcd_data
	FNCALL	_bcd_to_ascii,_delay
	FNCALL	_DS1307_WRITE,_decimal_to_bcd
	FNCALL	_lcd_display,_lcd_data
	FNCALL	_lcd_display,_delay
	FNCALL	_lcd_init,_lcd_command
	FNCALL	_decimal_to_bcd,___awdiv
	FNCALL	_decimal_to_bcd,___awmod
	FNCALL	_decimal_to_bcd,_delay
	FNCALL	_lcd_data,_delay
	FNCALL	_lcd_command,_delay
	FNROOT	_main
	global	_con1
	global	_date1
	global	_day1
	global	_hr1
	global	_min1
	global	_mon1
	global	_sec1
	global	_yr1
	global	_PORTB
psect	text244,local,class=CODE,delta=2
global __ptext244
__ptext244:
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_SSPIF
_SSPIF	set	99
	global	_SSPCON2
_SSPCON2	set	145
	global	_SSPSTAT
_SSPSTAT	set	148
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_ACKDT
_ACKDT	set	1165
	global	_ACKEN
_ACKEN	set	1164
	global	_ACKSTAT
_ACKSTAT	set	1166
	global	_BF
_BF	set	1184
	global	_PEN
_PEN	set	1162
	global	_RCEN
_RCEN	set	1163
	global	_RSEN
_RSEN	set	1161
	global	_SEN
_SEN	set	1160
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
	retlw	67	;'C'
	retlw	76	;'L'
	retlw	79	;'O'
	retlw	67	;'C'
	retlw	75	;'K'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_2:	
	retlw	68	;'D'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	58	;':'
	retlw	0
psect	strings
	file	"I2c sample program.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_con1:
       ds      1

_date1:
       ds      1

_day1:
       ds      1

_hr1:
       ds      1

_min1:
       ds      1

_mon1:
       ds      1

_sec1:
       ds      1

_yr1:
       ds      1

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
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
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_lcd_display
?_lcd_display:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_bcd_to_ascii
?_bcd_to_ascii:	; 0 bytes @ 0x0
	global	?_decimal_to_bcd
?_decimal_to_bcd:	; 1 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	delay@x
delay@x:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	?_lcd_command
?_lcd_command:	; 0 bytes @ 0x2
	global	?_lcd_data
?_lcd_data:	; 0 bytes @ 0x2
	global	lcd_command@COM
lcd_command@COM:	; 2 bytes @ 0x2
	global	lcd_data@data
lcd_data@data:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??_lcd_command
??_lcd_command:	; 0 bytes @ 0x4
	global	??_lcd_data
??_lcd_data:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	lcd_command@temp
lcd_command@temp:	; 1 bytes @ 0x6
	global	lcd_data@val1
lcd_data@val1:	; 1 bytes @ 0x6
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x7
	global	??_lcd_display
??_lcd_display:	; 0 bytes @ 0x7
	global	??_bcd_to_ascii
??_bcd_to_ascii:	; 0 bytes @ 0x7
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	??_decimal_to_bcd
??_decimal_to_bcd:	; 0 bytes @ 0x9
	global	lcd_display@m
lcd_display@m:	; 1 bytes @ 0x9
	global	bcd_to_ascii@value
bcd_to_ascii@value:	; 1 bytes @ 0x9
	ds	1
	global	bcd_to_ascii@bcd
bcd_to_ascii@bcd:	; 1 bytes @ 0xA
	global	lcd_display@i
lcd_display@i:	; 2 bytes @ 0xA
	ds	1
	global	?_DS1307_READ
?_DS1307_READ:	; 0 bytes @ 0xB
	global	DS1307_READ@reg_add
DS1307_READ@reg_add:	; 1 bytes @ 0xB
	ds	1
	global	??_DS1307_WRITE
??_DS1307_WRITE:	; 0 bytes @ 0xC
	global	??_DS1307_READ
??_DS1307_READ:	; 0 bytes @ 0xC
	global	DS1307_WRITE@_sec
DS1307_WRITE@_sec:	; 1 bytes @ 0xC
	ds	1
	global	DS1307_READ@slave_add
DS1307_READ@slave_add:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	decimal_to_bcd@msb
decimal_to_bcd@msb:	; 1 bytes @ 0x0
	ds	1
	global	decimal_to_bcd@lsb
decimal_to_bcd@lsb:	; 1 bytes @ 0x1
	ds	1
	global	decimal_to_bcd@hex
decimal_to_bcd@hex:	; 1 bytes @ 0x2
	ds	1
	global	decimal_to_bcd@value
decimal_to_bcd@value:	; 1 bytes @ 0x3
	ds	1
	global	?_DS1307_WRITE
?_DS1307_WRITE:	; 0 bytes @ 0x4
	global	DS1307_WRITE@_min
DS1307_WRITE@_min:	; 1 bytes @ 0x4
	ds	1
	global	DS1307_WRITE@_hr
DS1307_WRITE@_hr:	; 1 bytes @ 0x5
	ds	1
	global	DS1307_WRITE@_day
DS1307_WRITE@_day:	; 1 bytes @ 0x6
	ds	1
	global	DS1307_WRITE@_date
DS1307_WRITE@_date:	; 1 bytes @ 0x7
	ds	1
	global	DS1307_WRITE@_mon
DS1307_WRITE@_mon:	; 1 bytes @ 0x8
	ds	1
	global	DS1307_WRITE@_yr
DS1307_WRITE@_yr:	; 1 bytes @ 0x9
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xA
	ds	5
;;Data sizes: Strings 13, constant 0, data 0, bss 8, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     15      23
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; lcd_display@m	PTR const unsigned char  size(1) Largest target is 7
;;		 -> STR_2(CODE[6]), STR_1(CODE[7]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_DS1307_READ
;;   _DS1307_READ->_bcd_to_ascii
;;   _bcd_to_ascii->_lcd_data
;;   _DS1307_WRITE->_decimal_to_bcd
;;   _lcd_display->_lcd_data
;;   _lcd_init->_lcd_command
;;   _decimal_to_bcd->___awdiv
;;   _lcd_data->_delay
;;   _lcd_command->_delay
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_DS1307_WRITE
;;   _DS1307_WRITE->_decimal_to_bcd
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
;;Main: autosize = 0, tempsize = 5, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 5     5      0    1868
;;                                             10 BANK0      5     5      0
;;                           _lcd_init
;;                        _lcd_command
;;                        _lcd_display
;;                              _delay
;;                       _DS1307_WRITE
;;                        _DS1307_READ
;; ---------------------------------------------------------------------------------
;; (1) _DS1307_READ                                          3     2      1     582
;;                                             11 COMMON     3     2      1
;;                        _lcd_command
;;                       _bcd_to_ascii
;;                              _delay
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (2) _bcd_to_ascii                                         4     4      0     316
;;                                              7 COMMON     4     4      0
;;                           _lcd_data
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _DS1307_WRITE                                         7     1      6     885
;;                                             12 COMMON     1     1      0
;;                                              4 BANK0      6     0      6
;;                     _decimal_to_bcd
;; ---------------------------------------------------------------------------------
;; (1) _lcd_display                                          5     5      0     201
;;                                              7 COMMON     5     5      0
;;                           _lcd_data
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             0     0      0      89
;;                        _lcd_command
;; ---------------------------------------------------------------------------------
;; (2) _decimal_to_bcd                                       7     7      0     731
;;                                              9 COMMON     3     3      0
;;                                              0 BANK0      4     4      0
;;                            ___awdiv
;;                            ___awmod
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _lcd_data                                             5     3      2      89
;;                                              2 COMMON     5     3      2
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _lcd_command                                          5     3      2      89
;;                                              2 COMMON     5     3      2
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (3) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (3) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (3) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_init
;;     _lcd_command
;;       _delay
;;   _lcd_command
;;     _delay
;;   _lcd_display
;;     _lcd_data
;;       _delay
;;     _delay
;;   _delay
;;   _DS1307_WRITE
;;     _decimal_to_bcd
;;       ___awdiv
;;       ___awmod
;;       _delay
;;   _DS1307_READ
;;     _lcd_command
;;       _delay
;;     _bcd_to_ascii
;;       _lcd_data
;;         _delay
;;       _delay
;;     _delay
;;     _lcd_data
;;       _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       4       2        0.0%
;;ABS                  0      0      25       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      F      17       5       28.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      29      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 92 in file "C:\Users\TECH\Desktop\madhu pic folder\I2C\I2c sample program\I2c sample program.c"
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
;;      Temps:          0       5       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_init
;;		_lcd_command
;;		_lcd_display
;;		_delay
;;		_DS1307_WRITE
;;		_DS1307_READ
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\TECH\Desktop\madhu pic folder\I2C\I2c sample program\I2c sample program.c"
	line	92
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	93
	
l2415:	
;I2c sample program.c: 93: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	94
;I2c sample program.c: 94: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	95
;I2c sample program.c: 95: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	96
;I2c sample program.c: 96: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	97
	
l2417:	
;I2c sample program.c: 97: TRISC=0XFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	98
	
l2419:	
;I2c sample program.c: 98: SSPSTAT=0XC0;
	movlw	(0C0h)
	movwf	(148)^080h	;volatile
	line	99
	
l2421:	
;I2c sample program.c: 99: SSPCON=0X28;
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	100
	
l2423:	
;I2c sample program.c: 100: SSPCON2=0X18;
	movlw	(018h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(145)^080h	;volatile
	line	102
	
l2425:	
;I2c sample program.c: 102: lcd_init();
	fcall	_lcd_init
	line	103
	
l2427:	
;I2c sample program.c: 103: lcd_command(0x80);
	movlw	low(080h)
	movwf	(?_lcd_command)
	movlw	high(080h)
	movwf	((?_lcd_command))+1
	fcall	_lcd_command
	line	104
	
l2429:	
;I2c sample program.c: 104: lcd_display("CLOCK:");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_display
	line	105
	
l2431:	
;I2c sample program.c: 105: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	106
	
l2433:	
;I2c sample program.c: 106: lcd_command(0xC0);
	movlw	low(0C0h)
	movwf	(?_lcd_command)
	movlw	high(0C0h)
	movwf	((?_lcd_command))+1
	fcall	_lcd_command
	line	107
	
l2435:	
;I2c sample program.c: 107: lcd_display("DATE:");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_lcd_display
	line	109
	
l2437:	
;I2c sample program.c: 109: DS1307_WRITE(0,30,05,1,22,11,25);
	movlw	(01Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_DS1307_WRITE)
	movlw	(05h)
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	0+(?_DS1307_WRITE)+01h
	clrf	0+(?_DS1307_WRITE)+02h
	bsf	status,0
	rlf	0+(?_DS1307_WRITE)+02h,f
	movlw	(016h)
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movwf	0+(?_DS1307_WRITE)+03h
	movlw	(0Bh)
	movwf	(??_main+3)+0
	movf	(??_main+3)+0,w
	movwf	0+(?_DS1307_WRITE)+04h
	movlw	(019h)
	movwf	(??_main+4)+0
	movf	(??_main+4)+0,w
	movwf	0+(?_DS1307_WRITE)+05h
	movlw	(0)
	fcall	_DS1307_WRITE
	line	110
	
l2439:	
;I2c sample program.c: 110: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	111
;I2c sample program.c: 111: while(1)
	
l600:	
	line	113
	
l2441:	
;I2c sample program.c: 112: {
;I2c sample program.c: 113: DS1307_READ(0xD0,0X00);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_DS1307_READ)
	movlw	(0D0h)
	fcall	_DS1307_READ
	line	114
	
l2443:	
;I2c sample program.c: 114: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	115
	
l601:	
	line	111
	goto	l600
	
l602:	
	line	116
	
l603:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_DS1307_READ
psect	text245,local,class=CODE,delta=2
global __ptext245
__ptext245:

;; *************** function _DS1307_READ *****************
;; Defined at:
;;		line 227 in file "C:\Users\TECH\Desktop\madhu pic folder\I2C\I2c sample program\I2c sample program.c"
;; Parameters:    Size  Location     Type
;;  slave_add       1    wreg     unsigned char 
;;  reg_add         1   11[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  slave_add       1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_command
;;		_bcd_to_ascii
;;		_delay
;;		_lcd_data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text245
	file	"C:\Users\TECH\Desktop\madhu pic folder\I2C\I2c sample program\I2c sample program.c"
	line	227
	global	__size_of_DS1307_READ
	__size_of_DS1307_READ	equ	__end_of_DS1307_READ-_DS1307_READ
	
_DS1307_READ:	
	opt	stack 7
; Regs used in _DS1307_READ: [wreg+status,2+status,0+pclath+cstack]
;DS1307_READ@slave_add stored from wreg
	line	229
	movwf	(DS1307_READ@slave_add)
	
l2357:	
;I2c sample program.c: 229: SEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	230
;I2c sample program.c: 230: while(SEN==1);
	goto	l681
	
l682:	
	
l681:	
	btfsc	(1160/8)^080h,(1160)&7
	goto	u3141
	goto	u3140
u3141:
	goto	l682
u3140:
	
l683:	
	line	231
;I2c sample program.c: 231: SSPIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7
	line	234
	
l2359:	
;I2c sample program.c: 234: SSPBUF=slave_add;
	movf	(DS1307_READ@slave_add),w
	movwf	(19)	;volatile
	line	235
;I2c sample program.c: 235: while(SSPIF==0);
	goto	l684
	
l685:	
	
l684:	
	btfss	(99/8),(99)&7
	goto	u3151
	goto	u3150
u3151:
	goto	l685
u3150:
	
l686:	
	line	236
;I2c sample program.c: 236: while(ACKSTAT==1);
	goto	l687
	
l688:	
	
l687:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1166/8)^080h,(1166)&7
	goto	u3161
	goto	u3160
u3161:
	goto	l688
u3160:
	
l689:	
	line	237
;I2c sample program.c: 237: SSPIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7
	line	238
;I2c sample program.c: 238: ACKSTAT=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1166/8)^080h,(1166)&7
	line	240
	
l2361:	
;I2c sample program.c: 240: SSPBUF=reg_add;
	movf	(DS1307_READ@reg_add),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	241
;I2c sample program.c: 241: while(SSPIF==0);
	goto	l690
	
l691:	
	
l690:	
	btfss	(99/8),(99)&7
	goto	u3171
	goto	u3170
u3171:
	goto	l691
u3170:
	
l692:	
	line	242
;I2c sample program.c: 242: while(ACKSTAT==1);
	goto	l693
	
l694:	
	
l693:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1166/8)^080h,(1166)&7
	goto	u3181
	goto	u3180
u3181:
	goto	l694
u3180:
	
l695:	
	line	243
;I2c sample program.c: 243: SSPIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7
	line	244
;I2c sample program.c: 244: ACKSTAT=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1166/8)^080h,(1166)&7
	line	247
;I2c sample program.c: 247: RSEN=1;
	bsf	(1161/8)^080h,(1161)&7
	line	248
;I2c sample program.c: 248: while(RSEN==1);
	goto	l696
	
l697:	
	
l696:	
	btfsc	(1161/8)^080h,(1161)&7
	goto	u3191
	goto	u3190
u3191:
	goto	l697
u3190:
	
l698:	
	line	249
;I2c sample program.c: 249: SSPIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7
	line	251
	
l2363:	
;I2c sample program.c: 251: SSPBUF=slave_add+1;
	movf	(DS1307_READ@slave_add),w
	addlw	01h
	movwf	(19)	;volatile
	line	252
;I2c sample program.c: 252: while(SSPIF==0);
	goto	l699
	
l700:	
	
l699:	
	btfss	(99/8),(99)&7
	goto	u3201
	goto	u3200
u3201:
	goto	l700
u3200:
	
l701:	
	line	253
;I2c sample program.c: 253: while(ACKSTAT==1);
	goto	l702
	
l703:	
	
l702:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1166/8)^080h,(1166)&7
	goto	u3211
	goto	u3210
u3211:
	goto	l703
u3210:
	
l704:	
	line	254
;I2c sample program.c: 254: SSPIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7
	line	255
;I2c sample program.c: 255: ACKSTAT=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1166/8)^080h,(1166)&7
	line	258
;I2c sample program.c: 258: RCEN=1;
	bsf	(1163/8)^080h,(1163)&7
	line	259
;I2c sample program.c: 259: while(BF==0);
	goto	l705
	
l706:	
	
l705:	
	btfss	(1184/8)^080h,(1184)&7
	goto	u3221
	goto	u3220
u3221:
	goto	l706
u3220:
	
l707:	
	line	260
	
l2365:	
;I2c sample program.c: 260: sec1=SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_DS1307_READ+0)+0
	movf	(??_DS1307_READ+0)+0,w
	movwf	(_sec1)
	line	261
	
l2367:	
;I2c sample program.c: 261: ACKDT=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1165/8)^080h,(1165)&7
	line	262
	
l2369:	
;I2c sample program.c: 262: ACKEN=1;
	bsf	(1164/8)^080h,(1164)&7
	line	263
;I2c sample program.c: 263: while(ACKEN==1);
	goto	l708
	
l709:	
	
l708:	
	btfsc	(1164/8)^080h,(1164)&7
	goto	u3231
	goto	u3230
u3231:
	goto	l709
u3230:
	
l710:	
	line	266
;I2c sample program.c: 266: RCEN=1;
	bsf	(1163/8)^080h,(1163)&7
	line	267
;I2c sample program.c: 267: while(BF==0);
	goto	l711
	
l712:	
	
l711:	
	btfss	(1184/8)^080h,(1184)&7
	goto	u3241
	goto	u3240
u3241:
	goto	l712
u3240:
	
l713:	
	line	268
	
l2371:	
;I2c sample program.c: 268: min1=SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_DS1307_READ+0)+0
	movf	(??_DS1307_READ+0)+0,w
	movwf	(_min1)
	line	269
	
l2373:	
;I2c sample program.c: 269: ACKDT=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1165/8)^080h,(1165)&7
	line	270
	
l2375:	
;I2c sample program.c: 270: ACKEN=1;
	bsf	(1164/8)^080h,(1164)&7
	line	271
;I2c sample program.c: 271: while(ACKEN==1);
	goto	l714
	
l715:	
	
l714:	
	btfsc	(1164/8)^080h,(1164)&7
	goto	u3251
	goto	u3250
u3251:
	goto	l715
u3250:
	
l716:	
	line	273
;I2c sample program.c: 273: RCEN=1;
	bsf	(1163/8)^080h,(1163)&7
	line	274
;I2c sample program.c: 274: while(BF==0);
	goto	l717
	
l718:	
	
l717:	
	btfss	(1184/8)^080h,(1184)&7
	goto	u3261
	goto	u3260
u3261:
	goto	l718
u3260:
	
l719:	
	line	275
	
l2377:	
;I2c sample program.c: 275: hr1=SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_DS1307_READ+0)+0
	movf	(??_DS1307_READ+0)+0,w
	movwf	(_hr1)
	line	276
	
l2379:	
;I2c sample program.c: 276: ACKDT=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1165/8)^080h,(1165)&7
	line	277
	
l2381:	
;I2c sample program.c: 277: ACKEN=1;
	bsf	(1164/8)^080h,(1164)&7
	line	278
;I2c sample program.c: 278: while(ACKEN==1);
	goto	l720
	
l721:	
	
l720:	
	btfsc	(1164/8)^080h,(1164)&7
	goto	u3271
	goto	u3270
u3271:
	goto	l721
u3270:
	
l722:	
	line	280
;I2c sample program.c: 280: RCEN=1;
	bsf	(1163/8)^080h,(1163)&7
	line	281
;I2c sample program.c: 281: while(BF==0);
	goto	l723
	
l724:	
	
l723:	
	btfss	(1184/8)^080h,(1184)&7
	goto	u3281
	goto	u3280
u3281:
	goto	l724
u3280:
	
l725:	
	line	282
	
l2383:	
;I2c sample program.c: 282: day1=SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_DS1307_READ+0)+0
	movf	(??_DS1307_READ+0)+0,w
	movwf	(_day1)
	line	283
	
l2385:	
;I2c sample program.c: 283: ACKDT=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1165/8)^080h,(1165)&7
	line	284
	
l2387:	
;I2c sample program.c: 284: ACKEN=1;
	bsf	(1164/8)^080h,(1164)&7
	line	285
;I2c sample program.c: 285: while(ACKEN==1);
	goto	l726
	
l727:	
	
l726:	
	btfsc	(1164/8)^080h,(1164)&7
	goto	u3291
	goto	u3290
u3291:
	goto	l727
u3290:
	
l728:	
	line	287
;I2c sample program.c: 287: RCEN=1;
	bsf	(1163/8)^080h,(1163)&7
	line	288
;I2c sample program.c: 288: while(BF==0);
	goto	l729
	
l730:	
	
l729:	
	btfss	(1184/8)^080h,(1184)&7
	goto	u3301
	goto	u3300
u3301:
	goto	l730
u3300:
	
l731:	
	line	289
	
l2389:	
;I2c sample program.c: 289: date1=SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_DS1307_READ+0)+0
	movf	(??_DS1307_READ+0)+0,w
	movwf	(_date1)
	line	290
	
l2391:	
;I2c sample program.c: 290: ACKDT=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1165/8)^080h,(1165)&7
	line	291
	
l2393:	
;I2c sample program.c: 291: ACKEN=1;
	bsf	(1164/8)^080h,(1164)&7
	line	292
;I2c sample program.c: 292: while(ACKEN==1);
	goto	l732
	
l733:	
	
l732:	
	btfsc	(1164/8)^080h,(1164)&7
	goto	u3311
	goto	u3310
u3311:
	goto	l733
u3310:
	
l734:	
	line	294
;I2c sample program.c: 294: RCEN=1;
	bsf	(1163/8)^080h,(1163)&7
	line	295
;I2c sample program.c: 295: while(BF==0);
	goto	l735
	
l736:	
	
l735:	
	btfss	(1184/8)^080h,(1184)&7
	goto	u3321
	goto	u3320
u3321:
	goto	l736
u3320:
	
l737:	
	line	296
	
l2395:	
;I2c sample program.c: 296: mon1=SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_DS1307_READ+0)+0
	movf	(??_DS1307_READ+0)+0,w
	movwf	(_mon1)
	line	297
	
l2397:	
;I2c sample program.c: 297: ACKDT=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1165/8)^080h,(1165)&7
	line	298
	
l2399:	
;I2c sample program.c: 298: ACKEN=1;
	bsf	(1164/8)^080h,(1164)&7
	line	299
;I2c sample program.c: 299: while(ACKEN==1);
	goto	l738
	
l739:	
	
l738:	
	btfsc	(1164/8)^080h,(1164)&7
	goto	u3331
	goto	u3330
u3331:
	goto	l739
u3330:
	
l740:	
	line	301
;I2c sample program.c: 301: RCEN=1;
	bsf	(1163/8)^080h,(1163)&7
	line	302
;I2c sample program.c: 302: while(BF==0);
	goto	l741
	
l742:	
	
l741:	
	btfss	(1184/8)^080h,(1184)&7
	goto	u3341
	goto	u3340
u3341:
	goto	l742
u3340:
	
l743:	
	line	303
	
l2401:	
;I2c sample program.c: 303: yr1=SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_DS1307_READ+0)+0
	movf	(??_DS1307_READ+0)+0,w
	movwf	(_yr1)
	line	304
	
l2403:	
;I2c sample program.c: 304: ACKDT=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1165/8)^080h,(1165)&7
	line	305
	
l2405:	
;I2c sample program.c: 305: ACKEN=1;
	bsf	(1164/8)^080h,(1164)&7
	line	306
;I2c sample program.c: 306: while(ACKEN==1);
	goto	l744
	
l745:	
	
l744:	
	btfsc	(1164/8)^080h,(1164)&7
	goto	u3351
	goto	u3350
u3351:
	goto	l745
u3350:
	
l746:	
	line	308
;I2c sample program.c: 308: RCEN=1;
	bsf	(1163/8)^080h,(1163)&7
	line	309
;I2c sample program.c: 309: while(BF==0);
	goto	l747
	
l748:	
	
l747:	
	btfss	(1184/8)^080h,(1184)&7
	goto	u3361
	goto	u3360
u3361:
	goto	l748
u3360:
	
l749:	
	line	310
	
l2407:	
;I2c sample program.c: 310: con1=SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_DS1307_READ+0)+0
	movf	(??_DS1307_READ+0)+0,w
	movwf	(_con1)
	line	311
	
l2409:	
;I2c sample program.c: 311: ACKDT=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1165/8)^080h,(1165)&7
	line	312
	
l2411:	
;I2c sample program.c: 312: ACKEN=1;
	bsf	(1164/8)^080h,(1164)&7
	line	313
;I2c sample program.c: 313: while(ACKEN==1);
	goto	l750
	
l751:	
	
l750:	
	btfsc	(1164/8)^080h,(1164)&7
	goto	u3371
	goto	u3370
u3371:
	goto	l751
u3370:
	
l752:	
	line	315
;I2c sample program.c: 315: PEN=1;
	bsf	(1162/8)^080h,(1162)&7
	line	316
;I2c sample program.c: 316: while(PEN==1);
	goto	l753
	
l754:	
	
l753:	
	btfsc	(1162/8)^080h,(1162)&7
	goto	u3381
	goto	u3380
u3381:
	goto	l754
u3380:
	
l755:	
	line	318
	
l2413:	
;I2c sample program.c: 318: lcd_command(0x88);
	movlw	low(088h)
	movwf	(?_lcd_command)
	movlw	high(088h)
	movwf	((?_lcd_command))+1
	fcall	_lcd_command
	line	319
;I2c sample program.c: 319: bcd_to_ascii(hr1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_hr1),w
	fcall	_bcd_to_ascii
	line	320
;I2c sample program.c: 320: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	321
;I2c sample program.c: 321: lcd_data(':');
	movlw	low(03Ah)
	movwf	(?_lcd_data)
	movlw	high(03Ah)
	movwf	((?_lcd_data))+1
	fcall	_lcd_data
	line	323
;I2c sample program.c: 323: bcd_to_ascii(min1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_min1),w
	fcall	_bcd_to_ascii
	line	325
;I2c sample program.c: 325: lcd_data(':');
	movlw	low(03Ah)
	movwf	(?_lcd_data)
	movlw	high(03Ah)
	movwf	((?_lcd_data))+1
	fcall	_lcd_data
	line	327
;I2c sample program.c: 327: bcd_to_ascii(sec1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_sec1),w
	fcall	_bcd_to_ascii
	line	328
;I2c sample program.c: 328: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	330
;I2c sample program.c: 330: lcd_command(0xC8);
	movlw	low(0C8h)
	movwf	(?_lcd_command)
	movlw	high(0C8h)
	movwf	((?_lcd_command))+1
	fcall	_lcd_command
	line	331
;I2c sample program.c: 331: bcd_to_ascii(date1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_date1),w
	fcall	_bcd_to_ascii
	line	332
;I2c sample program.c: 332: lcd_data('/');
	movlw	low(02Fh)
	movwf	(?_lcd_data)
	movlw	high(02Fh)
	movwf	((?_lcd_data))+1
	fcall	_lcd_data
	line	334
;I2c sample program.c: 334: bcd_to_ascii(mon1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_mon1),w
	fcall	_bcd_to_ascii
	line	336
;I2c sample program.c: 336: lcd_data('/');
	movlw	low(02Fh)
	movwf	(?_lcd_data)
	movlw	high(02Fh)
	movwf	((?_lcd_data))+1
	fcall	_lcd_data
	line	338
;I2c sample program.c: 338: bcd_to_ascii(yr1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_yr1),w
	fcall	_bcd_to_ascii
	line	340
	
l756:	
	return
	opt stack 0
GLOBAL	__end_of_DS1307_READ
	__end_of_DS1307_READ:
;; =============== function _DS1307_READ ends ============

	signat	_DS1307_READ,8312
	global	_bcd_to_ascii
psect	text246,local,class=CODE,delta=2
global __ptext246
__ptext246:

;; *************** function _bcd_to_ascii *****************
;; Defined at:
;;		line 119 in file "C:\Users\TECH\Desktop\madhu pic folder\I2C\I2c sample program\I2c sample program.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1    9[COMMON] unsigned char 
;;  bcd             1   10[COMMON] unsigned char 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_data
;;		_delay
;; This function is called by:
;;		_DS1307_READ
;; This function uses a non-reentrant model
;;
psect	text246
	file	"C:\Users\TECH\Desktop\madhu pic folder\I2C\I2c sample program\I2c sample program.c"
	line	119
	global	__size_of_bcd_to_ascii
	__size_of_bcd_to_ascii	equ	__end_of_bcd_to_ascii-_bcd_to_ascii
	
_bcd_to_ascii:	
	opt	stack 6
; Regs used in _bcd_to_ascii: [wreg+status,2+status,0+pclath+cstack]
;bcd_to_ascii@value stored from wreg
	line	121
	movwf	(bcd_to_ascii@value)
	
l2335:	
;I2c sample program.c: 120: unsigned char bcd;
;I2c sample program.c: 121: bcd=value;
	movf	(bcd_to_ascii@value),w
	movwf	(??_bcd_to_ascii+0)+0
	movf	(??_bcd_to_ascii+0)+0,w
	movwf	(bcd_to_ascii@bcd)
	line	122
	
l2337:	
;I2c sample program.c: 122: bcd=bcd&0xf0;
	movf	(bcd_to_ascii@bcd),w
	andlw	0F0h
	movwf	(??_bcd_to_ascii+0)+0
	movf	(??_bcd_to_ascii+0)+0,w
	movwf	(bcd_to_ascii@bcd)
	line	123
	
l2339:	
;I2c sample program.c: 123: bcd=bcd>>4;
	movf	(bcd_to_ascii@bcd),w
	movwf	(??_bcd_to_ascii+0)+0
	movlw	04h
u3135:
	clrc
	rrf	(??_bcd_to_ascii+0)+0,f
	addlw	-1
	skipz
	goto	u3135
	movf	0+(??_bcd_to_ascii+0)+0,w
	movwf	(??_bcd_to_ascii+1)+0
	movf	(??_bcd_to_ascii+1)+0,w
	movwf	(bcd_to_ascii@bcd)
	line	124
	
l2341:	
;I2c sample program.c: 124: bcd=bcd|0x30;
	movf	(bcd_to_ascii@bcd),w
	iorlw	030h
	movwf	(??_bcd_to_ascii+0)+0
	movf	(??_bcd_to_ascii+0)+0,w
	movwf	(bcd_to_ascii@bcd)
	line	125
	
l2343:	
;I2c sample program.c: 125: lcd_data(bcd);
	movf	(bcd_to_ascii@bcd),w
	movwf	(??_bcd_to_ascii+0)+0
	clrf	(??_bcd_to_ascii+0)+0+1
	movf	0+(??_bcd_to_ascii+0)+0,w
	movwf	(?_lcd_data)
	movf	1+(??_bcd_to_ascii+0)+0,w
	movwf	(?_lcd_data+1)
	fcall	_lcd_data
	line	126
	
l2345:	
;I2c sample program.c: 126: delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	127
	
l2347:	
;I2c sample program.c: 127: bcd=value;
	movf	(bcd_to_ascii@value),w
	movwf	(??_bcd_to_ascii+0)+0
	movf	(??_bcd_to_ascii+0)+0,w
	movwf	(bcd_to_ascii@bcd)
	line	128
	
l2349:	
;I2c sample program.c: 128: bcd=bcd&0x0f;
	movf	(bcd_to_ascii@bcd),w
	andlw	0Fh
	movwf	(??_bcd_to_ascii+0)+0
	movf	(??_bcd_to_ascii+0)+0,w
	movwf	(bcd_to_ascii@bcd)
	line	129
	
l2351:	
;I2c sample program.c: 129: bcd=bcd|0x30;
	movf	(bcd_to_ascii@bcd),w
	iorlw	030h
	movwf	(??_bcd_to_ascii+0)+0
	movf	(??_bcd_to_ascii+0)+0,w
	movwf	(bcd_to_ascii@bcd)
	line	130
	
l2353:	
;I2c sample program.c: 130: lcd_data(bcd);
	movf	(bcd_to_ascii@bcd),w
	movwf	(??_bcd_to_ascii+0)+0
	clrf	(??_bcd_to_ascii+0)+0+1
	movf	0+(??_bcd_to_ascii+0)+0,w
	movwf	(?_lcd_data)
	movf	1+(??_bcd_to_ascii+0)+0,w
	movwf	(?_lcd_data+1)
	fcall	_lcd_data
	line	131
	
l2355:	
;I2c sample program.c: 131: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	132
	
l606:	
	return
	opt stack 0
GLOBAL	__end_of_bcd_to_ascii
	__end_of_bcd_to_ascii:
;; =============== function _bcd_to_ascii ends ============

	signat	_bcd_to_ascii,4216
	global	_DS1307_WRITE
psect	text247,local,class=CODE,delta=2
global __ptext247
__ptext247:

;; *************** function _DS1307_WRITE *****************
;; Defined at:
;;		line 146 in file "C:\Users\TECH\Desktop\madhu pic folder\I2C\I2c sample program\I2c sample program.c"
;; Parameters:    Size  Location     Type
;;  _sec            1    wreg     unsigned char 
;;  _min            1    4[BANK0 ] unsigned char 
;;  _hr             1    5[BANK0 ] unsigned char 
;;  _day            1    6[BANK0 ] unsigned char 
;;  _date           1    7[BANK0 ] unsigned char 
;;  _mon            1    8[BANK0 ] unsigned char 
;;  _yr             1    9[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  _sec            1   12[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       6       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_decimal_to_bcd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text247
	file	"C:\Users\TECH\Desktop\madhu pic folder\I2C\I2c sample program\I2c sample program.c"
	line	146
	global	__size_of_DS1307_WRITE
	__size_of_DS1307_WRITE	equ	__end_of_DS1307_WRITE-_DS1307_WRITE
	
_DS1307_WRITE:	
	opt	stack 7
; Regs used in _DS1307_WRITE: [wreg+status,2+status,0+pclath+cstack]
;DS1307_WRITE@_sec stored from wreg
	line	149
	movwf	(DS1307_WRITE@_sec)
	
l2313:	
;I2c sample program.c: 149: SEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	150
;I2c sample program.c: 150: while(SEN==1);
	goto	l612
	
l613:	
	
l612:	
	btfsc	(1160/8)^080h,(1160)&7
	goto	u2911
	goto	u2910
u2911:
	goto	l613
u2910:
	
l614:	
	line	151
;I2c sample program.c: 151: SSPIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7
	line	154
	
l2315:	
;I2c sample program.c: 154: SSPBUF=0xD0;
	movlw	(0D0h)
	movwf	(19)	;volatile
	line	155
;I2c sample program.c: 155: while(SSPIF==0);
	goto	l615
	
l616:	
	
l615:	
	btfss	(99/8),(99)&7
	goto	u2921
	goto	u2920
u2921:
	goto	l616
u2920:
	
l617:	
	line	156
;I2c sample program.c: 156: while(ACKSTAT==1);
	goto	l618
	
l619:	
	
l618:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1166/8)^080h,(1166)&7
	goto	u2931
	goto	u2930
u2931:
	goto	l619
u2930:
	
l620:	
	line	157
;I2c sample program.c: 157: SSPIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7
	line	158
;I2c sample program.c: 158: ACKSTAT=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1166/8)^080h,(1166)&7
	line	160
	
l2317:	
;I2c sample program.c: 160: SSPBUF=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(19)	;volatile
	line	161
;I2c sample program.c: 161: while(SSPIF==0);
	goto	l621
	
l622:	
	
l621:	
	btfss	(99/8),(99)&7
	goto	u2941
	goto	u2940
u2941:
	goto	l622
u2940:
	
l623:	
	line	162
;I2c sample program.c: 162: while(ACKSTAT==1);
	goto	l624
	
l625:	
	
l624:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1166/8)^080h,(1166)&7
	goto	u2951
	goto	u2950
u2951:
	goto	l625
u2950:
	
l626:	
	line	163
;I2c sample program.c: 163: SSPIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7
	line	164
;I2c sample program.c: 164: ACKSTAT=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1166/8)^080h,(1166)&7
	line	166
	
l2319:	
;I2c sample program.c: 166: SSPBUF=decimal_to_bcd(_sec);
	movf	(DS1307_WRITE@_sec),w
	fcall	_decimal_to_bcd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	167
;I2c sample program.c: 167: while(SSPIF==0);
	goto	l627
	
l628:	
	
l627:	
	btfss	(99/8),(99)&7
	goto	u2961
	goto	u2960
u2961:
	goto	l628
u2960:
	
l629:	
	line	168
;I2c sample program.c: 168: while(ACKSTAT==1);
	goto	l630
	
l631:	
	
l630:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1166/8)^080h,(1166)&7
	goto	u2971
	goto	u2970
u2971:
	goto	l631
u2970:
	
l632:	
	line	169
;I2c sample program.c: 169: SSPIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7
	line	170
;I2c sample program.c: 170: ACKSTAT=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1166/8)^080h,(1166)&7
	line	173
	
l2321:	
;I2c sample program.c: 173: SSPBUF=decimal_to_bcd(_min);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(DS1307_WRITE@_min),w
	fcall	_decimal_to_bcd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	174
;I2c sample program.c: 174: while(SSPIF==0);
	goto	l633
	
l634:	
	
l633:	
	btfss	(99/8),(99)&7
	goto	u2981
	goto	u2980
u2981:
	goto	l634
u2980:
	
l635:	
	line	175
;I2c sample program.c: 175: while(ACKSTAT==1);
	goto	l636
	
l637:	
	
l636:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1166/8)^080h,(1166)&7
	goto	u2991
	goto	u2990
u2991:
	goto	l637
u2990:
	
l638:	
	line	176
;I2c sample program.c: 176: SSPIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7
	line	177
;I2c sample program.c: 177: ACKSTAT=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1166/8)^080h,(1166)&7
	line	180
	
l2323:	
;I2c sample program.c: 180: SSPBUF=decimal_to_bcd(_hr);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(DS1307_WRITE@_hr),w
	fcall	_decimal_to_bcd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	181
;I2c sample program.c: 181: while(SSPIF==0);
	goto	l639
	
l640:	
	
l639:	
	btfss	(99/8),(99)&7
	goto	u3001
	goto	u3000
u3001:
	goto	l640
u3000:
	
l641:	
	line	182
;I2c sample program.c: 182: while(ACKSTAT==1);
	goto	l642
	
l643:	
	
l642:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1166/8)^080h,(1166)&7
	goto	u3011
	goto	u3010
u3011:
	goto	l643
u3010:
	
l644:	
	line	183
;I2c sample program.c: 183: SSPIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7
	line	184
;I2c sample program.c: 184: ACKSTAT=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1166/8)^080h,(1166)&7
	line	186
	
l2325:	
;I2c sample program.c: 186: SSPBUF=decimal_to_bcd(_day);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(DS1307_WRITE@_day),w
	fcall	_decimal_to_bcd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	187
;I2c sample program.c: 187: while(SSPIF==0);
	goto	l645
	
l646:	
	
l645:	
	btfss	(99/8),(99)&7
	goto	u3021
	goto	u3020
u3021:
	goto	l646
u3020:
	
l647:	
	line	188
;I2c sample program.c: 188: while(ACKSTAT==1);
	goto	l648
	
l649:	
	
l648:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1166/8)^080h,(1166)&7
	goto	u3031
	goto	u3030
u3031:
	goto	l649
u3030:
	
l650:	
	line	189
;I2c sample program.c: 189: SSPIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7
	line	190
;I2c sample program.c: 190: ACKSTAT=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1166/8)^080h,(1166)&7
	line	193
	
l2327:	
;I2c sample program.c: 193: SSPBUF=decimal_to_bcd(_date);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(DS1307_WRITE@_date),w
	fcall	_decimal_to_bcd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	194
;I2c sample program.c: 194: while(SSPIF==0);
	goto	l651
	
l652:	
	
l651:	
	btfss	(99/8),(99)&7
	goto	u3041
	goto	u3040
u3041:
	goto	l652
u3040:
	
l653:	
	line	195
;I2c sample program.c: 195: while(ACKSTAT==1);
	goto	l654
	
l655:	
	
l654:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1166/8)^080h,(1166)&7
	goto	u3051
	goto	u3050
u3051:
	goto	l655
u3050:
	
l656:	
	line	196
;I2c sample program.c: 196: SSPIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7
	line	197
;I2c sample program.c: 197: ACKSTAT=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1166/8)^080h,(1166)&7
	line	200
	
l2329:	
;I2c sample program.c: 200: SSPBUF=decimal_to_bcd(_mon);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(DS1307_WRITE@_mon),w
	fcall	_decimal_to_bcd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	201
;I2c sample program.c: 201: while(SSPIF==0);
	goto	l657
	
l658:	
	
l657:	
	btfss	(99/8),(99)&7
	goto	u3061
	goto	u3060
u3061:
	goto	l658
u3060:
	
l659:	
	line	202
;I2c sample program.c: 202: while(ACKSTAT==1);
	goto	l660
	
l661:	
	
l660:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1166/8)^080h,(1166)&7
	goto	u3071
	goto	u3070
u3071:
	goto	l661
u3070:
	
l662:	
	line	203
;I2c sample program.c: 203: SSPIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7
	line	204
;I2c sample program.c: 204: ACKSTAT=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1166/8)^080h,(1166)&7
	line	207
	
l2331:	
;I2c sample program.c: 207: SSPBUF=decimal_to_bcd(_yr);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(DS1307_WRITE@_yr),w
	fcall	_decimal_to_bcd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	208
;I2c sample program.c: 208: while(SSPIF==0);
	goto	l663
	
l664:	
	
l663:	
	btfss	(99/8),(99)&7
	goto	u3081
	goto	u3080
u3081:
	goto	l664
u3080:
	
l665:	
	line	209
;I2c sample program.c: 209: while(ACKSTAT==1);
	goto	l666
	
l667:	
	
l666:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1166/8)^080h,(1166)&7
	goto	u3091
	goto	u3090
u3091:
	goto	l667
u3090:
	
l668:	
	line	210
;I2c sample program.c: 210: SSPIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7
	line	211
;I2c sample program.c: 211: ACKSTAT=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1166/8)^080h,(1166)&7
	line	214
	
l2333:	
;I2c sample program.c: 214: SSPBUF=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(19)	;volatile
	line	215
;I2c sample program.c: 215: while(SSPIF==0);
	goto	l669
	
l670:	
	
l669:	
	btfss	(99/8),(99)&7
	goto	u3101
	goto	u3100
u3101:
	goto	l670
u3100:
	
l671:	
	line	216
;I2c sample program.c: 216: while(ACKSTAT==1);
	goto	l672
	
l673:	
	
l672:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1166/8)^080h,(1166)&7
	goto	u3111
	goto	u3110
u3111:
	goto	l673
u3110:
	
l674:	
	line	217
;I2c sample program.c: 217: SSPIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7
	line	218
;I2c sample program.c: 218: ACKSTAT=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1166/8)^080h,(1166)&7
	line	221
;I2c sample program.c: 221: PEN=1;
	bsf	(1162/8)^080h,(1162)&7
	line	222
;I2c sample program.c: 222: while(PEN==1);
	goto	l675
	
l676:	
	
l675:	
	btfsc	(1162/8)^080h,(1162)&7
	goto	u3121
	goto	u3120
u3121:
	goto	l676
u3120:
	
l677:	
	line	223
;I2c sample program.c: 223: SSPIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7
	line	224
	
l678:	
	return
	opt stack 0
GLOBAL	__end_of_DS1307_WRITE
	__end_of_DS1307_WRITE:
;; =============== function _DS1307_WRITE ends ============

	signat	_DS1307_WRITE,28792
	global	_lcd_display
psect	text248,local,class=CODE,delta=2
global __ptext248
__ptext248:

;; *************** function _lcd_display *****************
;; Defined at:
;;		line 84 in file "C:\Users\TECH\Desktop\madhu pic folder\I2C\I2c sample program\I2c sample program.c"
;; Parameters:    Size  Location     Type
;;  m               1    wreg     PTR const unsigned char 
;;		 -> STR_2(6), STR_1(7), 
;; Auto vars:     Size  Location     Type
;;  m               1    9[COMMON] PTR const unsigned char 
;;		 -> STR_2(6), STR_1(7), 
;;  i               2   10[COMMON] int 
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
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_data
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text248
	file	"C:\Users\TECH\Desktop\madhu pic folder\I2C\I2c sample program\I2c sample program.c"
	line	84
	global	__size_of_lcd_display
	__size_of_lcd_display	equ	__end_of_lcd_display-_lcd_display
	
_lcd_display:	
	opt	stack 7
; Regs used in _lcd_display: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_display@m stored from wreg
	movwf	(lcd_display@m)
	line	85
	
l2303:	
;I2c sample program.c: 85: for(int i=0;m[i]!=0;i++)
	movlw	low(0)
	movwf	(lcd_display@i)
	movlw	high(0)
	movwf	((lcd_display@i))+1
	goto	l594
	line	86
	
l595:	
	line	87
	
l2305:	
;I2c sample program.c: 86: {
;I2c sample program.c: 87: lcd_data(m[i]);
	movf	(lcd_display@i),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_lcd_display+0)+0
	clrf	(??_lcd_display+0)+0+1
	movf	0+(??_lcd_display+0)+0,w
	movwf	(?_lcd_data)
	movf	1+(??_lcd_display+0)+0,w
	movwf	(?_lcd_data+1)
	fcall	_lcd_data
	line	88
	
l2307:	
;I2c sample program.c: 88: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	85
	
l2309:	
	movlw	low(01h)
	addwf	(lcd_display@i),f
	skipnc
	incf	(lcd_display@i+1),f
	movlw	high(01h)
	addwf	(lcd_display@i+1),f
	
l594:	
	
l2311:	
	movf	(lcd_display@i),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2901
	goto	u2900
u2901:
	goto	l595
u2900:
	
l596:	
	line	90
	
l597:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_display
	__end_of_lcd_display:
;; =============== function _lcd_display ends ============

	signat	_lcd_display,4216
	global	_lcd_init
psect	text249,local,class=CODE,delta=2
global __ptext249
__ptext249:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 75 in file "C:\Users\TECH\Desktop\madhu pic folder\I2C\I2c sample program\I2c sample program.c"
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
psect	text249
	file	"C:\Users\TECH\Desktop\madhu pic folder\I2C\I2c sample program\I2c sample program.c"
	line	75
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 7
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	76
	
l2301:	
;I2c sample program.c: 76: lcd_command(0X02);
	movlw	low(02h)
	movwf	(?_lcd_command)
	movlw	high(02h)
	movwf	((?_lcd_command))+1
	fcall	_lcd_command
	line	77
;I2c sample program.c: 77: lcd_command(0x2c);
	movlw	low(02Ch)
	movwf	(?_lcd_command)
	movlw	high(02Ch)
	movwf	((?_lcd_command))+1
	fcall	_lcd_command
	line	78
;I2c sample program.c: 78: lcd_command(0X06);
	movlw	low(06h)
	movwf	(?_lcd_command)
	movlw	high(06h)
	movwf	((?_lcd_command))+1
	fcall	_lcd_command
	line	79
;I2c sample program.c: 79: lcd_command(0X0c);
	movlw	low(0Ch)
	movwf	(?_lcd_command)
	movlw	high(0Ch)
	movwf	((?_lcd_command))+1
	fcall	_lcd_command
	line	80
;I2c sample program.c: 80: lcd_command(0X01);
	movlw	low(01h)
	movwf	(?_lcd_command)
	movlw	high(01h)
	movwf	((?_lcd_command))+1
	fcall	_lcd_command
	line	81
	
l591:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_decimal_to_bcd
psect	text250,local,class=CODE,delta=2
global __ptext250
__ptext250:

;; *************** function _decimal_to_bcd *****************
;; Defined at:
;;		line 135 in file "C:\Users\TECH\Desktop\madhu pic folder\I2C\I2c sample program\I2c sample program.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1    3[BANK0 ] unsigned char 
;;  hex             1    2[BANK0 ] unsigned char 
;;  lsb             1    1[BANK0 ] unsigned char 
;;  msb             1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       4       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_delay
;; This function is called by:
;;		_DS1307_WRITE
;; This function uses a non-reentrant model
;;
psect	text250
	file	"C:\Users\TECH\Desktop\madhu pic folder\I2C\I2c sample program\I2c sample program.c"
	line	135
	global	__size_of_decimal_to_bcd
	__size_of_decimal_to_bcd	equ	__end_of_decimal_to_bcd-_decimal_to_bcd
	
_decimal_to_bcd:	
	opt	stack 6
; Regs used in _decimal_to_bcd: [wreg+status,2+status,0+pclath+cstack]
;decimal_to_bcd@value stored from wreg
	line	137
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(decimal_to_bcd@value)
	
l2291:	
;I2c sample program.c: 136: unsigned char msb,lsb,hex;
;I2c sample program.c: 137: msb=value/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(decimal_to_bcd@value),w
	movwf	(??_decimal_to_bcd+0)+0
	clrf	(??_decimal_to_bcd+0)+0+1
	movf	0+(??_decimal_to_bcd+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_decimal_to_bcd+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movwf	(??_decimal_to_bcd+2)+0
	movf	(??_decimal_to_bcd+2)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(decimal_to_bcd@msb)
	line	138
;I2c sample program.c: 138: lsb=value%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(decimal_to_bcd@value),w
	movwf	(??_decimal_to_bcd+0)+0
	clrf	(??_decimal_to_bcd+0)+0+1
	movf	0+(??_decimal_to_bcd+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_decimal_to_bcd+0)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(0+(?___awmod)),w
	movwf	(??_decimal_to_bcd+2)+0
	movf	(??_decimal_to_bcd+2)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(decimal_to_bcd@lsb)
	line	139
	
l2293:	
;I2c sample program.c: 139: hex=((msb<<4)+lsb);
	movf	(decimal_to_bcd@msb),w
	movwf	(??_decimal_to_bcd+0)+0
	movlw	04h
u2895:
	clrc
	rlf	(??_decimal_to_bcd+0)+0,f
	addlw	-1
	skipz
	goto	u2895
	movf	(decimal_to_bcd@lsb),w
	addwf	0+(??_decimal_to_bcd+0)+0,w
	movwf	(??_decimal_to_bcd+1)+0
	movf	(??_decimal_to_bcd+1)+0,w
	movwf	(decimal_to_bcd@hex)
	line	140
	
l2295:	
;I2c sample program.c: 140: return hex;
	movf	(decimal_to_bcd@hex),w
	
l2297:	
	goto	l609
	line	141
	
l2299:	
;I2c sample program.c: 141: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	142
	
l609:	
	return
	opt stack 0
GLOBAL	__end_of_decimal_to_bcd
	__end_of_decimal_to_bcd:
;; =============== function _decimal_to_bcd ends ============

	signat	_decimal_to_bcd,4217
	global	_lcd_data
psect	text251,local,class=CODE,delta=2
global __ptext251
__ptext251:

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 50 in file "C:\Users\TECH\Desktop\madhu pic folder\I2C\I2c sample program\I2c sample program.c"
;; Parameters:    Size  Location     Type
;;  data            2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  val1            1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_lcd_display
;;		_bcd_to_ascii
;;		_DS1307_READ
;; This function uses a non-reentrant model
;;
psect	text251
	file	"C:\Users\TECH\Desktop\madhu pic folder\I2C\I2c sample program\I2c sample program.c"
	line	50
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 6
; Regs used in _lcd_data: [wreg+status,2+status,0+pclath+cstack]
	line	52
	
l2265:	
;I2c sample program.c: 51: unsigned char val1;
;I2c sample program.c: 52: PORTD=data&0xf0;
	movf	(lcd_data@data),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	53
	
l2267:	
;I2c sample program.c: 53: RD0=1;
	bsf	(64/8),(64)&7
	line	54
	
l2269:	
;I2c sample program.c: 54: RD1=0;
	bcf	(65/8),(65)&7
	line	55
	
l2271:	
;I2c sample program.c: 55: RD2=1;
	bsf	(66/8),(66)&7
	line	56
	
l2273:	
;I2c sample program.c: 56: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	57
	
l2275:	
;I2c sample program.c: 57: RD2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	58
	
l2277:	
;I2c sample program.c: 58: val1=data<<4;
	movf	(lcd_data@data),w
	movwf	(??_lcd_data+0)+0
	movlw	(04h)-1
u2885:
	clrc
	rlf	(??_lcd_data+0)+0,f
	addlw	-1
	skipz
	goto	u2885
	clrc
	rlf	(??_lcd_data+0)+0,w
	movwf	(??_lcd_data+1)+0
	movf	(??_lcd_data+1)+0,w
	movwf	(lcd_data@val1)
	line	59
	
l2279:	
;I2c sample program.c: 59: PORTD=val1&0Xf0;
	movf	(lcd_data@val1),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	60
	
l2281:	
;I2c sample program.c: 60: RD0=1;
	bsf	(64/8),(64)&7
	line	61
	
l2283:	
;I2c sample program.c: 61: RD1=0;
	bcf	(65/8),(65)&7
	line	62
	
l2285:	
;I2c sample program.c: 62: RD2=1;
	bsf	(66/8),(66)&7
	line	63
	
l2287:	
;I2c sample program.c: 63: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	64
	
l2289:	
;I2c sample program.c: 64: RD2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	72
	
l588:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
;; =============== function _lcd_data ends ============

	signat	_lcd_data,4216
	global	_lcd_command
psect	text252,local,class=CODE,delta=2
global __ptext252
__ptext252:

;; *************** function _lcd_command *****************
;; Defined at:
;;		line 26 in file "C:\Users\TECH\Desktop\madhu pic folder\I2C\I2c sample program\I2c sample program.c"
;; Parameters:    Size  Location     Type
;;  COM             2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  temp            1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_lcd_init
;;		_main
;;		_DS1307_READ
;; This function uses a non-reentrant model
;;
psect	text252
	file	"C:\Users\TECH\Desktop\madhu pic folder\I2C\I2c sample program\I2c sample program.c"
	line	26
	global	__size_of_lcd_command
	__size_of_lcd_command	equ	__end_of_lcd_command-_lcd_command
	
_lcd_command:	
	opt	stack 6
; Regs used in _lcd_command: [wreg+status,2+status,0+pclath+cstack]
	line	28
	
l2239:	
;I2c sample program.c: 27: unsigned char temp;
;I2c sample program.c: 28: PORTD=COM&0Xf0;
	movf	(lcd_command@COM),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	29
	
l2241:	
;I2c sample program.c: 29: RD0=0;
	bcf	(64/8),(64)&7
	line	30
	
l2243:	
;I2c sample program.c: 30: RD1=0;
	bcf	(65/8),(65)&7
	line	31
	
l2245:	
;I2c sample program.c: 31: RD2=1;
	bsf	(66/8),(66)&7
	line	32
	
l2247:	
;I2c sample program.c: 32: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	33
	
l2249:	
;I2c sample program.c: 33: RD2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	34
	
l2251:	
;I2c sample program.c: 34: temp=COM<<4;
	movf	(lcd_command@COM),w
	movwf	(??_lcd_command+0)+0
	movlw	(04h)-1
u2875:
	clrc
	rlf	(??_lcd_command+0)+0,f
	addlw	-1
	skipz
	goto	u2875
	clrc
	rlf	(??_lcd_command+0)+0,w
	movwf	(??_lcd_command+1)+0
	movf	(??_lcd_command+1)+0,w
	movwf	(lcd_command@temp)
	line	35
	
l2253:	
;I2c sample program.c: 35: PORTD=temp&0Xf0;
	movf	(lcd_command@temp),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	36
	
l2255:	
;I2c sample program.c: 36: RD0=0;
	bcf	(64/8),(64)&7
	line	37
	
l2257:	
;I2c sample program.c: 37: RD1=0;
	bcf	(65/8),(65)&7
	line	38
	
l2259:	
;I2c sample program.c: 38: RD2=1;
	bsf	(66/8),(66)&7
	line	39
	
l2261:	
;I2c sample program.c: 39: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	40
	
l2263:	
;I2c sample program.c: 40: RD2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	48
	
l585:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_command
	__end_of_lcd_command:
;; =============== function _lcd_command ends ============

	signat	_lcd_command,4216
	global	___awmod
psect	text253,local,class=CODE,delta=2
global __ptext253
__ptext253:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_decimal_to_bcd
;; This function uses a non-reentrant model
;;
psect	text253
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2203:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	line	9
	
l2205:	
	btfss	(___awmod@dividend+1),7
	goto	u2781
	goto	u2780
u2781:
	goto	l973
u2780:
	line	10
	
l2207:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	line	12
	
l973:	
	line	13
	
l2209:	
	btfss	(___awmod@divisor+1),7
	goto	u2791
	goto	u2790
u2791:
	goto	l974
u2790:
	line	14
	
l2211:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	
l974:	
	line	15
	
l2213:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2801
	goto	u2800
u2801:
	goto	l975
u2800:
	line	16
	
l2215:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l976
	
l977:	
	line	18
	
l2217:	
	movlw	01h
	
u2815:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2815
	line	19
	
l2219:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	line	20
	
l976:	
	line	17
	
l2221:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2821
	goto	u2820
u2821:
	goto	l977
u2820:
	
l978:	
	line	21
	
l979:	
	line	22
	
l2223:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2835
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2835:
	skipc
	goto	u2831
	goto	u2830
u2831:
	goto	l980
u2830:
	line	23
	
l2225:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	
l980:	
	line	24
	
l2227:	
	movlw	01h
	
u2845:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2845
	line	25
	
l2229:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2851
	goto	u2850
u2851:
	goto	l979
u2850:
	
l981:	
	line	26
	
l975:	
	line	27
	
l2231:	
	movf	(___awmod@sign),w
	skipz
	goto	u2860
	goto	l982
u2860:
	line	28
	
l2233:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	
l982:	
	line	29
	
l2235:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	
l2237:	
	line	30
	
l983:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text254,local,class=CODE,delta=2
global __ptext254
__ptext254:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_decimal_to_bcd
;; This function uses a non-reentrant model
;;
psect	text254
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2165:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	line	10
	
l2167:	
	btfss	(___awdiv@divisor+1),7
	goto	u2681
	goto	u2680
u2681:
	goto	l905
u2680:
	line	11
	
l2169:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	line	13
	
l905:	
	line	14
	
l2171:	
	btfss	(___awdiv@dividend+1),7
	goto	u2691
	goto	u2690
u2691:
	goto	l906
u2690:
	line	15
	
l2173:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2175:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l906:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2701
	goto	u2700
u2701:
	goto	l907
u2700:
	line	20
	
l2177:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l908
	
l909:	
	line	22
	
l2179:	
	movlw	01h
	
u2715:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2715
	line	23
	
l2181:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	line	24
	
l908:	
	line	21
	
l2183:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2721
	goto	u2720
u2721:
	goto	l909
u2720:
	
l910:	
	line	25
	
l911:	
	line	26
	
l2185:	
	movlw	01h
	
u2735:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2735
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2745
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2745:
	skipc
	goto	u2741
	goto	u2740
u2741:
	goto	l912
u2740:
	line	28
	
l2187:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2189:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	30
	
l912:	
	line	31
	
l2191:	
	movlw	01h
	
u2755:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2755
	line	32
	
l2193:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2761
	goto	u2760
u2761:
	goto	l911
u2760:
	
l913:	
	line	33
	
l907:	
	line	34
	
l2195:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2770
	goto	l914
u2770:
	line	35
	
l2197:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	
l914:	
	line	36
	
l2199:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	
l2201:	
	line	37
	
l915:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_delay
psect	text255,local,class=CODE,delta=2
global __ptext255
__ptext255:

;; *************** function _delay *****************
;; Defined at:
;;		line 22 in file "C:\Users\TECH\Desktop\madhu pic folder\I2C\I2c sample program\I2c sample program.c"
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
;;		_lcd_display
;;		_main
;;		_bcd_to_ascii
;;		_decimal_to_bcd
;;		_DS1307_READ
;; This function uses a non-reentrant model
;;
psect	text255
	file	"C:\Users\TECH\Desktop\madhu pic folder\I2C\I2c sample program\I2c sample program.c"
	line	22
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	23
	
l2161:	
;I2c sample program.c: 23: while(x--);
	goto	l579
	
l580:	
	
l579:	
	
l2163:	
	movlw	low(01h)
	subwf	(delay@x),f
	movlw	high(01h)
	skipc
	decf	(delay@x+1),f
	subwf	(delay@x+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@x+1)),w
	skipz
	goto	u2675
	movlw	low(0FFFFh)
	xorwf	((delay@x)),w
u2675:

	skipz
	goto	u2671
	goto	u2670
u2671:
	goto	l580
u2670:
	
l581:	
	line	24
	
l582:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text256,local,class=CODE,delta=2
global __ptext256
__ptext256:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
