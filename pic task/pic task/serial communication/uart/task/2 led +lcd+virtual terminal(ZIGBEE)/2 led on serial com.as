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
# 2 "E:\Embedded_Program\pic task\pic task\serial communication\uart\task\2 led +lcd+virtual terminal(ZIGBEE)\2 led on serial com.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "E:\Embedded_Program\pic task\pic task\serial communication\uart\task\2 led +lcd+virtual terminal(ZIGBEE)\2 led on serial com.c"
	dw 0X3F72 ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_delay
	FNCALL	_main,_lcd_cmd
	FNCALL	_main,_lcd_display
	FNCALL	_main,_serial
	FNCALL	_lcd_display,_lcd_data
	FNCALL	_lcd_init,_lcd_cmd
	FNCALL	_serial,_delay
	FNCALL	_lcd_data,_delay
	FNCALL	_lcd_cmd,_delay
	FNROOT	_main
	FNCALL	intlevel1,_rcx
	global	intlevel1
	FNROOT	intlevel1
	global	_b
	global	_i
	global	_temp
	global	_PORTC
psect	text286,local,class=CODE,delta=2
global __ptext286
__ptext286:
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_TXREG
_TXREG	set	25
	global	_GIE
_GIE	set	95
	global	_INTE
_INTE	set	92
	global	_PEIE
_PEIE	set	94
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RCIF
_RCIF	set	101
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_SPBRG
_SPBRG	set	153
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TXSTA
_TXSTA	set	152
	global	_RCIE
_RCIE	set	1125
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
	
STR_6:	
	retlw	76	;'L'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	104	;'h'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	102	;'f'
	retlw	102	;'f'
	retlw	0
psect	strings
	
STR_2:	
	retlw	76	;'L'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	104	;'h'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	110	;'n'
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
	
STR_8:	
	retlw	70	;'F'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	102	;'f'
	retlw	102	;'f'
	retlw	0
psect	strings
	
STR_4:	
	retlw	70	;'F'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	0
psect	strings
STR_3	equ	STR_2+0
STR_5	equ	STR_4+0
STR_7	equ	STR_6+0
STR_9	equ	STR_8+0
	file	"2 led on serial com.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_i:
       ds      2

_temp:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_b:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_lcd_cmd
?_lcd_cmd:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_lcd_data
?_lcd_data:	; 0 bytes @ 0x0
	global	?_lcd_display
?_lcd_display:	; 0 bytes @ 0x0
	global	?_rcx
?_rcx:	; 0 bytes @ 0x0
	global	??_rcx
??_rcx:	; 0 bytes @ 0x0
	global	?_serial
?_serial:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	ds	6
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	delay@x
delay@x:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	??_lcd_cmd
??_lcd_cmd:	; 0 bytes @ 0x2
	global	??_lcd_data
??_lcd_data:	; 0 bytes @ 0x2
	global	??_serial
??_serial:	; 0 bytes @ 0x2
	global	serial@a
serial@a:	; 1 bytes @ 0x2
	ds	1
	global	serial@j
serial@j:	; 2 bytes @ 0x3
	ds	1
	global	lcd_cmd@com
lcd_cmd@com:	; 1 bytes @ 0x4
	global	lcd_data@dat
lcd_data@dat:	; 1 bytes @ 0x4
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x5
	global	??_lcd_display
??_lcd_display:	; 0 bytes @ 0x5
	global	lcd_display@m
lcd_display@m:	; 1 bytes @ 0x5
	ds	1
	global	lcd_display@i
