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
	FNCALL	_main,_pwm
	FNCALL	_main,_delay
	FNROOT	_main
	global	_i
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
_i:
       ds      2

	global	_CCP1CON
_CCP1CON	set	23
	global	_CCPR1L
_CCPR1L	set	21
	global	_T2CON
_T2CON	set	18
	global	_CCP1X
_CCP1X	set	189
	global	_CCP1Y
_CCP1Y	set	188
	global	_PR2
_PR2	set	146
	global	_TRISC
_TRISC	set	135
	file	"pwm.as"
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
	global	?_pwm
?_pwm:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	pwm@duty
pwm@duty:	; 2 bytes @ 0x0
	global	delay@x
delay@x:	; 2 bytes @ 0x0
	ds	2
	global	??_pwm
??_pwm:	; 0 bytes @ 0x2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x4
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 2 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4       6
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_pwm
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
;; (0) _main                                                 0     0      0      60
;;                                _pwm
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                2     0      2      15
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; (1) _pwm                                                  4     2      2      45
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _pwm
;;   _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      4       6       1       42.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;ABS                  0      0       6       3        0.0%
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
;;DATA                 0      0       7      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 14 in file "C:\Users\TECH\Desktop\madhu pic folder\timer2\pwm\pwm.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_pwm
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\TECH\Desktop\madhu pic folder\timer2\pwm\pwm.c"
	line	14
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2-btemp+0+pclath+cstack]
	line	15
	
l1744:	
;pwm.c: 15: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	16
	
l1746:	
;pwm.c: 16: T2CON=0X7F;
	movlw	(07Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(18)	;volatile
	line	17
	
l1748:	
;pwm.c: 17: CCP1CON=0X0C;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	18
	
l1750:	
;pwm.c: 18: PR2=255;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	19
;pwm.c: 19: while(1)
	
l570:	
	line	21
	
l1752:	
;pwm.c: 20: {
;pwm.c: 21: for(i=0;i<=1023;i++)
	movlw	low(0)
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	
l1754:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0400h))^80h
	subwf	btemp+0,w
	skipz
	goto	u2215
	movlw	low(0400h)
	subwf	(_i),w
u2215:

	skipc
	goto	u2211
	goto	u2210
u2211:
	goto	l571
u2210:
	
l1756:	
	goto	l572
	line	22
	
l571:	
	line	23
	
l1758:	
;pwm.c: 22: {
;pwm.c: 23: pwm(i);
	movf	(_i+1),w
	clrf	(?_pwm+1)
	addwf	(?_pwm+1)
	movf	(_i),w
	clrf	(?_pwm)
	addwf	(?_pwm)

	fcall	_pwm
	line	24
;pwm.c: 24: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	21
	
l1760:	
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	
l1762:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0400h))^80h
	subwf	btemp+0,w
	skipz
	goto	u2225
	movlw	low(0400h)
	subwf	(_i),w
u2225:

	skipc
	goto	u2221
	goto	u2220
u2221:
	goto	l571
u2220:
	
l572:	
	line	26
	
l1764:	
;pwm.c: 25: }
;pwm.c: 26: for(i=1024;i>0;i--)
	movlw	low(0400h)
	movwf	(_i)
	movlw	high(0400h)
	movwf	((_i))+1
	
l1766:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(01h))^80h
	subwf	btemp+0,w
	skipz
	goto	u2235
	movlw	low(01h)
	subwf	(_i),w
u2235:

	skipnc
	goto	u2231
	goto	u2230
u2231:
	goto	l573
u2230:
	
l1768:	
	goto	l574
	line	27
	
l573:	
	line	28
	
