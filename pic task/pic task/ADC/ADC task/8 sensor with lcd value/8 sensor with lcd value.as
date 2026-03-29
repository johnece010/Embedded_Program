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
# 2 "C:\Users\TECH\Desktop\madhu pic folder\ADC\ADC task\8 sensor with lcd value\8 sensor with lcd value.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "C:\Users\TECH\Desktop\madhu pic folder\ADC\ADC task\8 sensor with lcd value\8 sensor with lcd value.c"
	dw 0X3f72 ;#
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
psect	text180,local,class=CODE,delta=2
global __ptext180
__ptext180:
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
	global	_TRISA
_TRISA	set	133
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	file	"8 sensor with lcd value.as"
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
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	main@D
main@D:	; 2 bytes @ 0x0
	ds	2
	global	main@H
main@H:	; 2 bytes @ 0x2
	ds	2
	global	main@J
main@J:	; 2 bytes @ 0x4
	ds	2
	global	main@N
main@N:	; 2 bytes @ 0x6
	ds	2
	global	main@P
main@P:	; 2 bytes @ 0x8
	ds	2
	global	main@Y
main@Y:	; 2 bytes @ 0xA
	ds	2
	global	main@W
main@W:	; 2 bytes @ 0xC
	ds	2
	global	main@temp
main@temp:	; 2 bytes @ 0xE
	ds	2
	global	main@temp1
main@temp1:	; 2 bytes @ 0x10
	ds	2
	global	main@temp3
main@temp3:	; 2 bytes @ 0x12
	ds	2
	global	main@temp4
main@temp4:	; 2 bytes @ 0x14
	ds	2
	global	main@temp5
main@temp5:	; 2 bytes @ 0x16
	ds	2
	global	main@temp6
main@temp6:	; 2 bytes @ 0x18
	ds	2
	global	main@temp7
main@temp7:	; 2 bytes @ 0x1A
	ds	2
	global	main@temp8
main@temp8:	; 2 bytes @ 0x1C
	ds	2
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
	global	main@a
main@a:	; 2 bytes @ 0xB
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@c
main@c:	; 2 bytes @ 0x0
	ds	2
	global	main@e
main@e:	; 2 bytes @ 0x2
	ds	2
	global	main@f
main@f:	; 2 bytes @ 0x4
	ds	2
	global	main@g
main@g:	; 2 bytes @ 0x6
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x8
	ds	2
	global	main@k
main@k:	; 2 bytes @ 0xA
	ds	2
	global	main@l
main@l:	; 2 bytes @ 0xC
	ds	2
	global	main@m
main@m:	; 2 bytes @ 0xE
	ds	2
	global	main@o
main@o:	; 2 bytes @ 0x10
	ds	2
	global	main@q
main@q:	; 2 bytes @ 0x12
	ds	2
	global	main@r
main@r:	; 2 bytes @ 0x14
	ds	2
	global	main@z
main@z:	; 2 bytes @ 0x16
	ds	2
	global	main@x
main@x:	; 2 bytes @ 0x18
	ds	2
	global	main@v
main@v:	; 2 bytes @ 0x1A
	ds	2
	global	main@u
main@u:	; 2 bytes @ 0x1C
	ds	2
	global	main@A
main@A:	; 2 bytes @ 0x1E
	ds	2
	global	main@C
main@C:	; 2 bytes @ 0x20
	ds	2
	global	main@E
main@E:	; 2 bytes @ 0x22
	ds	2
	global	main@F
main@F:	; 2 bytes @ 0x24
	ds	2
	global	main@G
main@G:	; 2 bytes @ 0x26
	ds	2
	global	main@I
main@I:	; 2 bytes @ 0x28
	ds	2
	global	main@K
main@K:	; 2 bytes @ 0x2A
	ds	2
	global	main@L
main@L:	; 2 bytes @ 0x2C
	ds	2
	global	main@M
main@M:	; 2 bytes @ 0x2E
	ds	2
	global	main@O
main@O:	; 2 bytes @ 0x30
	ds	2
	global	main@Q
main@Q:	; 2 bytes @ 0x32
	ds	2
	global	main@R
main@R:	; 2 bytes @ 0x34
	ds	2
	global	main@Z
main@Z:	; 2 bytes @ 0x36
	ds	2
	global	main@X
main@X:	; 2 bytes @ 0x38
	ds	2
	global	main@V
main@V:	; 2 bytes @ 0x3A
	ds	2
	global	main@U
main@U:	; 2 bytes @ 0x3C
	ds	2
	global	main@b
main@b:	; 2 bytes @ 0x3E
	ds	2
	global	main@d
main@d:	; 2 bytes @ 0x40
	ds	2
	global	main@h
main@h:	; 2 bytes @ 0x42
	ds	2
	global	main@j
main@j:	; 2 bytes @ 0x44
	ds	2
	global	main@n
main@n:	; 2 bytes @ 0x46
	ds	2
	global	main@p
main@p:	; 2 bytes @ 0x48
	ds	2
	global	main@y
main@y:	; 2 bytes @ 0x4A
	ds	2
	global	main@w
main@w:	; 2 bytes @ 0x4C
	ds	2
	global	main@B
