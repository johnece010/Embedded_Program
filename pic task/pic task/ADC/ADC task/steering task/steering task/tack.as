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
# 2 "C:\Users\ELCOT\Desktop\PIC Workouts\TASK\mam tack\tack.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "C:\Users\ELCOT\Desktop\PIC Workouts\TASK\mam tack\tack.c"
	dw 0X3F72 ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_delay
	FNCALL	_main,_lcd_command
	FNCALL	_main,_lcd_display
	FNCALL	_main,___lwtoft
	FNCALL	_main,___ftdiv
	FNCALL	_main,___fttol
	FNCALL	_main,_ply
	FNCALL	_main,___lwdiv
	FNCALL	_main,___lwmod
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_main,_lcd_data
	FNCALL	_ply,_lcd_command
	FNCALL	_ply,_lcd_display
	FNCALL	_ply,___lwdiv
	FNCALL	_ply,___lwmod
	FNCALL	_ply,___awdiv
	FNCALL	_ply,___awmod
	FNCALL	_ply,_lcd_data
	FNCALL	_ply,_delay
	FNCALL	_lcd_display,_lcd_data
	FNCALL	_lcd_init,_lcd_command
	FNCALL	___lwtoft,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	_lcd_data,_delay
	FNCALL	_lcd_command,_delay
	FNROOT	_main
	global	_A
	global	_A1
	global	_a
	global	_a1
	global	_b
	global	_b1
	global	_c
	global	_c1
	global	_d
	global	_d1
	global	_e
	global	_e1
	global	_f
	global	_f1
	global	_temp
	global	_temp1
	global	_z
	global	_z1
	global	_ADCON0
psect	text290,local,class=CODE,delta=2
global __ptext290
__ptext290:
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
	global	_RC6
_RC6	set	62
	global	_RC7
_RC7	set	63
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
	retlw	87	;'W'
	retlw	69	;'E'
	retlw	76	;'L'
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	0
psect	strings
	
STR_3:	
	retlw	108	;'l'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	114	;'r'
	retlw	0
psect	strings
	
STR_1:	
	retlw	90	;'Z'
	retlw	0
psect	strings
	file	"tack.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_A:
       ds      2

_A1:
       ds      2

_a:
       ds      2

_a1:
       ds      2

_b:
       ds      2

_b1:
       ds      2

_c:
       ds      2

_c1:
       ds      2

_d:
       ds      2

_d1:
       ds      2

_e:
       ds      2

_e1:
       ds      2

_f:
       ds      2

_f1:
       ds      2

_temp:
       ds      2

_temp1:
       ds      2

_z:
       ds      2

_z1:
       ds      2

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+024h)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_lcd_command
?_lcd_command:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_lcd_data
?_lcd_data:	; 0 bytes @ 0x0
	global	?_lcd_display
?_lcd_display:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
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
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	2
	global	??_lcd_command
??_lcd_command:	; 0 bytes @ 0x2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
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
	global	??_lcd_display
??_lcd_display:	; 0 bytes @ 0x3
	global	lcd_display@m
lcd_display@m:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	lcd_display@a
lcd_display@a:	; 2 bytes @ 0x4
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
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
	ds	1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x8
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x8
	ds	1
	global	?_ply
?_ply:	; 0 bytes @ 0x9
	global	ply@temp1
ply@temp1:	; 2 bytes @ 0x9
	ds	2
	global	??_ply
??_ply:	; 0 bytes @ 0xB
	ds	1
	global	??___lwtoft
??___lwtoft:	; 0 bytes @ 0xC
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??___fttol
??___fttol:	; 0 bytes @ 0x0
	ds	4
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x4
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x5
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x9
	ds	1
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0xA
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0xA
	ds	3
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0xD
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0xD
	ds	3
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x10
	ds	3
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0x13
	ds	4
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x17
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x18
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x1B
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x1C
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x1D
	ds	2
