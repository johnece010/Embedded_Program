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
	global	_sega
	global	_segb
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\TECH\Desktop\madhu pic folder\7 SEGMENT DIAPLAY\SEG TASK\2.seg task\2 task.c"
	line	9

;initializer for _sega
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

	line	10

;initializer for _segb
	retlw	06Fh
	retlw	0

	retlw	07Fh
	retlw	0

	retlw	07h
	retlw	0

	retlw	07Dh
	retlw	0

	retlw	06Dh
	retlw	0

	retlw	066h
	retlw	0

	retlw	04Fh
	retlw	0

	retlw	05Bh
	retlw	0

	retlw	06h
	retlw	0

	retlw	03Fh
	retlw	0

	global	_i1
	global	_i2
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	file	"2 task.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_i1:
       ds      2

_i2:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\TECH\Desktop\madhu pic folder\7 SEGMENT DIAPLAY\SEG TASK\2.seg task\2 task.c"
	line	9
_sega:
       ds      20

psect	dataBANK0
	file	"C:\Users\TECH\Desktop\madhu pic folder\7 SEGMENT DIAPLAY\SEG TASK\2.seg task\2 task.c"
	line	10
_segb:
       ds      20

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
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
	movlw low(__pdataBANK0+40)
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
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	delay@x
delay@x:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	??_main
??_main:	; 0 bytes @ 0x2
	ds	1
;;Data sizes: Strings 0, constant 0, data 40, bss 4, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      3       7
;; BANK0           80      0      40
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0      22
;;                                              2 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                2     0      2      22
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
;;DATA                 0      0      30      12        0.0%
;;ABS                  0      0      2F       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       1       2        0.0%
;;BANK0               50      0      28       5       50.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      3       7       1       50.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 13 in file "C:\Users\TECH\Desktop\madhu pic folder\7 SEGMENT DIAPLAY\SEG TASK\2.seg task\2 task.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  572[COMMON] int 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\TECH\Desktop\madhu pic folder\7 SEGMENT DIAPLAY\SEG TASK\2.seg task\2 task.c"
	line	13
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
	line	15
	
l1769:	
;2 task.c: 15: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	16
;2 task.c: 16: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	17
	
l1771:	
;2 task.c: 17: TRISC=0X03;
	movlw	(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	18
	
l1773:	
;2 task.c: 18: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	19
;2 task.c: 19: while(1)
	
l573:	
	line	21
	
l1775:	
;2 task.c: 20: {
;2 task.c: 21: if(RC0==1)
	btfss	(56/8),(56)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l574
u2200:
	line	24
	
l1777:	
;2 task.c: 22: {
;2 task.c: 24: if(i1<9)
	movf	(_i1+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(09h))^80h
	subwf	btemp+0,w
	skipz
	goto	u2215
	movlw	low(09h)
	subwf	(_i1),w
u2215:

	skipnc
	goto	u2211
	goto	u2210
u2211:
	goto	l575
u2210:
	line	26
	
l1779:	
;2 task.c: 25: {
;2 task.c: 26: i1++;
	movlw	low(01h)
	addwf	(_i1),f
	skipnc
	incf	(_i1+1),f
	movlw	high(01h)
	addwf	(_i1+1),f
	line	27
	
l1781:	
;2 task.c: 27: PORTB=sega[i1];
	movf	(_i1),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_sega&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	28
	
l1783:	
;2 task.c: 28: delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	29
	
l575:	
	line	30
	
l574:	
	line	32
	
l1785:	
;2 task.c: 29: }
;2 task.c: 30: }
;2 task.c: 32: if(RC1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(57/8),(57)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l576
u2220:
	line	35
	
l1787:	
;2 task.c: 33: {
;2 task.c: 35: if(i2<9)
	movf	(_i2+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(09h))^80h
	subwf	btemp+0,w
	skipz
	goto	u2235
	movlw	low(09h)
	subwf	(_i2),w
u2235:

	skipnc
	goto	u2231
	goto	u2230
u2231:
	goto	l577
u2230:
	line	37
	
l1789:	
;2 task.c: 36: {
;2 task.c: 37: i2++;
	movlw	low(01h)
	addwf	(_i2),f
	skipnc
	incf	(_i2+1),f
	movlw	high(01h)
	addwf	(_i2+1),f
	line	38
	
l1791:	
;2 task.c: 38: PORTB=segb[i2];
	movf	(_i2),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_segb&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	39
	
l1793:	
;2 task.c: 39: delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	40
	
l577:	
	line	41
	
l576:	
	line	44
	
l578:	
	line	19
	goto	l573
	
l579:	
	line	45
	
l580:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_delay
psect	text73,local,class=CODE,delta=2
global __ptext73
__ptext73:

;; *************** function _delay *****************
;; Defined at:
;;		line 6 in file "C:\Users\TECH\Desktop\madhu pic folder\7 SEGMENT DIAPLAY\SEG TASK\2.seg task\2 task.c"
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
psect	text73
	file	"C:\Users\TECH\Desktop\madhu pic folder\7 SEGMENT DIAPLAY\SEG TASK\2.seg task\2 task.c"
	line	6
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg]
	line	7
	
l1765:	
;2 task.c: 7: while (x--);
	goto	l567
	
l568:	
	
l567:	
	
l1767:	
	movlw	low(01h)
	subwf	(delay@x),f
	movlw	high(01h)
	skipc
	decf	(delay@x+1),f
	subwf	(delay@x+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@x+1)),w
	skipz
	goto	u2195
	movlw	low(0FFFFh)
	xorwf	((delay@x)),w
u2195:

	skipz
	goto	u2191
	goto	u2190
u2191:
	goto	l568
u2190:
	
l569:	
	line	8
	
l570:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text74,local,class=CODE,delta=2
global __ptext74
__ptext74:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
