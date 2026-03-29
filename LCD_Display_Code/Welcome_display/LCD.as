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
# 2 "E:\Embedded_Program\LCD_Display_Code\Welcome_display\LCD.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "E:\Embedded_Program\LCD_Display_Code\Welcome_display\LCD.c"
	dw 0X3F72 ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_delay
	FNCALL	_main,_lcd_command
	FNCALL	_main,_lcd_display
	FNCALL	_main,___lwdiv
	FNCALL	_main,___lwmod
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_main,_lcd_data
	FNCALL	_lcd_display,_lcd_data
	FNCALL	_lcd_init,_lcd_command
	FNCALL	_lcd_data,_delay
	FNCALL	_lcd_command,_delay
	FNROOT	_main
	global	_a
	global	_b
	global	_c
	global	_d
	global	_e
	global	_f
	global	_i
	global	_temp1
	global	_temp2
	global	_temp
	global	_ADCON0
psect	text194,local,class=CODE,delta=2
global __ptext194
__ptext194:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTA
_PORTA	set	5
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_ADON
_ADON	set	248
	global	_CHS0
_CHS0	set	251
	global	_CHS1
_CHS1	set	252
	global	_CHS2
_CHS2	set	253
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_TRISA
_TRISA	set	133
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
	file	"LCD.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_temp:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_a:
       ds      2

_b:
       ds      2

_c:
       ds      2

_d:
       ds      2

_e:
       ds      2

_f:
       ds      2

_i:
       ds      2

_temp1:
       ds      2

_temp2:
       ds      2

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
	global	?_lcd_command
?_lcd_command:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_lcd_data
?_lcd_data:	; 0 bytes @ 0x0
	global	?_lcd_display
?_lcd_display:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	delay@x
delay@x:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	??_lcd_command
??_lcd_command:	; 0 bytes @ 0x2
	global	??_lcd_data
??_lcd_data:	; 0 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	lcd_command@com
lcd_command@com:	; 1 bytes @ 0x4
	global	lcd_data@data
lcd_data@data:	; 1 bytes @ 0x4
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x5
	global	??_lcd_display
??_lcd_display:	; 0 bytes @ 0x5
	global	lcd_display@m
lcd_display@m:	; 1 bytes @ 0x5
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x9
	ds	2
