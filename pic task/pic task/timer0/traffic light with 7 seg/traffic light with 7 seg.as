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
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_main,_delay3
	FNCALL	_main,_delay2
	FNCALL	_main,_delay1
	FNCALL	_delay3,_delay
	FNCALL	_delay2,_delay
	FNCALL	_delay1,_delay
	FNROOT	_main
	global	_seg
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\TECH\Desktop\madhu pic folder\timer0\traffic light with 7 seg\traffic light with 7 seg.c"
	line	4

;initializer for _seg
	retlw	03Fh
	retlw	0

	retlw	06h
	retlw	0

	retlw	05Bh
	retlw	0

	retlw	04Fh
	retlw	0

	retlw	066h
	retlw	0

	retlw	06Dh
	retlw	0

	retlw	07Dh
	retlw	0

	retlw	07h
	retlw	0

	retlw	07Fh
	retlw	0

	retlw	06Fh
	retlw	0

	global	_b
	global	_i
	global	_a
	global	_j
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
_j:
       ds      2

	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_TMR0
_TMR0	set	1
	global	_RC6
_RC6	set	62
	global	_RC7
_RC7	set	63
	global	_T0IF
_T0IF	set	90
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_PS0
_PS0	set	1032
	global	_PS1
_PS1	set	1033
	global	_PS2
_PS2	set	1034
	global	_PSA
_PSA	set	1035
	global	_T0CS
_T0CS	set	1037
	global	_T0SE
_T0SE	set	1036
	file	"traffic light with 7 seg.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_a:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_b:
       ds      2

_i:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\TECH\Desktop\madhu pic folder\timer0\traffic light with 7 seg\traffic light with 7 seg.c"
_seg:
       ds      20

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+20)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
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
	global	??_delay
??_delay:	; 0 bytes @ 0x0
	global	?_delay1
?_delay1:	; 0 bytes @ 0x0
	global	??_delay1
??_delay1:	; 0 bytes @ 0x0
	global	?_delay2
?_delay2:	; 0 bytes @ 0x0
	global	??_delay2
??_delay2:	; 0 bytes @ 0x0
	global	?_delay3
?_delay3:	; 0 bytes @ 0x0
	global	??_delay3
??_delay3:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	delay1@i
delay1@i:	; 2 bytes @ 0x0
	global	delay2@i
delay2@i:	; 2 bytes @ 0x0
	global	delay3@i
delay3@i:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	2
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
	ds	1
;;Data sizes: Strings 0, constant 0, data 20, bss 6, persistent 2 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      14
;; BANK0           80      0      24
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___awdiv
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
;; (0) _main                                                 1     1      0     734
;;                                              9 COMMON     1     1      0
;;                            ___awdiv
;;                            ___awmod
;;                             _delay3
;;                             _delay2
;;                             _delay1
;; ---------------------------------------------------------------------------------
;; (1) _delay3                                               2     2      0      46
;;                                              0 COMMON     2     2      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _delay2                                               2     2      0      46
;;                                              0 COMMON     2     2      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _delay1                                               2     2      0      46
;;                                              0 COMMON     2     2      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   ___awdiv
;;   ___awmod
;;   _delay3
;;     _delay
;;   _delay2
;;     _delay
;;   _delay1
;;     _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      28      12        0.0%
;;ABS                  0      0      26       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50      0      18       5       30.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      A       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 48 in file "C:\Users\TECH\Desktop\madhu pic folder\timer0\traffic light with 7 seg\traffic light with 7 seg.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_delay3
;;		_delay2
;;		_delay1
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\TECH\Desktop\madhu pic folder\timer0\traffic light with 7 seg\traffic light with 7 seg.c"
	line	48
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
	line	50
	
l1996:	
;traffic light with 7 seg.c: 50: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	51
;traffic light with 7 seg.c: 51: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	52
;traffic light with 7 seg.c: 52: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	53
;traffic light with 7 seg.c: 53: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	54
;traffic light with 7 seg.c: 54: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	55
;traffic light with 7 seg.c: 55: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	56
;traffic light with 7 seg.c: 56: while(1)
	
l590:	
	line	59
	
