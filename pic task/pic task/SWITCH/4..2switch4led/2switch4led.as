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
	FNCALL	_main,_delay
	FNROOT	_main
	global	_PORTB
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_PORTB	set	6
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
	global	_TRISB
_TRISB	set	134
	file	"2switch4led.as"
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
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	delay@x
delay@x:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
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
;;   _main->_delay
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
;; (0) _main                                                 0     0      0      15
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                2     0      2      15
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _delay
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
;;STACK                0      0       1       2        0.0%
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
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 13 in file "C:\Users\TECH\Desktop\madhu pic folder\SWITCH\4..2switch4led\2switch4led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  564[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\TECH\Desktop\madhu pic folder\SWITCH\4..2switch4led\2switch4led.c"
	line	13
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	14
	
l1737:	
;2switch4led.c: 14: TRISB=0X05;
	movlw	(05h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	15
	
l1739:	
;2switch4led.c: 15: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	16
;2switch4led.c: 16: while(1)
	
l565:	
	line	18
	
l1741:	
;2switch4led.c: 17: {
;2switch4led.c: 18: if((RB0==1)&&(RB2==0))
	btfss	(48/8),(48)&7
	goto	u2151
	goto	u2150
u2151:
	goto	l566
u2150:
	
l1743:	
	btfsc	(50/8),(50)&7
	goto	u2161
	goto	u2160
u2161:
	goto	l566
u2160:
	line	20
	
l1745:	
;2switch4led.c: 19: {
;2switch4led.c: 20: RB1=1;
	bsf	(49/8),(49)&7
	line	21
;2switch4led.c: 21: }
	goto	l567
	line	22
	
l566:	
	line	24
;2switch4led.c: 22: else
;2switch4led.c: 23: {
;2switch4led.c: 24: RB1=0;
	bcf	(49/8),(49)&7
	line	25
	
l567:	
	line	26
;2switch4led.c: 25: }
;2switch4led.c: 26: if((RB2==1)&&(RB0==0))
	btfss	(50/8),(50)&7
	goto	u2171
	goto	u2170
u2171:
	goto	l568
u2170:
	
l1747:	
	btfsc	(48/8),(48)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l568
u2180:
	line	28
	
l1749:	
;2switch4led.c: 27: {
;2switch4led.c: 28: RB3=1;
	bsf	(51/8),(51)&7
	line	29
;2switch4led.c: 29: }
	goto	l569
	line	30
	
l568:	
	line	32
;2switch4led.c: 30: else
;2switch4led.c: 31: {
;2switch4led.c: 32: RB3=0;
	bcf	(51/8),(51)&7
	line	33
	
l569:	
	line	34
;2switch4led.c: 33: }
;2switch4led.c: 34: if((RB0==1)&&(RB2==0))
	btfss	(48/8),(48)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l570
u2190:
	
l1751:	
	btfsc	(50/8),(50)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l570
u2200:
	line	36
	
l1753:	
;2switch4led.c: 35: {
;2switch4led.c: 36: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	37
	
l1755:	
;2switch4led.c: 37: if(RB2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7
	goto	u2211
	goto	u2210
u2211:
	goto	l571
u2210:
	line	39
	
l1757:	
;2switch4led.c: 38: {
;2switch4led.c: 39: RB4=1;
	bsf	(52/8),(52)&7
	line	41
;2switch4led.c: 41: }
	goto	l572
	line	42
	
l571:	
	line	44
;2switch4led.c: 42: else
;2switch4led.c: 43: {
;2switch4led.c: 44: RB4=0;
	bcf	(52/8),(52)&7
	line	45
	
l572:	
	line	46
	
l570:	
	line	47
;2switch4led.c: 45: }
;2switch4led.c: 46: }
;2switch4led.c: 47: if((RB2==1)&&(RB0==0))
	btfss	(50/8),(50)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l573
u2220:
	
l1759:	
	btfsc	(48/8),(48)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l573
u2230:
	line	49
	
l1761:	
;2switch4led.c: 48: {
;2switch4led.c: 49: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	52
	
l1763:	
;2switch4led.c: 52: if(RB0==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l574
u2240:
	line	54
	
l1765:	
;2switch4led.c: 53: {
;2switch4led.c: 54: RB5=1;
	bsf	(53/8),(53)&7
	line	55
;2switch4led.c: 55: }
	goto	l575
	line	57
	
l574:	
	line	59
;2switch4led.c: 57: else
;2switch4led.c: 58: {
;2switch4led.c: 59: RB5=0;
	bcf	(53/8),(53)&7
	line	60
	
l575:	
	line	61
	
l573:	
	line	62
	
l576:	
	line	16
	goto	l565
	
l577:	
	line	63
	
l578:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_delay
psect	text55,local,class=CODE,delta=2
global __ptext55
__ptext55:

;; *************** function _delay *****************
;; Defined at:
;;		line 9 in file "C:\Users\TECH\Desktop\madhu pic folder\SWITCH\4..2switch4led\2switch4led.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text55
	file	"C:\Users\TECH\Desktop\madhu pic folder\SWITCH\4..2switch4led\2switch4led.c"
	line	9
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg]
	line	10
	
l947:	
;2switch4led.c: 10: while(x--);
	goto	l559
	
l560:	
	
l559:	
	
l949:	
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
	goto	l560
u10:
	
l561:	
	line	11
	
l562:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text56,local,class=CODE,delta=2
global __ptext56
__ptext56:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
