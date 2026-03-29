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
# 2 "C:\Users\TECH\Desktop\madhu pic folder\serial communication\uart\task\ADC VALUE ON VIRTUAL TERMINAL(ZIGBEE)\adc value display on lcd and virtual terminal.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "C:\Users\TECH\Desktop\madhu pic folder\serial communication\uart\task\ADC VALUE ON VIRTUAL TERMINAL(ZIGBEE)\adc value display on lcd and virtual terminal.c"
	dw 0X3F72 ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_delay
	FNCALL	_main,___lwdiv
	FNCALL	_main,___lwmod
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_main,_lcd_cmd
	FNCALL	_main,_lcd_data
	FNCALL	_lcd_init,_lcd_cmd
	FNCALL	_lcd_data,_delay
	FNCALL	_lcd_cmd,_delay
	FNROOT	_main
	global	_temp
	global	_ADCON0
psect	text184,local,class=CODE,delta=2
global __ptext184
__ptext184:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTA
_PORTA	set	5
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_RCSTA
_RCSTA	set	24
	global	_TXREG
_TXREG	set	25
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
	global	_SPBRG
_SPBRG	set	153
	global	_TRISA
_TRISA	set	133
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TXSTA
_TXSTA	set	152
	file	"adc value display on lcd and virtual terminal.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_temp:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
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
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_lcd_data
?_lcd_data:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
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
	global	??_lcd_cmd
??_lcd_cmd:	; 0 bytes @ 0x2
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
	global	lcd_cmd@com
lcd_cmd@com:	; 1 bytes @ 0x4
	global	lcd_data@dat
lcd_data@dat:	; 1 bytes @ 0x4
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x5
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
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@a
main@a:	; 2 bytes @ 0x0
	ds	2
	global	main@b
main@b:	; 2 bytes @ 0x2
	ds	2
	global	main@c
main@c:	; 2 bytes @ 0x4
	ds	2
	global	main@d
main@d:	; 2 bytes @ 0x6
	ds	2
	global	main@e
main@e:	; 2 bytes @ 0x8
	ds	2
	global	main@f
main@f:	; 2 bytes @ 0xA
	ds	2
	global	main@temp
main@temp:	; 2 bytes @ 0xC
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     11      13
;; BANK0           80     14      14
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


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___awdiv
;;   _lcd_init->_lcd_cmd
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                16    16      0    1475
;;                                              9 COMMON     2     2      0
;;                                              0 BANK0     14    14      0
;;                           _lcd_init
;;                              _delay
;;                            ___lwdiv
;;                            ___lwmod
;;                            ___awdiv
;;                            ___awmod
;;                            _lcd_cmd
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             0     0      0      66
;;                            _lcd_cmd
;; ---------------------------------------------------------------------------------
;; (1) _lcd_data                                             3     3      0      66
;;                                              2 COMMON     3     3      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _lcd_cmd                                              3     3      0      66
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
;;     _lcd_cmd
;;       _delay
;;   _delay
;;   ___lwdiv
;;   ___lwmod
;;   ___awdiv
;;   ___awmod
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
;;COMMON               E      B       D       1       92.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0      1B       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      E       E       5       17.5%
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
;;		line 72 in file "C:\Users\TECH\Desktop\madhu pic folder\serial communication\uart\task\ADC VALUE ON VIRTUAL TERMINAL(ZIGBEE)\adc value display on lcd and virtual terminal.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            2   12[BANK0 ] unsigned int 
;;  f               2   10[BANK0 ] int 
;;  e               2    8[BANK0 ] int 
;;  d               2    6[BANK0 ] int 
;;  c               2    4[BANK0 ] int 
;;  b               2    2[BANK0 ] int 
;;  a               2    0[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      14       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2      14       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_init
;;		_delay
;;		___lwdiv
;;		___lwmod
;;		___awdiv
;;		___awmod
;;		_lcd_cmd
;;		_lcd_data
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\TECH\Desktop\madhu pic folder\serial communication\uart\task\ADC VALUE ON VIRTUAL TERMINAL(ZIGBEE)\adc value display on lcd and virtual terminal.c"
	line	72
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2-btemp+0+pclath+cstack]
	line	75
	