l1998:	
;traffic light with 7 seg.c: 57: {
;traffic light with 7 seg.c: 59: for(j=30;j>=0;j--)
	movlw	low(01Eh)
	movwf	(_j)
	movlw	high(01Eh)
	movwf	((_j))+1
	
l2000:	
	btfss	(_j+1),7
	goto	u2491
	goto	u2490
u2491:
	goto	l591
u2490:
	
l2002:	
	goto	l592
	line	60
	
l591:	
	line	61
	
l2004:	
;traffic light with 7 seg.c: 60: {
;traffic light with 7 seg.c: 61: a=j/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_j+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_j),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	clrf	(_a+1)
	addwf	(_a+1)
	movf	(0+(?___awdiv)),w
	clrf	(_a)
	addwf	(_a)

	line	62
;traffic light with 7 seg.c: 62: b=j%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(_j+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_j),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b+1)
	addwf	(_b+1)
	movf	(0+(?___awmod)),w
	clrf	(_b)
	addwf	(_b)

	line	63
	
l2006:	
;traffic light with 7 seg.c: 63: RC6=0;
	bcf	(62/8),(62)&7
	line	64
	
l2008:	
;traffic light with 7 seg.c: 64: RC7=1;
	bsf	(63/8),(63)&7
	line	65
	
l2010:	
;traffic light with 7 seg.c: 65: PORTD=seg[a];
	movf	(_a),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	line	66
	
l2012:	
;traffic light with 7 seg.c: 66: delay3();
	fcall	_delay3
	line	68
	
l2014:	
;traffic light with 7 seg.c: 68: RC6=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(62/8),(62)&7
	line	69
	
l2016:	
;traffic light with 7 seg.c: 69: RC7=0;
	bcf	(63/8),(63)&7
	line	70
	
l2018:	
;traffic light with 7 seg.c: 70: PORTD=seg[b];
	movf	(_b),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	line	71
	
l2020:	
;traffic light with 7 seg.c: 71: delay3();
	fcall	_delay3
	line	59
	
l2022:	
	movlw	low(-1)
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(-1)
	addwf	(_j+1),f
	
l2024:	
	btfss	(_j+1),7
	goto	u2501
	goto	u2500
u2501:
	goto	l591
u2500:
	
l592:	
	line	75
	