;;Data sizes: Strings 8, constant 0, data 0, bss 20, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     11      13
;; BANK0           80      0      18
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; lcd_display@m	PTR unsigned char  size(1) Largest target is 8
;;		 -> STR_1(CODE[8]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___awdiv
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0    1247
;;                                              9 COMMON     2     2      0
;;                           _lcd_init
;;                              _delay
;;                        _lcd_command
;;                        _lcd_display
;;                            ___lwdiv
;;                            ___lwmod
;;                            ___awdiv
;;                            ___awmod
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _lcd_display                                          1     1      0     110
;;                                              5 COMMON     1     1      0
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             0     0      0      66
;;                        _lcd_command
;; ---------------------------------------------------------------------------------
;; (1) _lcd_data                                             3     3      0      66
;;                                              2 COMMON     3     3      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _lcd_command                                          3     3      0      66
;;                                              2 COMMON     3     3      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (1) ___lwmod                                              6     2      4     159
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (1) ___lwdiv                                              8     4      4     162
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                2     0      2      22
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
;;   _lcd_display
;;     _lcd_data
;;       _delay
;;   ___lwdiv
;;   ___lwmod
;;   ___awdiv
;;   ___awmod
;;   _lcd_data
;;     _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      B       D       1       92.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0      1F       3        0.0%
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
;;DATA                 0      0      22      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 71 in file "E:\Embedded_Program\LCD_Display_Code\Welcome_display\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  599[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_init
;;		_delay
;;		_lcd_command
;;		_lcd_display
;;		___lwdiv
;;		___lwmod
;;		___awdiv
;;		___awmod
;;		_lcd_data
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\Embedded_Program\LCD_Display_Code\Welcome_display\LCD.c"
	line	71
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
	line	72
	
l2204:	
;LCD.c: 72: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	73
;LCD.c: 73: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	75
	
l2206:	
;LCD.c: 75: TRISA=0x01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	76
	
l2208:	
;LCD.c: 76: PORTA=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	79
	
l2210:	
;LCD.c: 79: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	80
	
l2212:	
;LCD.c: 80: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	83
;LCD.c: 83: ADCON1=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	84
;LCD.c: 84: ADCON0=0X40;
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	86
	
l2214:	
;LCD.c: 86: lcd_init();
	fcall	_lcd_init
	line	87
	
l2216:	
;LCD.c: 87: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	89
	
l2218:	
;LCD.c: 89: lcd_command(0X84);
	movlw	(084h)
	fcall	_lcd_command
	line	90
	
l2220:	
;LCD.c: 90: lcd_display("WELCOME");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_display
	line	91
	
l2222:	
;LCD.c: 91: delay(50000);delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2224:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	92
	
l2226:	
;LCD.c: 92: delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	93
	
l2228:	
;LCD.c: 93: lcd_command(0X01);
	movlw	(01h)
	fcall	_lcd_command
	line	98
;LCD.c: 98: while(1)
	
l600:	
	line	101
	
l2230:	
;LCD.c: 99: {
;LCD.c: 101: CHS2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(253/8),(253)&7
	line	102
	
l2232:	
;LCD.c: 102: CHS1=0;
	bcf	(252/8),(252)&7
	line	103
	
l2234:	
;LCD.c: 103: CHS0=0;
	bcf	(251/8),(251)&7
	line	104
	
l2236:	
;LCD.c: 104: ADON=1;
	bsf	(248/8),(248)&7
	line	105
	
l2238:	
;LCD.c: 105: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	106
	
l2240:	
;LCD.c: 106: ADCON0=(ADCON0|0X04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	iorlw	04h
	movwf	(31)	;volatile
	line	107
	
l2242:	
;LCD.c: 107: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	108
	
l2244:	
;LCD.c: 108: temp=ADRESH<<8;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movlw	08h
	movwf	btemp+0
u2555:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+0,f
	goto	u2555
	movf	0+(??_main+0)+0,w
	movwf	(_temp)
	movf	1+(??_main+0)+0,w
	movwf	(_temp+1)
	line	110
	
l2246:	
;LCD.c: 110: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	111
	
l2248:	
;LCD.c: 111: temp=(temp+ADRESL);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	addwf	(_temp),w
	movwf	(_temp)
	movf	(_temp+1),w
	skipnc
	incf	(_temp+1),w
	movwf	((_temp))+1
	line	112
	
l2250:	
;LCD.c: 112: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	114
	
l2252:	
;LCD.c: 114: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	116
	
l2254:	
;LCD.c: 116: lcd_command(0X80);
	movlw	(080h)
	fcall	_lcd_command
	line	118
	
l2256:	
;LCD.c: 118: lcd_command(0X8A);
	movlw	(08Ah)
	fcall	_lcd_command
	line	119
	
l2258:	
;LCD.c: 119: a=temp/1000;
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	movf	(_temp+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_temp),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_a+1)
	addwf	(_a+1)
	movf	(0+(?___lwdiv)),w
	clrf	(_a)
	addwf	(_a)

	line	120
	
l2260:	
;LCD.c: 120: b=temp%1000;
	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	movf	(_temp+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_temp),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b+1)
	addwf	(_b+1)
	movf	(0+(?___lwmod)),w
	clrf	(_b)
	addwf	(_b)

	line	121
	
l2262:	
;LCD.c: 121: c=b/100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(_b+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_b),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_c+1)
	addwf	(_c+1)
	movf	(0+(?___awdiv)),w
	clrf	(_c)
	addwf	(_c)

	line	122
	
l2264:	
;LCD.c: 122: d=b%100;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(_b+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_b),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_d+1)
	addwf	(_d+1)
	movf	(0+(?___awmod)),w
	clrf	(_d)
	addwf	(_d)

	line	123
	
