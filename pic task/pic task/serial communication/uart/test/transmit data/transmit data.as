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
	FNCALL	_main,_serial
	FNCALL	_main,_delay
	FNCALL	_serial,_delay
	FNROOT	_main
	global	_PORTC
psect	text66,local,class=CODE,delta=2
global __ptext66
__ptext66:
_PORTC	set	7
	global	_RCSTA
_RCSTA	set	24
	global	_TXREG
_TXREG	set	25
	global	_SPBRG
_SPBRG	set	153
	global	_TRISC
_TRISC	set	135
	global	_TXSTA
_TXSTA	set	152
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
	retlw	109	;'m'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	104	;'h'
	retlw	117	;'u'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	file	"transmit data.as"
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
	global	?_serial
?_serial:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	delay@x
delay@x:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	??_serial
??_serial:	; 0 bytes @ 0x2
	global	serial@i
serial@i:	; 2 bytes @ 0x2
	ds	2
	global	serial@a
serial@a:	; 1 bytes @ 0x4
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x5
;;Data sizes: Strings 8, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5       5
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; serial@a	PTR unsigned char  size(1) Largest target is 8
;;		 -> STR_1(CODE[8]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_serial
;;   _serial->_delay
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
;; (0) _main                                                 0     0      0      90
;;                             _serial
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _serial                                               3     3      0      75
;;                                              2 COMMON     3     3      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                2     0      2      15
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _serial
;;     _delay
;;   _delay
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
;;		line 16 in file "C:\Users\TECH\Desktop\madhu pic folder\serial communication\uart\test\transmit data\transmit data.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  570[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;;		_serial
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\TECH\Desktop\madhu pic folder\serial communication\uart\test\transmit data\transmit data.c"
	line	16
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	17
	
l1749:	
;transmit data.c: 17: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	18
;transmit data.c: 18: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	19
	
l1751:	
;transmit data.c: 19: TXSTA=0X24;
	movlw	(024h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	20
	
l1753:	
;transmit data.c: 20: RCSTA=0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	21
	
l1755:	
;transmit data.c: 21: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	22
;transmit data.c: 22: while(1)
	
l571:	
	line	24
	
l1757:	
;transmit data.c: 23: {
;transmit data.c: 24: serial("madhu  ");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_serial
	line	25
	
l1759:	
;transmit data.c: 25: delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	26
	
l572:	
	line	22
	goto	l571
	
l573:	
	line	27
	
l574:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_serial
psect	text67,local,class=CODE,delta=2
global __ptext67
__ptext67:

;; *************** function _serial *****************
;; Defined at:
;;		line 7 in file "C:\Users\TECH\Desktop\madhu pic folder\serial communication\uart\test\transmit data\transmit data.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     PTR unsigned char 
;;		 -> STR_1(8), 
;; Auto vars:     Size  Location     Type
;;  a               1    4[COMMON] PTR unsigned char 
;;		 -> STR_1(8), 
;;  i               2    2[COMMON] int 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text67
	file	"C:\Users\TECH\Desktop\madhu pic folder\serial communication\uart\test\transmit data\transmit data.c"
	line	7
	global	__size_of_serial
	__size_of_serial	equ	__end_of_serial-_serial
	
_serial:	
	opt	stack 7
; Regs used in _serial: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;serial@a stored from wreg
	movwf	(serial@a)
	line	8
	
l1737:	
;transmit data.c: 8: for(int i=0;a[i]!=0;i++)
	movlw	low(0)
	movwf	(serial@i)
	movlw	high(0)
	movwf	((serial@i))+1
	goto	l565
	line	9
	
l566:	
	line	10
	
l1739:	
;transmit data.c: 9: {
;transmit data.c: 10: TXREG=a[i];
	movf	(serial@i),w
	addwf	(serial@a),w
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	11
	
l1741:	
;transmit data.c: 11: delay(20000);
	movlw	low(04E20h)
	movwf	(?_delay)
	movlw	high(04E20h)
	movwf	((?_delay))+1
	fcall	_delay
	line	8
	
l1743:	
	movlw	low(01h)
	addwf	(serial@i),f
	skipnc
	incf	(serial@i+1),f
	movlw	high(01h)
	addwf	(serial@i+1),f
	
l565:	
	
l1745:	
	movf	(serial@i),w
	addwf	(serial@a),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2151
	goto	u2150
u2151:
	goto	l566
u2150:
	
l567:	
	line	13
	
l1747:	
;transmit data.c: 12: }
;transmit data.c: 13: TXREG=0X1D;
	movlw	(01Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	14
	
l568:	
	return
	opt stack 0
GLOBAL	__end_of_serial
	__end_of_serial:
;; =============== function _serial ends ============

	signat	_serial,4216
	global	_delay
psect	text68,local,class=CODE,delta=2
global __ptext68
__ptext68:

;; *************** function _delay *****************
;; Defined at:
;;		line 3 in file "C:\Users\TECH\Desktop\madhu pic folder\serial communication\uart\test\transmit data\transmit data.c"
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
;;		_serial
;;		_main
;; This function uses a non-reentrant model
;;
psect	text68
	file	"C:\Users\TECH\Desktop\madhu pic folder\serial communication\uart\test\transmit data\transmit data.c"
	line	3
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg]
	line	4
	
l947:	
;transmit data.c: 4: while(x--);
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
	line	5
	
l562:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text69,local,class=CODE,delta=2
global __ptext69
__ptext69:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