main@B:	; 2 bytes @ 0x4E
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      13
;; BANK0           80     80      80
;; BANK1           80     30      30
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
;; (0) _main                                               116   116      0    3247
;;                                              9 COMMON     4     4      0
;;                                              0 BANK0     80    80      0
;;                                              0 BANK1     30    30      0
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
;;COMMON               E      D       D       1       92.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     50      50       5      100.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50     1E      1E       7       37.5%
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
;;		line 45 in file "C:\Users\TECH\Desktop\madhu pic folder\ADC\ADC task\8 sensor with lcd value\8 sensor with lcd value.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp8           2   28[BANK1 ] unsigned int 
;;  temp7           2   26[BANK1 ] unsigned int 
;;  temp6           2   24[BANK1 ] unsigned int 
;;  temp5           2   22[BANK1 ] unsigned int 
;;  temp4           2   20[BANK1 ] unsigned int 
;;  temp3           2   18[BANK1 ] unsigned int 
;;  temp1           2   16[BANK1 ] unsigned int 
;;  temp            2   14[BANK1 ] unsigned int 
;;  W               2   12[BANK1 ] int 
;;  Y               2   10[BANK1 ] int 
;;  P               2    8[BANK1 ] int 
;;  N               2    6[BANK1 ] int 
;;  J               2    4[BANK1 ] int 
;;  H               2    2[BANK1 ] int 
;;  D               2    0[BANK1 ] int 
;;  B               2   78[BANK0 ] int 
;;  w               2   76[BANK0 ] int 
;;  y               2   74[BANK0 ] int 
;;  p               2   72[BANK0 ] int 
;;  n               2   70[BANK0 ] int 
;;  j               2   68[BANK0 ] int 
;;  h               2   66[BANK0 ] int 
;;  d               2   64[BANK0 ] int 
;;  b               2   62[BANK0 ] int 
;;  U               2   60[BANK0 ] int 
;;  V               2   58[BANK0 ] int 
;;  X               2   56[BANK0 ] int 
;;  Z               2   54[BANK0 ] int 
;;  R               2   52[BANK0 ] int 
;;  Q               2   50[BANK0 ] int 
;;  O               2   48[BANK0 ] int 
;;  M               2   46[BANK0 ] int 
;;  L               2   44[BANK0 ] int 
;;  K               2   42[BANK0 ] int 
;;  I               2   40[BANK0 ] int 
;;  G               2   38[BANK0 ] int 
;;  F               2   36[BANK0 ] int 
;;  E               2   34[BANK0 ] int 
;;  C               2   32[BANK0 ] int 
;;  A               2   30[BANK0 ] int 
;;  u               2   28[BANK0 ] int 
;;  v               2   26[BANK0 ] int 
;;  x               2   24[BANK0 ] int 
;;  z               2   22[BANK0 ] int 
;;  r               2   20[BANK0 ] int 
;;  q               2   18[BANK0 ] int 
;;  o               2   16[BANK0 ] int 
;;  m               2   14[BANK0 ] int 
;;  l               2   12[BANK0 ] int 
;;  k               2   10[BANK0 ] int 
;;  i               2    8[BANK0 ] int 
;;  g               2    6[BANK0 ] int 
;;  f               2    4[BANK0 ] int 
;;  e               2    2[BANK0 ] int 
;;  c               2    0[BANK0 ] int 
;;  a               2   11[COMMON] int 
;;  temp2           2    0        unsigned int 
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
;;      Locals:         2      80      30       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4      80      30       0       0
;;Total ram usage:      114 bytes
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
	file	"C:\Users\TECH\Desktop\madhu pic folder\ADC\ADC task\8 sensor with lcd value\8 sensor with lcd value.c"
	line	45
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2-btemp+0+pclath+cstack]
	line	49
	
l3060:	
;8 sensor with lcd value.c: 46: int a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,z,y,x,w,v,u;
;8 sensor with lcd value.c: 47: unsigned int temp,temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8;
;8 sensor with lcd value.c: 48: int A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,Z,Y,X,W,V,U;
;8 sensor with lcd value.c: 49: ADCON1=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	50
;8 sensor with lcd value.c: 50: ADCON0=0X40;
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	52
	
l3062:	
;8 sensor with lcd value.c: 52: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	53
	
l3064:	
;8 sensor with lcd value.c: 53: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	55
	
l3066:	
;8 sensor with lcd value.c: 55: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	56
	
