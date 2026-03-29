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
	FNCALL	_main,___lwdiv
	FNCALL	_main,___lwmod
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_main,_lcd_command
	FNCALL	_main,_lcd_data
	FNCALL	_lcd_init,_lcd_command
	FNCALL	_lcd_data,_delay
	FNCALL	_lcd_command,_delay
	FNROOT	_main
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
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
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
	file	"3 adc value.as"
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
	global	??_lcd_command
??_lcd_command:	; 0 bytes @ 0x2
	global	??_lcd_data
??_lcd_data:	; 0 bytes @ 0x2
	global	lcd_command@com
lcd_command@com:	; 1 bytes @ 0x2
	global	lcd_data@data
lcd_data@data:	; 1 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x3
	ds	1
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	ds	1
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
	global	main@g
main@g:	; 2 bytes @ 0xC
	ds	2
	global	main@h
main@h:	; 2 bytes @ 0xE
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x10
	ds	2
	global	main@j
main@j:	; 2 bytes @ 0x12
	ds	2
	global	main@k
main@k:	; 2 bytes @ 0x14
	ds	2
	global	main@l
main@l:	; 2 bytes @ 0x16
	ds	2
	global	main@z
main@z:	; 2 bytes @ 0x18
	ds	2
	global	main@y
main@y:	; 2 bytes @ 0x1A
	ds	2
	global	main@x
main@x:	; 2 bytes @ 0x1C
	ds	2
	global	main@w
main@w:	; 2 bytes @ 0x1E
	ds	2
	global	main@v
main@v:	; 2 bytes @ 0x20
	ds	2
	global	main@u
main@u:	; 2 bytes @ 0x22
	ds	2
	global	main@temp
main@temp:	; 2 bytes @ 0x24
	ds	2
	global	main@temp1
main@temp1:	; 2 bytes @ 0x26
	ds	2
	global	main@temp3
main@temp3:	; 2 bytes @ 0x28
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     11      11
;; BANK0           80     42      42
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
;; (0) _main                                               116   116      0    2151
;;                                              9 COMMON     2     2      0
;;                                              0 BANK0     42    42      0
;;                           _lcd_init
;;                              _delay
;;                            ___lwdiv
;;                            ___lwmod
;;                            ___awdiv
;;                            ___awmod
;;                        _lcd_command
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             0     0      0      44
;;                        _lcd_command
;; ---------------------------------------------------------------------------------
;; (1) _lcd_data                                             1     1      0      44
;;                                              2 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _lcd_command                                          1     1      0      44
;;                                              2 COMMON     1     1      0
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
;;   ___lwdiv
;;   ___lwmod
;;   ___awdiv
;;   ___awmod
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
;;COMMON               E      B       B       1       78.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     2A      2A       5       52.5%
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
;;		line 54 in file "C:\Users\TECH\Desktop\madhu pic folder\serial communication\uart\task\3 adc value\3 adc value.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp3           2   40[BANK0 ] unsigned int 
;;  temp1           2   38[BANK0 ] unsigned int 
;;  temp            2   36[BANK0 ] unsigned int 
;;  u               2   34[BANK0 ] int 
;;  v               2   32[BANK0 ] int 
;;  w               2   30[BANK0 ] int 
;;  x               2   28[BANK0 ] int 
;;  y               2   26[BANK0 ] int 
;;  z               2   24[BANK0 ] int 
;;  l               2   22[BANK0 ] int 
;;  k               2   20[BANK0 ] int 
;;  j               2   18[BANK0 ] int 
;;  i               2   16[BANK0 ] int 
;;  h               2   14[BANK0 ] int 
;;  g               2   12[BANK0 ] int 
;;  f               2   10[BANK0 ] int 
;;  e               2    8[BANK0 ] int 
;;  d               2    6[BANK0 ] int 
;;  c               2    4[BANK0 ] int 
;;  b               2    2[BANK0 ] int 
;;  a               2    0[BANK0 ] int 
;;  U               2    0        int 
;;  V               2    0        int 
;;  W               2    0        int 
;;  X               2    0        int 
;;  Y               2    0        int 
;;  Z               2    0        int 
;;  R               2    0        int 
;;  Q               2    0        int 
;;  P               2    0        int 
;;  O               2    0        int 
;;  N               2    0        int 
;;  M               2    0        int 
;;  L               2    0        int 
;;  K               2    0        int 
;;  J               2    0        int 
;;  I               2    0        int 
;;  H               2    0        int 
;;  G               2    0        int 
;;  F               2    0        int 
;;  E               2    0        int 
;;  D               2    0        int 
;;  C               2    0        int 
;;  B               2    0        int 
;;  A               2    0        int 
;;  temp8           2    0        unsigned int 
;;  temp7           2    0        unsigned int 
;;  temp6           2    0        unsigned int 
;;  temp5           2    0        unsigned int 
;;  temp4           2    0        unsigned int 
;;  temp2           2    0        unsigned int 
;;  r               2    0        int 
;;  q               2    0        int 
;;  p               2    0        int 
;;  o               2    0        int 
;;  n               2    0        int 
;;  m               2    0        int 
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
;;      Locals:         0      42       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2      42       0       0       0
;;Total ram usage:       44 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_init
;;		_delay
;;		___lwdiv
;;		___lwmod
;;		___awdiv
;;		___awmod
;;		_lcd_command
;;		_lcd_data
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\TECH\Desktop\madhu pic folder\serial communication\uart\task\3 adc value\3 adc value.c"
	line	54
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2-btemp+0+pclath+cstack]
	line	58
	