;;Data sizes: Strings 17, constant 0, data 0, bss 36, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      13
;; BANK0           80     31      67
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___ftdiv	float  size(1) Largest target is 0
;;
;; ?___lwtoft	float  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; lcd_display@m	PTR unsigned char  size(1) Largest target is 8
;;		 -> STR_3(CODE[7]), STR_2(CODE[8]), STR_1(CODE[2]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___lwtoft
;;   _ply->___awdiv
;;   _lcd_display->_lcd_data
;;   _lcd_init->_lcd_command
;;   ___lwtoft->___fttol
;;   ___ftdiv->___lwtoft
;;   _lcd_data->_delay
;;   _lcd_command->_delay
;;   ___fttol->___ftpack
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->___ftdiv
;;   ___lwtoft->___fttol
;;   ___ftdiv->___lwtoft
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
;; (0) _main                                                 2     2      0    3382
;;                                             29 BANK0      2     2      0
;;                           _lcd_init
;;                              _delay
;;                        _lcd_command
;;                        _lcd_display
;;                           ___lwtoft
;;                            ___ftdiv
;;                            ___fttol
;;                                _ply
;;                            ___lwdiv
;;                            ___lwmod
;;                            ___awdiv
;;                            ___awmod
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _ply                                                  2     0      2    1205
;;                                              9 COMMON     2     0      2
;;                        _lcd_command
;;                        _lcd_display
;;                            ___lwdiv
;;                            ___lwmod
;;                            ___awdiv
;;                            ___awmod
;;                           _lcd_data
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _lcd_display                                          3     3      0     134
;;                                              3 COMMON     3     3      0
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             0     0      0      44
;;                        _lcd_command
;; ---------------------------------------------------------------------------------
;; (1) ___lwtoft                                             4     1      3     231
;;                                             12 COMMON     1     1      0
;;                                             10 BANK0      3     0      3
;;                           ___ftpack
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___ftdiv                                             16    10      6     489
;;                                             13 BANK0     16    10      6
;;                           ___ftpack
;;                           ___lwtoft (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _lcd_data                                             1     1      0      44
;;                                              2 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _lcd_command                                          1     1      0      44
;;                                              2 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (1) ___fttol                                             14    10      4     252
;;                                              8 COMMON     4     0      4
;;                                              0 BANK0     10    10      0
;;                           ___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
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
;;   _lcd_command
;;     _delay
;;   _lcd_display
;;     _lcd_data
;;       _delay
;;   ___lwtoft
;;     ___ftpack
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;   ___ftdiv
;;     ___ftpack
;;     ___lwtoft (ARG)
;;       ___ftpack
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;   ___fttol
;;     ___ftpack (ARG)
;;   _ply
;;     _lcd_command
;;       _delay
;;     _lcd_display
;;       _lcd_data
;;         _delay
;;     ___lwdiv
;;     ___lwmod
;;     ___awdiv
;;     ___awmod
;;     _lcd_data
;;       _delay
;;     _delay
;;   ___lwdiv
;;   ___lwmod
;;   ___awdiv
;;   ___awmod
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
;;STACK                0      0       4       2        0.0%
;;ABS                  0      0      50       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     1F      43       5       83.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      54      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 82 in file "C:\Users\ELCOT\Desktop\PIC Workouts\TASK\mam tack\tack.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  620[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_init
;;		_delay
;;		_lcd_command
;;		_lcd_display
;;		___lwtoft
;;		___ftdiv
;;		___fttol
;;		_ply
;;		___lwdiv
;;		___lwmod
;;		___awdiv
;;		___awmod
;;		_lcd_data
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\ELCOT\Desktop\PIC Workouts\TASK\mam tack\tack.c"
	line	82
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
	line	83
	
l2758:	
;tack.c: 83: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	84
;tack.c: 84: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	86
	
l2760:	
;tack.c: 86: TRISA=0x03;
	movlw	(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	87
	
l2762:	
;tack.c: 87: PORTA=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	90
	
l2764:	
;tack.c: 90: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	91
	
l2766:	
;tack.c: 91: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	94
;tack.c: 94: ADCON1=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	95
;tack.c: 95: ADCON0=0X40;
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	97
	
l2768:	
;tack.c: 97: lcd_init();
	fcall	_lcd_init
	line	98
	
l2770:	
;tack.c: 98: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	100
	
l2772:	
;tack.c: 100: lcd_command(0X84);
	movlw	(084h)
	fcall	_lcd_command
	line	101
	
l2774:	
;tack.c: 101: lcd_display("WELCOME");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_lcd_display
	line	102
	
l2776:	
;tack.c: 102: delay(50000);delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2778:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	103
	
l2780:	
;tack.c: 103: delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	104
	
l2782:	
;tack.c: 104: lcd_command(0X01);
	movlw	(01h)
	fcall	_lcd_command
	line	108
;tack.c: 108: while(1)
	
l621:	
	line	111
	
l2784:	
;tack.c: 109: {
;tack.c: 111: CHS2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(253/8),(253)&7
	line	112
	
l2786:	
;tack.c: 112: CHS1=0;
	bcf	(252/8),(252)&7
	line	113
	
l2788:	
;tack.c: 113: CHS0=0;
	bcf	(251/8),(251)&7
	line	114
	
l2790:	
;tack.c: 114: ADON=1;
	bsf	(248/8),(248)&7
	line	116
	
l2792:	
;tack.c: 116: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	117
	
l2794:	
;tack.c: 117: ADCON0=(ADCON0|0X04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	iorlw	04h
	movwf	(31)	;volatile
	line	118
	
l2796:	
;tack.c: 118: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	119
	
l2798:	
;tack.c: 119: temp=ADRESH<<8;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movlw	08h
	movwf	btemp+0
u3315:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+0,f
	goto	u3315
	movf	0+(??_main+0)+0,w
	movwf	(_temp)
	movf	1+(??_main+0)+0,w
	movwf	(_temp+1)
	line	121
	
l2800:	
;tack.c: 121: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	122
	
l2802:	
;tack.c: 122: temp=(temp+ADRESL);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_temp),w
	movwf	(_temp)
	movf	(_temp+1),w
	skipnc
	incf	(_temp+1),w
	movwf	((_temp))+1
	line	123
	
l2804:	
;tack.c: 123: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	124
	
l2806:	
;tack.c: 124: temp=temp/2.045;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_temp+1),w
	clrf	(?___lwtoft+1)
	addwf	(?___lwtoft+1)
	movf	(_temp),w
	clrf	(?___lwtoft)
	addwf	(?___lwtoft)

	fcall	___lwtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtoft)),w
	movwf	0+(?___ftdiv)+03h
	movf	(1+(?___lwtoft)),w
	movwf	1+(?___ftdiv)+03h
	movf	(2+(?___lwtoft)),w
	movwf	2+(?___ftdiv)+03h
	movlw	0xe1
	movwf	(?___ftdiv)
	movlw	0x2
	movwf	(?___ftdiv+1)
	movlw	0x40
	movwf	(?___ftdiv+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(?___fttol)
	movf	(1+(?___ftdiv)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftdiv)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_temp+1)
	addwf	(_temp+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(_temp)
	addwf	(_temp)

	line	126
	
l2808:	
;tack.c: 126: if(temp==249)
	movlw	0F9h
	xorwf	(_temp),w
	iorwf	(_temp+1),w
	skipz
	goto	u3321
	goto	u3320
u3321:
	goto	l622
u3320:
	line	128
	
l2810:	
;tack.c: 127: {
;tack.c: 128: RC6=0;
	bcf	(62/8),(62)&7
	line	129
;tack.c: 129: RC7=0;
	bcf	(63/8),(63)&7
	line	130
	
l622:	
	line	132
	
l2812:	
;tack.c: 130: }
;tack.c: 132: if(temp<249)
	movlw	high(0F9h)
	subwf	(_temp+1),w
	movlw	low(0F9h)
	skipnz
	subwf	(_temp),w
	skipnc
	goto	u3331
	goto	u3330
u3331:
	goto	l623
u3330:
	line	134
	
l2814:	
;tack.c: 133: {
;tack.c: 134: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	135
	
l2816:	
;tack.c: 135: if(temp>z1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_temp+1),w
	subwf	(_z1+1),w
	skipz
	goto	u3345
	movf	(_temp),w
	subwf	(_z1),w
u3345:
	skipnc
	goto	u3341
	goto	u3340
u3341:
	goto	l624
u3340:
	line	137
	
l2818:	
;tack.c: 136: {
;tack.c: 137: RC6=0;
	bcf	(62/8),(62)&7
	line	138
;tack.c: 138: RC7=1;
	bsf	(63/8),(63)&7
	line	139
	
l2820:	
;tack.c: 139: delay(50000);delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	140
;tack.c: 140: }
	goto	l625
	line	142
	
l624:	
	line	144
;tack.c: 142: else
;tack.c: 143: {
;tack.c: 144: RC6=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(62/8),(62)&7
	line	145
;tack.c: 145: RC7=0;
	bcf	(63/8),(63)&7
	line	146
	
l2822:	
;tack.c: 146: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	147
	
l625:	
	line	148
	
l2824:	
;tack.c: 147: }
;tack.c: 148: ply(z1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_z1+1),w
	clrf	(?_ply+1)
	addwf	(?_ply+1)
	movf	(_z1),w
	clrf	(?_ply)
	addwf	(?_ply)

	fcall	_ply
	line	149
	
l2826:	
;tack.c: 149: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	150
	
l623:	
	line	151
	
l2828:	
;tack.c: 150: }
;tack.c: 151: z1=temp;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_temp+1),w
	clrf	(_z1+1)
	addwf	(_z1+1)
	movf	(_temp),w
	clrf	(_z1)
	addwf	(_z1)

	line	154
	
l2830:	
;tack.c: 154: if(temp>249)
	movlw	high(0FAh)
	subwf	(_temp+1),w
	movlw	low(0FAh)
	skipnz
	subwf	(_temp),w
	skipc
	goto	u3351
	goto	u3350
u3351:
	goto	l626
u3350:
	line	156
	
l2832:	
;tack.c: 155: {
;tack.c: 156: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	157
	
l2834:	
;tack.c: 157: if(temp<z)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_z+1),w
	subwf	(_temp+1),w
	skipz
	goto	u3365
	movf	(_z),w
	subwf	(_temp),w
u3365:
	skipnc
	goto	u3361
	goto	u3360
u3361:
	goto	l627
u3360:
	line	159
	
l2836:	
;tack.c: 158: {
;tack.c: 159: RC6=1;
	bsf	(62/8),(62)&7
	line	160
;tack.c: 160: RC7=0;
	bcf	(63/8),(63)&7
	line	161
	
l2838:	
;tack.c: 161: delay(50000);delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	162
;tack.c: 162: }
	goto	l628
	line	164
	
l627:	
	line	166
;tack.c: 164: else
;tack.c: 165: {
;tack.c: 166: RC6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
	line	167
;tack.c: 167: RC7=1;
	bsf	(63/8),(63)&7
	line	168
	
l2840:	
;tack.c: 168: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	169
	
l628:	
	line	170
	
l2842:	
;tack.c: 169: }
;tack.c: 170: ply(z);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_z+1),w
	clrf	(?_ply+1)
	addwf	(?_ply+1)
	movf	(_z),w
	clrf	(?_ply)
	addwf	(?_ply)

	fcall	_ply
	line	171
	
