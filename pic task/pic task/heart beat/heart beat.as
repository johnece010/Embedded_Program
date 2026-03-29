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
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_main,_lcd_data
	FNCALL	_lcd_init,_lcd_command
	FNCALL	_lcd_display,_lcd_data
	FNCALL	_lcd_data,_delay
	FNCALL	_lcd_command,_delay
	FNROOT	_main
	global	_i
	global	_PORTB
psect	text178,local,class=CODE,delta=2
global __ptext178
__ptext178:
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_T1CON
_T1CON	set	16
	global	_TMR0
_TMR0	set	1
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_TMR1IF
_TMR1IF	set	96
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_T0CS
_T0CS	set	1037
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
	retlw	104	;'h'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	98	;'b'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	0
psect	strings
	file	"heart beat.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_i:
       ds      2

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
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_lcd_command
?_lcd_command:	; 0 bytes @ 0x0
	global	?_lcd_data
?_lcd_data:	; 0 bytes @ 0x0
	global	?_lcd_display
?_lcd_display:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
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
	global	lcd_command@com
lcd_command@com:	; 1 bytes @ 0x2
	global	lcd_data@data
lcd_data@data:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_lcd_display
??_lcd_display:	; 0 bytes @ 0x3
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x3
	global	lcd_display@m
lcd_display@m:	; 1 bytes @ 0x3
	ds	1
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	lcd_display@i
lcd_display@i:	; 2 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
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
	global	main@c
main@c:	; 2 bytes @ 0x2
	ds	2
	global	main@d
main@d:	; 2 bytes @ 0x4
	ds	2
	global	main@b
main@b:	; 2 bytes @ 0x6
	ds	2
	global	main@temp
main@temp:	; 2 bytes @ 0x8
	ds	2
;;Data sizes: Strings 11, constant 0, data 0, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     11      11
;; BANK0           80     10      12
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; lcd_display@m	PTR unsigned char  size(1) Largest target is 11
;;		 -> STR_1(CODE[11]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___awdiv
;;   _lcd_init->_lcd_command
;;   _lcd_display->_lcd_data
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
;; (0) _main                                                12    12      0     933
;;                                              9 COMMON     2     2      0
;;                                              0 BANK0     10    10      0
;;                           _lcd_init
;;                        _lcd_command
;;                        _lcd_display
;;                              _delay
;;                            ___awdiv
;;                            ___awmod
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             0     0      0      22
;;                        _lcd_command
;; ---------------------------------------------------------------------------------
;; (1) _lcd_display                                          3     3      0     112
;;                                              3 COMMON     3     3      0
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _lcd_data                                             1     1      0      22
;;                                              2 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _lcd_command                                          1     1      0      22
;;                                              2 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                2     0      2       0
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
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
;;   _delay
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
;;COMMON               E      B       B       1       78.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0      17       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      A       C       5       15.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      1A      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 50 in file "C:\Users\TECH\Desktop\madhu pic folder\heart beat\heart beat.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            2    8[BANK0 ] int 
;;  b               2    6[BANK0 ] int 
;;  d               2    4[BANK0 ] int 
;;  c               2    2[BANK0 ] int 
;;  a               2    0[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  2  581[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      10       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2      10       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_init
;;		_lcd_command
;;		_lcd_display
;;		_delay
;;		___awdiv
;;		___awmod
;;		_lcd_data
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\TECH\Desktop\madhu pic folder\heart beat\heart beat.c"
	line	50
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
	line	51
	
l2008:	
;heart beat.c: 51: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	52
;heart beat.c: 52: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	53
;heart beat.c: 53: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	54
;heart beat.c: 54: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	55
;heart beat.c: 55: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	56
;heart beat.c: 56: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	57
	
l2010:	
;heart beat.c: 57: lcd_init();
	fcall	_lcd_init
	line	58
	
l2012:	
;heart beat.c: 58: T0CS=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1037/8)^080h,(1037)&7
	line	59
	
l2014:	
;heart beat.c: 59: TMR0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(1)	;volatile
	line	60
;heart beat.c: 60: while(1)
	
l582:	
	line	62
;heart beat.c: 61: {
;heart beat.c: 62: lcd_command(0x80);
	movlw	(080h)
	fcall	_lcd_command
	line	63
	
l2016:	
;heart beat.c: 63: lcd_display("heart beat");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_display
	line	64
	
l2018:	
;heart beat.c: 64: for(i=0;i<=100;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	
l2020:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(065h))^80h
	subwf	btemp+0,w
	skipz
	goto	u2395
	movlw	low(065h)
	subwf	(_i),w
u2395:

	skipc
	goto	u2391
	goto	u2390
u2391:
	goto	l583
u2390:
	
l2022:	
	goto	l584
	line	65
	
l583:	
	line	66
	
l2024:	
;heart beat.c: 65: {
;heart beat.c: 66: delay();
	fcall	_delay
	line	64
	
l2026:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	
l2028:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(065h))^80h
	subwf	btemp+0,w
	skipz
	goto	u2405
	movlw	low(065h)
	subwf	(_i),w
u2405:

	skipc
	goto	u2401
	goto	u2400
u2401:
	goto	l583
u2400:
	
l584:	
	line	70
	
l2030:	
;heart beat.c: 67: }
;heart beat.c: 69: int a,b,c,d,temp;
;heart beat.c: 70: temp=TMR0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(main@temp)
	movf	1+(??_main+0)+0,w
	movwf	(main@temp+1)
	line	71
	
l2032:	
;heart beat.c: 71: a=temp/100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(main@temp+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@temp),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@a+1)
	addwf	(main@a+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@a)
	addwf	(main@a)

	line	72
	
l2034:	
;heart beat.c: 72: b=temp%100;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(main@temp+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@temp),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@b+1)
	addwf	(main@b+1)
	movf	(0+(?___awmod)),w
	clrf	(main@b)
	addwf	(main@b)

	line	73
	
