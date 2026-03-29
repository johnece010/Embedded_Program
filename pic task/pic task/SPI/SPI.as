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
	global	_PORTC
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_PORTC	set	7
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_RC0
_RC0	set	56
	global	_SSPIF
_SSPIF	set	99
	global	_SSPSTAT
_SSPSTAT	set	148
	global	_TRISC
_TRISC	set	135
	global	_BF
_BF	set	1184
	file	"SPI.as"
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
;;		line 8 in file "D:\Madhu\madhu pic folder\pic task\SPI\SPI.C"
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
	file	"D:\Madhu\madhu pic folder\pic task\SPI\SPI.C"
	line	8
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	9
	
l1751:	
;SPI.C: 9: TRISC=0X10;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	10
	
l1753:	
;SPI.C: 10: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	11
	
l1755:	
;SPI.C: 11: SSPSTAT=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(148)^080h	;volatile
	line	12
;SPI.C: 12: SSPCON=0X20;
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	16
	
l1757:	
;SPI.C: 16: RC0=0;
	bcf	(56/8),(56)&7
	line	17
;SPI.C: 17: SSPBUF=0X06;
	movlw	(06h)
	movwf	(19)	;volatile
	line	18
;SPI.C: 18: while(SSPIF==0);
	goto	l565
	
l566:	
	
l565:	
	btfss	(99/8),(99)&7
	goto	u2151
	goto	u2150
u2151:
	goto	l566
u2150:
	
l567:	
	line	19
;SPI.C: 19: SSPIF=0;
	bcf	(99/8),(99)&7
	line	20
;SPI.C: 20: RC0=1;
	bsf	(56/8),(56)&7
	line	21
	
l1759:	
;SPI.C: 21: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	25
	
l1761:	
;SPI.C: 25: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	26
	
l1763:	
;SPI.C: 26: SSPBUF=0X02;
	movlw	(02h)
	movwf	(19)	;volatile
	line	27
	
l1765:	
;SPI.C: 27: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	28
;SPI.C: 28: while(SSPIF==0);
	goto	l568
	
l569:	
	
l568:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2161
	goto	u2160
u2161:
	goto	l569
u2160:
	
l570:	
	line	29
;SPI.C: 29: SSPIF=0;
	bcf	(99/8),(99)&7
	line	30
	
l1767:	
;SPI.C: 30: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	31
	
l1769:	
;SPI.C: 31: SSPBUF=0XCF;
	movlw	(0CFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	32
	
l1771:	
;SPI.C: 32: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	33
;SPI.C: 33: while(SSPIF==0);
	goto	l571
	
l572:	
	
l571:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2171
	goto	u2170
u2171:
	goto	l572
u2170:
	
l573:	
	line	34
;SPI.C: 34: SSPIF=0;
	bcf	(99/8),(99)&7
	line	35
	
l1773:	
;SPI.C: 35: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	36
	
l1775:	
;SPI.C: 36: SSPBUF='M';
	movlw	(04Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	37
;SPI.C: 37: while(SSPIF==0);
	goto	l574
	
l575:	
	
l574:	
	btfss	(99/8),(99)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l575
u2180:
	
l576:	
	line	38
;SPI.C: 38: SSPIF=0;
	bcf	(99/8),(99)&7
	line	39
	
l1777:	
;SPI.C: 39: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	40
	
l1779:	
;SPI.C: 40: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	41
;SPI.C: 41: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	44
	
l1781:	
;SPI.C: 44: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	45
	
l1783:	
;SPI.C: 45: SSPBUF=0X04;
	movlw	(04h)
	movwf	(19)	;volatile
	line	46
;SPI.C: 46: while(SSPIF==0);
	goto	l577
	
l578:	
	
l577:	
	btfss	(99/8),(99)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l578
u2190:
	
l579:	
	line	47
;SPI.C: 47: SSPIF=0;
	bcf	(99/8),(99)&7
	line	48
	
l1785:	
;SPI.C: 48: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	49
	
l1787:	
;SPI.C: 49: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	50
;SPI.C: 50: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	53
	
l1789:	
;SPI.C: 53: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	54
	
l1791:	
;SPI.C: 54: SSPBUF=0X03;
	movlw	(03h)
	movwf	(19)	;volatile
	line	55
	
l1793:	
;SPI.C: 55: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	56
;SPI.C: 56: while(SSPIF==0);
	goto	l580
	
l581:	
	
l580:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l581
u2200:
	
l582:	
	line	58
;SPI.C: 58: SSPIF=0;
	bcf	(99/8),(99)&7
	line	59
	
l1795:	
;SPI.C: 59: SSPBUF=0XCF;
	movlw	(0CFh)
	movwf	(19)	;volatile
	line	60
	
l1797:	
;SPI.C: 60: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	61
;SPI.C: 61: while(SSPIF==0);
	goto	l583
	
l584:	
	
l583:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2211
	goto	u2210
u2211:
	goto	l584
u2210:
	
l585:	
	line	63
;SPI.C: 63: SSPIF=0;
	bcf	(99/8),(99)&7
	line	64
	
l1799:	
;SPI.C: 64: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	65
	
l1801:	
;SPI.C: 65: SSPBUF=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(19)	;volatile
	line	66
	
l1803:	
;SPI.C: 66: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	67
;SPI.C: 67: while(BF==0);
	goto	l586
	
l587:	
	
l586:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1184/8)^080h,(1184)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l587
u2220:
	
l588:	
	line	68
;SPI.C: 68: BF=0;
	bcf	(1184/8)^080h,(1184)&7
	line	69
	
l1805:	
;SPI.C: 69: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	70
	
l1807:	
;SPI.C: 70: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	71
;SPI.C: 71: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	72
;SPI.C: 72: while(1)
	
l589:	
	line	74
;SPI.C: 73: {
	
l590:	
	line	72
	goto	l589
	
l591:	
	line	75
	
l592:	
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
;;		line 4 in file "D:\Madhu\madhu pic folder\pic task\SPI\SPI.C"
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
	file	"D:\Madhu\madhu pic folder\pic task\SPI\SPI.C"
	line	4
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg]
	line	5
	
l961:	
;SPI.C: 5: while(x--);
	goto	l559
	
l560:	
	
l559:	
	
l963:	
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
	line	6
	
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
