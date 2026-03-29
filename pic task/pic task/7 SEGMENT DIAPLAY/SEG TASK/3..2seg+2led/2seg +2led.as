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
	FNCALL	_main,_delay
	FNROOT	_main
	global	_seg
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\TECH\Desktop\madhu pic folder\7 SEGMENT DIAPLAY\SEG TASK\3..2seg+2led\2seg +2led.c"
	line	11

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
	global	_a
	global	_i
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	file	"2seg +2led.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_a:
       ds      2

_i:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_b:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\TECH\Desktop\madhu pic folder\7 SEGMENT DIAPLAY\SEG TASK\3..2seg+2led\2seg +2led.c"
_seg:
       ds      20

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
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
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	delay@x
delay@x:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
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
;;Data sizes: Strings 0, constant 0, data 20, bss 6, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      14
;; BANK0           80      0      22
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
;; (0) _main                                                 1     1      0     618
;;                                              9 COMMON     1     1      0
;;                            ___awdiv
;;                            ___awmod
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   ___awdiv
;;   ___awmod
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
;;DATA                 0      0      25      12        0.0%
;;ABS                  0      0      24       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       1       2        0.0%
;;BANK0               50      0      16       5       27.5%
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
;;		line 14 in file "C:\Users\TECH\Desktop\madhu pic folder\7 SEGMENT DIAPLAY\SEG TASK\3..2seg+2led\2seg +2led.c"
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
;;		___awdiv
;;		___awmod
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\TECH\Desktop\madhu pic folder\7 SEGMENT DIAPLAY\SEG TASK\3..2seg+2led\2seg +2led.c"
	line	14
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
	line	15
	
l1890:	
;2seg +2led.c: 15: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	16
;2seg +2led.c: 16: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	17
;2seg +2led.c: 17: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	18
;2seg +2led.c: 18: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	19
;2seg +2led.c: 19: while(1)
	
l573:	
	line	21
	
l1892:	
;2seg +2led.c: 20: {
;2seg +2led.c: 21: if(RC4==1)
	btfss	(60/8),(60)&7
	goto	u2401
	goto	u2400
u2401:
	goto	l574
u2400:
	line	23
	
l1894:	
;2seg +2led.c: 22: {
;2seg +2led.c: 23: for(i=0;i<=99;i++)
	movlw	low(0)
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	
l1896:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(064h))^80h
	subwf	btemp+0,w
	skipz
	goto	u2415
	movlw	low(064h)
	subwf	(_i),w
u2415:

	skipc
	goto	u2411
	goto	u2410
u2411:
	goto	l575
u2410:
	
l1898:	
	goto	l576
	line	24
	
l575:	
	line	25
	
l1900:	
;2seg +2led.c: 24: {
;2seg +2led.c: 25: if(i>10)
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0Bh))^80h
	subwf	btemp+0,w
	skipz
	goto	u2425
	movlw	low(0Bh)
	subwf	(_i),w
u2425:

	skipc
	goto	u2421
	goto	u2420
u2421:
	goto	l577
u2420:
	line	27
	
l1902:	
;2seg +2led.c: 26: {
;2seg +2led.c: 27: RC2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	line	28
;2seg +2led.c: 28: }
	goto	l578
	line	29
	
l577:	
	line	31
;2seg +2led.c: 29: else
;2seg +2led.c: 30: {
;2seg +2led.c: 31: RC2=0;
	bcf	(58/8),(58)&7
	line	32
	
l578:	
	line	33
	
l1904:	
;2seg +2led.c: 32: }
;2seg +2led.c: 33: if(i>50)
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(033h))^80h
	subwf	btemp+0,w
	skipz
	goto	u2435
	movlw	low(033h)
	subwf	(_i),w
u2435:

	skipc
	goto	u2431
	goto	u2430
u2431:
	goto	l579
u2430:
	line	35
	
l1906:	
;2seg +2led.c: 34: {
;2seg +2led.c: 35: RC3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	line	36
;2seg +2led.c: 36: }
	goto	l580
	line	37
	
l579:	
	line	39
;2seg +2led.c: 37: else
;2seg +2led.c: 38: {
;2seg +2led.c: 39: RC3=0;
	bcf	(59/8),(59)&7
	line	40
	
l580:	
	line	41
	
l1908:	
;2seg +2led.c: 40: }
;2seg +2led.c: 41: a=i/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_i+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_i),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	clrf	(_a+1)
	addwf	(_a+1)
	movf	(0+(?___awdiv)),w
	clrf	(_a)
	addwf	(_a)

	line	42
;2seg +2led.c: 42: b=i%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(_i+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_i),w
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

	line	43
	
l1910:	
;2seg +2led.c: 43: RC0=0;
	bcf	(56/8),(56)&7
	line	44
	
l1912:	
;2seg +2led.c: 44: RC1=1;
	bsf	(57/8),(57)&7
	line	45
	
