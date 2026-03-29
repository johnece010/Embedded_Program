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
# 3 "C:\Users\ELCOT\Desktop\eeprom data\epprom.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "C:\Users\ELCOT\Desktop\eeprom data\epprom.c"
	dw 0X3F72 ;#
	FNCALL	_main,_init
	FNCALL	_main,_readFromEEPROM
	FNCALL	_main,_delay
	FNCALL	_main,_saveToEEPROM
	FNROOT	_main
	global	_PORTB
psect	text90,local,class=CODE,delta=2
global __ptext90
__ptext90:
_PORTB	set	6
	global	_GIE
_GIE	set	95
	global	_RB0
_RB0	set	48
	global	_TRISB
_TRISB	set	134
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON2
_EECON2	set	397
	global	_EEPGD
_EEPGD	set	3175
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
	file	"epprom.as"
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
	global	?_init
?_init:	; 0 bytes @ 0x0
	global	??_init
??_init:	; 0 bytes @ 0x0
	global	??_readFromEEPROM
??_readFromEEPROM:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	??_delay
??_delay:	; 0 bytes @ 0x0
	global	?_saveToEEPROM
?_saveToEEPROM:	; 0 bytes @ 0x0
	global	??_saveToEEPROM
??_saveToEEPROM:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_readFromEEPROM
?_readFromEEPROM:	; 1 bytes @ 0x0
	global	saveToEEPROM@data
saveToEEPROM@data:	; 1 bytes @ 0x0
	global	delay@i
delay@i:	; 2 bytes @ 0x0
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x2
	ds	2
	global	main@currentAddress
main@currentAddress:	; 1 bytes @ 0x4
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5       5
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 3     3      0      90
;;                                              2 COMMON     3     3      0
;;                               _init
;;                     _readFromEEPROM
;;                              _delay
;;                       _saveToEEPROM
;; ---------------------------------------------------------------------------------
;; (1) _saveToEEPROM                                         1     1      0      15
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                2     2      0      30
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _readFromEEPROM                                       0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _init                                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _init
;;   _readFromEEPROM
;;   _delay
;;   _saveToEEPROM
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      5       5       1       35.7%
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
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 15 in file "C:\Users\ELCOT\Desktop\eeprom data\epprom.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  currentAddre    1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_init
;;		_readFromEEPROM
;;		_delay
;;		_saveToEEPROM
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\ELCOT\Desktop\eeprom data\epprom.c"
	line	15
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	16
	
l1788:	
;epprom.c: 16: init();
	fcall	_init
	line	18
	
l1790:	
;epprom.c: 18: unsigned char currentAddress = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(main@currentAddress)
	line	20
	
l1792:	
;epprom.c: 20: currentAddress = readFromEEPROM();
	fcall	_readFromEEPROM
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@currentAddress)
	line	22
;epprom.c: 22: while (1) {
	
l567:	
	line	23
	
l1794:	
;epprom.c: 23: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	25
	
l1796:	
;epprom.c: 25: PORTB |= (1 << currentAddress);
	movlw	(01h)
	movwf	(??_main+0)+0
	incf	(main@currentAddress),w
	goto	u2174
u2175:
	clrc
	rlf	(??_main+0)+0,f
u2174:
	addlw	-1
	skipz
	goto	u2175
	movf	0+(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	iorwf	(6),f	;volatile
	line	27
	
l1798:	
;epprom.c: 27: delay();
	fcall	_delay
	line	29
	
l1800:	
;epprom.c: 29: if (RB0 == 0) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l568
u2180:
	line	30
	
l1802:	
;epprom.c: 30: while(RB0 == 0);
	goto	l569
	
l570:	
	
l569:	
	btfss	(48/8),(48)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l570
u2190:
	
l571:	
	line	31
	
l1804:	
;epprom.c: 31: currentAddress++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@currentAddress),f
	line	32
	
l1806:	
;epprom.c: 32: saveToEEPROM(currentAddress);
	movf	(main@currentAddress),w
	fcall	_saveToEEPROM
	line	34
;epprom.c: 34: while (RB0 == 0);
	goto	l572
	
l573:	
	
l572:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l573
u2200:
	
l574:	
	line	35
	
l568:	
	line	37
	
l1808:	
;epprom.c: 35: }
;epprom.c: 37: if (currentAddress == 8) {
	movf	(main@currentAddress),w
	xorlw	08h
	skipz
	goto	u2211
	goto	u2210
u2211:
	goto	l575
u2210:
	line	38
	
l1810:	
;epprom.c: 38: currentAddress = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(main@currentAddress)
	line	39
	
l575:	
	line	40
	
l576:	
	line	22
	goto	l567
	
l577:	
	line	41
	
l578:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_saveToEEPROM
psect	text91,local,class=CODE,delta=2
global __ptext91
__ptext91:

;; *************** function _saveToEEPROM *****************
;; Defined at:
;;		line 52 in file "C:\Users\ELCOT\Desktop\eeprom data\epprom.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text91
	file	"C:\Users\ELCOT\Desktop\eeprom data\epprom.c"
	line	52
	global	__size_of_saveToEEPROM
	__size_of_saveToEEPROM	equ	__end_of_saveToEEPROM-_saveToEEPROM
	
_saveToEEPROM:	
	opt	stack 7
; Regs used in _saveToEEPROM: [wreg+status,2]
;saveToEEPROM@data stored from wreg
	movwf	(saveToEEPROM@data)
	line	53
	
l984:	
;epprom.c: 53: EEADR = 0x00;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(269)^0100h	;volatile
	line	54
	
l986:	
;epprom.c: 54: EEDATA = data;
	movf	(saveToEEPROM@data),w
	movwf	(268)^0100h	;volatile
	line	55
	
l988:	
;epprom.c: 55: EEPGD = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3175/8)^0180h,(3175)&7
	line	57
	