l2844:	
;tack.c: 171: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	172
	
l626:	
	line	173
	
l2846:	
;tack.c: 172: }
;tack.c: 173: z=temp;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_temp+1),w
	clrf	(_z+1)
	addwf	(_z+1)
	movf	(_temp),w
	clrf	(_z)
	addwf	(_z)

	line	177
	
l2848:	
;tack.c: 177: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	179
	
l2850:	
;tack.c: 179: lcd_command(0X80);
	movlw	(080h)
	fcall	_lcd_command
	line	180
	
l2852:	
;tack.c: 180: lcd_display("l or r");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_lcd_display
	line	181
	
l2854:	
;tack.c: 181: lcd_command(0X8A);
	movlw	(08Ah)
	fcall	_lcd_command
	line	182
	
l2856:	
;tack.c: 182: a=temp/1000;
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_temp+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_temp),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_a+1)
	addwf	(_a+1)
	movf	(0+(?___lwdiv)),w
	clrf	(_a)
	addwf	(_a)

	line	183
	
l2858:	
;tack.c: 183: b=temp%1000;
	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	movf	(_temp+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_temp),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b+1)
	addwf	(_b+1)
	movf	(0+(?___lwmod)),w
	clrf	(_b)
	addwf	(_b)

	line	184
	
l2860:	
;tack.c: 184: c=b/100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(_b+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_b),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_c+1)
	addwf	(_c+1)
	movf	(0+(?___awdiv)),w
	clrf	(_c)
	addwf	(_c)

	line	185
	