l2492:	
;3 adc value.c: 55: int a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,z,y,x,w,v,u;
;3 adc value.c: 56: unsigned int temp,temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8;
;3 adc value.c: 57: int A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,Z,Y,X,W,V,U;
;3 adc value.c: 58: ADCON1=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	59
;3 adc value.c: 59: ADCON0=0X40;
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	61
	
l2494:	
;3 adc value.c: 61: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	62
	
l2496:	
;3 adc value.c: 62: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	64
	
l2498:	
;3 adc value.c: 64: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	65
	
l2500:	
;3 adc value.c: 65: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	68
;3 adc value.c: 68: TRISA=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	69
	
l2502:	
;3 adc value.c: 69: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	71
	
l2504:	
;3 adc value.c: 71: TXSTA=0X24;
	movlw	(024h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	72
	
l2506:	
;3 adc value.c: 72: RCSTA=0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	73
	
l2508:	
;3 adc value.c: 73: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	75
	
l2510:	
;3 adc value.c: 75: lcd_init();
	fcall	_lcd_init
	line	76
	
l2512:	
;3 adc value.c: 76: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	79
;3 adc value.c: 79: while(1)
	
l586:	
	line	81
	
l2514:	
;3 adc value.c: 80: {
;3 adc value.c: 81: CHS2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(253/8),(253)&7
	line	82
	
l2516:	
;3 adc value.c: 82: CHS1=0;
	bcf	(252/8),(252)&7
	line	83
	
l2518:	
;3 adc value.c: 83: CHS0=0;
	bcf	(251/8),(251)&7
	line	84
	
l2520:	
;3 adc value.c: 84: ADON=1;
	bsf	(248/8),(248)&7
	line	85
	
l2522:	
;3 adc value.c: 85: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	86
	
l2524:	
;3 adc value.c: 86: ADCON0=(ADCON0|0X04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	iorlw	04h
	movwf	(31)	;volatile
	line	87
	
l2526:	
;3 adc value.c: 87: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	88
	
l2528:	
;3 adc value.c: 88: temp=ADRESH<<8;
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
	movwf	(main@temp)
	movf	1+(??_main+0)+0,w
	movwf	(main@temp+1)
	line	89
	
l2530:	
;3 adc value.c: 89: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	90
	
l2532:	
;3 adc value.c: 90: temp=temp+ADRESL;
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
	line	92
	
l2534:	
;3 adc value.c: 92: PORTD=temp;
	movf	(main@temp),w
	movwf	(8)	;volatile
	line	93
	
l2536:	
;3 adc value.c: 93: a=temp/1000;
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
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

	line	94
	
l2538:	
;3 adc value.c: 94: b=temp%1000;
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

	line	95
	
l2540:	
;3 adc value.c: 95: c=b/100;
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

	line	96
	
l2542:	
;3 adc value.c: 96: d=b%100;
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

	line	97
	
l2544:	
;3 adc value.c: 97: e=d/10;
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

	line	98
	
l2546:	
;3 adc value.c: 98: f=d%10;
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

	line	99
	
l2548:	
;3 adc value.c: 99: lcd_command(0x80);
	movlw	(080h)
	fcall	_lcd_command
	line	100
	
l2550:	
;3 adc value.c: 100: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	101
	
l2552:	
;3 adc value.c: 101: lcd_data(a+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@a),w
	addlw	030h
	fcall	_lcd_data
	line	102
	
l2554:	
;3 adc value.c: 102: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	103
	
l2556:	
;3 adc value.c: 103: lcd_data(c+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@c),w
	addlw	030h
	fcall	_lcd_data
	line	104
	
l2558:	
;3 adc value.c: 104: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	105
	
l2560:	
;3 adc value.c: 105: lcd_data(e+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@e),w
	addlw	030h
	fcall	_lcd_data
	line	106
	
l2562:	
;3 adc value.c: 106: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	107
	
l2564:	
;3 adc value.c: 107: lcd_data(f+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@f),w
	addlw	030h
	fcall	_lcd_data
	line	108
	
l2566:	
;3 adc value.c: 108: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	111
	
l2568:	
;3 adc value.c: 111: TXREG='A';
	movlw	(041h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	112
	
l2570:	
;3 adc value.c: 112: TXREG=(a+0x30);
	movf	(main@a),w
	addlw	030h
	movwf	(25)	;volatile
	line	113
	
l2572:	
;3 adc value.c: 113: delay(6000);delay(6000);
	movlw	low(01770h)
	movwf	(?_delay)
	movlw	high(01770h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2574:	
	movlw	low(01770h)
	movwf	(?_delay)
	movlw	high(01770h)
	movwf	((?_delay))+1
	fcall	_delay
	line	114
	
l2576:	
;3 adc value.c: 114: TXREG=(c+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@c),w
	addlw	030h
	movwf	(25)	;volatile
	line	115
	
l2578:	
;3 adc value.c: 115: delay(6000);delay(6000);
	movlw	low(01770h)
	movwf	(?_delay)
	movlw	high(01770h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2580:	
	movlw	low(01770h)
	movwf	(?_delay)
	movlw	high(01770h)
	movwf	((?_delay))+1
	fcall	_delay
	line	116
	
l2582:	
;3 adc value.c: 116: TXREG=(e+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@e),w
	addlw	030h
	movwf	(25)	;volatile
	line	117
	
l2584:	
;3 adc value.c: 117: delay(6000);delay(6000);
	movlw	low(01770h)
	movwf	(?_delay)
	movlw	high(01770h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2586:	
	movlw	low(01770h)
	movwf	(?_delay)
	movlw	high(01770h)
	movwf	((?_delay))+1
	fcall	_delay
	line	118
	
l2588:	
;3 adc value.c: 118: TXREG=(f+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@f),w
	addlw	030h
	movwf	(25)	;volatile
	line	119
	
l2590:	
;3 adc value.c: 119: delay(6000);delay(6000);
	movlw	low(01770h)
	movwf	(?_delay)
	movlw	high(01770h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2592:	
	movlw	low(01770h)
	movwf	(?_delay)
	movlw	high(01770h)
	movwf	((?_delay))+1
	fcall	_delay
	line	124
	
l2594:	
;3 adc value.c: 124: CHS2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(253/8),(253)&7
	line	125
	
l2596:	
;3 adc value.c: 125: CHS1=0;
	bcf	(252/8),(252)&7
	line	126
	
l2598:	
;3 adc value.c: 126: CHS0=1;
	bsf	(251/8),(251)&7
	line	127
	
l2600:	
;3 adc value.c: 127: ADON=1;
	bsf	(248/8),(248)&7
	line	128
	
l2602:	
;3 adc value.c: 128: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	129
	
l2604:	
;3 adc value.c: 129: ADCON0=(ADCON0|0X04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	iorlw	04h
	movwf	(31)	;volatile
	line	130
	
l2606:	
;3 adc value.c: 130: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	131
	
l2608:	
;3 adc value.c: 131: temp1=ADRESH<<8;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movlw	08h
	movwf	btemp+0
u2565:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+0,f
	goto	u2565
	movf	0+(??_main+0)+0,w
	movwf	(main@temp1)
	movf	1+(??_main+0)+0,w
	movwf	(main@temp1+1)
	line	132
	
l2610:	
;3 adc value.c: 132: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	133
	
l2612:	
;3 adc value.c: 133: temp1=temp1+ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@temp1),w
	movwf	(main@temp1)
	movf	(main@temp1+1),w
	skipnc
	incf	(main@temp1+1),w
	movwf	((main@temp1))+1
	line	135
	
l2614:	
;3 adc value.c: 135: PORTD=temp1;
	movf	(main@temp1),w
	movwf	(8)	;volatile
	line	136
	
l2616:	
;3 adc value.c: 136: z=temp1/1000;
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	movf	(main@temp1+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(main@temp1),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@z+1)
	addwf	(main@z+1)
	movf	(0+(?___lwdiv)),w
	clrf	(main@z)
	addwf	(main@z)

	line	137
	
l2618:	
;3 adc value.c: 137: y=temp1%1000;
	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	movf	(main@temp1+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(main@temp1),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@y+1)
	addwf	(main@y+1)
	movf	(0+(?___lwmod)),w
	clrf	(main@y)
	addwf	(main@y)

	line	138
	
l2620:	
;3 adc value.c: 138: x=y/100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(main@y+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@y),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@x+1)
	addwf	(main@x+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@x)
	addwf	(main@x)

	line	139
	
l2622:	
;3 adc value.c: 139: w=y%100;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(main@y+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@y),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@w+1)
	addwf	(main@w+1)
	movf	(0+(?___awmod)),w
	clrf	(main@w)
	addwf	(main@w)

	line	140
	
l2624:	
;3 adc value.c: 140: v=w/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@w+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@w),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@v+1)
	addwf	(main@v+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@v)
	addwf	(main@v)

	line	141
	
l2626:	
;3 adc value.c: 141: u=w%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@w+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@w),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@u+1)
	addwf	(main@u+1)
	movf	(0+(?___awmod)),w
	clrf	(main@u)
	addwf	(main@u)

	line	142
	
l2628:	
;3 adc value.c: 142: lcd_command(0x88);
	movlw	(088h)
	fcall	_lcd_command
	line	143
	
l2630:	
;3 adc value.c: 143: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	144
	
l2632:	
;3 adc value.c: 144: lcd_data(z+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@z),w
	addlw	030h
	fcall	_lcd_data
	line	145
	
l2634:	
;3 adc value.c: 145: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	146
	
l2636:	
;3 adc value.c: 146: lcd_data(x+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@x),w
	addlw	030h
	fcall	_lcd_data
	line	147
	
l2638:	
;3 adc value.c: 147: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	148
	
l2640:	
;3 adc value.c: 148: lcd_data(v+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@v),w
	addlw	030h
	fcall	_lcd_data
	line	149
	
l2642:	
;3 adc value.c: 149: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	150
	
l2644:	
;3 adc value.c: 150: lcd_data(u+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@u),w
	addlw	030h
	fcall	_lcd_data
	line	151
	
l2646:	
;3 adc value.c: 151: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	154
	
l2648:	
;3 adc value.c: 154: TXREG='B';
	movlw	(042h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	155
	
l2650:	
;3 adc value.c: 155: TXREG=(z+0x30);
	movf	(main@z),w
	addlw	030h
	movwf	(25)	;volatile
	line	156
	
l2652:	
;3 adc value.c: 156: delay(6000);delay(6000);
	movlw	low(01770h)
	movwf	(?_delay)
	movlw	high(01770h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2654:	
	movlw	low(01770h)
	movwf	(?_delay)
	movlw	high(01770h)
	movwf	((?_delay))+1
	fcall	_delay
	line	157
	
l2656:	
;3 adc value.c: 157: TXREG=(x+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@x),w
	addlw	030h
	movwf	(25)	;volatile
	line	158
	
l2658:	
;3 adc value.c: 158: delay(6000);delay(6000);
	movlw	low(01770h)
	movwf	(?_delay)
	movlw	high(01770h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2660:	
	movlw	low(01770h)
	movwf	(?_delay)
	movlw	high(01770h)
	movwf	((?_delay))+1
	fcall	_delay
	line	159
	
l2662:	
;3 adc value.c: 159: TXREG=(v+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@v),w
	addlw	030h
	movwf	(25)	;volatile
	line	160
	
l2664:	
;3 adc value.c: 160: delay(6000);delay(6000);
	movlw	low(01770h)
	movwf	(?_delay)
	movlw	high(01770h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2666:	
	movlw	low(01770h)
	movwf	(?_delay)
	movlw	high(01770h)
	movwf	((?_delay))+1
	fcall	_delay
	line	161
	
l2668:	
;3 adc value.c: 161: TXREG=(u+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@u),w
	addlw	030h
	movwf	(25)	;volatile
	line	162
	
l2670:	
;3 adc value.c: 162: delay(6000);delay(6000);
	movlw	low(01770h)
	movwf	(?_delay)
	movlw	high(01770h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2672:	
	movlw	low(01770h)
	movwf	(?_delay)
	movlw	high(01770h)
	movwf	((?_delay))+1
	fcall	_delay
	line	166
	
l2674:	
;3 adc value.c: 166: CHS2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(253/8),(253)&7
	line	167
	
l2676:	
;3 adc value.c: 167: CHS1=1;
	bsf	(252/8),(252)&7
	line	168
	
l2678:	
;3 adc value.c: 168: CHS0=0;
	bcf	(251/8),(251)&7
	line	169
	
l2680:	
;3 adc value.c: 169: ADON=1;
	bsf	(248/8),(248)&7
	line	170
	
l2682:	
;3 adc value.c: 170: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	171
	
l2684:	
;3 adc value.c: 171: ADCON0=(ADCON0|0X04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	iorlw	04h
	movwf	(31)	;volatile
	line	172
	
l2686:	
;3 adc value.c: 172: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	173
	
l2688:	
;3 adc value.c: 173: temp3=ADRESH<<8;
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
	movwf	(main@temp3)
	movf	1+(??_main+0)+0,w
	movwf	(main@temp3+1)
	line	174
	
l2690:	
;3 adc value.c: 174: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	175
	
l2692:	
;3 adc value.c: 175: temp3=temp3+ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@temp3),w
	movwf	(main@temp3)
	movf	(main@temp3+1),w
	skipnc
	incf	(main@temp3+1),w
	movwf	((main@temp3))+1
	line	176
	
l2694:	
;3 adc value.c: 176: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	177
	
l2696:	
;3 adc value.c: 177: PORTD=temp3;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@temp3),w
	movwf	(8)	;volatile
	line	178
	
l2698:	
;3 adc value.c: 178: g=temp3/1000;
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	movf	(main@temp3+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(main@temp3),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@g+1)
	addwf	(main@g+1)
	movf	(0+(?___lwdiv)),w
	clrf	(main@g)
	addwf	(main@g)

	line	179
	
l2700:	
;3 adc value.c: 179: h=temp3%1000;
	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	movf	(main@temp3+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(main@temp3),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@h+1)
	addwf	(main@h+1)
	movf	(0+(?___lwmod)),w
	clrf	(main@h)
	addwf	(main@h)

	line	180
	
l2702:	
;3 adc value.c: 180: i=h/100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(main@h+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@h),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i+1)
	addwf	(main@i+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@i)
	addwf	(main@i)

	line	181
	
l2704:	
;3 adc value.c: 181: j=h%100;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(main@h+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@h),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@j+1)
	addwf	(main@j+1)
	movf	(0+(?___awmod)),w
	clrf	(main@j)
	addwf	(main@j)

	line	182
	
l2706:	
;3 adc value.c: 182: k=j/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@j+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@j),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@k+1)
	addwf	(main@k+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@k)
	addwf	(main@k)

	line	183
	
l2708:	
;3 adc value.c: 183: l=j%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@j+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@j),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@l+1)
	addwf	(main@l+1)
	movf	(0+(?___awmod)),w
	clrf	(main@l)
	addwf	(main@l)

	line	184
	
