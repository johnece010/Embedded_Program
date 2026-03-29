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
# 2 "D:\Madhu\madhu pic folder\pic task\serial communication\interrupt\external interrupt\external interrupt.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "D:\Madhu\madhu pic folder\pic task\serial communication\interrupt\external interrupt\external interrupt.c"
	dw 0X3F72 ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_delay
	FNCALL	_main,_lcd_cmd
	FNCALL	_main,_lcd_display
	FNCALL	_lcd_display,_lcd_data
	FNCALL	_lcd_init,_lcd_cmd
	FNCALL	_lcd_data,_delay
	FNCALL	_lcd_cmd,_delay
	FNROOT	_main
	FNCALL	intlevel1,_rcx
	global	intlevel1
	FNROOT	intlevel1
	global	_b
	global	_i
	global	_temp
	global	_PORTB
psect	text238,local,class=CODE,delta=2
global __ptext238
__ptext238:
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_GIE
_GIE	set	95
	global	_INTE
_INTE	set	92
	global	_INTF
_INTF	set	89
	global	_PEIE
_PEIE	set	94
	global	_RC0
_RC0	set	56
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
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
	
STR_2:	
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	0
psect	strings
	
STR_1:	
	retlw	87	;'W'
	retlw	69	;'E'
	retlw	76	;'L'
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	0
psect	strings
	file	"external interrupt.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_i:
       ds      2

_temp:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_b:
       ds      2

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
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_lcd_cmd
?_lcd_cmd:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_lcd_data
?_lcd_data:	; 0 bytes @ 0x0
	global	?_lcd_display
?_lcd_display:	; 0 bytes @ 0x0
	global	?_rcx
?_rcx:	; 0 bytes @ 0x0
	global	??_rcx
??_rcx:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	ds	4
	global	?_delay
?_delay:	; 0 bytes @ 0x4
	global	delay@x
delay@x:	; 2 bytes @ 0x4
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x6
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x6
	global	??_lcd_display
??_lcd_display:	; 0 bytes @ 0x6
	global	??_main
??_main:	; 0 bytes @ 0x6
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_lcd_cmd
??_lcd_cmd:	; 0 bytes @ 0x0
	global	??_lcd_data
??_lcd_data:	; 0 bytes @ 0x0
	ds	2
	global	lcd_cmd@com
lcd_cmd@com:	; 1 bytes @ 0x2
	global	lcd_data@dat
lcd_data@dat:	; 1 bytes @ 0x2
	ds	1
	global	lcd_display@m
lcd_display@m:	; 1 bytes @ 0x3
	ds	1
	global	lcd_display@i
lcd_display@i:	; 2 bytes @ 0x4
	ds	2