l2862:	
;tack.c: 185: d=b%100;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(_b+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_b),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_d+1)
	addwf	(_d+1)
	movf	(0+(?___awmod)),w
	clrf	(_d)
	addwf	(_d)

	line	186
	
l2864:	
;tack.c: 186: e=d/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_d+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_d),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_e+1)
	addwf	(_e+1)
	movf	(0+(?___awdiv)),w
	clrf	(_e)
	addwf	(_e)

	line	187
	
l2866:	
;tack.c: 187: f=d%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(_d+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_d),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_f+1)
	addwf	(_f+1)
	movf	(0+(?___awmod)),w
	clrf	(_f)
	addwf	(_f)

	line	190
	
l2868:	
;tack.c: 190: lcd_data(a+0x30);
	movf	(_a),w
	addlw	030h
	fcall	_lcd_data
	line	191
	
l2870:	
;tack.c: 191: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	192
	
l2872:	
;tack.c: 192: lcd_data(c+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c),w
	addlw	030h
	fcall	_lcd_data
	line	193
	
l2874:	
;tack.c: 193: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	194
	
l2876:	
;tack.c: 194: lcd_data(e+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_e),w
	addlw	030h
	fcall	_lcd_data
	line	195
	
l2878:	
;tack.c: 195: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	196
	
l2880:	
;tack.c: 196: lcd_data(f+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_f),w
	addlw	030h
	fcall	_lcd_data
	line	197
	
l2882:	
;tack.c: 197: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	199
	
l629:	
	line	108
	goto	l621
	
l630:	
	line	200
	
l631:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_ply
psect	text291,local,class=CODE,delta=2
global __ptext291
__ptext291:

;; *************** function _ply *****************
;; Defined at:
;;		line 59 in file "C:\Users\ELCOT\Desktop\PIC Workouts\TASK\mam tack\tack.c"
;; Parameters:    Size  Location     Type
;;  temp1           2    9[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_command
;;		_lcd_display
;;		___lwdiv
;;		___lwmod
;;		___awdiv
;;		___awmod
;;		_lcd_data
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text291
	file	"C:\Users\ELCOT\Desktop\PIC Workouts\TASK\mam tack\tack.c"
	line	59
	global	__size_of_ply
	__size_of_ply	equ	__end_of_ply-_ply
	
_ply:	
	opt	stack 7
; Regs used in _ply: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	60
	
l2724:	
;tack.c: 60: lcd_command(0Xc0);
	movlw	(0C0h)
	fcall	_lcd_command
	line	61
	
l2726:	
;tack.c: 61: lcd_display("Z");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_display
	line	62
	
l2728:	
;tack.c: 62: lcd_command(0XCA);
	movlw	(0CAh)
	fcall	_lcd_command
	line	63
	
l2730:	
;tack.c: 63: a1=temp1/1000;
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	movf	(ply@temp1+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(ply@temp1),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_a1+1)
	addwf	(_a1+1)
	movf	(0+(?___lwdiv)),w
	clrf	(_a1)
	addwf	(_a1)

	line	64
	
l2732:	
;tack.c: 64: b1=temp1%1000;
	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	movf	(ply@temp1+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(ply@temp1),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b1+1)
	addwf	(_b1+1)
	movf	(0+(?___lwmod)),w
	clrf	(_b1)
	addwf	(_b1)

	line	65
	
l2734:	
;tack.c: 65: c1=b1/100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(_b1+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_b1),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_c1+1)
	addwf	(_c1+1)
	movf	(0+(?___awdiv)),w
	clrf	(_c1)
	addwf	(_c1)

	line	66
	
l2736:	
;tack.c: 66: d1=b1%100;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(_b1+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_b1),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_d1+1)
	addwf	(_d1+1)
	movf	(0+(?___awmod)),w
	clrf	(_d1)
	addwf	(_d1)

	line	67
	