l2710:	
;3 adc value.c: 184: lcd_command(0xC0);
	movlw	(0C0h)
	fcall	_lcd_command
	line	185
	
l2712:	
;3 adc value.c: 185: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	186
	
l2714:	
;3 adc value.c: 186: lcd_data(g+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@g),w
	addlw	030h
	fcall	_lcd_data
	line	187
	
l2716:	
;3 adc value.c: 187: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	188
	
l2718:	
;3 adc value.c: 188: lcd_data(i+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	030h
	fcall	_lcd_data
	line	189
	
l2720:	
;3 adc value.c: 189: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	190
	
l2722:	
;3 adc value.c: 190: lcd_data(k+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@k),w
	addlw	030h
	fcall	_lcd_data
	line	191
	
l2724:	
;3 adc value.c: 191: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	192
	
l2726:	
;3 adc value.c: 192: lcd_data(l+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@l),w
	addlw	030h
	fcall	_lcd_data
	line	193
	
l2728:	
;3 adc value.c: 193: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	196
	
l2730:	
;3 adc value.c: 196: TXREG='C';
	movlw	(043h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	197
	
l2732:	
;3 adc value.c: 197: TXREG=(g+0x30);
	movf	(main@g),w
	addlw	030h
	movwf	(25)	;volatile
	line	198
	
l2734:	
;3 adc value.c: 198: delay(6000);delay(6000);
	movlw	low(01770h)
	movwf	(?_delay)
	movlw	high(01770h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2736:	
	movlw	low(01770h)
	movwf	(?_delay)
	movlw	high(01770h)
	movwf	((?_delay))+1
	fcall	_delay
	line	199
	
l2738:	
;3 adc value.c: 199: TXREG=(i+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	030h
	movwf	(25)	;volatile
	line	200
	
l2740:	
;3 adc value.c: 200: delay(6000);delay(6000);
	movlw	low(01770h)
	movwf	(?_delay)
	movlw	high(01770h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2742:	
	movlw	low(01770h)
	movwf	(?_delay)
	movlw	high(01770h)
	movwf	((?_delay))+1
	fcall	_delay
	line	201
	
l2744:	
;3 adc value.c: 201: TXREG=(k+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@k),w
	addlw	030h
	movwf	(25)	;volatile
	line	202
	
l2746:	
;3 adc value.c: 202: delay(6000);delay(6000);
	movlw	low(01770h)
	movwf	(?_delay)
	movlw	high(01770h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2748:	
	movlw	low(01770h)
	movwf	(?_delay)
	movlw	high(01770h)
	movwf	((?_delay))+1
	fcall	_delay
	line	203
	
l2750:	
;3 adc value.c: 203: TXREG=(l+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@l),w
	addlw	030h
	movwf	(25)	;volatile
	line	204
	
l2752:	
;3 adc value.c: 204: delay(6000);delay(6000);
	movlw	low(01770h)
	movwf	(?_delay)
	movlw	high(01770h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2754:	
	movlw	low(01770h)
	movwf	(?_delay)
	movlw	high(01770h)
	movwf	((?_delay))+1
	fcall	_delay
	line	207
	
l587:	
	line	79
	goto	l586
	
l588:	
	line	208
	
l589:	
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
;;		line 20 in file "C:\Users\TECH\Desktop\madhu pic folder\serial communication\uart\task\3 adc value\3 adc value.c"
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
psect	text185
	file	"C:\Users\TECH\Desktop\madhu pic folder\serial communication\uart\task\3 adc value\3 adc value.c"
	line	20
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 7
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	21
	
l2490:	
;3 adc value.c: 21: lcd_command(0x38);
	movlw	(038h)
	fcall	_lcd_command
	line	22
;3 adc value.c: 22: lcd_command(0x06);
	movlw	(06h)
	fcall	_lcd_command
	line	23
;3 adc value.c: 23: lcd_command(0x0c);
	movlw	(0Ch)
	fcall	_lcd_command
	line	24
;3 adc value.c: 24: lcd_command(0x01);
	movlw	(01h)
	fcall	_lcd_command
	line	25
	
l568:	
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
;;		line 27 in file "C:\Users\TECH\Desktop\madhu pic folder\serial communication\uart\task\3 adc value\3 adc value.c"
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
;;		_lcd_display
;; This function uses a non-reentrant model
;;
psect	text186
	file	"C:\Users\TECH\Desktop\madhu pic folder\serial communication\uart\task\3 adc value\3 adc value.c"
	line	27
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 7
; Regs used in _lcd_data: [wreg+status,2+status,0+pclath+cstack]
;lcd_data@data stored from wreg
	movwf	(lcd_data@data)
	line	28
	
l2478:	
;3 adc value.c: 28: PORTD=data;
	movf	(lcd_data@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	29
	
l2480:	
;3 adc value.c: 29: RC0=1;
	bsf	(56/8),(56)&7
	line	30
	
l2482:	
;3 adc value.c: 30: RC1=0;
	bcf	(57/8),(57)&7
	line	31
	
l2484:	
;3 adc value.c: 31: RC2=1;
	bsf	(58/8),(58)&7
	line	32
	
l2486:	
;3 adc value.c: 32: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	33
	
l2488:	
;3 adc value.c: 33: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	34
	
l571:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
;; =============== function _lcd_data ends ============

	signat	_lcd_data,4216
	global	_lcd_command
psect	text187,local,class=CODE,delta=2
global __ptext187
__ptext187:

;; *************** function _lcd_command *****************
;; Defined at:
;;		line 11 in file "C:\Users\TECH\Desktop\madhu pic folder\serial communication\uart\task\3 adc value\3 adc value.c"
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
psect	text187
	file	"C:\Users\TECH\Desktop\madhu pic folder\serial communication\uart\task\3 adc value\3 adc value.c"
	line	11
	global	__size_of_lcd_command
	__size_of_lcd_command	equ	__end_of_lcd_command-_lcd_command
	
_lcd_command:	
	opt	stack 7
; Regs used in _lcd_command: [wreg+status,2+status,0+pclath+cstack]
;lcd_command@com stored from wreg
	movwf	(lcd_command@com)
	line	12
	
l2466:	
;3 adc value.c: 12: PORTD=com;
	movf	(lcd_command@com),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	13
	
l2468:	
;3 adc value.c: 13: RC0=0;
	bcf	(56/8),(56)&7
	line	14
	
l2470:	
;3 adc value.c: 14: RC1=0;
	bcf	(57/8),(57)&7
	line	15
	
l2472:	
;3 adc value.c: 15: RC2=1;
	bsf	(58/8),(58)&7
	line	16
	
l2474:	
;3 adc value.c: 16: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	17
	
l2476:	
;3 adc value.c: 17: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	18
	
l565:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_command
	__end_of_lcd_command:
;; =============== function _lcd_command ends ============

	signat	_lcd_command,4216
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
	
l2430:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	line	9
	
l2432:	
	btfss	(___awmod@dividend+1),7
	goto	u2461
	goto	u2460
u2461:
	goto	l806
u2460:
	line	10
	
l2434:	
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
	
l806:	
	line	13
	
l2436:	
	btfss	(___awmod@divisor+1),7
	goto	u2471
	goto	u2470
u2471:
	goto	l807
u2470:
	line	14
	
l2438:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	
l807:	
	line	15
	
l2440:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2481
	goto	u2480
u2481:
	goto	l808
u2480:
	line	16
	
l2442:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l809
	
l810:	
	line	18
	
l2444:	
	movlw	01h
	
u2495:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2495
	line	19
	
l2446:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	line	20
	
l809:	
	line	17
	
l2448:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2501
	goto	u2500
u2501:
	goto	l810
u2500:
	
l811:	
	line	21
	
l812:	
	line	22
	
l2450:	
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
	goto	l813
u2510:
	line	23
	
l2452:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	
l813:	
	line	24
	
l2454:	
	movlw	01h
	
u2525:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2525
	line	25
	
l2456:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2531
	goto	u2530
u2531:
	goto	l812
u2530:
	
l814:	
	line	26
	
l808:	
	line	27
	
l2458:	
	movf	(___awmod@sign),w
	skipz
	goto	u2540
	goto	l815
u2540:
	line	28
	
l2460:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	
l815:	
	line	29
	
l2462:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	
l2464:	
	line	30
	
l816:	
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
	
l2392:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	line	10
	
l2394:	
	btfss	(___awdiv@divisor+1),7
	goto	u2361
	goto	u2360
u2361:
	goto	l738
u2360:
	line	11
	
l2396:	
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
	
l738:	
	line	14
	
l2398:	
	btfss	(___awdiv@dividend+1),7
	goto	u2371
	goto	u2370
u2371:
	goto	l739
u2370:
	line	15
	
l2400:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2402:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l739:	
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
	goto	l740
u2380:
	line	20
	
l2404:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l741
	
l742:	
	line	22
	
l2406:	
	movlw	01h
	
u2395:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2395
	line	23
	
l2408:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	line	24
	
l741:	
	line	21
	
l2410:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2401
	goto	u2400
u2401:
	goto	l742
u2400:
	
l743:	
	line	25
	
l744:	
	line	26
	
l2412:	
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
	goto	l745
u2420:
	line	28
	
l2414:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2416:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	30
	
l745:	
	line	31
	
l2418:	
	movlw	01h
	
u2435:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2435
	line	32
	
l2420:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2441
	goto	u2440
u2441:
	goto	l744
u2440:
	
l746:	
	line	33
	
l740:	
	line	34
	
l2422:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2450
	goto	l747
u2450:
	line	35
	
l2424:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	
l747:	
	line	36
	
l2426:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	
l2428:	
	line	37
	
l748:	
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
	
l2370:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2301
	goto	u2300
u2301:
	goto	l614
u2300:
	line	9
	
l2372:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l615
	
l616:	
	line	11
	
l2374:	
	movlw	01h
	
u2315:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2315
	line	12
	
l2376:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	line	13
	
l615:	
	line	10
	
l2378:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l616
u2320:
	
l617:	
	line	14
	
l618:	
	line	15
	
l2380:	
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
	goto	l619
u2330:
	line	16
	
l2382:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	
l619:	
	line	17
	
l2384:	
	movlw	01h
	
u2345:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2345
	line	18
	
l2386:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2351
	goto	u2350
u2351:
	goto	l618
u2350:
	
l620:	
	line	19
	
l614:	
	line	20
	
l2388:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	
l2390:	
	line	21
	
l621:	
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
	
l2346:	
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
	goto	l604
u2230:
	line	11
	
l2348:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l605
	
l606:	
	line	13
	
l2350:	
	movlw	01h
	
u2245:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2245
	line	14
	
l2352:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	line	15
	
l605:	
	line	12
	
l2354:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l606
u2250:
	
l607:	
	line	16
	
l608:	
	line	17
	
l2356:	
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
	goto	l609
u2270:
	line	19
	
l2358:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l2360:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	21
	
l609:	
	line	22
	
l2362:	
	movlw	01h
	
u2285:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2285
	line	23
	
l2364:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2291
	goto	u2290
u2291:
	goto	l608
u2290:
	
l610:	
	line	24
	
l604:	
	line	25
	
l2366:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	
l2368:	
	line	26
	
l611:	
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
;;		line 7 in file "C:\Users\TECH\Desktop\madhu pic folder\serial communication\uart\task\3 adc value\3 adc value.c"
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
;;		_serial
;; This function uses a non-reentrant model
;;
psect	text192
	file	"C:\Users\TECH\Desktop\madhu pic folder\serial communication\uart\task\3 adc value\3 adc value.c"
	line	7
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	8
	
l2322:	
;3 adc value.c: 8: while(x--);
	goto	l559
	
l560:	
	
l559:	
	
l2324:	
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
	goto	l560
u2200:
	
l561:	
	line	9
	
l562:	
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