l3068:	
;8 sensor with lcd value.c: 56: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	59
;8 sensor with lcd value.c: 59: TRISA=0X03;
	movlw	(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	60
	
l3070:	
;8 sensor with lcd value.c: 60: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	62
	
l3072:	
;8 sensor with lcd value.c: 62: lcd_init();
	fcall	_lcd_init
	line	63
	
l3074:	
;8 sensor with lcd value.c: 63: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	68
;8 sensor with lcd value.c: 68: while(1)
	
l580:	
	line	70
	
l3076:	
;8 sensor with lcd value.c: 69: {
;8 sensor with lcd value.c: 70: CHS2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(253/8),(253)&7
	line	71
	
l3078:	
;8 sensor with lcd value.c: 71: CHS1=0;
	bcf	(252/8),(252)&7
	line	72
	
l3080:	
;8 sensor with lcd value.c: 72: CHS0=0;
	bcf	(251/8),(251)&7
	line	73
	
l3082:	
;8 sensor with lcd value.c: 73: ADON=1;
	bsf	(248/8),(248)&7
	line	74
	
l3084:	
;8 sensor with lcd value.c: 74: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	75
	
l3086:	
;8 sensor with lcd value.c: 75: ADCON0=(ADCON0|0X04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	iorlw	04h
	movwf	(31)	;volatile
	line	76
;8 sensor with lcd value.c: 76: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	77
	
l3088:	
;8 sensor with lcd value.c: 77: temp=ADRESH<<8;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movlw	08h
	movwf	btemp+0
u2585:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+0,f
	goto	u2585
	movf	0+(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@temp)^080h
	movf	1+(??_main+0)+0,w
	movwf	(main@temp+1)^080h
	line	78
	
l3090:	
;8 sensor with lcd value.c: 78: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	79
	
l3092:	
;8 sensor with lcd value.c: 79: temp=temp+ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	addwf	(main@temp)^080h,w
	movwf	(main@temp)^080h
	movf	(main@temp+1)^080h,w
	skipnc
	incf	(main@temp+1)^080h,w
	movwf	((main@temp)^080h)+1
	line	81
	
l3094:	
;8 sensor with lcd value.c: 81: PORTD=temp;
	movf	(main@temp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	82
	
l3096:	
;8 sensor with lcd value.c: 82: a=temp/1000;
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@temp+1)^080h,w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(main@temp)^080h,w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	clrf	(main@a+1)
	addwf	(main@a+1)
	movf	(0+(?___lwdiv)),w
	clrf	(main@a)
	addwf	(main@a)

	line	83
	
l3098:	
;8 sensor with lcd value.c: 83: b=temp%1000;
	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@temp+1)^080h,w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(main@temp)^080h,w
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

	line	84
	
l3100:	
;8 sensor with lcd value.c: 84: c=b/100;
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

	line	85
	
l3102:	
;8 sensor with lcd value.c: 85: d=b%100;
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

	line	86
	
l3104:	
;8 sensor with lcd value.c: 86: e=d/10;
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

	line	87
	
l3106:	
;8 sensor with lcd value.c: 87: f=d%10;
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

	line	88
	
l3108:	
;8 sensor with lcd value.c: 88: lcd_command(0x80);
	movlw	(080h)
	fcall	_lcd_command
	line	89
	
l3110:	
;8 sensor with lcd value.c: 89: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	90
	
l3112:	
;8 sensor with lcd value.c: 90: lcd_data(a+0x30);
	movf	(main@a),w
	addlw	030h
	fcall	_lcd_data
	line	91
	
l3114:	
;8 sensor with lcd value.c: 91: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	92
	
l3116:	
;8 sensor with lcd value.c: 92: lcd_data(c+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@c),w
	addlw	030h
	fcall	_lcd_data
	line	93
	
l3118:	
;8 sensor with lcd value.c: 93: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	94
	
l3120:	
;8 sensor with lcd value.c: 94: lcd_data(e+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@e),w
	addlw	030h
	fcall	_lcd_data
	line	95
	
l3122:	
;8 sensor with lcd value.c: 95: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	96
	
l3124:	
;8 sensor with lcd value.c: 96: lcd_data(f+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@f),w
	addlw	030h
	fcall	_lcd_data
	line	97
	
l3126:	
;8 sensor with lcd value.c: 97: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	101
	
l3128:	
;8 sensor with lcd value.c: 101: CHS2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(253/8),(253)&7
	line	102
	
l3130:	
;8 sensor with lcd value.c: 102: CHS1=0;
	bcf	(252/8),(252)&7
	line	103
	
l3132:	
;8 sensor with lcd value.c: 103: CHS0=1;
	bsf	(251/8),(251)&7
	line	104
	
l3134:	
;8 sensor with lcd value.c: 104: ADON=1;
	bsf	(248/8),(248)&7
	line	105
	
l3136:	
;8 sensor with lcd value.c: 105: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	106
	
l3138:	
;8 sensor with lcd value.c: 106: ADCON0=(ADCON0|0X04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	iorlw	04h
	movwf	(31)	;volatile
	line	107
	
l3140:	
;8 sensor with lcd value.c: 107: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	108
	
l3142:	
;8 sensor with lcd value.c: 108: temp1=ADRESH<<8;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movlw	08h
	movwf	btemp+0
u2595:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+0,f
	goto	u2595
	movf	0+(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@temp1)^080h
	movf	1+(??_main+0)+0,w
	movwf	(main@temp1+1)^080h
	line	109
	
l3144:	
;8 sensor with lcd value.c: 109: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	110
	
l3146:	
;8 sensor with lcd value.c: 110: temp1=temp1+ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	addwf	(main@temp1)^080h,w
	movwf	(main@temp1)^080h
	movf	(main@temp1+1)^080h,w
	skipnc
	incf	(main@temp1+1)^080h,w
	movwf	((main@temp1)^080h)+1
	line	112
	
l3148:	
;8 sensor with lcd value.c: 112: PORTD=temp1;
	movf	(main@temp1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	113
	
l3150:	
;8 sensor with lcd value.c: 113: z=temp1/1000;
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@temp1+1)^080h,w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(main@temp1)^080h,w
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

	line	114
	
l3152:	
;8 sensor with lcd value.c: 114: y=temp1%1000;
	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@temp1+1)^080h,w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(main@temp1)^080h,w
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

	line	115
	
l3154:	
;8 sensor with lcd value.c: 115: x=y/100;
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

	line	116
	
l3156:	
;8 sensor with lcd value.c: 116: w=y%100;
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

	line	117
	
l3158:	
;8 sensor with lcd value.c: 117: v=w/10;
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

	line	118
	
l3160:	
;8 sensor with lcd value.c: 118: u=w%10;
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

	line	119
	
l3162:	
;8 sensor with lcd value.c: 119: lcd_command(0x84);
	movlw	(084h)
	fcall	_lcd_command
	line	120
	
l3164:	
;8 sensor with lcd value.c: 120: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	121
	
l3166:	
;8 sensor with lcd value.c: 121: lcd_data(z+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@z),w
	addlw	030h
	fcall	_lcd_data
	line	122
	
l3168:	
;8 sensor with lcd value.c: 122: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	123
	
l3170:	
;8 sensor with lcd value.c: 123: lcd_data(x+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@x),w
	addlw	030h
	fcall	_lcd_data
	line	124
	
l3172:	
;8 sensor with lcd value.c: 124: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	125
	
l3174:	
;8 sensor with lcd value.c: 125: lcd_data(v+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@v),w
	addlw	030h
	fcall	_lcd_data
	line	126
	
l3176:	
;8 sensor with lcd value.c: 126: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	127
	
l3178:	
;8 sensor with lcd value.c: 127: lcd_data(u+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@u),w
	addlw	030h
	fcall	_lcd_data
	line	128
	
l3180:	
;8 sensor with lcd value.c: 128: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	131
	
l3182:	
;8 sensor with lcd value.c: 131: CHS2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(253/8),(253)&7
	line	132
	
l3184:	
;8 sensor with lcd value.c: 132: CHS1=1;
	bsf	(252/8),(252)&7
	line	133
	
l3186:	
;8 sensor with lcd value.c: 133: CHS0=0;
	bcf	(251/8),(251)&7
	line	134
	
l3188:	
;8 sensor with lcd value.c: 134: ADON=1;
	bsf	(248/8),(248)&7
	line	135
	
l3190:	
;8 sensor with lcd value.c: 135: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	136
;8 sensor with lcd value.c: 136: ADCON0=(ADCON0|0X04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	iorlw	04h
	movwf	(31)	;volatile
	line	137
	
l3192:	
;8 sensor with lcd value.c: 137: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	138
	
l3194:	
;8 sensor with lcd value.c: 138: temp3=ADRESH<<8;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movlw	08h
	movwf	btemp+0
u2605:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+0,f
	goto	u2605
	movf	0+(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@temp3)^080h
	movf	1+(??_main+0)+0,w
	movwf	(main@temp3+1)^080h
	line	139
	
l3196:	
;8 sensor with lcd value.c: 139: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	140
	
l3198:	
;8 sensor with lcd value.c: 140: temp3=temp3+ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	addwf	(main@temp3)^080h,w
	movwf	(main@temp3)^080h
	movf	(main@temp3+1)^080h,w
	skipnc
	incf	(main@temp3+1)^080h,w
	movwf	((main@temp3)^080h)+1
	line	141
	
l3200:	
;8 sensor with lcd value.c: 141: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	142
	
l3202:	
;8 sensor with lcd value.c: 142: PORTD=temp3;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@temp3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	143
	
l3204:	
;8 sensor with lcd value.c: 143: g=temp3/1000;
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@temp3+1)^080h,w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(main@temp3)^080h,w
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

	line	144
	
l3206:	
;8 sensor with lcd value.c: 144: h=temp3%1000;
	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@temp3+1)^080h,w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(main@temp3)^080h,w
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

	line	145
	
l3208:	
;8 sensor with lcd value.c: 145: i=h/100;
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

	line	146
	
l3210:	
;8 sensor with lcd value.c: 146: j=h%100;
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

	line	147
	
l3212:	
;8 sensor with lcd value.c: 147: k=j/10;
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

	line	148
	
l3214:	
;8 sensor with lcd value.c: 148: l=j%10;
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

	line	149
	
l3216:	
;8 sensor with lcd value.c: 149: lcd_command(0x88);
	movlw	(088h)
	fcall	_lcd_command
	line	150
	
l3218:	
;8 sensor with lcd value.c: 150: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	151
	
l3220:	
;8 sensor with lcd value.c: 151: lcd_data(g+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@g),w
	addlw	030h
	fcall	_lcd_data
	line	152
	
l3222:	
;8 sensor with lcd value.c: 152: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	153
	
l3224:	
;8 sensor with lcd value.c: 153: lcd_data(i+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	030h
	fcall	_lcd_data
	line	154
	
l3226:	
;8 sensor with lcd value.c: 154: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	155
	
l3228:	
;8 sensor with lcd value.c: 155: lcd_data(k+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@k),w
	addlw	030h
	fcall	_lcd_data
	line	156
	
l3230:	
;8 sensor with lcd value.c: 156: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	157
	
l3232:	
;8 sensor with lcd value.c: 157: lcd_data(l+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@l),w
	addlw	030h
	fcall	_lcd_data
	line	158
	
l3234:	
;8 sensor with lcd value.c: 158: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	161
	
l3236:	
;8 sensor with lcd value.c: 161: CHS2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(253/8),(253)&7
	line	162
	
l3238:	
;8 sensor with lcd value.c: 162: CHS1=1;
	bsf	(252/8),(252)&7
	line	163
	
l3240:	
;8 sensor with lcd value.c: 163: CHS0=1;
	bsf	(251/8),(251)&7
	line	164
	
l3242:	
;8 sensor with lcd value.c: 164: ADON=1;
	bsf	(248/8),(248)&7
	line	165
	
l3244:	
;8 sensor with lcd value.c: 165: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	166
	
l3246:	
;8 sensor with lcd value.c: 166: ADCON0=(ADCON0|0X04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	iorlw	04h
	movwf	(31)	;volatile
	line	167
	
l3248:	
;8 sensor with lcd value.c: 167: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	168
	
l3250:	
;8 sensor with lcd value.c: 168: temp4=ADRESH<<8;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movlw	08h
	movwf	btemp+0
u2615:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+0,f
	goto	u2615
	movf	0+(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@temp4)^080h
	movf	1+(??_main+0)+0,w
	movwf	(main@temp4+1)^080h
	line	169
;8 sensor with lcd value.c: 169: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	170
	
l3252:	
;8 sensor with lcd value.c: 170: temp4=temp4+ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	addwf	(main@temp4)^080h,w
	movwf	(main@temp4)^080h
	movf	(main@temp4+1)^080h,w
	skipnc
	incf	(main@temp4+1)^080h,w
	movwf	((main@temp4)^080h)+1
	line	171
	
l3254:	
;8 sensor with lcd value.c: 171: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	172
;8 sensor with lcd value.c: 172: PORTD=temp4;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@temp4)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	173
	
l3256:	
;8 sensor with lcd value.c: 173: m=temp4/1000;
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@temp4+1)^080h,w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(main@temp4)^080h,w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@m+1)
	addwf	(main@m+1)
	movf	(0+(?___lwdiv)),w
	clrf	(main@m)
	addwf	(main@m)

	line	174
	