l2036:	
;heart beat.c: 73: c=b/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
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

	line	74
	
l2038:	
;heart beat.c: 74: d=b%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
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

	line	77
	
l2040:	
;heart beat.c: 77: lcd_command(0xc0);
	movlw	(0C0h)
	fcall	_lcd_command
	line	78
	
l2042:	
;heart beat.c: 78: lcd_data(a+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@a),w
	addlw	030h
	fcall	_lcd_data
	line	79
	
l2044:	
;heart beat.c: 79: lcd_data(c+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@c),w
	addlw	030h
	fcall	_lcd_data
	line	80
	
l2046:	
;heart beat.c: 80: lcd_data(d+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@d),w
	addlw	030h
	fcall	_lcd_data
	line	81
	
l585:	
	line	60
	goto	l582
	
l586:	
	line	82
	
l587:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_lcd_init
psect	text179,local,class=CODE,delta=2
global __ptext179
__ptext179:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 43 in file "C:\Users\TECH\Desktop\madhu pic folder\heart beat\heart beat.c"
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
psect	text179
	file	"C:\Users\TECH\Desktop\madhu pic folder\heart beat\heart beat.c"
	line	43
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 7
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	44
	
l2006:	
;heart beat.c: 44: lcd_command(0x38);
	movlw	(038h)
	fcall	_lcd_command
	line	45
;heart beat.c: 45: lcd_command(0x0C);
	movlw	(0Ch)
	fcall	_lcd_command
	line	46
;heart beat.c: 46: lcd_command(0x01);
	movlw	(01h)
	fcall	_lcd_command
	line	47
;heart beat.c: 47: lcd_command(0x06);
	movlw	(06h)
	fcall	_lcd_command
	line	48
	
l579:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_display
psect	text180,local,class=CODE,delta=2
global __ptext180
__ptext180:

;; *************** function _lcd_display *****************
;; Defined at:
;;		line 35 in file "C:\Users\TECH\Desktop\madhu pic folder\heart beat\heart beat.c"
;; Parameters:    Size  Location     Type
;;  m               1    wreg     PTR unsigned char 
;;		 -> STR_1(11), 
;; Auto vars:     Size  Location     Type
;;  m               1    3[COMMON] PTR unsigned char 
;;		 -> STR_1(11), 
;;  i               2    4[COMMON] int 
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
psect	text180
	file	"C:\Users\TECH\Desktop\madhu pic folder\heart beat\heart beat.c"
	line	35
	global	__size_of_lcd_display
	__size_of_lcd_display	equ	__end_of_lcd_display-_lcd_display
	