lcd_display@i:	; 2 bytes @ 0x6
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x8
;;Data sizes: Strings 42, constant 0, data 0, bss 6, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6      10
;; BANK0           80      8      10
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; serial@a	PTR unsigned char  size(1) Largest target is 10
;;		 -> STR_9(CODE[8]), STR_7(CODE[10]), STR_5(CODE[7]), STR_3(CODE[9]), 
;;
;; lcd_display@m	PTR unsigned char  size(1) Largest target is 10
;;		 -> STR_8(CODE[8]), STR_6(CODE[10]), STR_4(CODE[7]), STR_2(CODE[9]), 
;;		 -> STR_1(CODE[8]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _rcx in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_lcd_display
;;   _lcd_display->_lcd_data
;;   _lcd_init->_lcd_cmd
;;   _serial->_delay
;;   _lcd_data->_delay
;;   _lcd_cmd->_delay
;;
;; Critical Paths under _rcx in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _rcx in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _rcx in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _rcx in BANK2
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
;; (0) _main                                                 0     0      0     601
;;                           _lcd_init
;;                              _delay
;;                            _lcd_cmd
;;                        _lcd_display
;;                             _serial
;; ---------------------------------------------------------------------------------
;; (1) _lcd_display                                          3     3      0     223
;;                                              5 BANK0      3     3      0
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             0     0      0      93
;;                            _lcd_cmd
;; ---------------------------------------------------------------------------------
;; (1) _serial                                               3     3      0     161
;;                                              2 BANK0      3     3      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _lcd_data                                             3     3      0      93
;;                                              2 BANK0      3     3      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _lcd_cmd                                              3     3      0      93
;;                                              2 BANK0      3     3      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                2     0      2      31
;;                                              0 BANK0      2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (4) _rcx                                                  6     6      0       0
;;                                              0 COMMON     6     6      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_init
;;     _lcd_cmd
;;       _delay
;;   _delay
;;   _lcd_cmd
;;     _delay
;;   _lcd_display
;;     _lcd_data
;;       _delay
;;   _serial
;;     _delay
;;
;; _rcx (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      6       A       1       71.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0      14       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      8       A       5       12.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      17      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 84 in file "E:\Embedded_Program\pic task\pic task\serial communication\uart\task\2 led +lcd+virtual terminal(ZIGBEE)\2 led on serial com.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  595[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+0, pclath, cstack
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_init
;;		_delay
;;		_lcd_cmd
;;		_lcd_display
;;		_serial
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\Embedded_Program\pic task\pic task\serial communication\uart\task\2 led +lcd+virtual terminal(ZIGBEE)\2 led on serial com.c"
	line	84
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
	line	85
	
l2200:	
;2 led on serial com.c: 85: TRISC=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	86
	
l2202:	
;2 led on serial com.c: 86: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	87
	
l2204:	
;2 led on serial com.c: 87: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	88
	
l2206:	
;2 led on serial com.c: 88: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	90
	
l2208:	
;2 led on serial com.c: 90: TXSTA=0X24;
	movlw	(024h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	91
	
l2210:	
;2 led on serial com.c: 91: RCSTA=0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	92
	
l2212:	
;2 led on serial com.c: 92: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	93
	
l2214:	
;2 led on serial com.c: 93: PEIE=1;
	bsf	(94/8),(94)&7
	line	94
	
l2216:	
;2 led on serial com.c: 94: GIE=1;
	bsf	(95/8),(95)&7
	line	95
	
l2218:	
;2 led on serial com.c: 95: INTE=1;
	bsf	(92/8),(92)&7
	line	96
	
l2220:	
;2 led on serial com.c: 96: RCIE=1;
	bsf	(1125/8)^080h,(1125)&7
	line	98
	
l2222:	
;2 led on serial com.c: 98: lcd_init();
	fcall	_lcd_init
	line	99
	
l2224:	
;2 led on serial com.c: 99: delay(5000);
	movlw	low(01388h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	101
	
l2226:	
;2 led on serial com.c: 101: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	102
	
l2228:	
;2 led on serial com.c: 102: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	103
	
l2230:	
;2 led on serial com.c: 103: lcd_display("WELCOME");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_display
	line	104
	
l2232:	
;2 led on serial com.c: 104: delay(50000);delay(50000);
	movlw	low(0C350h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2234:	
	movlw	low(0C350h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	105
	
l2236:	
;2 led on serial com.c: 105: delay(50000);delay(50000);
	movlw	low(0C350h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2238:	
	movlw	low(0C350h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	107
;2 led on serial com.c: 107: while(1)
	
l596:	
	line	110
	
l2240:	
;2 led on serial com.c: 108: {
;2 led on serial com.c: 110: if(b=='1')
	movlw	031h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_b),w
	iorwf	(_b+1),w
	skipz
	goto	u2391
	goto	u2390
u2391:
	goto	l597
u2390:
	line	112
	
l2242:	
;2 led on serial com.c: 111: {
;2 led on serial com.c: 112: RC0=1;
	bsf	(56/8),(56)&7
	line	113
	
l2244:	
;2 led on serial com.c: 113: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	114
	
l2246:	
;2 led on serial com.c: 114: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	115
	
l2248:	
;2 led on serial com.c: 115: lcd_display("Light on");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_lcd_display
	line	116
	
l2250:	
;2 led on serial com.c: 116: delay(50000);
	movlw	low(0C350h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	117
	
l2252:	
;2 led on serial com.c: 117: serial("Light on");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_serial
	line	118
;2 led on serial com.c: 118: delay(50000);
	movlw	low(0C350h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	119
	
l597:	
	line	121
	
l2254:	
;2 led on serial com.c: 119: }
;2 led on serial com.c: 121: if(b=='2')
	movlw	032h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_b),w
	iorwf	(_b+1),w
	skipz
	goto	u2401
	goto	u2400
u2401:
	goto	l598
u2400:
	line	123
	
l2256:	
;2 led on serial com.c: 122: {
;2 led on serial com.c: 123: RC1=1;
	bsf	(57/8),(57)&7
	line	124
	
l2258:	
;2 led on serial com.c: 124: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	126
	
l2260:	
;2 led on serial com.c: 126: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	127
	
l2262:	
;2 led on serial com.c: 127: lcd_display("Fan on");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_lcd_display
	line	128
	
l2264:	
;2 led on serial com.c: 128: delay(50000);
	movlw	low(0C350h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	129
	
l2266:	
;2 led on serial com.c: 129: serial("Fan on");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_serial
	line	130
;2 led on serial com.c: 130: delay(50000);
	movlw	low(0C350h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	131
	
l598:	
	line	133
	
l2268:	
;2 led on serial com.c: 131: }
;2 led on serial com.c: 133: if(b=='3')
	movlw	033h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_b),w
	iorwf	(_b+1),w
	skipz
	goto	u2411
	goto	u2410
u2411:
	goto	l599
u2410:
	line	135
	
l2270:	
;2 led on serial com.c: 134: {
;2 led on serial com.c: 135: RC0=0;
	bcf	(56/8),(56)&7
	line	136
	
l2272:	
;2 led on serial com.c: 136: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	137
	
l2274:	
;2 led on serial com.c: 137: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	138
	
l2276:	
;2 led on serial com.c: 138: lcd_display("Light off");
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_lcd_display
	line	139
	
l2278:	
;2 led on serial com.c: 139: delay(50000);
	movlw	low(0C350h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	140
	
l2280:	
;2 led on serial com.c: 140: serial("Light off");
	movlw	((STR_7-__stringbase))&0ffh
	fcall	_serial
	line	141
;2 led on serial com.c: 141: delay(50000);
	movlw	low(0C350h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	142
	
l599:	
	line	144
	
l2282:	
;2 led on serial com.c: 142: }
;2 led on serial com.c: 144: if(b=='4')
	movlw	034h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_b),w
	iorwf	(_b+1),w
	skipz
	goto	u2421
	goto	u2420
u2421:
	goto	l600
u2420:
	line	146
	
l2284:	
;2 led on serial com.c: 145: {
;2 led on serial com.c: 146: RC1=0;
	bcf	(57/8),(57)&7
	line	147
	
l2286:	
;2 led on serial com.c: 147: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	148
	
l2288:	
;2 led on serial com.c: 148: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	149
	
l2290:	
;2 led on serial com.c: 149: lcd_display("Fan off");
	movlw	((STR_8-__stringbase))&0ffh
	fcall	_lcd_display
	line	150
	
l2292:	
;2 led on serial com.c: 150: delay(50000);
	movlw	low(0C350h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	151
	
l2294:	
;2 led on serial com.c: 151: serial("Fan off");
	movlw	((STR_9-__stringbase))&0ffh
	fcall	_serial
	line	152
;2 led on serial com.c: 152: delay(50000);
	movlw	low(0C350h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	153
	
l600:	
	line	155
	
l601:	
	line	107
	goto	l596
	
l602:	
	line	156
	
l603:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_lcd_display
psect	text287,local,class=CODE,delta=2
global __ptext287
__ptext287:

;; *************** function _lcd_display *****************
;; Defined at:
;;		line 57 in file "E:\Embedded_Program\pic task\pic task\serial communication\uart\task\2 led +lcd+virtual terminal(ZIGBEE)\2 led on serial com.c"
;; Parameters:    Size  Location     Type
;;  m               1    wreg     PTR unsigned char 
;;		 -> STR_8(8), STR_6(10), STR_4(7), STR_2(9), 
;;		 -> STR_1(8), 
;; Auto vars:     Size  Location     Type
;;  m               1    5[BANK0 ] PTR unsigned char 
;;		 -> STR_8(8), STR_6(10), STR_4(7), STR_2(9), 
;;		 -> STR_1(8), 
;;  i               2    6[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text287
	file	"E:\Embedded_Program\pic task\pic task\serial communication\uart\task\2 led +lcd+virtual terminal(ZIGBEE)\2 led on serial com.c"
	line	57
	global	__size_of_lcd_display
	__size_of_lcd_display	equ	__end_of_lcd_display-_lcd_display
	
_lcd_display:	
	opt	stack 7
; Regs used in _lcd_display: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
;lcd_display@m stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_display@m)
	line	58
	
l2192:	
;2 led on serial com.c: 58: for(int i=0;m[i]!=0;i++)
	movlw	low(0)
	movwf	(lcd_display@i)
	movlw	high(0)
	movwf	((lcd_display@i))+1
	goto	l580
	line	59
	
l581:	
	line	60
	
l2194:	
;2 led on serial com.c: 59: {
;2 led on serial com.c: 60: lcd_data(m[i]);
	movf	(lcd_display@i),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_data
	line	58
	
l2196:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(lcd_display@i),f
	skipnc
	incf	(lcd_display@i+1),f
	movlw	high(01h)
	addwf	(lcd_display@i+1),f
	
l580:	
	
l2198:	
	movf	(lcd_display@i),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2381
	goto	u2380
u2381:
	goto	l581
u2380:
	
l582:	
	line	62
	
l583:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_display
	__end_of_lcd_display:
;; =============== function _lcd_display ends ============

	signat	_lcd_display,4216
	global	_lcd_init
psect	text288,local,class=CODE,delta=2
global __ptext288
__ptext288:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 32 in file "E:\Embedded_Program\pic task\pic task\serial communication\uart\task\2 led +lcd+virtual terminal(ZIGBEE)\2 led on serial com.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+0, pclath, cstack
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text288
	file	"E:\Embedded_Program\pic task\pic task\serial communication\uart\task\2 led +lcd+virtual terminal(ZIGBEE)\2 led on serial com.c"
	line	32
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 7
; Regs used in _lcd_init: [wreg+status,2-btemp+0+pclath+cstack]
	line	33
	
l2190:	
;2 led on serial com.c: 33: lcd_cmd(0x02);
	movlw	(02h)
	fcall	_lcd_cmd
	line	34
;2 led on serial com.c: 34: lcd_cmd(0x2c);
	movlw	(02Ch)
	fcall	_lcd_cmd
	line	35
;2 led on serial com.c: 35: lcd_cmd(0x06);
	movlw	(06h)
	fcall	_lcd_cmd
	line	36
;2 led on serial com.c: 36: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	37
;2 led on serial com.c: 37: lcd_cmd(0x0c);
	movlw	(0Ch)
	fcall	_lcd_cmd
	line	38
;2 led on serial com.c: 38: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	39
	
l574:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_serial
psect	text289,local,class=CODE,delta=2
global __ptext289
__ptext289:

;; *************** function _serial *****************
;; Defined at:
;;		line 75 in file "E:\Embedded_Program\pic task\pic task\serial communication\uart\task\2 led +lcd+virtual terminal(ZIGBEE)\2 led on serial com.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     PTR unsigned char 
;;		 -> STR_9(8), STR_7(10), STR_5(7), STR_3(9), 
;; Auto vars:     Size  Location     Type
;;  a               1    2[BANK0 ] PTR unsigned char 
;;		 -> STR_9(8), STR_7(10), STR_5(7), STR_3(9), 
;;  j               2    3[BANK0 ] int 
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
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text289
	file	"E:\Embedded_Program\pic task\pic task\serial communication\uart\task\2 led +lcd+virtual terminal(ZIGBEE)\2 led on serial com.c"
	line	75
	global	__size_of_serial
	__size_of_serial	equ	__end_of_serial-_serial
	
_serial:	
	opt	stack 7
; Regs used in _serial: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;serial@a stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(serial@a)
	line	76
	
l2178:	
;2 led on serial com.c: 76: for(int j=0;a[j]!=0;j++)
	movlw	low(0)
	movwf	(serial@j)
	movlw	high(0)
	movwf	((serial@j))+1
	goto	l590
	line	77
	
l591:	
	line	78
	
l2180:	
;2 led on serial com.c: 77: {
;2 led on serial com.c: 78: TXREG=a[j];
	movf	(serial@j),w
	addwf	(serial@a),w
	movwf	fsr0
	fcall	stringdir
	movwf	(25)	;volatile
	line	79
	
l2182:	
;2 led on serial com.c: 79: delay(20000);
	movlw	low(04E20h)
	movwf	(?_delay)
	movlw	high(04E20h)
	movwf	((?_delay))+1
	fcall	_delay
	line	76
	
l2184:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(serial@j),f
	skipnc
	incf	(serial@j+1),f
	movlw	high(01h)
	addwf	(serial@j+1),f
	
l590:	
	
l2186:	
	movf	(serial@j),w
	addwf	(serial@a),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2371
	goto	u2370
u2371:
	goto	l591
u2370:
	
l592:	
	line	81
	
l2188:	
;2 led on serial com.c: 80: }
;2 led on serial com.c: 81: TXREG=0X1D;
	movlw	(01Dh)
	movwf	(25)	;volatile
	line	82
	
l593:	
	return
	opt stack 0
GLOBAL	__end_of_serial
	__end_of_serial:
;; =============== function _serial ends ============

	signat	_serial,4216
	global	_lcd_data
psect	text290,local,class=CODE,delta=2
global __ptext290
__ptext290:

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 41 in file "E:\Embedded_Program\pic task\pic task\serial communication\uart\task\2 led +lcd+virtual terminal(ZIGBEE)\2 led on serial com.c"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;; This function is called by:
;;		_lcd_display
;; This function uses a non-reentrant model
;;
psect	text290
	file	"E:\Embedded_Program\pic task\pic task\serial communication\uart\task\2 led +lcd+virtual terminal(ZIGBEE)\2 led on serial com.c"
	line	41
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 6
; Regs used in _lcd_data: [wreg+status,2-btemp+0+pclath+cstack]
;lcd_data@dat stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_data@dat)
	line	42
	
l2152:	
;2 led on serial com.c: 42: PORTD=(dat&0xf0);
	movf	(lcd_data@dat),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	43
	
l2154:	
;2 led on serial com.c: 43: RD1=1;
	bsf	(65/8),(65)&7
	line	44
	
l2156:	
;2 led on serial com.c: 44: RD2=0;
	bcf	(66/8),(66)&7
	line	45
	
l2158:	
;2 led on serial com.c: 45: RD3=1;
	bsf	(67/8),(67)&7
	line	46
	
l2160:	
;2 led on serial com.c: 46: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	47
	
l2162:	
;2 led on serial com.c: 47: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	48
	
l2164:	
;2 led on serial com.c: 48: temp=dat<<4;
	movf	(lcd_data@dat),w
	movwf	(??_lcd_data+0)+0
	clrf	(??_lcd_data+0)+0+1
	movlw	04h
	movwf	btemp+0
u2365:
	clrc
	rlf	(??_lcd_data+0)+0,f
	rlf	(??_lcd_data+0)+1,f
	decfsz	btemp+0,f
	goto	u2365
	movf	0+(??_lcd_data+0)+0,w
	movwf	(_temp)
	movf	1+(??_lcd_data+0)+0,w
	movwf	(_temp+1)
	line	49
	
l2166:	
;2 led on serial com.c: 49: PORTD=(temp&0xf0);
	movf	(_temp),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	50
	
l2168:	
;2 led on serial com.c: 50: RD1=1;
	bsf	(65/8),(65)&7
	line	51
	
l2170:	
;2 led on serial com.c: 51: RD2=0;
	bcf	(66/8),(66)&7
	line	52
	
l2172:	
;2 led on serial com.c: 52: RD3=1;
	bsf	(67/8),(67)&7
	line	53
	
l2174:	
;2 led on serial com.c: 53: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	54
	
l2176:	
;2 led on serial com.c: 54: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	55
	
l577:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
;; =============== function _lcd_data ends ============

	signat	_lcd_data,4216
	global	_lcd_cmd
psect	text291,local,class=CODE,delta=2
global __ptext291
__ptext291:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 16 in file "E:\Embedded_Program\pic task\pic task\serial communication\uart\task\2 led +lcd+virtual terminal(ZIGBEE)\2 led on serial com.c"
;; Parameters:    Size  Location     Type
;;  com             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  com             1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;; This function is called by:
;;		_lcd_init
;;		_main
;; This function uses a non-reentrant model
;;
psect	text291
	file	"E:\Embedded_Program\pic task\pic task\serial communication\uart\task\2 led +lcd+virtual terminal(ZIGBEE)\2 led on serial com.c"
	line	16
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 7
; Regs used in _lcd_cmd: [wreg+status,2-btemp+0+pclath+cstack]
;lcd_cmd@com stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_cmd@com)
	line	17
	
l2126:	
;2 led on serial com.c: 17: PORTD=(com&0xf0);
	movf	(lcd_cmd@com),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	18
	
l2128:	
;2 led on serial com.c: 18: RD1=0;
	bcf	(65/8),(65)&7
	line	19
	
l2130:	
;2 led on serial com.c: 19: RD2=0;
	bcf	(66/8),(66)&7
	line	20
	
l2132:	
;2 led on serial com.c: 20: RD3=1;
	bsf	(67/8),(67)&7
	line	21
	
l2134:	
;2 led on serial com.c: 21: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	22
	
l2136:	
;2 led on serial com.c: 22: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	23
	
l2138:	
;2 led on serial com.c: 23: temp=com<<4;
	movf	(lcd_cmd@com),w
	movwf	(??_lcd_cmd+0)+0
	clrf	(??_lcd_cmd+0)+0+1
	movlw	04h
	movwf	btemp+0
u2355:
	clrc
	rlf	(??_lcd_cmd+0)+0,f
	rlf	(??_lcd_cmd+0)+1,f
	decfsz	btemp+0,f
	goto	u2355
	movf	0+(??_lcd_cmd+0)+0,w
	movwf	(_temp)
	movf	1+(??_lcd_cmd+0)+0,w
	movwf	(_temp+1)
	line	24
	
l2140:	
;2 led on serial com.c: 24: PORTD=(temp&0xf0);
	movf	(_temp),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	25
	
l2142:	
;2 led on serial com.c: 25: RD1=0;
	bcf	(65/8),(65)&7
	line	26
	
l2144:	
;2 led on serial com.c: 26: RD2=0;
	bcf	(66/8),(66)&7
	line	27
	
l2146:	
;2 led on serial com.c: 27: RD3=1;
	bsf	(67/8),(67)&7
	line	28
	
l2148:	
;2 led on serial com.c: 28: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	29
	
l2150:	
;2 led on serial com.c: 29: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	30
	
l571:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,4216
	global	_delay
psect	text292,local,class=CODE,delta=2
global __ptext292
__ptext292:

;; *************** function _delay *****************
;; Defined at:
;;		line 12 in file "E:\Embedded_Program\pic task\pic task\serial communication\uart\task\2 led +lcd+virtual terminal(ZIGBEE)\2 led on serial com.c"
;; Parameters:    Size  Location     Type
;;  x               2    0[BANK0 ] unsigned int 
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
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_cmd
;;		_lcd_data
;;		_serial
;;		_main
;; This function uses a non-reentrant model
;;
psect	text292
	file	"E:\Embedded_Program\pic task\pic task\serial communication\uart\task\2 led +lcd+virtual terminal(ZIGBEE)\2 led on serial com.c"
	line	12
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	13
	
l2122:	
;2 led on serial com.c: 13: while(x--);
	goto	l565
	
l566:	
	
l565:	
	
l2124:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(delay@x),f
	movlw	high(01h)
	skipc
	decf	(delay@x+1),f
	subwf	(delay@x+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@x+1)),w
	skipz
	goto	u2345
	movlw	low(0FFFFh)
	xorwf	((delay@x)),w
u2345:

	skipz
	goto	u2341
	goto	u2340
u2341:
	goto	l566
u2340:
	
l567:	
	line	14
	
l568:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_rcx
psect	text293,local,class=CODE,delta=2
global __ptext293
__ptext293:

;; *************** function _rcx *****************
;; Defined at:
;;		line 65 in file "E:\Embedded_Program\pic task\pic task\serial communication\uart\task\2 led +lcd+virtual terminal(ZIGBEE)\2 led on serial com.c"
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
;;      Temps:          6       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text293
	file	"E:\Embedded_Program\pic task\pic task\serial communication\uart\task\2 led +lcd+virtual terminal(ZIGBEE)\2 led on serial com.c"
	line	65
	global	__size_of_rcx
	__size_of_rcx	equ	__end_of_rcx-_rcx
	
_rcx:	
	opt	stack 4
; Regs used in _rcx: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	movf	status,w
	movwf	(??_rcx+2)
	movf	fsr0,w
	movwf	(??_rcx+3)
	movf	pclath,w
	movwf	(??_rcx+4)
	movf	btemp+1,w
	movwf	(??_rcx+5)
	ljmp	_rcx
psect	text293
	line	66
	
i1l1946:	
;2 led on serial com.c: 66: if(RCIF==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u225_21
	goto	u225_20
u225_21:
	goto	i1l586
u225_20:
	line	68
	
i1l1948:	
;2 led on serial com.c: 67: {
;2 led on serial com.c: 68: RCIF=0;
	bcf	(101/8),(101)&7
	line	69
	
i1l1950:	
;2 led on serial com.c: 69: b=RCREG;
	movf	(26),w	;volatile
	movwf	(??_rcx+0)+0
	clrf	(??_rcx+0)+0+1
	movf	0+(??_rcx+0)+0,w
	movwf	(_b)
	movf	1+(??_rcx+0)+0,w
	movwf	(_b+1)
	line	70
	
i1l586:	
	line	71
	
i1l587:	
	movf	(??_rcx+5),w
	movwf	btemp+1
	movf	(??_rcx+4),w
	movwf	pclath
	movf	(??_rcx+3),w
	movwf	fsr0
	movf	(??_rcx+2),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_rcx
	__end_of_rcx:
;; =============== function _rcx ends ============

	signat	_rcx,88
psect	text294,local,class=CODE,delta=2
global __ptext294
__ptext294:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