l2738:	
;tack.c: 67: e1=d1/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_d1+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_d1),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_e1+1)
	addwf	(_e1+1)
	movf	(0+(?___awdiv)),w
	clrf	(_e1)
	addwf	(_e1)

	line	68
	
l2740:	
;tack.c: 68: f1=d1%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(_d1+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_d1),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_f1+1)
	addwf	(_f1+1)
	movf	(0+(?___awmod)),w
	clrf	(_f1)
	addwf	(_f1)

	line	71
	
l2742:	
;tack.c: 71: lcd_data(a1+0x30);
	movf	(_a1),w
	addlw	030h
	fcall	_lcd_data
	line	72
	
l2744:	
;tack.c: 72: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	73
	
l2746:	
;tack.c: 73: lcd_data(c1+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c1),w
	addlw	030h
	fcall	_lcd_data
	line	74
	
l2748:	
;tack.c: 74: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	75
	
l2750:	
;tack.c: 75: lcd_data(e1+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_e1),w
	addlw	030h
	fcall	_lcd_data
	line	76
	
l2752:	
;tack.c: 76: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	77
	
l2754:	
;tack.c: 77: lcd_data(f1+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_f1),w
	addlw	030h
	fcall	_lcd_data
	line	78
	
l2756:	
;tack.c: 78: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	79
	
l618:	
	return
	opt stack 0
GLOBAL	__end_of_ply
	__end_of_ply:
;; =============== function _ply ends ============

	signat	_ply,4216
	global	_lcd_display
psect	text292,local,class=CODE,delta=2
global __ptext292
__ptext292:

;; *************** function _lcd_display *****************
;; Defined at:
;;		line 51 in file "C:\Users\ELCOT\Desktop\PIC Workouts\TASK\mam tack\tack.c"
;; Parameters:    Size  Location     Type
;;  m               1    wreg     PTR unsigned char 
;;		 -> STR_3(7), STR_2(8), STR_1(2), 
;; Auto vars:     Size  Location     Type
;;  m               1    3[COMMON] PTR unsigned char 
;;		 -> STR_3(7), STR_2(8), STR_1(2), 
;;  a               2    4[COMMON] int 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_data
;; This function is called by:
;;		_ply
;;		_main
;; This function uses a non-reentrant model
;;
psect	text292
	file	"C:\Users\ELCOT\Desktop\PIC Workouts\TASK\mam tack\tack.c"
	line	51
	global	__size_of_lcd_display
	__size_of_lcd_display	equ	__end_of_lcd_display-_lcd_display
	
_lcd_display:	
	opt	stack 6
; Regs used in _lcd_display: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_display@m stored from wreg
	movwf	(lcd_display@m)
	line	52
	
l2716:	
;tack.c: 52: for(int a=0;m[a]!=0;a++)
	movlw	low(0)
	movwf	(lcd_display@a)
	movlw	high(0)
	movwf	((lcd_display@a))+1
	goto	l612
	line	53
	
l613:	
	line	54
	