l2026:	
;traffic light with 7 seg.c: 72: }
;traffic light with 7 seg.c: 75: PORTB=0X14;
	movlw	(014h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	76
;traffic light with 7 seg.c: 76: PORTC=0X01;
	movlw	(01h)
	movwf	(7)	;volatile
	line	77
	
l2028:	
;traffic light with 7 seg.c: 77: delay2();
	fcall	_delay2
	line	79
	
l2030:	
;traffic light with 7 seg.c: 79: PORTB=0X36;
	movlw	(036h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	80
	
l2032:	
;traffic light with 7 seg.c: 80: PORTC=0X01;
	movlw	(01h)
	movwf	(7)	;volatile
	line	81
	
l2034:	
;traffic light with 7 seg.c: 81: delay1();
	fcall	_delay1
	line	84
;traffic light with 7 seg.c: 84: PORTB=0X41;
	movlw	(041h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	85
;traffic light with 7 seg.c: 85: PORTC=0X01;
	movlw	(01h)
	movwf	(7)	;volatile
	line	86
	
l2036:	
;traffic light with 7 seg.c: 86: delay2();
	fcall	_delay2
	line	88
	
l2038:	
;traffic light with 7 seg.c: 88: PORTB=0X61;
	movlw	(061h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	89
	
l2040:	
;traffic light with 7 seg.c: 89: PORTC=0X03;
	movlw	(03h)
	movwf	(7)	;volatile
	line	90
	
l2042:	
;traffic light with 7 seg.c: 90: delay1();
	fcall	_delay1
	line	92
;traffic light with 7 seg.c: 92: PORTB=0X11;
	movlw	(011h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	93
;traffic light with 7 seg.c: 93: PORTC=0X04;
	movlw	(04h)
	movwf	(7)	;volatile
	line	94
	
l2044:	
;traffic light with 7 seg.c: 94: delay2();
	fcall	_delay2
	line	96
	
l2046:	
;traffic light with 7 seg.c: 96: PORTB=0X13;
	movlw	(013h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	97
	
l2048:	
;traffic light with 7 seg.c: 97: PORTC=0X06;
	movlw	(06h)
	movwf	(7)	;volatile
	line	98
	
l2050:	
;traffic light with 7 seg.c: 98: delay1();
	fcall	_delay1
	line	102
	
l593:	
	line	56
	goto	l590
	
l594:	
	line	103
	
l595:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_delay3
psect	text143,local,class=CODE,delta=2
global __ptext143
__ptext143:

;; *************** function _delay3 *****************
;; Defined at:
;;		line 40 in file "C:\Users\TECH\Desktop\madhu pic folder\timer0\traffic light with 7 seg\traffic light with 7 seg.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0[COMMON] int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text143
	file	"C:\Users\TECH\Desktop\madhu pic folder\timer0\traffic light with 7 seg\traffic light with 7 seg.c"
	line	40
	global	__size_of_delay3
	__size_of_delay3	equ	__end_of_delay3-_delay3
	
_delay3:	
	opt	stack 7
; Regs used in _delay3: [wreg+status,2-btemp+0+pclath+cstack]
	line	41
	
l1984:	
;traffic light with 7 seg.c: 41: for(int i=0;i<=10;i++)
	movlw	low(0)
	movwf	(delay3@i)
	movlw	high(0)
	movwf	((delay3@i))+1
	
l1986:	
	movf	(delay3@i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0Bh))^80h
	subwf	btemp+0,w
	skipz
	goto	u2475
	movlw	low(0Bh)
	subwf	(delay3@i),w
u2475:

	skipc
	goto	u2471
	goto	u2470
u2471:
	goto	l585
u2470:
	
l1988:	
	goto	l586
	line	42
	
l585:	
	line	43
	
l1990:	
;traffic light with 7 seg.c: 42: {
;traffic light with 7 seg.c: 43: delay();
	fcall	_delay
	line	41
	
l1992:	
	movlw	low(01h)
	addwf	(delay3@i),f
	skipnc
	incf	(delay3@i+1),f
	movlw	high(01h)
	addwf	(delay3@i+1),f
	
l1994:	
	movf	(delay3@i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0Bh))^80h
	subwf	btemp+0,w
	skipz
	goto	u2485
	movlw	low(0Bh)
	subwf	(delay3@i),w
u2485:

	skipc
	goto	u2481
	goto	u2480
u2481:
	goto	l585
u2480:
	
l586:	
	line	45
	
l587:	
	return
	opt stack 0
GLOBAL	__end_of_delay3
	__end_of_delay3:
;; =============== function _delay3 ends ============

	signat	_delay3,88
	global	_delay2
psect	text144,local,class=CODE,delta=2
global __ptext144
__ptext144:

;; *************** function _delay2 *****************
;; Defined at:
;;		line 32 in file "C:\Users\TECH\Desktop\madhu pic folder\timer0\traffic light with 7 seg\traffic light with 7 seg.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0[COMMON] int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text144
	file	"C:\Users\TECH\Desktop\madhu pic folder\timer0\traffic light with 7 seg\traffic light with 7 seg.c"
	line	32
	global	__size_of_delay2
	__size_of_delay2	equ	__end_of_delay2-_delay2
	
_delay2:	
	opt	stack 7
; Regs used in _delay2: [wreg+status,2-btemp+0+pclath+cstack]
	line	33
	
l1972:	
;traffic light with 7 seg.c: 33: for(int i=0;i<=500;i++)
	movlw	low(0)
	movwf	(delay2@i)
	movlw	high(0)
	movwf	((delay2@i))+1
	
l1974:	
	movf	(delay2@i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(01F5h))^80h
	subwf	btemp+0,w
	skipz
	goto	u2455
	movlw	low(01F5h)
	subwf	(delay2@i),w
u2455:

	skipc
	goto	u2451
	goto	u2450
u2451:
	goto	l580
u2450:
	
l1976:	
	goto	l581
	line	34
	
l580:	
	line	35
	
l1978:	
;traffic light with 7 seg.c: 34: {
;traffic light with 7 seg.c: 35: delay();
	fcall	_delay
	line	33
	
l1980:	
	movlw	low(01h)
	addwf	(delay2@i),f
	skipnc
	incf	(delay2@i+1),f
	movlw	high(01h)
	addwf	(delay2@i+1),f
	
l1982:	
	movf	(delay2@i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(01F5h))^80h
	subwf	btemp+0,w
	skipz
	goto	u2465
	movlw	low(01F5h)
	subwf	(delay2@i),w
u2465:

	skipc
	goto	u2461
	goto	u2460
u2461:
	goto	l580
u2460:
	
l581:	
	line	37
	
l582:	
	return
	opt stack 0
GLOBAL	__end_of_delay2
	__end_of_delay2:
;; =============== function _delay2 ends ============

	signat	_delay2,88
	global	_delay1
psect	text145,local,class=CODE,delta=2
global __ptext145
__ptext145:

;; *************** function _delay1 *****************
;; Defined at:
;;		line 24 in file "C:\Users\TECH\Desktop\madhu pic folder\timer0\traffic light with 7 seg\traffic light with 7 seg.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0[COMMON] int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text145
	file	"C:\Users\TECH\Desktop\madhu pic folder\timer0\traffic light with 7 seg\traffic light with 7 seg.c"
	line	24
	global	__size_of_delay1
	__size_of_delay1	equ	__end_of_delay1-_delay1
	
_delay1:	
	opt	stack 7
; Regs used in _delay1: [wreg+status,2-btemp+0+pclath+cstack]
	line	25
	
l1960:	
;traffic light with 7 seg.c: 25: for(int i=0;i<=100;i++)
	movlw	low(0)
	movwf	(delay1@i)
	movlw	high(0)
	movwf	((delay1@i))+1
	
l1962:	
	movf	(delay1@i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(065h))^80h
	subwf	btemp+0,w
	skipz
	goto	u2435
	movlw	low(065h)
	subwf	(delay1@i),w
u2435:

	skipc
	goto	u2431
	goto	u2430
u2431:
	goto	l575
u2430:
	
l1964:	
	goto	l576
	line	26
	
l575:	
	line	27
	
l1966:	
;traffic light with 7 seg.c: 26: {
;traffic light with 7 seg.c: 27: delay();
	fcall	_delay
	line	25
	
l1968:	
	movlw	low(01h)
	addwf	(delay1@i),f
	skipnc
	incf	(delay1@i+1),f
	movlw	high(01h)
	addwf	(delay1@i+1),f
	
l1970:	
	movf	(delay1@i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(065h))^80h
	subwf	btemp+0,w
	skipz
	goto	u2445
	movlw	low(065h)
	subwf	(delay1@i),w
u2445:

	skipc
	goto	u2441
	goto	u2440
u2441:
	goto	l575
u2440:
	
l576:	
	line	29
	
l577:	
	return
	opt stack 0
GLOBAL	__end_of_delay1
	__end_of_delay1:
;; =============== function _delay1 ends ============

	signat	_delay1,88
	global	___awmod
psect	text146,local,class=CODE,delta=2
global __ptext146
__ptext146:

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
psect	text146
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l1924:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	line	9
	
l1926:	
	btfss	(___awmod@dividend+1),7
	goto	u2341
	goto	u2340
u2341:
	goto	l812
u2340:
	line	10
	
l1928:	
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
	
l812:	
	line	13
	
l1930:	
	btfss	(___awmod@divisor+1),7
	goto	u2351
	goto	u2350
u2351:
	goto	l813
u2350:
	line	14
	
l1932:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	
l813:	
	line	15
	
l1934:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2361
	goto	u2360
u2361:
	goto	l814
u2360:
	line	16
	
l1936:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l815
	
l816:	
	line	18
	
l1938:	
	movlw	01h
	
u2375:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2375
	line	19
	
l1940:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	line	20
	
l815:	
	line	17
	
l1942:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2381
	goto	u2380
u2381:
	goto	l816
u2380:
	
l817:	
	line	21
	
l818:	
	line	22
	
l1944:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2395
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2395:
	skipc
	goto	u2391
	goto	u2390
u2391:
	goto	l819
u2390:
	line	23
	
l1946:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	
l819:	
	line	24
	
l1948:	
	movlw	01h
	
u2405:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2405
	line	25
	
l1950:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2411
	goto	u2410
u2411:
	goto	l818
u2410:
	
l820:	
	line	26
	
l814:	
	line	27
	
l1952:	
	movf	(___awmod@sign),w
	skipz
	goto	u2420
	goto	l821
u2420:
	line	28
	
l1954:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	
l821:	
	line	29
	
l1956:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	
l1958:	
	line	30
	
l822:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text147,local,class=CODE,delta=2
global __ptext147
__ptext147:

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
psect	text147
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l1886:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	line	10
	
l1888:	
	btfss	(___awdiv@divisor+1),7
	goto	u2241
	goto	u2240
u2241:
	goto	l744
u2240:
	line	11
	
l1890:	
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
	
l744:	
	line	14
	
l1892:	
	btfss	(___awdiv@dividend+1),7
	goto	u2251
	goto	u2250
u2251:
	goto	l745
u2250:
	line	15
	
l1894:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l1896:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l745:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2261
	goto	u2260
u2261:
	goto	l746
u2260:
	line	20
	
l1898:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l747
	
l748:	
	line	22
	
l1900:	
	movlw	01h
	
u2275:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2275
	line	23
	
l1902:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	line	24
	
l747:	
	line	21
	
l1904:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l748
u2280:
	
l749:	
	line	25
	
l750:	
	line	26
	
l1906:	
	movlw	01h
	
u2295:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2295
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2305
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2305:
	skipc
	goto	u2301
	goto	u2300
u2301:
	goto	l751
u2300:
	line	28
	
l1908:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l1910:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	30
	
l751:	
	line	31
	
l1912:	
	movlw	01h
	
u2315:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2315
	line	32
	
l1914:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2321
	goto	u2320
u2321:
	goto	l750
u2320:
	
l752:	
	line	33
	
l746:	
	line	34
	
l1916:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2330
	goto	l753
u2330:
	line	35
	
l1918:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	
l753:	
	line	36
	
l1920:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	
l1922:	
	line	37
	
l754:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_delay
psect	text148,local,class=CODE,delta=2
global __ptext148
__ptext148:

;; *************** function _delay *****************
;; Defined at:
;;		line 11 in file "C:\Users\TECH\Desktop\madhu pic folder\timer0\traffic light with 7 seg\traffic light with 7 seg.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
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
;;		_delay1
;;		_delay2
;;		_delay3
;; This function uses a non-reentrant model
;;
psect	text148
	file	"C:\Users\TECH\Desktop\madhu pic folder\timer0\traffic light with 7 seg\traffic light with 7 seg.c"
	line	11
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg+status,2]
	line	12
	
l1880:	
;traffic light with 7 seg.c: 12: T0CS=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1037/8)^080h,(1037)&7
	line	13
;traffic light with 7 seg.c: 13: T0SE=0;
	bcf	(1036/8)^080h,(1036)&7
	line	14
;traffic light with 7 seg.c: 14: PSA=0;
	bcf	(1035/8)^080h,(1035)&7
	line	15
;traffic light with 7 seg.c: 15: PS0=1;
	bsf	(1032/8)^080h,(1032)&7
	line	16
;traffic light with 7 seg.c: 16: PS1=1;
	bsf	(1033/8)^080h,(1033)&7
	line	17
;traffic light with 7 seg.c: 17: PS2=1;
	bsf	(1034/8)^080h,(1034)&7
	line	18
	
l1882:	
;traffic light with 7 seg.c: 18: TMR0=60;
	movlw	(03Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	19
;traffic light with 7 seg.c: 19: while(T0IF==0);
	goto	l569
	
l570:	
	
l569:	
	btfss	(90/8),(90)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l570
u2230:
	
l571:	
	line	20
;traffic light with 7 seg.c: 20: T0IF=0;
	bcf	(90/8),(90)&7
	line	21
	
l1884:	
;traffic light with 7 seg.c: 21: TMR0=0;
	clrf	(1)	;volatile
	line	22
	
l572:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
psect	text149,local,class=CODE,delta=2
global __ptext149
__ptext149:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