l2210:	
;adc value display on lcd and virtual terminal.c: 73: int a,b,c,d,e,f;
;adc value display on lcd and virtual terminal.c: 74: unsigned int temp;
;adc value display on lcd and virtual terminal.c: 75: ADCON1=0X8E;
	movlw	(08Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	76
;adc value display on lcd and virtual terminal.c: 76: ADCON0=0X40;
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	78
	
l2212:	
;adc value display on lcd and virtual terminal.c: 78: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	79
	
l2214:	
;adc value display on lcd and virtual terminal.c: 79: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	81
	
l2216:	
;adc value display on lcd and virtual terminal.c: 81: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	82
	
l2218:	
;adc value display on lcd and virtual terminal.c: 82: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	85
;adc value display on lcd and virtual terminal.c: 85: TRISA=0X01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	86
	
l2220:	
;adc value display on lcd and virtual terminal.c: 86: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	88
	
l2222:	
;adc value display on lcd and virtual terminal.c: 88: TXSTA=0X24;
	movlw	(024h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	89
	
l2224:	
;adc value display on lcd and virtual terminal.c: 89: RCSTA=0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	90
	
l2226:	
;adc value display on lcd and virtual terminal.c: 90: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	92
	
l2228:	
;adc value display on lcd and virtual terminal.c: 92: lcd_init();
	fcall	_lcd_init
	line	93
	
l2230:	
;adc value display on lcd and virtual terminal.c: 93: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	98
;adc value display on lcd and virtual terminal.c: 98: while(1)
	
l588:	
	line	100
	
l2232:	
;adc value display on lcd and virtual terminal.c: 99: {
;adc value display on lcd and virtual terminal.c: 100: CHS2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(253/8),(253)&7
	line	101
	
l2234:	
;adc value display on lcd and virtual terminal.c: 101: CHS1=0;
	bcf	(252/8),(252)&7
	line	102
	
l2236:	
;adc value display on lcd and virtual terminal.c: 102: CHS0=0;
	bcf	(251/8),(251)&7
	line	103
	
l2238:	
;adc value display on lcd and virtual terminal.c: 103: ADON=1;
	bsf	(248/8),(248)&7
	line	104
	
l2240:	
;adc value display on lcd and virtual terminal.c: 104: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	105
	
l2242:	
;adc value display on lcd and virtual terminal.c: 105: ADCON0=(ADCON0|0X04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	iorlw	04h
	movwf	(31)	;volatile
	line	106
	
l2244:	
;adc value display on lcd and virtual terminal.c: 106: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	107
;adc value display on lcd and virtual terminal.c: 107: temp=ADRESH<<8;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movlw	08h
	movwf	btemp+0
u2575:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+0,f
	goto	u2575
	movf	0+(??_main+0)+0,w
	movwf	(main@temp)
	movf	1+(??_main+0)+0,w
	movwf	(main@temp+1)
	line	108
	
l2246:	
;adc value display on lcd and virtual terminal.c: 108: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	109
	
l2248:	
;adc value display on lcd and virtual terminal.c: 109: temp=temp+ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@temp),w
	movwf	(main@temp)
	movf	(main@temp+1),w
	skipnc
	incf	(main@temp+1),w
	movwf	((main@temp))+1
	line	110
	
l2250:	
;adc value display on lcd and virtual terminal.c: 110: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	112
	
l2252:	
;adc value display on lcd and virtual terminal.c: 112: a=temp/1000;
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@temp+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(main@temp),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@a+1)
	addwf	(main@a+1)
	movf	(0+(?___lwdiv)),w
	clrf	(main@a)
	addwf	(main@a)

	line	113
	
l2254:	
;adc value display on lcd and virtual terminal.c: 113: b=temp%1000;
	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	movf	(main@temp+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(main@temp),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@b+1)
	addwf	(main@b+1)
	movf	(0+(?___lwmod)),w
	clrf	(main@b)
	addwf	(main@b)

	line	114
	
l2256:	
;adc value display on lcd and virtual terminal.c: 114: c=b/100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(main@b+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@b),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@c+1)
	addwf	(main@c+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@c)
	addwf	(main@c)

	line	115
	
l2258:	
;adc value display on lcd and virtual terminal.c: 115: d=b%100;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(main@b+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@b),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@d+1)
	addwf	(main@d+1)
	movf	(0+(?___awmod)),w
	clrf	(main@d)
	addwf	(main@d)

	line	116
	
l2260:	
;adc value display on lcd and virtual terminal.c: 116: e=d/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@d+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@d),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@e+1)
	addwf	(main@e+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@e)
	addwf	(main@e)

	line	117
	