l2266:	
;LCD.c: 123: e=d/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_d+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_d),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_e+1)
	addwf	(_e+1)
	movf	(0+(?___awdiv)),w
	clrf	(_e)
	addwf	(_e)

	line	124
	
l2268:	
;LCD.c: 124: f=d%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(_d+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_d),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_f+1)
	addwf	(_f+1)
	movf	(0+(?___awmod)),w
	clrf	(_f)
	addwf	(_f)

	line	127
	
l2270:	
;LCD.c: 127: lcd_data(a+0x30);
	movf	(_a),w
	addlw	030h
	fcall	_lcd_data
	line	128
	
l2272:	
;LCD.c: 128: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	129
	
l2274:	
;LCD.c: 129: lcd_data(c+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c),w
	addlw	030h
	fcall	_lcd_data
	line	130
	
l2276:	
;LCD.c: 130: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	131
	
l2278:	
;LCD.c: 131: lcd_data(e+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_e),w
	addlw	030h
	fcall	_lcd_data
	line	132
	
l2280:	
;LCD.c: 132: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	133
	
l2282:	
;LCD.c: 133: lcd_data(f+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_f),w
	addlw	030h
	fcall	_lcd_data
	line	134
	
l2284:	
;LCD.c: 134: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	137
	
l601:	
	line	98
	goto	l600
	
l602:	
	line	138
	
l603:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_lcd_display
psect	text195,local,class=CODE,delta=2
global __ptext195
__ptext195:

;; *************** function _lcd_display *****************
;; Defined at:
;;		line 61 in file "E:\Embedded_Program\LCD_Display_Code\Welcome_display\LCD.c"
;; Parameters:    Size  Location     Type
;;  m               1    wreg     PTR unsigned char 
;;		 -> STR_1(8), 
;; Auto vars:     Size  Location     Type
;;  m               1    5[COMMON] PTR unsigned char 
;;		 -> STR_1(8), 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text195
	file	"E:\Embedded_Program\LCD_Display_Code\Welcome_display\LCD.c"
	line	61
	global	__size_of_lcd_display
	__size_of_lcd_display	equ	__end_of_lcd_display-_lcd_display
	
_lcd_display:	
	opt	stack 7
; Regs used in _lcd_display: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
;lcd_display@m stored from wreg
	movwf	(lcd_display@m)
	line	62
	