l1770:	
;pwm.c: 27: {
;pwm.c: 28: pwm(i);
	movf	(_i+1),w
	clrf	(?_pwm+1)
	addwf	(?_pwm+1)
	movf	(_i),w
	clrf	(?_pwm)
	addwf	(?_pwm)

	fcall	_pwm
	line	29
;pwm.c: 29: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	26
	
l1772:	
	movlw	low(-1)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(-1)
	addwf	(_i+1),f
	
l1774:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(01h))^80h
	subwf	btemp+0,w
	skipz
	goto	u2245
	movlw	low(01h)
	subwf	(_i),w
u2245:

	skipnc
	goto	u2241
	goto	u2240
u2241:
	goto	l573
u2240:
	
l574:	
	line	31
	
l575:	
	line	19
	goto	l570
	
l576:	
	line	32
	
l577:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_delay
psect	text67,local,class=CODE,delta=2
global __ptext67
__ptext67:

;; *************** function _delay *****************
;; Defined at:
;;		line 10 in file "C:\Users\TECH\Desktop\madhu pic folder\timer2\pwm\pwm.c"
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
psect	text67
	file	"C:\Users\TECH\Desktop\madhu pic folder\timer2\pwm\pwm.c"
	line	10
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg]
	line	11
	
l954:	
;pwm.c: 11: while(x--);
	goto	l564
	
l565:	
	
l564:	
	
l956:	
	movlw	low(01h)
	subwf	(delay@x),f
	movlw	high(01h)
	skipc
	decf	(delay@x+1),f
	subwf	(delay@x+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@x+1)),w
	skipz
	goto	u75
	movlw	low(0FFFFh)
	xorwf	((delay@x)),w
u75:

	skipz
	goto	u71
	goto	u70
u71:
	goto	l565
u70:
	
l566:	
	line	12
	
l567:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_pwm
psect	text68,local,class=CODE,delta=2
global __ptext68
__ptext68:

;; *************** function _pwm *****************
;; Defined at:
;;		line 4 in file "C:\Users\TECH\Desktop\madhu pic folder\timer2\pwm\pwm.c"
;; Parameters:    Size  Location     Type
;;  duty            2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text68
	file	"C:\Users\TECH\Desktop\madhu pic folder\timer2\pwm\pwm.c"
	line	4
	global	__size_of_pwm
	__size_of_pwm	equ	__end_of_pwm-_pwm
	
_pwm:	
	opt	stack 7
; Regs used in _pwm: [wreg+status,2+status,0]
	line	5
	
l950:	
;pwm.c: 5: CCP1Y=1&duty;
	btfsc	(pwm@duty),0
	goto	u11
	goto	u10
	
u11:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(188/8),(188)&7
	goto	u24
u10:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(188/8),(188)&7
u24:
	line	6
	
l952:	
;pwm.c: 6: CCP1X=1&(duty>>1);
	movf	(pwm@duty+1),w
	movwf	(??_pwm+0)+0+1
	movf	(pwm@duty),w
	movwf	(??_pwm+0)+0
	movlw	01h
u35:
	clrc
	rrf	(??_pwm+0)+1,f
	rrf	(??_pwm+0)+0,f
	addlw	-1
	skipz
	goto	u35
	btfsc	0+(??_pwm+0)+0,0
	goto	u41
	goto	u40
	
u41:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(189/8),(189)&7
	goto	u54
u40:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(189/8),(189)&7
u54:
	line	7
;pwm.c: 7: CCPR1L=duty>>2;
	movf	(pwm@duty+1),w
	movwf	(??_pwm+0)+0+1
	movf	(pwm@duty),w
	movwf	(??_pwm+0)+0
	movlw	02h
u65:
	clrc
	rrf	(??_pwm+0)+1,f
	rrf	(??_pwm+0)+0,f
	addlw	-1
	skipz
	goto	u65
	movf	0+(??_pwm+0)+0,w
	movwf	(21)	;volatile
	line	8
	
l561:	
	return
	opt stack 0
GLOBAL	__end_of_pwm
	__end_of_pwm:
;; =============== function _pwm ends ============

	signat	_pwm,4216
psect	text69,local,class=CODE,delta=2
global __ptext69
__ptext69:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