l1914:	
;2seg +2led.c: 45: PORTB=seg[a];
	movf	(_a),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	46
	
l1916:	
;2seg +2led.c: 46: delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	47
	
l1918:	
;2seg +2led.c: 47: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	48
	
l1920:	
;2seg +2led.c: 48: RC1=0;
	bcf	(57/8),(57)&7
	line	49
;2seg +2led.c: 49: PORTB=seg[b];
	movf	(_b),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	_seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	50
	
l1922:	
;2seg +2led.c: 50: delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	23
	
l1924:	
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	
l1926:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(064h))^80h
	subwf	btemp+0,w
	skipz
	goto	u2445
	movlw	low(064h)
	subwf	(_i),w
u2445:

	skipc
	goto	u2441
	goto	u2440
u2441:
	goto	l575
u2440:
	
l576:	
	line	52
	
l574:	
	line	53
	
l581:	
	line	19
	goto	l573
	
l582:	
	line	54
	
l583:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	___awmod
psect	text95,local,class=CODE,delta=2
global __ptext95
__ptext95:

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
psect	text95
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l1854:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	line	9
	
l1856:	
	btfss	(___awmod@dividend+1),7
	goto	u2311
	goto	u2310
u2311:
	goto	l800
u2310:
	line	10
	
l1858:	
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
	
l1860:	
	btfss	(___awmod@divisor+1),7
	goto	u2321
	goto	u2320
u2321:
	goto	l801
u2320:
	line	14
	
l1862:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	
l801:	
	line	15
	
l1864:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2331
	goto	u2330
u2331:
	goto	l802
u2330:
	line	16
	
l1866:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l803
	
l804:	
	line	18
	
l1868:	
	movlw	01h
	
u2345:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2345
	line	19
	
l1870:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	line	20
	
l803:	
	line	17
	
l1872:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2351
	goto	u2350
u2351:
	goto	l804
u2350:
	
l805:	
	line	21
	
l806:	
	line	22
	
l1874:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2365
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2365:
	skipc
	goto	u2361
	goto	u2360
u2361:
	goto	l807
u2360:
	line	23
	
l1876:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	
l807:	
	line	24
	
l1878:	
	movlw	01h
	
u2375:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2375
	line	25
	
l1880:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2381
	goto	u2380
u2381:
	goto	l806
u2380:
	
l808:	
	line	26
	
l802:	
	line	27
	
l1882:	
	movf	(___awmod@sign),w
	skipz
	goto	u2390
	goto	l809
u2390:
	line	28
	
l1884:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	
l809:	
	line	29
	
l1886:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	
l1888:	
	line	30
	
l810:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text96,local,class=CODE,delta=2
global __ptext96
__ptext96:

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
psect	text96
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l1816:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	line	10
	
l1818:	
	btfss	(___awdiv@divisor+1),7
	goto	u2211
	goto	u2210
u2211:
	goto	l732
u2210:
	line	11
	
l1820:	
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
	
l1822:	
	btfss	(___awdiv@dividend+1),7
	goto	u2221
	goto	u2220
u2221:
	goto	l733
u2220:
	line	15
	
l1824:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l1826:	
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
	goto	u2231
	goto	u2230
u2231:
	goto	l734
u2230:
	line	20
	
l1828:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l735
	
l736:	
	line	22
	
l1830:	
	movlw	01h
	
u2245:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2245
	line	23
	
l1832:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	line	24
	
l735:	
	line	21
	
l1834:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l736
u2250:
	
l737:	
	line	25
	
l738:	
	line	26
	
l1836:	
	movlw	01h
	
u2265:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2265
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2275
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2275:
	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l739
u2270:
	line	28
	
l1838:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l1840:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	30
	
l739:	
	line	31
	
l1842:	
	movlw	01h
	
u2285:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2285
	line	32
	
l1844:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2291
	goto	u2290
u2291:
	goto	l738
u2290:
	
l740:	
	line	33
	
l734:	
	line	34
	
l1846:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2300
	goto	l741
u2300:
	line	35
	
l1848:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	
l741:	
	line	36
	
l1850:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	
l1852:	
	line	37
	
l742:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_delay
psect	text97,local,class=CODE,delta=2
global __ptext97
__ptext97:

;; *************** function _delay *****************
;; Defined at:
;;		line 8 in file "C:\Users\TECH\Desktop\madhu pic folder\7 SEGMENT DIAPLAY\SEG TASK\3..2seg+2led\2seg +2led.c"
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
psect	text97
	file	"C:\Users\TECH\Desktop\madhu pic folder\7 SEGMENT DIAPLAY\SEG TASK\3..2seg+2led\2seg +2led.c"
	line	8
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg]
	line	9
	
l1812:	
;2seg +2led.c: 9: while(x--);
	goto	l567
	
l568:	
	
l567:	
	
l1814:	
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
	goto	l568
u2200:
	
l569:	
	line	10
	
l570:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text98,local,class=CODE,delta=2
global __ptext98
__ptext98:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