l2262:	
;adc value display on lcd and virtual terminal.c: 117: f=d%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@d+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@d),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@f+1)
	addwf	(main@f+1)
	movf	(0+(?___awmod)),w
	clrf	(main@f)
	addwf	(main@f)

	line	121
	
l2264:	
;adc value display on lcd and virtual terminal.c: 121: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	122
;adc value display on lcd and virtual terminal.c: 122: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	123
	
l2266:	
;adc value display on lcd and virtual terminal.c: 123: lcd_data(a+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@a),w
	addlw	030h
	fcall	_lcd_data
	line	124
	
l2268:	
;adc value display on lcd and virtual terminal.c: 124: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	125
;adc value display on lcd and virtual terminal.c: 125: lcd_data(c+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@c),w
	addlw	030h
	fcall	_lcd_data
	line	126
	
l2270:	
;adc value display on lcd and virtual terminal.c: 126: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	127
	
l2272:	
;adc value display on lcd and virtual terminal.c: 127: lcd_data(e+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@e),w
	addlw	030h
	fcall	_lcd_data
	line	128
;adc value display on lcd and virtual terminal.c: 128: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	129
	
l2274:	
;adc value display on lcd and virtual terminal.c: 129: lcd_data(f+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@f),w
	addlw	030h
	fcall	_lcd_data
	line	130
	
l2276:	
;adc value display on lcd and virtual terminal.c: 130: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	131
	
l2278:	
;adc value display on lcd and virtual terminal.c: 131: delay(50000);delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2280:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	133
	
l2282:	
;adc value display on lcd and virtual terminal.c: 133: TXREG=(a+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@a),w
	addlw	030h
	movwf	(25)	;volatile
	line	134
	
l2284:	
;adc value display on lcd and virtual terminal.c: 134: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	135
	
l2286:	
;adc value display on lcd and virtual terminal.c: 135: TXREG=(c+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@c),w
	addlw	030h
	movwf	(25)	;volatile
	line	136
	
l2288:	
;adc value display on lcd and virtual terminal.c: 136: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	137
	
l2290:	
;adc value display on lcd and virtual terminal.c: 137: TXREG=(e+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@e),w
	addlw	030h
	movwf	(25)	;volatile
	line	138
	
l2292:	
;adc value display on lcd and virtual terminal.c: 138: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	139
	
l2294:	
;adc value display on lcd and virtual terminal.c: 139: TXREG=(f+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@f),w
	addlw	030h
	movwf	(25)	;volatile
	line	140
	
l2296:	
;adc value display on lcd and virtual terminal.c: 140: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	141
	
l2298:	
;adc value display on lcd and virtual terminal.c: 141: delay(50000);delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2300:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	143
	
l589:	
	line	98
	goto	l588
	
l590:	
	line	144
	
l591:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_init
psect	text185,local,class=CODE,delta=2
global __ptext185
__ptext185:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 28 in file "C:\Users\TECH\Desktop\madhu pic folder\serial communication\uart\task\ADC VALUE ON VIRTUAL TERMINAL(ZIGBEE)\adc value display on lcd and virtual terminal.c"
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
;;		_lcd_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text185
	file	"C:\Users\TECH\Desktop\madhu pic folder\serial communication\uart\task\ADC VALUE ON VIRTUAL TERMINAL(ZIGBEE)\adc value display on lcd and virtual terminal.c"
	line	28
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 7
; Regs used in _lcd_init: [wreg+status,2-btemp+0+pclath+cstack]
	line	29
	
l2208:	
;adc value display on lcd and virtual terminal.c: 29: lcd_cmd(0x02);
	movlw	(02h)
	fcall	_lcd_cmd
	line	30
;adc value display on lcd and virtual terminal.c: 30: lcd_cmd(0x2c);
	movlw	(02Ch)
	fcall	_lcd_cmd
	line	31
;adc value display on lcd and virtual terminal.c: 31: lcd_cmd(0x06);
	movlw	(06h)
	fcall	_lcd_cmd
	line	32
;adc value display on lcd and virtual terminal.c: 32: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	33
;adc value display on lcd and virtual terminal.c: 33: lcd_cmd(0x0c);
	movlw	(0Ch)
	fcall	_lcd_cmd
	line	34
;adc value display on lcd and virtual terminal.c: 34: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	35
	