l2718:	
;tack.c: 53: {
;tack.c: 54: lcd_data(m[a]);
	movf	(lcd_display@a),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_data
	line	52
	
l2720:	
	movlw	low(01h)
	addwf	(lcd_display@a),f
	skipnc
	incf	(lcd_display@a+1),f
	movlw	high(01h)
	addwf	(lcd_display@a+1),f
	
l612:	
	
l2722:	
	movf	(lcd_display@a),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u3301
	goto	u3300
u3301:
	goto	l613
u3300:
	
l614:	
	line	56
	
l615:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_display
	__end_of_lcd_display:
;; =============== function _lcd_display ends ============

	signat	_lcd_display,4216
	global	_lcd_init
psect	text293,local,class=CODE,delta=2
global __ptext293
__ptext293:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 21 in file "C:\Users\ELCOT\Desktop\PIC Workouts\TASK\mam tack\tack.c"
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
psect	text293
	file	"C:\Users\ELCOT\Desktop\PIC Workouts\TASK\mam tack\tack.c"
	line	21
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 7
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	22
	
l2714:	
;tack.c: 22: lcd_command(0X38);
	movlw	(038h)
	fcall	_lcd_command
	line	23
;tack.c: 23: lcd_command(0X06);
	movlw	(06h)
	fcall	_lcd_command
	line	24
;tack.c: 24: lcd_command(0X18);
	movlw	(018h)
	fcall	_lcd_command
	line	25
;tack.c: 25: lcd_command(0X1C);
	movlw	(01Ch)
	fcall	_lcd_command
	line	26
;tack.c: 26: lcd_command(0X0C);
	movlw	(0Ch)
	fcall	_lcd_command
	line	27
;tack.c: 27: lcd_command(0X01);
	movlw	(01h)
	fcall	_lcd_command
	line	28
	
l603:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	___lwtoft
psect	text294,local,class=CODE,delta=2
global __ptext294
__ptext294:

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 29 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   10[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   10[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       3       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text294
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\lwtoft.c"
	line	29
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
	opt	stack 7
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l2710:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwtoft@c),w
	movwf	(?___ftpack)
	movf	(___lwtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___lwtoft+0)+0
	movf	(??___lwtoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	
l2712:	
	line	31
	
l863:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
;; =============== function ___lwtoft ends ============

	signat	___lwtoft,4219
	global	___ftdiv
psect	text295,local,class=CODE,delta=2
global __ptext295
__ptext295:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   13[BANK0 ] float 
;;  f1              3   16[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   24[BANK0 ] float 
;;  sign            1   28[BANK0 ] unsigned char 
;;  exp             1   27[BANK0 ] unsigned char 
;;  cntr            1   23[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   13[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text295
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 7
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l2668:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u3221
	goto	u3220
u3221:
	goto	l728
u3220:
	line	56
	
l2670:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	
l2672:	
	goto	l729
	
l728:	
	line	57
	
l2674:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u3231
	goto	u3230
u3231:
	goto	l730
u3230:
	line	58
	
l2676:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	
l2678:	
	goto	l729
	
l730:	
	line	59
	
l2680:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l2682:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l2684:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u3245:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u3240:
	addlw	-1
	skipz
	goto	u3245
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l2686:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u3255:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u3250:
	addlw	-1
	skipz
	goto	u3255
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l2688:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l2690:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l2692:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	movlw	(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	line	69
	
l731:	
	line	70
	
l2694:	
	movlw	01h
u3265:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u3265
	line	71
	
l2696:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u3275
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u3275
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u3275:
	skipc
	goto	u3271
	goto	u3270
u3271:
	goto	l732
u3270:
	line	72
	
l2698:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	73
	
l2700:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	74
	
l732:	
	line	75
	
l2702:	
	movlw	01h
u3285:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u3285
	line	76
	
l2704:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u3291
	goto	u3290
u3291:
	goto	l731
u3290:
	
l733:	
	line	77
	
l2706:	
	movf	(___ftdiv@f3),w
	movwf	(?___ftpack)
	movf	(___ftdiv@f3+1),w
	movwf	(?___ftpack+1)
	movf	(___ftdiv@f3+2),w
	movwf	(?___ftpack+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	
l2708:	
	line	78
	
l729:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	_lcd_data
psect	text296,local,class=CODE,delta=2
global __ptext296
__ptext296:

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 41 in file "C:\Users\ELCOT\Desktop\PIC Workouts\TASK\mam tack\tack.c"
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
;;		_lcd_display
;;		_ply
;;		_main
;; This function uses a non-reentrant model
;;
psect	text296
	file	"C:\Users\ELCOT\Desktop\PIC Workouts\TASK\mam tack\tack.c"
	line	41
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 7
; Regs used in _lcd_data: [wreg+status,2+status,0+pclath+cstack]
;lcd_data@data stored from wreg
	movwf	(lcd_data@data)
	line	42
	
l2656:	
;tack.c: 42: PORTD=data;
	movf	(lcd_data@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	43
	
l2658:	
;tack.c: 43: RC0=1;
	bsf	(56/8),(56)&7
	line	44
	
l2660:	
;tack.c: 44: RC1=0;
	bcf	(57/8),(57)&7
	line	45
	
l2662:	
;tack.c: 45: RC2=1;
	bsf	(58/8),(58)&7
	line	46
	
l2664:	
;tack.c: 46: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	47
	
l2666:	
;tack.c: 47: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	48
	
l609:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
;; =============== function _lcd_data ends ============

	signat	_lcd_data,4216
	global	_lcd_command
psect	text297,local,class=CODE,delta=2
global __ptext297
__ptext297:

;; *************** function _lcd_command *****************
;; Defined at:
;;		line 31 in file "C:\Users\ELCOT\Desktop\PIC Workouts\TASK\mam tack\tack.c"
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
;;		_ply
;;		_main
;; This function uses a non-reentrant model
;;
psect	text297
	file	"C:\Users\ELCOT\Desktop\PIC Workouts\TASK\mam tack\tack.c"
	line	31
	global	__size_of_lcd_command
	__size_of_lcd_command	equ	__end_of_lcd_command-_lcd_command
	
_lcd_command:	
	opt	stack 6
; Regs used in _lcd_command: [wreg+status,2+status,0+pclath+cstack]
;lcd_command@com stored from wreg
	movwf	(lcd_command@com)
	line	32
	
l2644:	
;tack.c: 32: PORTD=com;
	movf	(lcd_command@com),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	33
	
l2646:	
;tack.c: 33: RC0=0;
	bcf	(56/8),(56)&7
	line	34
	
l2648:	
;tack.c: 34: RC1=0;
	bcf	(57/8),(57)&7
	line	35
	
l2650:	
;tack.c: 35: RC2=1;
	bsf	(58/8),(58)&7
	line	36
	
l2652:	
;tack.c: 36: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	37
	
l2654:	
;tack.c: 37: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	38
	
l606:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_command
	__end_of_lcd_command:
;; =============== function _lcd_command ends ============

	signat	_lcd_command,4216
	global	___awmod
psect	text298,local,class=CODE,delta=2
global __ptext298
__ptext298:

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
;;		_ply
;;		_main
;; This function uses a non-reentrant model
;;
psect	text298
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2564:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	line	9
	
l2566:	
	btfss	(___awmod@dividend+1),7
	goto	u3071
	goto	u3070
u3071:
	goto	l848
u3070:
	line	10
	
l2568:	
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
	
l848:	
	line	13
	
l2570:	
	btfss	(___awmod@divisor+1),7
	goto	u3081
	goto	u3080
u3081:
	goto	l849
u3080:
	line	14
	
l2572:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	
l849:	
	line	15
	
l2574:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u3091
	goto	u3090
u3091:
	goto	l850
u3090:
	line	16
	
l2576:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l851
	
l852:	
	line	18
	
l2578:	
	movlw	01h
	
u3105:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3105
	line	19
	
l2580:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	line	20
	
l851:	
	line	17
	
l2582:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3111
	goto	u3110
u3111:
	goto	l852
u3110:
	
l853:	
	line	21
	
l854:	
	line	22
	
l2584:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3125
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3125:
	skipc
	goto	u3121
	goto	u3120
u3121:
	goto	l855
u3120:
	line	23
	
l2586:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	
l855:	
	line	24
	
l2588:	
	movlw	01h
	
u3135:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u3135
	line	25
	
l2590:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u3141
	goto	u3140
u3141:
	goto	l854
u3140:
	
l856:	
	line	26
	
l850:	
	line	27
	
l2592:	
	movf	(___awmod@sign),w
	skipz
	goto	u3150
	goto	l857
u3150:
	line	28
	
l2594:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	
l857:	
	line	29
	
l2596:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	
l2598:	
	line	30
	
l858:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text299,local,class=CODE,delta=2
global __ptext299
__ptext299:

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
;;		_ply
;;		_main
;; This function uses a non-reentrant model
;;
psect	text299
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2526:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	line	10
	
l2528:	
	btfss	(___awdiv@divisor+1),7
	goto	u2971
	goto	u2970
u2971:
	goto	l780
u2970:
	line	11
	
l2530:	
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
	
l780:	
	line	14
	
l2532:	
	btfss	(___awdiv@dividend+1),7
	goto	u2981
	goto	u2980
u2981:
	goto	l781
u2980:
	line	15
	
l2534:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2536:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l781:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2991
	goto	u2990
u2991:
	goto	l782
u2990:
	line	20
	
l2538:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l783
	
l784:	
	line	22
	
l2540:	
	movlw	01h
	
u3005:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3005
	line	23
	
l2542:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	line	24
	
l783:	
	line	21
	
l2544:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3011
	goto	u3010
u3011:
	goto	l784
u3010:
	
l785:	
	line	25
	
l786:	
	line	26
	
l2546:	
	movlw	01h
	
u3025:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3025
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3035
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3035:
	skipc
	goto	u3031
	goto	u3030
u3031:
	goto	l787
u3030:
	line	28
	
l2548:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2550:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	30
	
l787:	
	line	31
	
l2552:	
	movlw	01h
	
u3045:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u3045
	line	32
	
l2554:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u3051
	goto	u3050
u3051:
	goto	l786
u3050:
	
l788:	
	line	33
	
l782:	
	line	34
	
l2556:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3060
	goto	l789
u3060:
	line	35
	
l2558:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	
l789:	
	line	36
	
l2560:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	
l2562:	
	line	37
	
l790:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text300,local,class=CODE,delta=2
global __ptext300
__ptext300:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  lval            4    5[BANK0 ] unsigned long 
;;  exp1            1    9[BANK0 ] unsigned char 
;;  sign1           1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    8[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         4      10       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text300
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 7
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l2458:	
	movf	(___fttol@f1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u2851
	goto	u2850
u2851:
	goto	l749
u2850:
	line	50
	
l2460:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	
l2462:	
	goto	l750
	
l749:	
	line	51
	
l2464:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2865:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2860:
	addlw	-1
	skipz
	goto	u2865
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l2466:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l2468:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l2470:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l2472:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l2474:	
	btfss	(___fttol@exp1),7
	goto	u2871
	goto	u2870
u2871:
	goto	l751
u2870:
	line	57
	
l2476:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2881
	goto	u2880
u2881:
	goto	l752
u2880:
	line	58
	
l2478:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	
l2480:	
	goto	l750
	
l752:	
	line	59
	
l753:	
	line	60
	
l2482:	
	movlw	01h
u2895:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u2895

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u2901
	goto	u2900
u2901:
	goto	l753
u2900:
	
l754:	
	line	62
	goto	l755
	
l751:	
	line	63
	
l2484:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2911
	goto	u2910
u2911:
	goto	l756
u2910:
	line	64
	
l2486:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	
l2488:	
	goto	l750
	
l756:	
	line	65
	goto	l757
	
l758:	
	line	66
	
l2490:	
	movlw	01h
	movwf	(??___fttol+0)+0
u2925:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u2925
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	line	68
	
l757:	
	line	65
	
l2492:	
	movf	(___fttol@exp1),f
	skipz
	goto	u2931
	goto	u2930
u2931:
	goto	l758
u2930:
	
l759:	
	line	69
	
l755:	
	line	70
	
l2494:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2940
	goto	l760
u2940:
	line	71
	
l2496:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	
l760:	
	line	72
	
l2498:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	
l2500:	
	line	73
	
l750:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text301,local,class=CODE,delta=2
global __ptext301
__ptext301:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftdiv
;;		___lwtoft
;;		___ftadd
;;		___ftmul
;;		___lbtoft
;;		___abtoft
;;		___awtoft
;;		___altoft
;;		___lltoft
;;		___attoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text301
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 6
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l2376:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2600
	goto	l974
u2600:
	
l2378:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2611
	goto	u2610
u2611:
	goto	l972
u2610:
	
l974:	
	line	65
	
l2380:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	
l2382:	
	goto	l975
	
l972:	
	line	66
	goto	l976
	
l977:	
	line	67
	
l2384:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u2625:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2625

	line	69
	
l976:	
	line	66
	
l2386:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2631
	goto	u2630
u2631:
	goto	l977
u2630:
	
l978:	
	line	70
	goto	l979
	
l980:	
	line	71
	
l2388:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l2390:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l2392:	
	movlw	01h
u2645:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2645

	line	74
	
l979:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2651
	goto	u2650
u2651:
	goto	l980
u2650:
	
l981:	
	line	75
	goto	l982
	
l983:	
	line	76
	
l2394:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u2665:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u2665
	line	78
	
l982:	
	line	75
	
l2396:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2671
	goto	u2670
u2671:
	goto	l983
u2670:
	
l984:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2681
	goto	u2680
u2681:
	goto	l985
u2680:
	line	80
	
l2398:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l985:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l2400:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u2695:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u2690:
	addlw	-1
	skipz
	goto	u2695
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l2402:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2700
	goto	l986
u2700:
	line	84
	
l2404:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l986:	
	line	85
	line	86
	
l975:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___lwmod
psect	text302,local,class=CODE,delta=2
global __ptext302
__ptext302:

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
;;		_ply
;;		_main
;; This function uses a non-reentrant model
;;
psect	text302
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 7
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l2282:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2301
	goto	u2300
u2301:
	goto	l656
u2300:
	line	9
	
l2284:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l657
	
l658:	
	line	11
	
l2286:	
	movlw	01h
	
u2315:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2315
	line	12
	
l2288:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	line	13
	
l657:	
	line	10
	
l2290:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l658
u2320:
	
l659:	
	line	14
	
l660:	
	line	15
	
l2292:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2335
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2335:
	skipc
	goto	u2331
	goto	u2330
u2331:
	goto	l661
u2330:
	line	16
	
l2294:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	
l661:	
	line	17
	
l2296:	
	movlw	01h
	
u2345:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2345
	line	18
	
l2298:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2351
	goto	u2350
u2351:
	goto	l660
u2350:
	
l662:	
	line	19
	
l656:	
	line	20
	
l2300:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	
l2302:	
	line	21
	
l663:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text303,local,class=CODE,delta=2
global __ptext303
__ptext303:

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
;;		_ply
;;		_main
;; This function uses a non-reentrant model
;;
psect	text303
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 7
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l2258:	
	movlw	low(0)
	movwf	(___lwdiv@quotient)
	movlw	high(0)
	movwf	((___lwdiv@quotient))+1
	line	10
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2231
	goto	u2230
u2231:
	goto	l646
u2230:
	line	11
	
l2260:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l647
	
l648:	
	line	13
	
l2262:	
	movlw	01h
	
u2245:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2245
	line	14
	
l2264:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	line	15
	
l647:	
	line	12
	
l2266:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l648
u2250:
	
l649:	
	line	16
	
l650:	
	line	17
	
l2268:	
	movlw	01h
	
u2265:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2265
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2275
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2275:
	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l651
u2270:
	line	19
	
l2270:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l2272:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	21
	
l651:	
	line	22
	
l2274:	
	movlw	01h
	
u2285:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2285
	line	23
	
l2276:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2291
	goto	u2290
u2291:
	goto	l650
u2290:
	
l652:	
	line	24
	
l646:	
	line	25
	
l2278:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	
l2280:	
	line	26
	
l653:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_delay
psect	text304,local,class=CODE,delta=2
global __ptext304
__ptext304:

;; *************** function _delay *****************
;; Defined at:
;;		line 16 in file "C:\Users\ELCOT\Desktop\PIC Workouts\TASK\mam tack\tack.c"
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
;;		_ply
;;		_main
;; This function uses a non-reentrant model
;;
psect	text304
	file	"C:\Users\ELCOT\Desktop\PIC Workouts\TASK\mam tack\tack.c"
	line	16
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	17
	
l2254:	
;tack.c: 17: while(x--);
	goto	l597
	
l598:	
	
l597:	
	
l2256:	
	movlw	low(01h)
	subwf	(delay@x),f
	movlw	high(01h)
	skipc
	decf	(delay@x+1),f
	subwf	(delay@x+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@x+1)),w
	skipz
	goto	u2225
	movlw	low(0FFFFh)
	xorwf	((delay@x)),w
u2225:

	skipz
	goto	u2221
	goto	u2220
u2221:
	goto	l598
u2220:
	
l599:	
	line	18
	
l600:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text305,local,class=CODE,delta=2
global __ptext305
__ptext305:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