l3258:	
;8 sensor with lcd value.c: 174: n=temp4%1000;
	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@temp4+1)^080h,w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(main@temp4)^080h,w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@n+1)
	addwf	(main@n+1)
	movf	(0+(?___lwmod)),w
	clrf	(main@n)
	addwf	(main@n)

	line	175
	
l3260:	
;8 sensor with lcd value.c: 175: o=n/100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(main@n+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@n),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@o+1)
	addwf	(main@o+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@o)
	addwf	(main@o)

	line	176
	
l3262:	
;8 sensor with lcd value.c: 176: p=n%100;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(main@n+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@n),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@p+1)
	addwf	(main@p+1)
	movf	(0+(?___awmod)),w
	clrf	(main@p)
	addwf	(main@p)

	line	177
	
l3264:	
;8 sensor with lcd value.c: 177: q=p/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@p+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@p),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@q+1)
	addwf	(main@q+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@q)
	addwf	(main@q)

	line	178
	
l3266:	
;8 sensor with lcd value.c: 178: r=p%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@p+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@p),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@r+1)
	addwf	(main@r+1)
	movf	(0+(?___awmod)),w
	clrf	(main@r)
	addwf	(main@r)

	line	179
	
l3268:	
;8 sensor with lcd value.c: 179: lcd_command(0x8C);
	movlw	(08Ch)
	fcall	_lcd_command
	line	180
	
l3270:	
;8 sensor with lcd value.c: 180: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	181
	
l3272:	
;8 sensor with lcd value.c: 181: lcd_data(m+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@m),w
	addlw	030h
	fcall	_lcd_data
	line	182
	
l3274:	
;8 sensor with lcd value.c: 182: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	183
	
l3276:	
;8 sensor with lcd value.c: 183: lcd_data(o+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@o),w
	addlw	030h
	fcall	_lcd_data
	line	184
	
l3278:	
;8 sensor with lcd value.c: 184: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	185
	
l3280:	
;8 sensor with lcd value.c: 185: lcd_data(q+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@q),w
	addlw	030h
	fcall	_lcd_data
	line	186
	
l3282:	
;8 sensor with lcd value.c: 186: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	187
	
l3284:	
;8 sensor with lcd value.c: 187: lcd_data(r+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@r),w
	addlw	030h
	fcall	_lcd_data
	line	188
	
l3286:	
;8 sensor with lcd value.c: 188: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	192
	
l3288:	
;8 sensor with lcd value.c: 192: CHS2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(253/8),(253)&7
	line	193
	
l3290:	
;8 sensor with lcd value.c: 193: CHS1=0;
	bcf	(252/8),(252)&7
	line	194
	
l3292:	
;8 sensor with lcd value.c: 194: CHS0=0;
	bcf	(251/8),(251)&7
	line	195
	
l3294:	
;8 sensor with lcd value.c: 195: ADON=1;
	bsf	(248/8),(248)&7
	line	196
	
l3296:	
;8 sensor with lcd value.c: 196: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	197
	
l3298:	
;8 sensor with lcd value.c: 197: ADCON0=(ADCON0|0X04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	iorlw	04h
	movwf	(31)	;volatile
	line	198
	
l3300:	
;8 sensor with lcd value.c: 198: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	199
	
l3302:	
;8 sensor with lcd value.c: 199: temp5=ADRESH<<8;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movlw	08h
	movwf	btemp+0
u2625:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+0,f
	goto	u2625
	movf	0+(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@temp5)^080h
	movf	1+(??_main+0)+0,w
	movwf	(main@temp5+1)^080h
	line	200
	
l3304:	
;8 sensor with lcd value.c: 200: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	201
	
l3306:	
;8 sensor with lcd value.c: 201: temp5=temp5+ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	addwf	(main@temp5)^080h,w
	movwf	(main@temp5)^080h
	movf	(main@temp5+1)^080h,w
	skipnc
	incf	(main@temp5+1)^080h,w
	movwf	((main@temp5)^080h)+1
	line	203
	
l3308:	
;8 sensor with lcd value.c: 203: PORTD=temp5;
	movf	(main@temp5)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	204
	
l3310:	
;8 sensor with lcd value.c: 204: A=temp5/1000;
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@temp5+1)^080h,w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(main@temp5)^080h,w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@A+1)
	addwf	(main@A+1)
	movf	(0+(?___lwdiv)),w
	clrf	(main@A)
	addwf	(main@A)

	line	205
	