l570:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_data
psect	text186,local,class=CODE,delta=2
global __ptext186
__ptext186:

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 37 in file "C:\Users\TECH\Desktop\madhu pic folder\serial communication\uart\task\ADC VALUE ON VIRTUAL TERMINAL(ZIGBEE)\adc value display on lcd and virtual terminal.c"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1    4[COMMON] unsigned char 
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
;;		_main
;;		_lcd_display
;; This function uses a non-reentrant model
;;
psect	text186
	file	"C:\Users\TECH\Desktop\madhu pic folder\serial communication\uart\task\ADC VALUE ON VIRTUAL TERMINAL(ZIGBEE)\adc value display on lcd and virtual terminal.c"
	line	37
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 7
; Regs used in _lcd_data: [wreg+status,2-btemp+0+pclath+cstack]
;lcd_data@dat stored from wreg
	movwf	(lcd_data@dat)
	line	38
	
l2182:	
;adc value display on lcd and virtual terminal.c: 38: PORTD=(dat&0xf0);
	movf	(lcd_data@dat),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	39
	
l2184:	
;adc value display on lcd and virtual terminal.c: 39: RD1=1;
	bsf	(65/8),(65)&7
	line	40
	
l2186:	
;adc value display on lcd and virtual terminal.c: 40: RD2=0;
	bcf	(66/8),(66)&7
	line	41
	
l2188:	
;adc value display on lcd and virtual terminal.c: 41: RD3=1;
	bsf	(67/8),(67)&7
	line	42
	
l2190:	
;adc value display on lcd and virtual terminal.c: 42: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	43
	
l2192:	
;adc value display on lcd and virtual terminal.c: 43: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	44
	
l2194:	
;adc value display on lcd and virtual terminal.c: 44: temp=dat<<4;
	movf	(lcd_data@dat),w
	movwf	(??_lcd_data+0)+0
	clrf	(??_lcd_data+0)+0+1
	movlw	04h
	movwf	btemp+0
u2565:
	clrc
	rlf	(??_lcd_data+0)+0,f
	rlf	(??_lcd_data+0)+1,f
	decfsz	btemp+0,f
	goto	u2565
	movf	0+(??_lcd_data+0)+0,w
	movwf	(_temp)
	movf	1+(??_lcd_data+0)+0,w
	movwf	(_temp+1)
	line	45
	
l2196:	
;adc value display on lcd and virtual terminal.c: 45: PORTD=(temp&0xf0);
	movf	(_temp),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	46
	
l2198:	
;adc value display on lcd and virtual terminal.c: 46: RD1=1;
	bsf	(65/8),(65)&7
	line	47
	
l2200:	
;adc value display on lcd and virtual terminal.c: 47: RD2=0;
	bcf	(66/8),(66)&7
	line	48
	
l2202:	
;adc value display on lcd and virtual terminal.c: 48: RD3=1;
	bsf	(67/8),(67)&7
	line	49
	
l2204:	
;adc value display on lcd and virtual terminal.c: 49: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	50
	
l2206:	
;adc value display on lcd and virtual terminal.c: 50: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	51
	
l573:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
;; =============== function _lcd_data ends ============

	signat	_lcd_data,4216
	global	_lcd_cmd
psect	text187,local,class=CODE,delta=2
global __ptext187
__ptext187:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 12 in file "C:\Users\TECH\Desktop\madhu pic folder\serial communication\uart\task\ADC VALUE ON VIRTUAL TERMINAL(ZIGBEE)\adc value display on lcd and virtual terminal.c"
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
psect	text187
	file	"C:\Users\TECH\Desktop\madhu pic folder\serial communication\uart\task\ADC VALUE ON VIRTUAL TERMINAL(ZIGBEE)\adc value display on lcd and virtual terminal.c"
	line	12
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 7
; Regs used in _lcd_cmd: [wreg+status,2-btemp+0+pclath+cstack]
;lcd_cmd@com stored from wreg
	movwf	(lcd_cmd@com)
	line	13
	
l2156:	
;adc value display on lcd and virtual terminal.c: 13: PORTD=(com&0xf0);
	movf	(lcd_cmd@com),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	14
	
l2158:	
;adc value display on lcd and virtual terminal.c: 14: RD1=0;
	bcf	(65/8),(65)&7
	line	15
	
