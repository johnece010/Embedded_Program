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
# 2 "C:\Users\TECH\Desktop\madhu pic folder\timer0\1 sec timer\1sec timer.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "C:\Users\TECH\Desktop\madhu pic folder\timer0\1 sec timer\1sec timer.c"
	dw 0X3F72 ;#
	FNCALL	_main,_delay1
	FNCALL	_delay1,_delay
	FNROOT	_main
	global	_PORTB
psect	text66,local,class=CODE,delta=2
global __ptext66
__ptext66:
_PORTB	set	6
	global	_TMR0
_TMR0	set	1
	global	_T0IF
_T0IF	set	90
	global	_TRISB
_TRISB	set	134
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
	file	"1sec timer.as"
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
	global	??_delay
??_delay:	; 0 bytes @ 0x0
	global	?_delay1
?_delay1:	; 0 bytes @ 0x0
	global	??_delay1
??_delay1:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	delay1@i
delay1@i:	; 2 bytes @ 0x0
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      2       2
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_delay1
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0      30
;;                             _delay1
;; ---------------------------------------------------------------------------------
;; (1) _delay1                                               2     2      0      30
;;                                              0 COMMON     2     2      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _delay1
;;     _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      2       2       1       14.3%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
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
;;		line 24 in file "C:\Users\TECH\Desktop\madhu pic folder\timer0\1 sec timer\1sec timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay1
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\TECH\Desktop\madhu pic folder\timer0\1 sec timer\1sec timer.c"
	line	24
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2-btemp+0+pclath+cstack]
	line	25
	
l1746:	
;1sec timer.c: 25: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	26
;1sec timer.c: 26: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	27
;1sec timer.c: 27: while(1)
	
l570:	
	line	29
	
l1748:	
;1sec timer.c: 28: {
;1sec timer.c: 29: PORTB=0X01;
	movlw	(01h)
	movwf	(6)	;volatile
	line	30
	
l1750:	
;1sec timer.c: 30: delay1();
	fcall	_delay1
	line	31
	
l1752:	
;1sec timer.c: 31: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	32
	
l1754:	
;1sec timer.c: 32: delay1();
	fcall	_delay1
	line	33
	
l571:	
	line	27
	goto	l570
	
l572:	
	line	34
	
l573:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_delay1
psect	text67,local,class=CODE,delta=2
global __ptext67
__ptext67:

;; *************** function _delay1 *****************
;; Defined at:
;;		line 17 in file "C:\Users\TECH\Desktop\madhu pic folder\timer0\1 sec timer\1sec timer.c"
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
psect	text67
	file	"C:\Users\TECH\Desktop\madhu pic folder\timer0\1 sec timer\1sec timer.c"
	line	17
	global	__size_of_delay1
	__size_of_delay1	equ	__end_of_delay1-_delay1
	
_delay1:	
	opt	stack 7
; Regs used in _delay1: [wreg+status,2-btemp+0+pclath+cstack]
	line	18
	
l1734:	
;1sec timer.c: 18: for(int i=0;i<=20;i++)
	movlw	low(0)
	movwf	(delay1@i)
	movlw	high(0)
	movwf	((delay1@i))+1
	
l1736:	
	movf	(delay1@i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(015h))^80h
	subwf	btemp+0,w
	skipz
	goto	u2155
	movlw	low(015h)
	subwf	(delay1@i),w
u2155:

	skipc
	goto	u2151
	goto	u2150
u2151:
	goto	l565
u2150:
	
l1738:	
	goto	l566
	line	19
	
l565:	
	line	20
	
l1740:	
;1sec timer.c: 19: {
;1sec timer.c: 20: delay();
	fcall	_delay
	line	18
	
l1742:	
	movlw	low(01h)
	addwf	(delay1@i),f
	skipnc
	incf	(delay1@i+1),f
	movlw	high(01h)
	addwf	(delay1@i+1),f
	
l1744:	
	movf	(delay1@i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(015h))^80h
	subwf	btemp+0,w
	skipz
	goto	u2165
	movlw	low(015h)
	subwf	(delay1@i),w
u2165:

	skipc
	goto	u2161
	goto	u2160
u2161:
	goto	l565
u2160:
	
l566:	
	line	22
	
l567:	
	return
	opt stack 0
GLOBAL	__end_of_delay1
	__end_of_delay1:
;; =============== function _delay1 ends ============

	signat	_delay1,88
	global	_delay
psect	text68,local,class=CODE,delta=2
global __ptext68
__ptext68:

;; *************** function _delay *****************
;; Defined at:
;;		line 4 in file "C:\Users\TECH\Desktop\madhu pic folder\timer0\1 sec timer\1sec timer.c"
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
;; This function uses a non-reentrant model
;;
psect	text68
	file	"C:\Users\TECH\Desktop\madhu pic folder\timer0\1 sec timer\1sec timer.c"
	line	4
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg+status,2]
	line	5
	
l942:	
;1sec timer.c: 5: T0CS=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1037/8)^080h,(1037)&7
	line	6
;1sec timer.c: 6: T0SE=0;
	bcf	(1036/8)^080h,(1036)&7
	line	7
;1sec timer.c: 7: PSA=0;
	bcf	(1035/8)^080h,(1035)&7
	line	8
;1sec timer.c: 8: PS0=1;
	bsf	(1032/8)^080h,(1032)&7
	line	9
;1sec timer.c: 9: PS1=1;
	bsf	(1033/8)^080h,(1033)&7
	line	10
;1sec timer.c: 10: PS2=1;
	bsf	(1034/8)^080h,(1034)&7
	line	11
	
l944:	
;1sec timer.c: 11: TMR0=60;
	movlw	(03Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	12
;1sec timer.c: 12: while(T0IF==0);
	goto	l559
	
l560:	
	
l559:	
	btfss	(90/8),(90)&7
	goto	u11
	goto	u10
u11:
	goto	l560
u10:
	
l561:	
	line	13
;1sec timer.c: 13: T0IF=0;
	bcf	(90/8),(90)&7
	line	14
	
l946:	
;1sec timer.c: 14: TMR0=0;
	clrf	(1)	;volatile
	line	15
	
l562:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
psect	text69,local,class=CODE,delta=2
global __ptext69
__ptext69:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