l990:	
;epprom.c: 57: WREN = 1;
	bsf	(3170/8)^0180h,(3170)&7
	line	58
	
l992:	
;epprom.c: 58: GIE = 0;
	bcf	(95/8),(95)&7
	line	59
	
l994:	
;epprom.c: 59: EECON2 = 0x55;
	movlw	(055h)
	movwf	(397)^0180h	;volatile
	line	60
	
l996:	
;epprom.c: 60: EECON2 = 0xAA;
	movlw	(0AAh)
	movwf	(397)^0180h	;volatile
	line	61
	
l998:	
;epprom.c: 61: WR = 1;
	bsf	(3169/8)^0180h,(3169)&7
	line	62
	
l1000:	
;epprom.c: 62: GIE = 1;
	bsf	(95/8),(95)&7
	line	63
;epprom.c: 63: while (WR == 1);
	goto	l589
	
l590:	
	
l589:	
	btfsc	(3169/8)^0180h,(3169)&7
	goto	u31
	goto	u30
u31:
	goto	l590
u30:
	
l591:	
	line	64
;epprom.c: 64: WREN = 0;
	bcf	(3170/8)^0180h,(3170)&7
	line	65
	
l592:	
	return
	opt stack 0
GLOBAL	__end_of_saveToEEPROM
	__end_of_saveToEEPROM:
;; =============== function _saveToEEPROM ends ============

	signat	_saveToEEPROM,4216
	global	_delay
psect	text92,local,class=CODE,delta=2
global __ptext92
__ptext92:

;; *************** function _delay *****************
;; Defined at:
;;		line 48 in file "C:\Users\ELCOT\Desktop\eeprom data\epprom.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0[COMMON] unsigned int 
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
;;      Locals:         2       0       0       0       0
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
psect	text92
	file	"C:\Users\ELCOT\Desktop\eeprom data\epprom.c"
	line	48
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg]
	line	49
	
l978:	
;epprom.c: 49: for (unsigned int i = 0; i < 50000; i++);
	movlw	low(0)
	movwf	(delay@i)
	movlw	high(0)
	movwf	((delay@i))+1
	movlw	high(0C350h)
	subwf	(delay@i+1),w
	movlw	low(0C350h)
	skipnz
	subwf	(delay@i),w
	skipc
	goto	u11
	goto	u10
u11:
	goto	l584
u10:
	
l980:	
	goto	l585
	
l584:	
	
l982:	
	movlw	low(01h)
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(01h)
	addwf	(delay@i+1),f
	movlw	high(0C350h)
	subwf	(delay@i+1),w
	movlw	low(0C350h)
	skipnz
	subwf	(delay@i),w
	skipc
	goto	u21
	goto	u20
u21:
	goto	l584
u20:
	
l585:	
	line	50
	
l586:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
	global	_readFromEEPROM
psect	text93,local,class=CODE,delta=2
global __ptext93
__ptext93:

;; *************** function _readFromEEPROM *****************
;; Defined at:
;;		line 67 in file "C:\Users\ELCOT\Desktop\eeprom data\epprom.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text93
	file	"C:\Users\ELCOT\Desktop\eeprom data\epprom.c"
	line	67
	global	__size_of_readFromEEPROM
	__size_of_readFromEEPROM	equ	__end_of_readFromEEPROM-_readFromEEPROM
	
_readFromEEPROM:	
	opt	stack 7
; Regs used in _readFromEEPROM: [wreg+status,2]
	line	68
	
l968:	
;epprom.c: 68: EEADR = 0x00;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(269)^0100h	;volatile
	line	69
	
l970:	
;epprom.c: 69: EEPGD = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3175/8)^0180h,(3175)&7
	line	71
	
l972:	
;epprom.c: 71: RD = 1;
	bsf	(3168/8)^0180h,(3168)&7
	line	72
	
l974:	
;epprom.c: 72: return EEDATA;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(268)^0100h,w	;volatile
	
l976:	
	line	73
	
l595:	
	return
	opt stack 0
GLOBAL	__end_of_readFromEEPROM
	__end_of_readFromEEPROM:
;; =============== function _readFromEEPROM ends ============

	signat	_readFromEEPROM,89
	global	_init
psect	text94,local,class=CODE,delta=2
global __ptext94
__ptext94:

;; *************** function _init *****************
;; Defined at:
;;		line 43 in file "C:\Users\ELCOT\Desktop\eeprom data\epprom.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text94
	file	"C:\Users\ELCOT\Desktop\eeprom data\epprom.c"
	line	43
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
	opt	stack 7
; Regs used in _init: [wreg+status,2]
	line	44
	
l964:	
;epprom.c: 44: TRISB = 0x01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	45
	
l966:	
;epprom.c: 45: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	46
	
l581:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
;; =============== function _init ends ============

	signat	_init,88
psect	text95,local,class=CODE,delta=2
global __ptext95
__ptext95:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