l2160:	
;adc value display on lcd and virtual terminal.c: 15: RD2=0;
	bcf	(66/8),(66)&7
	line	16
	
l2162:	
;adc value display on lcd and virtual terminal.c: 16: RD3=1;
	bsf	(67/8),(67)&7
	line	17
	
l2164:	
;adc value display on lcd and virtual terminal.c: 17: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	18
	
l2166:	
;adc value display on lcd and virtual terminal.c: 18: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	19
	
l2168:	
;adc value display on lcd and virtual terminal.c: 19: temp=com<<4;
	movf	(lcd_cmd@com),w
	movwf	(??_lcd_cmd+0)+0
	clrf	(??_lcd_cmd+0)+0+1
	movlw	04h
	movwf	btemp+0
u2555:
	clrc
	rlf	(??_lcd_cmd+0)+0,f
	rlf	(??_lcd_cmd+0)+1,f
	decfsz	btemp+0,f
	goto	u2555
	movf	0+(??_lcd_cmd+0)+0,w
	movwf	(_temp)
	movf	1+(??_lcd_cmd+0)+0,w
	movwf	(_temp+1)
	line	20
	
l2170:	
;adc value display on lcd and virtual terminal.c: 20: PORTD=(temp&0xf0);
	movf	(_temp),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	21
	
l2172:	
;adc value display on lcd and virtual terminal.c: 21: RD1=0;
	bcf	(65/8),(65)&7
	line	22
	
l2174:	
;adc value display on lcd and virtual terminal.c: 22: RD2=0;
	bcf	(66/8),(66)&7
	line	23
	
l2176:	
;adc value display on lcd and virtual terminal.c: 23: RD3=1;
	bsf	(67/8),(67)&7
	line	24
	
l2178:	
;adc value display on lcd and virtual terminal.c: 24: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	25
	
l2180:	
;adc value display on lcd and virtual terminal.c: 25: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	26
	
l567:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,4216
	global	___awmod
psect	text188,local,class=CODE,delta=2
global __ptext188
__ptext188:

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
psect	text188
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2120:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	line	9
	
l2122:	
	btfss	(___awmod@dividend+1),7
	goto	u2461
	goto	u2460
u2461:
	goto	l808
u2460:
	line	10
	
l2124:	
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
	
l808:	
	line	13
	
l2126:	
	btfss	(___awmod@divisor+1),7
	goto	u2471
	goto	u2470
u2471:
	goto	l809
u2470:
	line	14
	
l2128:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	
l809:	
	line	15
	
l2130:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2481
	goto	u2480
u2481:
	goto	l810
u2480:
	line	16
	
l2132:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l811
	
l812:	
	line	18
	
l2134:	
	movlw	01h
	
u2495:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2495
	line	19
	
l2136:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	line	20
	
l811:	
	line	17
	
l2138:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2501
	goto	u2500
u2501:
	goto	l812
u2500:
	
l813:	
	line	21
	
l814:	
	line	22
	
l2140:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2515
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2515:
	skipc
	goto	u2511
	goto	u2510
u2511:
	goto	l815
u2510:
	line	23
	
l2142:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	
l815:	
	line	24
	
l2144:	
	movlw	01h
	
u2525:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2525
	line	25
	
l2146:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2531
	goto	u2530
u2531:
	goto	l814
u2530:
	
l816:	
	line	26
	
l810:	
	line	27
	
l2148:	
	movf	(___awmod@sign),w
	skipz
	goto	u2540
	goto	l817
u2540:
	line	28
	
l2150:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	
l817:	
	line	29
	
l2152:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	
l2154:	
	line	30
	
l818:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text189,local,class=CODE,delta=2
global __ptext189
__ptext189:

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
psect	text189
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2082:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	line	10
	
l2084:	
	btfss	(___awdiv@divisor+1),7
	goto	u2361
	goto	u2360
u2361:
	goto	l740
u2360:
	line	11
	
l2086:	
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
	
l740:	
	line	14
	
l2088:	
	btfss	(___awdiv@dividend+1),7
	goto	u2371
	goto	u2370
u2371:
	goto	l741
u2370:
	line	15
	
l2090:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2092:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l741:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2381
	goto	u2380
u2381:
	goto	l742
u2380:
	line	20
	
l2094:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l743
	
l744:	
	line	22
	
l2096:	
	movlw	01h
	
u2395:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2395
	line	23
	
l2098:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	line	24
	
l743:	
	line	21
	