;;Data sizes: Strings 20, constant 0, data 0, bss 6, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6      10
;; BANK0           80      6       8
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; lcd_display@m	PTR unsigned char  size(1) Largest target is 12
;;		 -> STR_2(CODE[12]), STR_1(CODE[8]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_delay
;;   _lcd_data->_delay
;;   _lcd_cmd->_delay
;;
;; Critical Paths under _rcx in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_lcd_display
;;   _lcd_display->_lcd_data
;;   _lcd_init->_lcd_cmd
;;
;; Critical Paths under _rcx in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _rcx in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _rcx in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _rcx in BANK2
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
;; (0) _main                                                 0     0      0     440
;;                           _lcd_init
;;                              _delay
;;                            _lcd_cmd
;;                        _lcd_display
;; ---------------------------------------------------------------------------------
;; (1) _lcd_display                                          3     3      0     223
;;                                              3 BANK0      3     3      0
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             0     0      0      93
;;                            _lcd_cmd
;; ---------------------------------------------------------------------------------
;; (2) _lcd_data                                             3     3      0      93
;;                                              0 BANK0      3     3      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _lcd_cmd                                              3     3      0      93
;;                                              0 BANK0      3     3      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (3) _delay                                                2     0      2      31
;;                                              4 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (4) _rcx                                                  4     4      0       0
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_init
;;     _lcd_cmd
;;       _delay
;;   _delay
;;   _lcd_cmd
;;     _delay
;;   _lcd_display
;;     _lcd_data
;;       _delay
;;
;; _rcx (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      6       A       1       71.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0      12       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      6       8       5       10.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      15      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 76 in file "D:\Madhu\madhu pic folder\pic task\serial communication\interrupt\external interrupt\external interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  589[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+0, pclath, cstack
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_init
;;		_delay
;;		_lcd_cmd
;;		_lcd_display
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Madhu\madhu pic folder\pic task\serial communication\interrupt\external interrupt\external interrupt.c"
	line	76
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
	line	77
	
l2059:	
;external interrupt.c: 77: TRISB=0X01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	78
	
l2061:	
;external interrupt.c: 78: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	79
	
l2063:	
;external interrupt.c: 79: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	80
	
l2065:	
;external interrupt.c: 80: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	82
	
l2067:	
;external interrupt.c: 82: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	83
	
l2069:	
;external interrupt.c: 83: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	84
	
l2071:	
;external interrupt.c: 84: PEIE=1;
	bsf	(94/8),(94)&7
	line	85
	
l2073:	
;external interrupt.c: 85: GIE=1;
	bsf	(95/8),(95)&7
	line	86
	
l2075:	
;external interrupt.c: 86: INTE=1;
	bsf	(92/8),(92)&7
	line	89
	
l2077:	
;external interrupt.c: 89: lcd_init();
	fcall	_lcd_init
	line	90
	
l2079:	
;external interrupt.c: 90: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	92
	
l2081:	
;external interrupt.c: 92: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	93
	
l2083:	
;external interrupt.c: 93: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	94
	
l2085:	
;external interrupt.c: 94: lcd_display("WELCOME");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_display
	line	95
	
l2087:	
;external interrupt.c: 95: delay(50000);delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2089:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	96
	
l2091:	
;external interrupt.c: 96: delay(50000);delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2093:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	98
;external interrupt.c: 98: while(1)
	
l590:	
	line	101
	
l2095:	
;external interrupt.c: 99: {
;external interrupt.c: 101: if(b==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_b),w
	iorwf	(_b+1),w
	skipz
	goto	u2301
	goto	u2300
u2301:
	goto	l591
u2300:
	line	103
	
l2097:	
;external interrupt.c: 102: {
;external interrupt.c: 103: RC0=1;
	bsf	(56/8),(56)&7
	line	104
	
l2099:	
;external interrupt.c: 104: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	105
	
l2101:	
;external interrupt.c: 105: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	106
	
l2103:	
;external interrupt.c: 106: lcd_display("led 1 is on");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_lcd_display
	line	107
	
l2105:	
;external interrupt.c: 107: delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	109
	
l591:	
	line	116
	
l592:	
	line	98
	goto	l590
	
l593:	
	line	117
	
l594:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_lcd_display
psect	text239,local,class=CODE,delta=2
global __ptext239
__ptext239:

;; *************** function _lcd_display *****************
;; Defined at:
;;		line 57 in file "D:\Madhu\madhu pic folder\pic task\serial communication\interrupt\external interrupt\external interrupt.c"
;; Parameters:    Size  Location     Type
;;  m               1    wreg     PTR unsigned char 
;;		 -> STR_2(12), STR_1(8), 
;; Auto vars:     Size  Location     Type
;;  m               1    3[BANK0 ] PTR unsigned char 
;;		 -> STR_2(12), STR_1(8), 
;;  i               2    4[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text239
	file	"D:\Madhu\madhu pic folder\pic task\serial communication\interrupt\external interrupt\external interrupt.c"
	line	57
	global	__size_of_lcd_display
	__size_of_lcd_display	equ	__end_of_lcd_display-_lcd_display
	
_lcd_display:	
	opt	stack 7
; Regs used in _lcd_display: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
;lcd_display@m stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_display@m)
	line	58
	
l2051:	
;external interrupt.c: 58: for(int i=0;m[i]!=0;i++)
	movlw	low(0)
	movwf	(lcd_display@i)
	movlw	high(0)
	movwf	((lcd_display@i))+1
	goto	l580
	line	59
	
l581:	
	line	60
	
l2053:	
;external interrupt.c: 59: {
;external interrupt.c: 60: lcd_data(m[i]);
	movf	(lcd_display@i),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_data
	line	58
	
l2055:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(lcd_display@i),f
	skipnc
	incf	(lcd_display@i+1),f
	movlw	high(01h)
	addwf	(lcd_display@i+1),f
	
l580:	
	
l2057:	
	movf	(lcd_display@i),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2291
	goto	u2290
u2291:
	goto	l581
u2290:
	
l582:	
	line	62
	
l583:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_display
	__end_of_lcd_display:
;; =============== function _lcd_display ends ============

	signat	_lcd_display,4216
	global	_lcd_init
psect	text240,local,class=CODE,delta=2
global __ptext240
__ptext240:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 32 in file "D:\Madhu\madhu pic folder\pic task\serial communication\interrupt\external interrupt\external interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text240
	file	"D:\Madhu\madhu pic folder\pic task\serial communication\interrupt\external interrupt\external interrupt.c"
	line	32
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 7
; Regs used in _lcd_init: [wreg+status,2-btemp+0+pclath+cstack]
	line	33
	
l2049:	
;external interrupt.c: 33: lcd_cmd(0x02);
	movlw	(02h)
	fcall	_lcd_cmd
	line	34
;external interrupt.c: 34: lcd_cmd(0x2c);
	movlw	(02Ch)
	fcall	_lcd_cmd
	line	35
;external interrupt.c: 35: lcd_cmd(0x06);
	movlw	(06h)
	fcall	_lcd_cmd
	line	36
;external interrupt.c: 36: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	37
;external interrupt.c: 37: lcd_cmd(0x0c);
	movlw	(0Ch)
	fcall	_lcd_cmd
	line	38
;external interrupt.c: 38: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	39
	
l574:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_data
psect	text241,local,class=CODE,delta=2
global __ptext241
__ptext241:

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 41 in file "D:\Madhu\madhu pic folder\pic task\serial communication\interrupt\external interrupt\external interrupt.c"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1    2[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;; This function is called by:
;;		_lcd_display
;; This function uses a non-reentrant model
;;
psect	text241
	file	"D:\Madhu\madhu pic folder\pic task\serial communication\interrupt\external interrupt\external interrupt.c"
	line	41
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 6
; Regs used in _lcd_data: [wreg+status,2-btemp+0+pclath+cstack]
;lcd_data@dat stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_data@dat)
	line	42
	
l2023:	
;external interrupt.c: 42: PORTD=(dat&0xf0);
	movf	(lcd_data@dat),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	43
	
l2025:	
;external interrupt.c: 43: RD1=1;
	bsf	(65/8),(65)&7
	line	44
	
l2027:	
;external interrupt.c: 44: RD2=0;
	bcf	(66/8),(66)&7
	line	45
	
l2029:	
;external interrupt.c: 45: RD3=1;
	bsf	(67/8),(67)&7
	line	46
	
l2031:	
;external interrupt.c: 46: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	47
	
l2033:	
;external interrupt.c: 47: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	48
	
l2035:	
;external interrupt.c: 48: temp=dat<<4;
	movf	(lcd_data@dat),w
	movwf	(??_lcd_data+0)+0
	clrf	(??_lcd_data+0)+0+1
	movlw	04h
	movwf	btemp+0
u2285:
	clrc
	rlf	(??_lcd_data+0)+0,f
	rlf	(??_lcd_data+0)+1,f
	decfsz	btemp+0,f
	goto	u2285
	movf	0+(??_lcd_data+0)+0,w
	movwf	(_temp)
	movf	1+(??_lcd_data+0)+0,w
	movwf	(_temp+1)
	line	49
	
l2037:	
;external interrupt.c: 49: PORTD=(temp&0xf0);
	movf	(_temp),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	50
	
l2039:	
;external interrupt.c: 50: RD1=1;
	bsf	(65/8),(65)&7
	line	51
	
l2041:	
;external interrupt.c: 51: RD2=0;
	bcf	(66/8),(66)&7
	line	52
	
l2043:	
;external interrupt.c: 52: RD3=1;
	bsf	(67/8),(67)&7
	line	53
	
l2045:	
;external interrupt.c: 53: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	54
	
l2047:	
;external interrupt.c: 54: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	55
	
l577:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
;; =============== function _lcd_data ends ============

	signat	_lcd_data,4216
	global	_lcd_cmd
psect	text242,local,class=CODE,delta=2
global __ptext242
__ptext242:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 16 in file "D:\Madhu\madhu pic folder\pic task\serial communication\interrupt\external interrupt\external interrupt.c"
;; Parameters:    Size  Location     Type
;;  com             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  com             1    2[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;; This function is called by:
;;		_lcd_init
;;		_main
;; This function uses a non-reentrant model
;;
psect	text242
	file	"D:\Madhu\madhu pic folder\pic task\serial communication\interrupt\external interrupt\external interrupt.c"
	line	16
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 7
; Regs used in _lcd_cmd: [wreg+status,2-btemp+0+pclath+cstack]
;lcd_cmd@com stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_cmd@com)
	line	17
	
l1997:	
;external interrupt.c: 17: PORTD=(com&0xf0);
	movf	(lcd_cmd@com),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	18
	
l1999:	
;external interrupt.c: 18: RD1=0;
	bcf	(65/8),(65)&7
	line	19
	
l2001:	
;external interrupt.c: 19: RD2=0;
	bcf	(66/8),(66)&7
	line	20
	
l2003:	
;external interrupt.c: 20: RD3=1;
	bsf	(67/8),(67)&7
	line	21
	
l2005:	
;external interrupt.c: 21: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	22
	
l2007:	
;external interrupt.c: 22: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	23
	
l2009:	
;external interrupt.c: 23: temp=com<<4;
	movf	(lcd_cmd@com),w
	movwf	(??_lcd_cmd+0)+0
	clrf	(??_lcd_cmd+0)+0+1
	movlw	04h
	movwf	btemp+0
u2275:
	clrc
	rlf	(??_lcd_cmd+0)+0,f
	rlf	(??_lcd_cmd+0)+1,f
	decfsz	btemp+0,f
	goto	u2275
	movf	0+(??_lcd_cmd+0)+0,w
	movwf	(_temp)
	movf	1+(??_lcd_cmd+0)+0,w
	movwf	(_temp+1)
	line	24
	
l2011:	
;external interrupt.c: 24: PORTD=(temp&0xf0);
	movf	(_temp),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	25
	
l2013:	
;external interrupt.c: 25: RD1=0;
	bcf	(65/8),(65)&7
	line	26
	
l2015:	
;external interrupt.c: 26: RD2=0;
	bcf	(66/8),(66)&7
	line	27
	
l2017:	
;external interrupt.c: 27: RD3=1;
	bsf	(67/8),(67)&7
	line	28
	
l2019:	
;external interrupt.c: 28: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	29
	
l2021:	
;external interrupt.c: 29: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	30
	
l571:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,4216
	global	_delay
psect	text243,local,class=CODE,delta=2
global __ptext243
__ptext243:

;; *************** function _delay *****************
;; Defined at:
;;		line 12 in file "D:\Madhu\madhu pic folder\pic task\serial communication\interrupt\external interrupt\external interrupt.c"
;; Parameters:    Size  Location     Type
;;  x               2    4[COMMON] unsigned int 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_cmd
;;		_lcd_data
;;		_main
;; This function uses a non-reentrant model
;;
psect	text243
	file	"D:\Madhu\madhu pic folder\pic task\serial communication\interrupt\external interrupt\external interrupt.c"
	line	12
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	13
	
l1993:	
;external interrupt.c: 13: while(x--);
	goto	l565
	
l566:	
	
l565:	
	
l1995:	
	movlw	low(01h)
	subwf	(delay@x),f
	movlw	high(01h)
	skipc
	decf	(delay@x+1),f
	subwf	(delay@x+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@x+1)),w
	skipz
	goto	u2265
	movlw	low(0FFFFh)
	xorwf	((delay@x)),w
u2265:

	skipz
	goto	u2261
	goto	u2260
u2261:
	goto	l566
u2260:
	
l567:	
	line	14
	
l568:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_rcx
psect	text244,local,class=CODE,delta=2
global __ptext244
__ptext244:

;; *************** function _rcx *****************
;; Defined at:
;;		line 65 in file "D:\Madhu\madhu pic folder\pic task\serial communication\interrupt\external interrupt\external interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text244
	file	"D:\Madhu\madhu pic folder\pic task\serial communication\interrupt\external interrupt\external interrupt.c"
	line	65
	global	__size_of_rcx
	__size_of_rcx	equ	__end_of_rcx-_rcx
	
_rcx:	
	opt	stack 4
; Regs used in _rcx: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	movf	status,w
	movwf	(??_rcx+0)
	movf	fsr0,w
	movwf	(??_rcx+1)
	movf	pclath,w
	movwf	(??_rcx+2)
	movf	btemp+1,w
	movwf	(??_rcx+3)
	ljmp	_rcx
psect	text244
	line	66
	
i1l1877:	
;external interrupt.c: 66: if(INTF==1)
	btfss	(89/8),(89)&7
	goto	u221_21
	goto	u221_20
u221_21:
	goto	i1l586
u221_20:
	line	68
	
i1l1879:	
;external interrupt.c: 67: {
;external interrupt.c: 68: INTF=0;
	bcf	(89/8),(89)&7
	line	69
	
i1l1881:	
;external interrupt.c: 69: b=1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_b)
	movlw	high(01h)
	movwf	((_b))+1
	line	70
	
i1l586:	
	line	71
	
i1l587:	
	movf	(??_rcx+3),w
	movwf	btemp+1
	movf	(??_rcx+2),w
	movwf	pclath
	movf	(??_rcx+1),w
	movwf	fsr0
	movf	(??_rcx+0),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_rcx
	__end_of_rcx:
;; =============== function _rcx ends ============

	signat	_rcx,88
psect	text245,local,class=CODE,delta=2
global __ptext245
__ptext245:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