_lcd_display:	
	opt	stack 7
; Regs used in _lcd_display: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_display@m stored from wreg
	movwf	(lcd_display@m)
	line	36
	
l1998:	
;heart beat.c: 36: for(int i=0;m[i]!=0;i++)
	movlw	low(0)
	movwf	(lcd_display@i)
	movlw	high(0)
	movwf	((lcd_display@i))+1
	goto	l573
	line	37
	
l574:	
	line	38
	
l2000:	
;heart beat.c: 37: {
;heart beat.c: 38: lcd_data(m[i]);
	movf	(lcd_display@i),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_data
	line	36
	
l2002:	
	movlw	low(01h)
	addwf	(lcd_display@i),f
	skipnc
	incf	(lcd_display@i+1),f
	movlw	high(01h)
	addwf	(lcd_display@i+1),f
	
l573:	
	
l2004:	
	movf	(lcd_display@i),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2381
	goto	u2380
u2381:
	goto	l574
u2380:
	
l575:	
	line	40
	
l576:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_display
	__end_of_lcd_display:
;; =============== function _lcd_display ends ============

	signat	_lcd_display,4216
	global	_lcd_data
psect	text181,local,class=CODE,delta=2
global __ptext181
__ptext181:

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 25 in file "C:\Users\TECH\Desktop\madhu pic folder\heart beat\heart beat.c"
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
psect	text181
	file	"C:\Users\TECH\Desktop\madhu pic folder\heart beat\heart beat.c"
	line	25
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 7
; Regs used in _lcd_data: [wreg+status,2+status,0+pclath+cstack]
;lcd_data@data stored from wreg
	movwf	(lcd_data@data)
	line	26
	
l1986:	
;heart beat.c: 26: PORTD=data;
	movf	(lcd_data@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	27
	
l1988:	
;heart beat.c: 27: RB0=1;
	bsf	(48/8),(48)&7
	line	28
	
l1990:	
;heart beat.c: 28: RB1=0;
	bcf	(49/8),(49)&7
	line	29
	
l1992:	
;heart beat.c: 29: RB2=1;
	bsf	(50/8),(50)&7
	line	30
	
l1994:	
;heart beat.c: 30: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	31
	
l1996:	
;heart beat.c: 31: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	32
	
l570:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
;; =============== function _lcd_data ends ============

	signat	_lcd_data,4216
	global	_lcd_command
psect	text182,local,class=CODE,delta=2
global __ptext182
__ptext182:

;; *************** function _lcd_command *****************
;; Defined at:
;;		line 16 in file "C:\Users\TECH\Desktop\madhu pic folder\heart beat\heart beat.c"
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
psect	text182
	file	"C:\Users\TECH\Desktop\madhu pic folder\heart beat\heart beat.c"
	line	16
	global	__size_of_lcd_command
	__size_of_lcd_command	equ	__end_of_lcd_command-_lcd_command
	
_lcd_command:	
	opt	stack 7
; Regs used in _lcd_command: [wreg+status,2+status,0+pclath+cstack]
;lcd_command@com stored from wreg
	movwf	(lcd_command@com)
	line	17
	
l1974:	
;heart beat.c: 17: PORTD=com;
	movf	(lcd_command@com),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	18
	
l1976:	
;heart beat.c: 18: RB0=0;
	bcf	(48/8),(48)&7
	line	19
	
l1978:	
;heart beat.c: 19: RB1=0;
	bcf	(49/8),(49)&7
	line	20
	
l1980:	
;heart beat.c: 20: RB2=1;
	bsf	(50/8),(50)&7
	line	21
	
l1982:	
;heart beat.c: 21: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	22
	
l1984:	
;heart beat.c: 22: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	23
	
l567:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_command
	__end_of_lcd_command:
;; =============== function _lcd_command ends ============

	signat	_lcd_command,4216
	global	___awmod
psect	text183,local,class=CODE,delta=2
global __ptext183
__ptext183:

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
psect	text183
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l1938:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	line	9
	
l1940:	
	btfss	(___awmod@dividend+1),7
	goto	u2291
	goto	u2290
u2291:
	goto	l804
u2290:
	line	10
	
l1942:	
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
	
l804:	
	line	13
	
l1944:	
	btfss	(___awmod@divisor+1),7
	goto	u2301
	goto	u2300
u2301:
	goto	l805
u2300:
	line	14
	
l1946:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	
l805:	
	line	15
	
l1948:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2311
	goto	u2310
u2311:
	goto	l806
u2310:
	line	16
	
l1950:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l807
	
l808:	
	line	18
	
l1952:	
	movlw	01h
	
u2325:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2325
	line	19
	
l1954:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	line	20
	
l807:	
	line	17
	
l1956:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2331
	goto	u2330
u2331:
	goto	l808
u2330:
	
l809:	
	line	21
	
l810:	
	line	22
	
l1958:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2345
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2345:
	skipc
	goto	u2341
	goto	u2340
u2341:
	goto	l811
u2340:
	line	23
	
l1960:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	
l811:	
	line	24
	
l1962:	
	movlw	01h
	
u2355:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2355
	line	25
	
l1964:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2361
	goto	u2360
u2361:
	goto	l810
u2360:
	
l812:	
	line	26
	
l806:	
	line	27
	
l1966:	
	movf	(___awmod@sign),w
	skipz
	goto	u2370
	goto	l813
u2370:
	line	28
	
l1968:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	
l813:	
	line	29
	
l1970:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	
l1972:	
	line	30
	
l814:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text184,local,class=CODE,delta=2
global __ptext184
__ptext184:

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
psect	text184
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l1900:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	line	10
	
l1902:	
	btfss	(___awdiv@divisor+1),7
	goto	u2191
	goto	u2190
u2191:
	goto	l736
u2190:
	line	11
	
l1904:	
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
	
l736:	
	line	14
	
l1906:	
	btfss	(___awdiv@dividend+1),7
	goto	u2201
	goto	u2200
u2201:
	goto	l737
u2200:
	line	15
	
l1908:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l1910:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l737:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2211
	goto	u2210
u2211:
	goto	l738
u2210:
	line	20
	
l1912:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l739
	
l740:	
	line	22
	
l1914:	
	movlw	01h
	
u2225:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2225
	line	23
	
l1916:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	line	24
	
l739:	
	line	21
	
l1918:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l740
u2230:
	
l741:	
	line	25
	
l742:	
	line	26
	
l1920:	
	movlw	01h
	
u2245:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2245
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2255
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2255:
	skipc
	goto	u2251
	goto	u2250
u2251:
	goto	l743
u2250:
	line	28
	
l1922:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l1924:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	30
	
l743:	
	line	31
	
l1926:	
	movlw	01h
	
u2265:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2265
	line	32
	
l1928:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2271
	goto	u2270
u2271:
	goto	l742
u2270:
	
l744:	
	line	33
	
l738:	
	line	34
	
l1930:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2280
	goto	l745
u2280:
	line	35
	
l1932:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	
l745:	
	line	36
	
l1934:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	
l1936:	
	line	37
	
l746:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_delay
psect	text185,local,class=CODE,delta=2
global __ptext185
__ptext185:

;; *************** function _delay *****************
;; Defined at:
;;		line 7 in file "C:\Users\TECH\Desktop\madhu pic folder\heart beat\heart beat.c"
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
psect	text185
	file	"C:\Users\TECH\Desktop\madhu pic folder\heart beat\heart beat.c"
	line	7
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	8
	
l1894:	
;heart beat.c: 8: TMR1H=0xCF;
	movlw	(0CFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(15)	;volatile
	line	9
;heart beat.c: 9: TMR1L=0x2B;
	movlw	(02Bh)
	movwf	(14)	;volatile
	line	10
;heart beat.c: 10: T1CON=0x39;
	movlw	(039h)
	movwf	(16)	;volatile
	line	11
;heart beat.c: 11: while(TMR1IF==0);
	goto	l561
	
l562:	
	
l561:	
	btfss	(96/8),(96)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l562
u2180:
	
l563:	
	line	12
	
l1896:	
;heart beat.c: 12: T1CON=0x38;
	movlw	(038h)
	movwf	(16)	;volatile
	line	13
	
l1898:	
;heart beat.c: 13: TMR1IF=0;
	bcf	(96/8),(96)&7
	line	14
	
l564:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
psect	text186,local,class=CODE,delta=2
global __ptext186
__ptext186:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