l3312:	
;8 sensor with lcd value.c: 205: B=temp5%1000;
	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@temp5+1)^080h,w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(main@temp5)^080h,w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@B+1)
	addwf	(main@B+1)
	movf	(0+(?___lwmod)),w
	clrf	(main@B)
	addwf	(main@B)

	line	206
	
l3314:	
;8 sensor with lcd value.c: 206: C=B/100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(main@B+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@B),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@C+1)
	addwf	(main@C+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@C)
	addwf	(main@C)

	line	207
	
l3316:	
;8 sensor with lcd value.c: 207: D=B%100;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(main@B+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@B),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@D+1)^080h
	addwf	(main@D+1)^080h
	movf	(0+(?___awmod)),w
	clrf	(main@D)^080h
	addwf	(main@D)^080h

	line	208
	
l3318:	
;8 sensor with lcd value.c: 208: E=D/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@D+1)^080h,w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@D)^080h,w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@E+1)
	addwf	(main@E+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@E)
	addwf	(main@E)

	line	209
	
l3320:	
;8 sensor with lcd value.c: 209: F=D%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@D+1)^080h,w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@D)^080h,w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@F+1)
	addwf	(main@F+1)
	movf	(0+(?___awmod)),w
	clrf	(main@F)
	addwf	(main@F)

	line	210
	
l3322:	
;8 sensor with lcd value.c: 210: lcd_command(0xC0);
	movlw	(0C0h)
	fcall	_lcd_command
	line	211
	
l3324:	
;8 sensor with lcd value.c: 211: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	212
	
l3326:	
;8 sensor with lcd value.c: 212: lcd_data(A+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@A),w
	addlw	030h
	fcall	_lcd_data
	line	213
	
l3328:	
;8 sensor with lcd value.c: 213: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	214
	
l3330:	
;8 sensor with lcd value.c: 214: lcd_data(C+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@C),w
	addlw	030h
	fcall	_lcd_data
	line	215
	
l3332:	
;8 sensor with lcd value.c: 215: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	216
	
l3334:	
;8 sensor with lcd value.c: 216: lcd_data(E+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@E),w
	addlw	030h
	fcall	_lcd_data
	line	217
	
l3336:	
;8 sensor with lcd value.c: 217: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	218
	
l3338:	
;8 sensor with lcd value.c: 218: lcd_data(F+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@F),w
	addlw	030h
	fcall	_lcd_data
	line	219
	
l3340:	
;8 sensor with lcd value.c: 219: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	223
	
l3342:	
;8 sensor with lcd value.c: 223: CHS2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(253/8),(253)&7
	line	224
	
l3344:	
;8 sensor with lcd value.c: 224: CHS1=0;
	bcf	(252/8),(252)&7
	line	225
	
l3346:	
;8 sensor with lcd value.c: 225: CHS0=1;
	bsf	(251/8),(251)&7
	line	226
	
l3348:	
;8 sensor with lcd value.c: 226: ADON=1;
	bsf	(248/8),(248)&7
	line	227
	
l3350:	
;8 sensor with lcd value.c: 227: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	228
	
l3352:	
;8 sensor with lcd value.c: 228: ADCON0=(ADCON0|0X04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	iorlw	04h
	movwf	(31)	;volatile
	line	229
	
l3354:	
;8 sensor with lcd value.c: 229: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	230
	
l3356:	
;8 sensor with lcd value.c: 230: temp6=ADRESH<<8;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movlw	08h
	movwf	btemp+0
u2635:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+0,f
	goto	u2635
	movf	0+(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@temp6)^080h
	movf	1+(??_main+0)+0,w
	movwf	(main@temp6+1)^080h
	line	231
	
l3358:	
;8 sensor with lcd value.c: 231: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	232
;8 sensor with lcd value.c: 232: temp6=temp6+ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	addwf	(main@temp6)^080h,w
	movwf	(main@temp6)^080h
	movf	(main@temp6+1)^080h,w
	skipnc
	incf	(main@temp6+1)^080h,w
	movwf	((main@temp6)^080h)+1
	line	234
;8 sensor with lcd value.c: 234: PORTD=temp6;
	movf	(main@temp6)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	235
	
l3360:	
;8 sensor with lcd value.c: 235: Z=temp6/1000;
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@temp6+1)^080h,w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(main@temp6)^080h,w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@Z+1)
	addwf	(main@Z+1)
	movf	(0+(?___lwdiv)),w
	clrf	(main@Z)
	addwf	(main@Z)

	line	236
	
l3362:	
;8 sensor with lcd value.c: 236: Y=temp6%1000;
	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@temp6+1)^080h,w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(main@temp6)^080h,w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@Y+1)^080h
	addwf	(main@Y+1)^080h
	movf	(0+(?___lwmod)),w
	clrf	(main@Y)^080h
	addwf	(main@Y)^080h

	line	237
	
l3364:	
;8 sensor with lcd value.c: 237: X=Y/100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(main@Y+1)^080h,w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@Y)^080h,w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@X+1)
	addwf	(main@X+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@X)
	addwf	(main@X)

	line	238
	
l3366:	
;8 sensor with lcd value.c: 238: W=Y%100;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@Y+1)^080h,w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@Y)^080h,w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@W+1)^080h
	addwf	(main@W+1)^080h
	movf	(0+(?___awmod)),w
	clrf	(main@W)^080h
	addwf	(main@W)^080h

	line	239
	
l3368:	
;8 sensor with lcd value.c: 239: V=W/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@W+1)^080h,w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@W)^080h,w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@V+1)
	addwf	(main@V+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@V)
	addwf	(main@V)

	line	240
	
l3370:	
;8 sensor with lcd value.c: 240: U=W%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@W+1)^080h,w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@W)^080h,w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@U+1)
	addwf	(main@U+1)
	movf	(0+(?___awmod)),w
	clrf	(main@U)
	addwf	(main@U)

	line	241
	
l3372:	
;8 sensor with lcd value.c: 241: lcd_command(0xC4);
	movlw	(0C4h)
	fcall	_lcd_command
	line	242
	
l3374:	
;8 sensor with lcd value.c: 242: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	243
	
l3376:	
;8 sensor with lcd value.c: 243: lcd_data(Z+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@Z),w
	addlw	030h
	fcall	_lcd_data
	line	244
	
l3378:	
;8 sensor with lcd value.c: 244: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	245
	
l3380:	
;8 sensor with lcd value.c: 245: lcd_data(X+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@X),w
	addlw	030h
	fcall	_lcd_data
	line	246
	