l2100:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2401
	goto	u2400
u2401:
	goto	l744
u2400:
	
l745:	
	line	25
	
l746:	
	line	26
	
l2102:	
	movlw	01h
	
u2415:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2415
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2425
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2425:
	skipc
	goto	u2421
	goto	u2420
u2421:
	goto	l747
u2420:
	line	28
	
l2104:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2106:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	30
	
l747:	
	line	31
	
l2108:	
	movlw	01h
	
u2435:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2435
	line	32
	
l2110:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2441
	goto	u2440
u2441:
	goto	l746
u2440:
	
l748:	
	line	33
	
l742:	
	line	34
	
l2112:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2450
	goto	l749
u2450:
	line	35
	
l2114:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	
l749:	
	line	36
	
l2116:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	
l2118:	
	line	37
	
l750:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lwmod
psect	text190,local,class=CODE,delta=2
global __ptext190
__ptext190:

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
psect	text190
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 7
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l2060:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2301
	goto	u2300
u2301:
	goto	l616
u2300:
	line	9
	
l2062:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l617
	
l618:	
	line	11
	
l2064:	
	movlw	01h
	
u2315:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2315
	line	12
	
l2066:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	line	13
	
l617:	
	line	10
	
l2068:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l618
u2320:
	
l619:	
	line	14
	
l620:	
	line	15
	
l2070:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2335
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2335:
	skipc
	goto	u2331
	goto	u2330
u2331:
	goto	l621
u2330:
	line	16
	
l2072:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	
l621:	
	line	17
	
l2074:	
	movlw	01h
	
u2345:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2345
	line	18
	
l2076:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2351
	goto	u2350
u2351:
	goto	l620
u2350:
	
l622:	
	line	19
	
l616:	
	line	20
	
l2078:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	
l2080:	
	line	21
	
l623:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text191,local,class=CODE,delta=2
global __ptext191
__ptext191:

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
psect	text191
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 7
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l2036:	
	movlw	low(0)
	movwf	(___lwdiv@quotient)
	movlw	high(0)
	movwf	((___lwdiv@quotient))+1
	line	10
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2231
	goto	u2230
u2231:
	goto	l606
u2230:
	line	11
	
l2038:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l607
	
l608:	
	line	13
	
l2040:	
	movlw	01h
	
u2245:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2245
	line	14
	
l2042:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	line	15
	
l607:	
	line	12
	
l2044:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l608
u2250:
	
l609:	
	line	16
	
l610:	
	line	17
	
l2046:	
	movlw	01h
	
u2265:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2265
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2275
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2275:
	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l611
u2270:
	line	19
	
l2048:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l2050:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	21
	
l611:	
	line	22
	
l2052:	
	movlw	01h
	
u2285:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2285
	line	23
	
l2054:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2291
	goto	u2290
u2291:
	goto	l610
u2290:
	
l612:	
	line	24
	
l606:	
	line	25
	
l2056:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	
l2058:	
	line	26
	
l613:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_delay
psect	text192,local,class=CODE,delta=2
global __ptext192
__ptext192:

;; *************** function _delay *****************
;; Defined at:
;;		line 8 in file "C:\Users\TECH\Desktop\madhu pic folder\serial communication\uart\task\ADC VALUE ON VIRTUAL TERMINAL(ZIGBEE)\adc value display on lcd and virtual terminal.c"
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
;;		_serial
;; This function uses a non-reentrant model
;;
psect	text192
	file	"C:\Users\TECH\Desktop\madhu pic folder\serial communication\uart\task\ADC VALUE ON VIRTUAL TERMINAL(ZIGBEE)\adc value display on lcd and virtual terminal.c"
	line	8
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	9
	
l2012:	
;adc value display on lcd and virtual terminal.c: 9: while(x--);
	goto	l561
	
l562:	
	
l561:	
	
l2014:	
	movlw	low(01h)
	subwf	(delay@x),f
	movlw	high(01h)
	skipc
	decf	(delay@x+1),f
	subwf	(delay@x+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@x+1)),w
	skipz
	goto	u2205
	movlw	low(0FFFFh)
	xorwf	((delay@x)),w
u2205:

	skipz
	goto	u2201
	goto	u2200
u2201:
	goto	l562
u2200:
	
l563:	
	line	10
	
l564:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text193,local,class=CODE,delta=2
global __ptext193
__ptext193:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