l2196:	
;LCD.c: 62: for(i=0;m[i]!=0;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	goto	l594
	line	63
	
l595:	
	line	64
	
l2198:	
;LCD.c: 63: {
;LCD.c: 64: lcd_data(m[i]);
	movf	(_i),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_data
	line	62
	
l2200:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	
l594:	
	
l2202:	
	movf	(_i),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2541
	goto	u2540
u2541:
	goto	l595
u2540:
	
l596:	
	line	66
	
l597:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_display
	__end_of_lcd_display:
;; =============== function _lcd_display ends ============

	signat	_lcd_display,4216
	global	_lcd_init
psect	text196,local,class=CODE,delta=2
global __ptext196
__ptext196:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 34 in file "E:\Embedded_Program\LCD_Display_Code\Welcome_display\LCD.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_command
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text196
	file	"E:\Embedded_Program\LCD_Display_Code\Welcome_display\LCD.c"
	line	34
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 7
; Regs used in _lcd_init: [wreg+status,2-btemp+0+pclath+cstack]
	line	35
	
l2194:	
;LCD.c: 35: lcd_command(0X02);
	movlw	(02h)
	fcall	_lcd_command
	line	36
;LCD.c: 36: lcd_command(0X2C);
	movlw	(02Ch)
	fcall	_lcd_command
	line	37
;LCD.c: 37: lcd_command(0X06);
	movlw	(06h)
	fcall	_lcd_command
	line	38
;LCD.c: 38: lcd_command(0X0C);
	movlw	(0Ch)
	fcall	_lcd_command
	line	39
;LCD.c: 39: lcd_command(0X01);
	movlw	(01h)
	fcall	_lcd_command
	line	40
	
l588:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_data
psect	text197,local,class=CODE,delta=2
global __ptext197
__ptext197:

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 44 in file "E:\Embedded_Program\LCD_Display_Code\Welcome_display\LCD.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    4[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_lcd_display
;;		_main
;; This function uses a non-reentrant model
;;
psect	text197
	file	"E:\Embedded_Program\LCD_Display_Code\Welcome_display\LCD.c"
	line	44
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 7
; Regs used in _lcd_data: [wreg+status,2-btemp+0+pclath+cstack]
;lcd_data@data stored from wreg
	movwf	(lcd_data@data)
	line	45
	
l2168:	
;LCD.c: 45: PORTD=data&0XF0;
	movf	(lcd_data@data),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	46
	
l2170:	
;LCD.c: 46: RD1=1;
	bsf	(65/8),(65)&7
	line	47
	
l2172:	
;LCD.c: 47: RD2=0;
	bcf	(66/8),(66)&7
	line	48
	
l2174:	
;LCD.c: 48: RD3=1;
	bsf	(67/8),(67)&7
	line	49
	
l2176:	
;LCD.c: 49: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	50
	
l2178:	
;LCD.c: 50: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	51
	
l2180:	
;LCD.c: 51: temp1=data<<4;
	movf	(lcd_data@data),w
	movwf	(??_lcd_data+0)+0
	clrf	(??_lcd_data+0)+0+1
	movlw	04h
	movwf	btemp+0
u2535:
	clrc
	rlf	(??_lcd_data+0)+0,f
	rlf	(??_lcd_data+0)+1,f
	decfsz	btemp+0,f
	goto	u2535
	movf	0+(??_lcd_data+0)+0,w
	movwf	(_temp1)
	movf	1+(??_lcd_data+0)+0,w
	movwf	(_temp1+1)
	line	52
	
l2182:	
;LCD.c: 52: PORTD=temp1&0XF0;
	movf	(_temp1),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	53
	
l2184:	
;LCD.c: 53: RD1=1;
	bsf	(65/8),(65)&7
	line	54
	
l2186:	
;LCD.c: 54: RD2=0;
	bcf	(66/8),(66)&7
	line	55
	
l2188:	
;LCD.c: 55: RD3=1;
	bsf	(67/8),(67)&7
	line	56
	
l2190:	
;LCD.c: 56: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	57
	
l2192:	
;LCD.c: 57: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	58
	
l591:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
;; =============== function _lcd_data ends ============

	signat	_lcd_data,4216
	global	_lcd_command
psect	text198,local,class=CODE,delta=2
global __ptext198
__ptext198:

;; *************** function _lcd_command *****************
;; Defined at:
;;		line 17 in file "E:\Embedded_Program\LCD_Display_Code\Welcome_display\LCD.c"
;; Parameters:    Size  Location     Type
;;  com             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  com             1    4[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_lcd_init
;;		_main
;; This function uses a non-reentrant model
;;
psect	text198
	file	"E:\Embedded_Program\LCD_Display_Code\Welcome_display\LCD.c"
	line	17
	global	__size_of_lcd_command
	__size_of_lcd_command	equ	__end_of_lcd_command-_lcd_command
	
_lcd_command:	
	opt	stack 7
; Regs used in _lcd_command: [wreg+status,2-btemp+0+pclath+cstack]
;lcd_command@com stored from wreg
	movwf	(lcd_command@com)
	line	18
	
l2142:	
;LCD.c: 18: PORTD=com&0XF0;
	movf	(lcd_command@com),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	19
	
l2144:	
;LCD.c: 19: RD1=0;
	bcf	(65/8),(65)&7
	line	20
	
l2146:	
;LCD.c: 20: RD2=0;
	bcf	(66/8),(66)&7
	line	21
	
l2148:	
;LCD.c: 21: RD3=1;
	bsf	(67/8),(67)&7
	line	22
	
l2150:	
;LCD.c: 22: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	23
	
l2152:	
;LCD.c: 23: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	24
	
l2154:	
;LCD.c: 24: temp2=com<<4;
	movf	(lcd_command@com),w
	movwf	(??_lcd_command+0)+0
	clrf	(??_lcd_command+0)+0+1
	movlw	04h
	movwf	btemp+0
u2525:
	clrc
	rlf	(??_lcd_command+0)+0,f
	rlf	(??_lcd_command+0)+1,f
	decfsz	btemp+0,f
	goto	u2525
	movf	0+(??_lcd_command+0)+0,w
	movwf	(_temp2)
	movf	1+(??_lcd_command+0)+0,w
	movwf	(_temp2+1)
	line	25
	
l2156:	
;LCD.c: 25: PORTD=temp2&0XF0;
	movf	(_temp2),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	26
	
l2158:	
;LCD.c: 26: RD1=0;
	bcf	(65/8),(65)&7
	line	27
	
l2160:	
;LCD.c: 27: RD2=0;
	bcf	(66/8),(66)&7
	line	28
	
l2162:	
;LCD.c: 28: RD3=1;
	bsf	(67/8),(67)&7
	line	29
	
l2164:	
;LCD.c: 29: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	30
	
l2166:	
;LCD.c: 30: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	31
	
l585:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_command
	__end_of_lcd_command:
;; =============== function _lcd_command ends ============

	signat	_lcd_command,4216
	global	___awmod
psect	text199,local,class=CODE,delta=2
global __ptext199
__ptext199:

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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text199
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2106:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	line	9
	
l2108:	
	btfss	(___awmod@dividend+1),7
	goto	u2431
	goto	u2430
u2431:
	goto	l820
u2430:
	line	10
	
l2110:	
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
	
l820:	
	line	13
	
l2112:	
	btfss	(___awmod@divisor+1),7
	goto	u2441
	goto	u2440
u2441:
	goto	l821
u2440:
	line	14
	
l2114:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	
l821:	
	line	15
	
l2116:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2451
	goto	u2450
u2451:
	goto	l822
u2450:
	line	16
	
l2118:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l823
	
l824:	
	line	18
	
l2120:	
	movlw	01h
	
u2465:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2465
	line	19
	
l2122:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	line	20
	
l823:	
	line	17
	
l2124:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2471
	goto	u2470
u2471:
	goto	l824
u2470:
	
l825:	
	line	21
	
l826:	
	line	22
	
l2126:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2485
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2485:
	skipc
	goto	u2481
	goto	u2480
u2481:
	goto	l827
u2480:
	line	23
	
l2128:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	
l827:	
	line	24
	
l2130:	
	movlw	01h
	
u2495:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2495
	line	25
	
l2132:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2501
	goto	u2500
u2501:
	goto	l826
u2500:
	
l828:	
	line	26
	
l822:	
	line	27
	
l2134:	
	movf	(___awmod@sign),w
	skipz
	goto	u2510
	goto	l829
u2510:
	line	28
	
l2136:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	
l829:	
	line	29
	
l2138:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	
l2140:	
	line	30
	
l830:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text200,local,class=CODE,delta=2
global __ptext200
__ptext200:

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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text200
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2068:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	line	10
	
l2070:	
	btfss	(___awdiv@divisor+1),7
	goto	u2331
	goto	u2330
u2331:
	goto	l752
u2330:
	line	11
	
l2072:	
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
	
l752:	
	line	14
	
l2074:	
	btfss	(___awdiv@dividend+1),7
	goto	u2341
	goto	u2340
u2341:
	goto	l753
u2340:
	line	15
	
l2076:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2078:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l753:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2351
	goto	u2350
u2351:
	goto	l754
u2350:
	line	20
	
l2080:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l755
	
l756:	
	line	22
	
l2082:	
	movlw	01h
	
u2365:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2365
	line	23
	
l2084:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	line	24
	
l755:	
	line	21
	
l2086:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2371
	goto	u2370
u2371:
	goto	l756
u2370:
	
l757:	
	line	25
	
l758:	
	line	26
	
l2088:	
	movlw	01h
	
u2385:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2385
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2395
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2395:
	skipc
	goto	u2391
	goto	u2390
u2391:
	goto	l759
u2390:
	line	28
	
l2090:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2092:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	30
	
l759:	
	line	31
	
l2094:	
	movlw	01h
	
u2405:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2405
	line	32
	
l2096:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2411
	goto	u2410
u2411:
	goto	l758
u2410:
	
l760:	
	line	33
	
l754:	
	line	34
	
l2098:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2420
	goto	l761
u2420:
	line	35
	
l2100:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	
l761:	
	line	36
	
l2102:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	
l2104:	
	line	37
	
l762:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lwmod
psect	text201,local,class=CODE,delta=2
global __ptext201
__ptext201:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text201
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 7
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l2046:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2271
	goto	u2270
u2271:
	goto	l628
u2270:
	line	9
	
l2048:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l629
	
l630:	
	line	11
	
l2050:	
	movlw	01h
	
u2285:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2285
	line	12
	
l2052:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	line	13
	
l629:	
	line	10
	
l2054:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l630
u2290:
	
l631:	
	line	14
	
l632:	
	line	15
	
l2056:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2305
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2305:
	skipc
	goto	u2301
	goto	u2300
u2301:
	goto	l633
u2300:
	line	16
	
l2058:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	
l633:	
	line	17
	
l2060:	
	movlw	01h
	
u2315:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2315
	line	18
	
l2062:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2321
	goto	u2320
u2321:
	goto	l632
u2320:
	
l634:	
	line	19
	
l628:	
	line	20
	
l2064:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	
l2066:	
	line	21
	
l635:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text202,local,class=CODE,delta=2
global __ptext202
__ptext202:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[COMMON] unsigned int 
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text202
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 7
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l2022:	
	movlw	low(0)
	movwf	(___lwdiv@quotient)
	movlw	high(0)
	movwf	((___lwdiv@quotient))+1
	line	10
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2201
	goto	u2200
u2201:
	goto	l618
u2200:
	line	11
	
l2024:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l619
	
l620:	
	line	13
	
l2026:	
	movlw	01h
	
u2215:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2215
	line	14
	
l2028:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	line	15
	
l619:	
	line	12
	
l2030:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l620
u2220:
	
l621:	
	line	16
	
l622:	
	line	17
	
l2032:	
	movlw	01h
	
u2235:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2235
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2245
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2245:
	skipc
	goto	u2241
	goto	u2240
u2241:
	goto	l623
u2240:
	line	19
	
l2034:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l2036:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	21
	
l623:	
	line	22
	
l2038:	
	movlw	01h
	
u2255:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2255
	line	23
	
l2040:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2261
	goto	u2260
u2261:
	goto	l622
u2260:
	
l624:	
	line	24
	
l618:	
	line	25
	
l2042:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	
l2044:	
	line	26
	
l625:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_delay
psect	text203,local,class=CODE,delta=2
global __ptext203
__ptext203:

;; *************** function _delay *****************
;; Defined at:
;;		line 12 in file "E:\Embedded_Program\LCD_Display_Code\Welcome_display\LCD.c"
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
psect	text203
	file	"E:\Embedded_Program\LCD_Display_Code\Welcome_display\LCD.c"
	line	12
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	13
	
l2018:	
;LCD.c: 13: while(x--);
	goto	l579
	
l580:	
	
l579:	
	
l2020:	
	movlw	low(01h)
	subwf	(delay@x),f
	movlw	high(01h)
	skipc
	decf	(delay@x+1),f
	subwf	(delay@x+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@x+1)),w
	skipz
	goto	u2195
	movlw	low(0FFFFh)
	xorwf	((delay@x)),w
u2195:

	skipz
	goto	u2191
	goto	u2190
u2191:
	goto	l580
u2190:
	
l581:	
	line	14
	
l582:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text204,local,class=CODE,delta=2
global __ptext204
__ptext204:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