l3382:	
;8 sensor with lcd value.c: 246: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	247
	
l3384:	
;8 sensor with lcd value.c: 247: lcd_data(V+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@V),w
	addlw	030h
	fcall	_lcd_data
	line	248
	
l3386:	
;8 sensor with lcd value.c: 248: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	249
	
l3388:	
;8 sensor with lcd value.c: 249: lcd_data(U+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@U),w
	addlw	030h
	fcall	_lcd_data
	line	250
	
l3390:	
;8 sensor with lcd value.c: 250: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	253
	
l3392:	
;8 sensor with lcd value.c: 253: CHS2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(253/8),(253)&7
	line	254
	
l3394:	
;8 sensor with lcd value.c: 254: CHS1=1;
	bsf	(252/8),(252)&7
	line	255
	
l3396:	
;8 sensor with lcd value.c: 255: CHS0=0;
	bcf	(251/8),(251)&7
	line	256
	
l3398:	
;8 sensor with lcd value.c: 256: ADON=1;
	bsf	(248/8),(248)&7
	line	257
	
l3400:	
;8 sensor with lcd value.c: 257: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	258
	
l3402:	
;8 sensor with lcd value.c: 258: ADCON0=(ADCON0|0X04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	iorlw	04h
	movwf	(31)	;volatile
	line	259
	
l3404:	
;8 sensor with lcd value.c: 259: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	260
	
l3406:	
;8 sensor with lcd value.c: 260: temp7=ADRESH<<8;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movlw	08h
	movwf	btemp+0
u2645:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+0,f
	goto	u2645
	movf	0+(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@temp7)^080h
	movf	1+(??_main+0)+0,w
	movwf	(main@temp7+1)^080h
	line	261
	
l3408:	
;8 sensor with lcd value.c: 261: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	262
	
l3410:	
;8 sensor with lcd value.c: 262: temp7=temp7+ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	addwf	(main@temp7)^080h,w
	movwf	(main@temp7)^080h
	movf	(main@temp7+1)^080h,w
	skipnc
	incf	(main@temp7+1)^080h,w
	movwf	((main@temp7)^080h)+1
	line	263
	
l3412:	
;8 sensor with lcd value.c: 263: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	264
	
l3414:	
;8 sensor with lcd value.c: 264: PORTD=temp7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@temp7)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	265
	
l3416:	
;8 sensor with lcd value.c: 265: G=temp7/1000;
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@temp7+1)^080h,w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(main@temp7)^080h,w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@G+1)
	addwf	(main@G+1)
	movf	(0+(?___lwdiv)),w
	clrf	(main@G)
	addwf	(main@G)

	line	266
	
l3418:	
;8 sensor with lcd value.c: 266: H=temp7%1000;
	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@temp7+1)^080h,w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(main@temp7)^080h,w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@H+1)^080h
	addwf	(main@H+1)^080h
	movf	(0+(?___lwmod)),w
	clrf	(main@H)^080h
	addwf	(main@H)^080h

	line	267
	
l3420:	
;8 sensor with lcd value.c: 267: I=H/100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(main@H+1)^080h,w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@H)^080h,w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@I+1)
	addwf	(main@I+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@I)
	addwf	(main@I)

	line	268
	
l3422:	
;8 sensor with lcd value.c: 268: J=H%100;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@H+1)^080h,w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@H)^080h,w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@J+1)^080h
	addwf	(main@J+1)^080h
	movf	(0+(?___awmod)),w
	clrf	(main@J)^080h
	addwf	(main@J)^080h

	line	269
	
l3424:	
;8 sensor with lcd value.c: 269: K=J/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@J+1)^080h,w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@J)^080h,w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@K+1)
	addwf	(main@K+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@K)
	addwf	(main@K)

	line	270
	
l3426:	
;8 sensor with lcd value.c: 270: L=J%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@J+1)^080h,w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@J)^080h,w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@L+1)
	addwf	(main@L+1)
	movf	(0+(?___awmod)),w
	clrf	(main@L)
	addwf	(main@L)

	line	271
	
l3428:	
;8 sensor with lcd value.c: 271: lcd_command(0xC8);
	movlw	(0C8h)
	fcall	_lcd_command
	line	272
	
l3430:	
;8 sensor with lcd value.c: 272: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	273
	
l3432:	
;8 sensor with lcd value.c: 273: lcd_data(G+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@G),w
	addlw	030h
	fcall	_lcd_data
	line	274
	
l3434:	
;8 sensor with lcd value.c: 274: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	275
	
l3436:	
;8 sensor with lcd value.c: 275: lcd_data(I+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@I),w
	addlw	030h
	fcall	_lcd_data
	line	276
	
l3438:	
;8 sensor with lcd value.c: 276: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	277
	
l3440:	
;8 sensor with lcd value.c: 277: lcd_data(K+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@K),w
	addlw	030h
	fcall	_lcd_data
	line	278
	
l3442:	
;8 sensor with lcd value.c: 278: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	279
	
l3444:	
;8 sensor with lcd value.c: 279: lcd_data(L+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@L),w
	addlw	030h
	fcall	_lcd_data
	line	280
	
l3446:	
;8 sensor with lcd value.c: 280: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	283
	
l3448:	
;8 sensor with lcd value.c: 283: CHS2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(253/8),(253)&7
	line	284
	
l3450:	
;8 sensor with lcd value.c: 284: CHS1=1;
	bsf	(252/8),(252)&7
	line	285
	
l3452:	
;8 sensor with lcd value.c: 285: CHS0=1;
	bsf	(251/8),(251)&7
	line	286
	
l3454:	
;8 sensor with lcd value.c: 286: ADON=1;
	bsf	(248/8),(248)&7
	line	287
	
l3456:	
;8 sensor with lcd value.c: 287: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	288
	
l3458:	
;8 sensor with lcd value.c: 288: ADCON0=(ADCON0|0X04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	iorlw	04h
	movwf	(31)	;volatile
	line	289
	
l3460:	
;8 sensor with lcd value.c: 289: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	290
	
l3462:	
;8 sensor with lcd value.c: 290: temp8=ADRESH<<8;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movlw	08h
	movwf	btemp+0
u2655:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+0,f
	goto	u2655
	movf	0+(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@temp8)^080h
	movf	1+(??_main+0)+0,w
	movwf	(main@temp8+1)^080h
	line	291
	
l3464:	
;8 sensor with lcd value.c: 291: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	292
	
l3466:	
;8 sensor with lcd value.c: 292: temp8=temp8+ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	addwf	(main@temp8)^080h,w
	movwf	(main@temp8)^080h
	movf	(main@temp8+1)^080h,w
	skipnc
	incf	(main@temp8+1)^080h,w
	movwf	((main@temp8)^080h)+1
	line	293
;8 sensor with lcd value.c: 293: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	294
	
l3468:	
;8 sensor with lcd value.c: 294: PORTD=temp8;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@temp8)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	295
	
l3470:	
;8 sensor with lcd value.c: 295: M=temp8/1000;
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@temp8+1)^080h,w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(main@temp8)^080h,w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@M+1)
	addwf	(main@M+1)
	movf	(0+(?___lwdiv)),w
	clrf	(main@M)
	addwf	(main@M)

	line	296
	
l3472:	
;8 sensor with lcd value.c: 296: N=temp8%1000;
	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@temp8+1)^080h,w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(main@temp8)^080h,w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@N+1)^080h
	addwf	(main@N+1)^080h
	movf	(0+(?___lwmod)),w
	clrf	(main@N)^080h
	addwf	(main@N)^080h

	line	297
	
l3474:	
;8 sensor with lcd value.c: 297: O=N/100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(main@N+1)^080h,w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@N)^080h,w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@O+1)
	addwf	(main@O+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@O)
	addwf	(main@O)

	line	298
	
l3476:	
;8 sensor with lcd value.c: 298: P=N%100;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@N+1)^080h,w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@N)^080h,w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@P+1)^080h
	addwf	(main@P+1)^080h
	movf	(0+(?___awmod)),w
	clrf	(main@P)^080h
	addwf	(main@P)^080h

	line	299
	
l3478:	
;8 sensor with lcd value.c: 299: Q=P/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@P+1)^080h,w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@P)^080h,w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@Q+1)
	addwf	(main@Q+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@Q)
	addwf	(main@Q)

	line	300
	
l3480:	
;8 sensor with lcd value.c: 300: R=P%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@P+1)^080h,w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@P)^080h,w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@R+1)
	addwf	(main@R+1)
	movf	(0+(?___awmod)),w
	clrf	(main@R)
	addwf	(main@R)

	line	301
	
l3482:	
;8 sensor with lcd value.c: 301: lcd_command(0xCC);
	movlw	(0CCh)
	fcall	_lcd_command
	line	302
	
l3484:	
;8 sensor with lcd value.c: 302: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	303
	
l3486:	
;8 sensor with lcd value.c: 303: lcd_data(M+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@M),w
	addlw	030h
	fcall	_lcd_data
	line	304
	
l3488:	
;8 sensor with lcd value.c: 304: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	305
	
l3490:	
;8 sensor with lcd value.c: 305: lcd_data(O+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@O),w
	addlw	030h
	fcall	_lcd_data
	line	306
	
l3492:	
;8 sensor with lcd value.c: 306: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	307
	
l3494:	
;8 sensor with lcd value.c: 307: lcd_data(Q+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@Q),w
	addlw	030h
	fcall	_lcd_data
	line	308
	
l3496:	
;8 sensor with lcd value.c: 308: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	309
	
l3498:	
;8 sensor with lcd value.c: 309: lcd_data(R+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@R),w
	addlw	030h
	fcall	_lcd_data
	line	310
	
l3500:	
;8 sensor with lcd value.c: 310: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	313
	
l581:	
	line	68
	goto	l580
	
l582:	
	line	314
	
l583:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_init
psect	text181,local,class=CODE,delta=2
global __ptext181
__ptext181:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 20 in file "C:\Users\TECH\Desktop\madhu pic folder\ADC\ADC task\8 sensor with lcd value\8 sensor with lcd value.c"
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
psect	text181
	file	"C:\Users\TECH\Desktop\madhu pic folder\ADC\ADC task\8 sensor with lcd value\8 sensor with lcd value.c"
	line	20
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 7
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	21
	
l3058:	
;8 sensor with lcd value.c: 21: lcd_command(0x38);
	movlw	(038h)
	fcall	_lcd_command
	line	22
;8 sensor with lcd value.c: 22: lcd_command(0x06);
	movlw	(06h)
	fcall	_lcd_command
	line	23
;8 sensor with lcd value.c: 23: lcd_command(0x0c);
	movlw	(0Ch)
	fcall	_lcd_command
	line	24
;8 sensor with lcd value.c: 24: lcd_command(0x01);
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
psect	text182,local,class=CODE,delta=2
global __ptext182
__ptext182:

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 27 in file "C:\Users\TECH\Desktop\madhu pic folder\ADC\ADC task\8 sensor with lcd value\8 sensor with lcd value.c"
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
psect	text182
	file	"C:\Users\TECH\Desktop\madhu pic folder\ADC\ADC task\8 sensor with lcd value\8 sensor with lcd value.c"
	line	27
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 7
; Regs used in _lcd_data: [wreg+status,2+status,0+pclath+cstack]
;lcd_data@data stored from wreg
	movwf	(lcd_data@data)
	line	28
	
l3046:	
;8 sensor with lcd value.c: 28: PORTD=data;
	movf	(lcd_data@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	29
	
l3048:	
;8 sensor with lcd value.c: 29: RC0=1;
	bsf	(56/8),(56)&7
	line	30
	
l3050:	
;8 sensor with lcd value.c: 30: RC1=0;
	bcf	(57/8),(57)&7
	line	31
	
l3052:	
;8 sensor with lcd value.c: 31: RC2=1;
	bsf	(58/8),(58)&7
	line	32
	
l3054:	
;8 sensor with lcd value.c: 32: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	33
	
l3056:	
;8 sensor with lcd value.c: 33: RC2=0;
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
psect	text183,local,class=CODE,delta=2
global __ptext183
__ptext183:

;; *************** function _lcd_command *****************
;; Defined at:
;;		line 11 in file "C:\Users\TECH\Desktop\madhu pic folder\ADC\ADC task\8 sensor with lcd value\8 sensor with lcd value.c"
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
psect	text183
	file	"C:\Users\TECH\Desktop\madhu pic folder\ADC\ADC task\8 sensor with lcd value\8 sensor with lcd value.c"
	line	11
	global	__size_of_lcd_command
	__size_of_lcd_command	equ	__end_of_lcd_command-_lcd_command
	
_lcd_command:	
	opt	stack 7
; Regs used in _lcd_command: [wreg+status,2+status,0+pclath+cstack]
;lcd_command@com stored from wreg
	movwf	(lcd_command@com)
	line	12
	
l3034:	
;8 sensor with lcd value.c: 12: PORTD=com;
	movf	(lcd_command@com),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	13
	
l3036:	
;8 sensor with lcd value.c: 13: RC0=0;
	bcf	(56/8),(56)&7
	line	14
	
l3038:	
;8 sensor with lcd value.c: 14: RC1=0;
	bcf	(57/8),(57)&7
	line	15
	
l3040:	
;8 sensor with lcd value.c: 15: RC2=1;
	bsf	(58/8),(58)&7
	line	16
	
l3042:	
;8 sensor with lcd value.c: 16: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	17
	
l3044:	
;8 sensor with lcd value.c: 17: RC2=0;
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
psect	text184,local,class=CODE,delta=2
global __ptext184
__ptext184:

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
psect	text184
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2998:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	line	9
	
l3000:	
	btfss	(___awmod@dividend+1),7
	goto	u2491
	goto	u2490
u2491:
	goto	l800
u2490:
	line	10
	
l3002:	
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
	
l800:	
	line	13
	
l3004:	
	btfss	(___awmod@divisor+1),7
	goto	u2501
	goto	u2500
u2501:
	goto	l801
u2500:
	line	14
	
l3006:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	
l801:	
	line	15
	
l3008:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2511
	goto	u2510
u2511:
	goto	l802
u2510:
	line	16
	
l3010:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l803
	
l804:	
	line	18
	
l3012:	
	movlw	01h
	
u2525:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2525
	line	19
	
l3014:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	line	20
	
l803:	
	line	17
	
l3016:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2531
	goto	u2530
u2531:
	goto	l804
u2530:
	
l805:	
	line	21
	
l806:	
	line	22
	
l3018:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2545
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2545:
	skipc
	goto	u2541
	goto	u2540
u2541:
	goto	l807
u2540:
	line	23
	
l3020:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	
l807:	
	line	24
	
l3022:	
	movlw	01h
	
u2555:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2555
	line	25
	
l3024:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2561
	goto	u2560
u2561:
	goto	l806
u2560:
	
l808:	
	line	26
	
l802:	
	line	27
	
l3026:	
	movf	(___awmod@sign),w
	skipz
	goto	u2570
	goto	l809
u2570:
	line	28
	
l3028:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	
l809:	
	line	29
	
l3030:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	
l3032:	
	line	30
	
l810:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text185,local,class=CODE,delta=2
global __ptext185
__ptext185:

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
psect	text185
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2960:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	line	10
	
l2962:	
	btfss	(___awdiv@divisor+1),7
	goto	u2391
	goto	u2390
u2391:
	goto	l732
u2390:
	line	11
	
l2964:	
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
	
l732:	
	line	14
	
l2966:	
	btfss	(___awdiv@dividend+1),7
	goto	u2401
	goto	u2400
u2401:
	goto	l733
u2400:
	line	15
	
l2968:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2970:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l733:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2411
	goto	u2410
u2411:
	goto	l734
u2410:
	line	20
	
l2972:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l735
	
l736:	
	line	22
	
l2974:	
	movlw	01h
	
u2425:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2425
	line	23
	
l2976:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	line	24
	
l735:	
	line	21
	
l2978:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2431
	goto	u2430
u2431:
	goto	l736
u2430:
	
l737:	
	line	25
	
l738:	
	line	26
	
l2980:	
	movlw	01h
	
u2445:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2445
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2455
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2455:
	skipc
	goto	u2451
	goto	u2450
u2451:
	goto	l739
u2450:
	line	28
	
l2982:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2984:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	30
	
l739:	
	line	31
	
l2986:	
	movlw	01h
	
u2465:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2465
	line	32
	
l2988:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2471
	goto	u2470
u2471:
	goto	l738
u2470:
	
l740:	
	line	33
	
l734:	
	line	34
	
l2990:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2480
	goto	l741
u2480:
	line	35
	
l2992:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	
l741:	
	line	36
	
l2994:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	
l2996:	
	line	37
	
l742:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lwmod
psect	text186,local,class=CODE,delta=2
global __ptext186
__ptext186:

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
psect	text186
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 7
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l2938:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2331
	goto	u2330
u2331:
	goto	l608
u2330:
	line	9
	
l2940:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l609
	
l610:	
	line	11
	
l2942:	
	movlw	01h
	
u2345:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2345
	line	12
	
l2944:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	line	13
	
l609:	
	line	10
	
l2946:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2351
	goto	u2350
u2351:
	goto	l610
u2350:
	
l611:	
	line	14
	
l612:	
	line	15
	
l2948:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2365
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2365:
	skipc
	goto	u2361
	goto	u2360
u2361:
	goto	l613
u2360:
	line	16
	
l2950:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	
l613:	
	line	17
	
l2952:	
	movlw	01h
	
u2375:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2375
	line	18
	
l2954:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2381
	goto	u2380
u2381:
	goto	l612
u2380:
	
l614:	
	line	19
	
l608:	
	line	20
	
l2956:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	
l2958:	
	line	21
	
l615:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text187,local,class=CODE,delta=2
global __ptext187
__ptext187:

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
psect	text187
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 7
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l2914:	
	movlw	low(0)
	movwf	(___lwdiv@quotient)
	movlw	high(0)
	movwf	((___lwdiv@quotient))+1
	line	10
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2261
	goto	u2260
u2261:
	goto	l598
u2260:
	line	11
	
l2916:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l599
	
l600:	
	line	13
	
l2918:	
	movlw	01h
	
u2275:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2275
	line	14
	
l2920:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	line	15
	
l599:	
	line	12
	
l2922:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l600
u2280:
	
l601:	
	line	16
	
l602:	
	line	17
	
l2924:	
	movlw	01h
	
u2295:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2295
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2305
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2305:
	skipc
	goto	u2301
	goto	u2300
u2301:
	goto	l603
u2300:
	line	19
	
l2926:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l2928:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	21
	
l603:	
	line	22
	
l2930:	
	movlw	01h
	
u2315:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2315
	line	23
	
l2932:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2321
	goto	u2320
u2321:
	goto	l602
u2320:
	
l604:	
	line	24
	
l598:	
	line	25
	
l2934:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	
l2936:	
	line	26
	
l605:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_delay
psect	text188,local,class=CODE,delta=2
global __ptext188
__ptext188:

;; *************** function _delay *****************
;; Defined at:
;;		line 7 in file "C:\Users\TECH\Desktop\madhu pic folder\ADC\ADC task\8 sensor with lcd value\8 sensor with lcd value.c"
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
psect	text188
	file	"C:\Users\TECH\Desktop\madhu pic folder\ADC\ADC task\8 sensor with lcd value\8 sensor with lcd value.c"
	line	7
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	8
	
l2902:	
;8 sensor with lcd value.c: 8: while(x--);
	goto	l559
	
l560:	
	
l559:	
	
l2904:	
	movlw	low(01h)
	subwf	(delay@x),f
	movlw	high(01h)
	skipc
	decf	(delay@x+1),f
	subwf	(delay@x+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@x+1)),w
	skipz
	goto	u2245
	movlw	low(0FFFFh)
	xorwf	((delay@x)),w
u2245:

	skipz
	goto	u2241
	goto	u2240
u2241:
	goto	l560
u2240:
	
l561:	
	line	9
	
l562:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text189,local,class=CODE,delta=2
global __ptext189
__ptext189:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
