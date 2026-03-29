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
	FNCALL	_main,_lcd_init
	FNCALL	_main,_delay
	FNCALL	_main,_lcd_command
	FNCALL	_main,_lcd_display
	FNCALL	_main,_keypad
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_main,_lcd_data
	FNCALL	_keypad,_lcd_data
	FNCALL	_keypad,_delay
	FNCALL	_lcd_display,_lcd_data
	FNCALL	_lcd_init,_lcd_command
	FNCALL	_lcd_data,_delay
	FNCALL	_lcd_command,_delay
	FNROOT	_main
	global	_a
	global	_i
	global	_PORTB
psect	text190,local,class=CODE,delta=2
global __ptext190
__ptext190:
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
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
	global	_RB6
_RB6	set	54
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
	global	_RC5
_RC5	set	61
	global	_RC6
_RC6	set	62
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
	
STR_4:	
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	110	;'n'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	strings
	
STR_5:	
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	110	;'n'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	strings
	
STR_2:	
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	72	;'H'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	0
psect	strings
	
STR_3:	
	retlw	100	;'d'
	retlw	105	;'i'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	104	;'h'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	110	;'n'
	retlw	117	;'u'
	retlw	109	;'m'
	retlw	98	;'b'
	retlw	101	;'e'
	retlw	114	;'r'
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
	file	"one rupee coin.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_i:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_a:
       ds      18

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

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+012h)
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
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_lcd_command
?_lcd_command:	; 0 bytes @ 0x0
	global	?_lcd_data
?_lcd_data:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_lcd_display
?_lcd_display:	; 0 bytes @ 0x0
	global	?_keypad
?_keypad:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
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
	global	??_lcd_command
??_lcd_command:	; 0 bytes @ 0x2
	global	??_lcd_data
??_lcd_data:	; 0 bytes @ 0x2
	global	lcd_command@com
lcd_command@com:	; 1 bytes @ 0x2
	global	lcd_data@data
lcd_data@data:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x3
	global	??_lcd_display
??_lcd_display:	; 0 bytes @ 0x3
	global	??_keypad
??_keypad:	; 0 bytes @ 0x3
	global	lcd_display@m
lcd_display@m:	; 1 bytes @ 0x3
	ds	1
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	lcd_display@j
lcd_display@j:	; 2 bytes @ 0x4
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
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@a
main@a:	; 2 bytes @ 0x0
	ds	2
	global	main@b
main@b:	; 2 bytes @ 0x2
	ds	2
	global	main@a_320
main@a_320:	; 2 bytes @ 0x4
	ds	2
	global	main@b_321
main@b_321:	; 2 bytes @ 0x6
	ds	2
	global	main@n
main@n:	; 2 bytes @ 0x8
	ds	2
	global	main@n_319
main@n_319:	; 2 bytes @ 0xA
	ds	2
;;Data sizes: Strings 75, constant 0, data 0, bss 20, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9      11
;; BANK0           80     12      30
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; lcd_display@m	PTR unsigned char  size(1) Largest target is 18
;;		 -> STR_5(CODE[17]), STR_4(CODE[18]), STR_3(CODE[16]), STR_2(CODE[16]), 
;;		 -> STR_1(CODE[8]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___awdiv
;;   _keypad->_lcd_data
;;   _lcd_display->_lcd_data
;;   _lcd_init->_lcd_command
;;   _lcd_data->_delay
;;   _lcd_command->_delay
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
;; (0) _main                                                12    12      0    1222
;;                                              0 BANK0     12    12      0
;;                           _lcd_init
;;                              _delay
;;                        _lcd_command
;;                        _lcd_display
;;                             _keypad
;;                            ___awdiv
;;                            ___awmod
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _keypad                                               1     1      0      66
;;                                              3 COMMON     1     1      0
;;                           _lcd_data
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _lcd_display                                          3     3      0     134
;;                                              3 COMMON     3     3      0
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             0     0      0      44
;;                        _lcd_command
;; ---------------------------------------------------------------------------------
;; (1) _lcd_data                                             1     1      0      44
;;                                              2 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _lcd_command                                          1     1      0      44
;;                                              2 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
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
;;   _keypad
;;     _lcd_data
;;       _delay
;;     _delay
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
;;COMMON               E      9       B       1       78.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0      29       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      C      1E       5       37.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      2C      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 176 in file "C:\Users\TECH\Desktop\madhu pic folder\keypad\keypad task\new one rupee coin\one rupee coin\one rupee coin.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  b               2    2[BANK0 ] int 
;;  a               2    0[BANK0 ] int 
;;  b               2    6[BANK0 ] int 
;;  a               2    4[BANK0 ] int 
;;  n               2    8[BANK0 ] int 
;;  n               2   10[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      12       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0      12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_init
;;		_delay
;;		_lcd_command
;;		_lcd_display
;;		_keypad
;;		___awdiv
;;		___awmod
;;		_lcd_data
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\TECH\Desktop\madhu pic folder\keypad\keypad task\new one rupee coin\one rupee coin\one rupee coin.c"
	line	176
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
	line	177
	
l2406:	
;one rupee coin.c: 177: TRISD=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	178
;one rupee coin.c: 178: PORTD=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	180
;one rupee coin.c: 180: TRISC=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	181
;one rupee coin.c: 181: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	183
	
l2408:	
;one rupee coin.c: 183: TRISB=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	185
	
l2410:	
;one rupee coin.c: 185: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	187
	
l2412:	
;one rupee coin.c: 187: lcd_init();
	fcall	_lcd_init
	line	188
	
l2414:	
;one rupee coin.c: 188: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	190
;one rupee coin.c: 190: while(1)
	
l603:	
	line	192
;one rupee coin.c: 191: {
;one rupee coin.c: 192: i=0;
	movlw	low(0)
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	line	193
	
l2416:	
;one rupee coin.c: 193: lcd_command(0x80);
	movlw	(080h)
	fcall	_lcd_command
	line	194
	
l2418:	
;one rupee coin.c: 194: if(RC3==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(59/8),(59)&7
	goto	u2711
	goto	u2710
u2711:
	goto	l604
u2710:
	line	196
	
l2420:	
;one rupee coin.c: 195: {
;one rupee coin.c: 196: lcd_display("WELCOME");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_display
	line	197
	
l2422:	
;one rupee coin.c: 197: delay(10000);delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2424:	
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	198
	
l2426:	
;one rupee coin.c: 198: lcd_command(0x01);
	movlw	(01h)
	fcall	_lcd_command
	line	199
	
l2428:	
;one rupee coin.c: 199: lcd_command(0x80);
	movlw	(080h)
	fcall	_lcd_command
	line	200
;one rupee coin.c: 200: lcd_display("INSERT THE COIN");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_lcd_display
	line	201
	
l2430:	
;one rupee coin.c: 201: delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	202
	
l2432:	
;one rupee coin.c: 202: lcd_command(0x01);
	movlw	(01h)
	fcall	_lcd_command
	line	203
	
l604:	
	line	205
	
l2434:	
;one rupee coin.c: 203: }
;one rupee coin.c: 205: if(RC4==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(60/8),(60)&7
	goto	u2721
	goto	u2720
u2721:
	goto	l605
u2720:
	line	207
	
l2436:	
;one rupee coin.c: 206: {
;one rupee coin.c: 207: lcd_display("dial the number");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_lcd_display
	line	208
	
l2438:	
;one rupee coin.c: 208: lcd_command(0x01);
	movlw	(01h)
	fcall	_lcd_command
	line	210
	
l2440:	
;one rupee coin.c: 210: keypad();
	fcall	_keypad
	line	211
	
l2442:	
;one rupee coin.c: 211: lcd_command(0x01);
	movlw	(01h)
	fcall	_lcd_command
	line	212
	
l2444:	
;one rupee coin.c: 212: lcd_display("connecting.......");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_lcd_display
	line	213
	
l2446:	
;one rupee coin.c: 213: delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	214
	
l605:	
	line	215
	
l2448:	
;one rupee coin.c: 214: }
;one rupee coin.c: 215: delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	216
	
l2450:	
;one rupee coin.c: 216: lcd_command(0x01);
	movlw	(01h)
	fcall	_lcd_command
	line	217
	
l2452:	
;one rupee coin.c: 217: if(RC5==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(61/8),(61)&7
	goto	u2731
	goto	u2730
u2731:
	goto	l606
u2730:
	line	219
;one rupee coin.c: 218: {
;one rupee coin.c: 219: while(1)
	
l607:	
	line	221
	
l2454:	
;one rupee coin.c: 220: {
;one rupee coin.c: 221: lcd_command(0x01);
	movlw	(01h)
	fcall	_lcd_command
	line	222
	
l2456:	
;one rupee coin.c: 222: lcd_display("connected.......");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_lcd_display
	line	223
	
l2458:	
;one rupee coin.c: 223: delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	224
	
l2460:	
;one rupee coin.c: 224: lcd_command(0x01);
	movlw	(01h)
	fcall	_lcd_command
	line	225
	
l2462:	
;one rupee coin.c: 225: for(int n=0;n<=59;n++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@n)
	movlw	high(0)
	movwf	((main@n))+1
	
l2464:	
	movf	(main@n+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(03Ch))^80h
	subwf	btemp+0,w
	skipz
	goto	u2745
	movlw	low(03Ch)
	subwf	(main@n),w
u2745:

	skipc
	goto	u2741
	goto	u2740
u2741:
	goto	l608
u2740:
	
l2466:	
	goto	l609
	line	226
	
l608:	
	line	227
	
l2468:	
;one rupee coin.c: 226: {
;one rupee coin.c: 227: int a=n/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@n+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@n),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@a+1)
	addwf	(main@a+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@a)
	addwf	(main@a)

	line	228
;one rupee coin.c: 228: int b=n%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@n+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@n),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@b+1)
	addwf	(main@b+1)
	movf	(0+(?___awmod)),w
	clrf	(main@b)
	addwf	(main@b)

	line	229
;one rupee coin.c: 229: lcd_command(0x80);
	movlw	(080h)
	fcall	_lcd_command
	line	230
;one rupee coin.c: 230: lcd_data(a+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@a),w
	addlw	030h
	fcall	_lcd_data
	line	231
;one rupee coin.c: 231: lcd_data(b+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@b),w
	addlw	030h
	fcall	_lcd_data
	line	232
;one rupee coin.c: 232: delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	225
	
l2470:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@n),f
	skipnc
	incf	(main@n+1),f
	movlw	high(01h)
	addwf	(main@n+1),f
	
l2472:	
	movf	(main@n+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(03Ch))^80h
	subwf	btemp+0,w
	skipz
	goto	u2755
	movlw	low(03Ch)
	subwf	(main@n),w
u2755:

	skipc
	goto	u2751
	goto	u2750
u2751:
	goto	l608
u2750:
	
l609:	
	line	234
	
l610:	
	line	219
	goto	l607
	
l611:	
	line	235
	
l606:	
	line	237
;one rupee coin.c: 233: }
;one rupee coin.c: 234: }
;one rupee coin.c: 235: }
;one rupee coin.c: 237: if(RC6==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(62/8),(62)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l612
u2760:
	line	239
	
l2474:	
;one rupee coin.c: 238: {
;one rupee coin.c: 239: for(int n=0;n<=59;n++)
	movlw	low(0)
	movwf	(main@n_319)
	movlw	high(0)
	movwf	((main@n_319))+1
	
l2476:	
	movf	(main@n_319+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(03Ch))^80h
	subwf	btemp+0,w
	skipz
	goto	u2775
	movlw	low(03Ch)
	subwf	(main@n_319),w
u2775:

	skipc
	goto	u2771
	goto	u2770
u2771:
	goto	l613
u2770:
	
l2478:	
	goto	l614
	line	240
	
l613:	
	line	241
	
l2480:	
;one rupee coin.c: 240: {
;one rupee coin.c: 241: int a=n/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@n_319+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@n_319),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@a_320+1)
	addwf	(main@a_320+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@a_320)
	addwf	(main@a_320)

	line	242
;one rupee coin.c: 242: int b=n%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@n_319+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@n_319),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@b_321+1)
	addwf	(main@b_321+1)
	movf	(0+(?___awmod)),w
	clrf	(main@b_321)
	addwf	(main@b_321)

	line	243
;one rupee coin.c: 243: lcd_data(a+0x30);
	movf	(main@a_320),w
	addlw	030h
	fcall	_lcd_data
	line	244
;one rupee coin.c: 244: lcd_data(b+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@b_321),w
	addlw	030h
	fcall	_lcd_data
	line	239
	
l2482:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@n_319),f
	skipnc
	incf	(main@n_319+1),f
	movlw	high(01h)
	addwf	(main@n_319+1),f
	
l2484:	
	movf	(main@n_319+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(03Ch))^80h
	subwf	btemp+0,w
	skipz
	goto	u2785
	movlw	low(03Ch)
	subwf	(main@n_319),w
u2785:

	skipc
	goto	u2781
	goto	u2780
u2781:
	goto	l613
u2780:
	
l614:	
	line	246
	
l612:	
	line	253
	
l615:	
	line	190
	goto	l603
	
l616:	
	line	255
	
l617:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_keypad
psect	text191,local,class=CODE,delta=2
global __ptext191
__ptext191:

;; *************** function _keypad *****************
;; Defined at:
;;		line 61 in file "C:\Users\TECH\Desktop\madhu pic folder\keypad\keypad task\new one rupee coin\one rupee coin\one rupee coin.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_data
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text191
	file	"C:\Users\TECH\Desktop\madhu pic folder\keypad\keypad task\new one rupee coin\one rupee coin\one rupee coin.c"
	line	61
	global	__size_of_keypad
	__size_of_keypad	equ	__end_of_keypad-_keypad
	
_keypad:	
	opt	stack 7
; Regs used in _keypad: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
	line	63
;one rupee coin.c: 63: while(1)
	
l584:	
	line	66
;one rupee coin.c: 64: {
;one rupee coin.c: 66: RB3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	line	67
;one rupee coin.c: 67: RB4=0;
	bcf	(52/8),(52)&7
	line	68
;one rupee coin.c: 68: RB5=0;
	bcf	(53/8),(53)&7
	line	69
;one rupee coin.c: 69: RB6=0;
	bcf	(54/8),(54)&7
	line	70
;one rupee coin.c: 70: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u2581
	goto	u2580
u2581:
	goto	l585
u2580:
	line	73
	
l2240:	
;one rupee coin.c: 71: {
;one rupee coin.c: 73: lcd_data('1');
	movlw	(031h)
	fcall	_lcd_data
	line	74
	
l2242:	
;one rupee coin.c: 74: a[i]=1;
	movf	(_i),w
	movwf	(??_keypad+0)+0
	addwf	(??_keypad+0)+0,w
	addlw	_a&0ffh
	movwf	fsr0
	movlw	low(01h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(01h)
	movwf	indf
	line	75
	
l2244:	
;one rupee coin.c: 75: i=i+1;delay(50000);delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l2246:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2248:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	76
	
l585:	
	line	77
	
l2250:	
;one rupee coin.c: 76: }
;one rupee coin.c: 77: if(RB1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u2591
	goto	u2590
u2591:
	goto	l586
u2590:
	line	79
	
l2252:	
;one rupee coin.c: 78: {
;one rupee coin.c: 79: lcd_data('2');
	movlw	(032h)
	fcall	_lcd_data
	line	80
	
l2254:	
;one rupee coin.c: 80: a[i]=2;
	movf	(_i),w
	movwf	(??_keypad+0)+0
	addwf	(??_keypad+0)+0,w
	addlw	_a&0ffh
	movwf	fsr0
	movlw	low(02h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(02h)
	movwf	indf
	line	81
	
l2256:	
;one rupee coin.c: 81: i=i+1;delay(50000);delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l2258:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2260:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	82
	
l586:	
	line	83
	
l2262:	
;one rupee coin.c: 82: }
;one rupee coin.c: 83: if(RB2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7
	goto	u2601
	goto	u2600
u2601:
	goto	l587
u2600:
	line	85
	
l2264:	
;one rupee coin.c: 84: {
;one rupee coin.c: 85: lcd_data('3');
	movlw	(033h)
	fcall	_lcd_data
	line	86
	
l2266:	
;one rupee coin.c: 86: a[i]=3;
	movf	(_i),w
	movwf	(??_keypad+0)+0
	addwf	(??_keypad+0)+0,w
	addlw	_a&0ffh
	movwf	fsr0
	movlw	low(03h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(03h)
	movwf	indf
	line	87
	
l2268:	
;one rupee coin.c: 87: i=i+1;delay(50000);delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l2270:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2272:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	88
	
l587:	
	line	90
	
l2274:	
;one rupee coin.c: 88: }
;one rupee coin.c: 90: RB3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	91
	
l2276:	
;one rupee coin.c: 91: RB4=1;
	bsf	(52/8),(52)&7
	line	92
	
l2278:	
;one rupee coin.c: 92: RB5=0;
	bcf	(53/8),(53)&7
	line	93
	
l2280:	
;one rupee coin.c: 93: RB6=0;
	bcf	(54/8),(54)&7
	line	94
	
l2282:	
;one rupee coin.c: 94: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u2611
	goto	u2610
u2611:
	goto	l588
u2610:
	line	96
	
l2284:	
;one rupee coin.c: 95: {
;one rupee coin.c: 96: lcd_data('4');a[i]=4;
	movlw	(034h)
	fcall	_lcd_data
	
l2286:	
	movf	(_i),w
	movwf	(??_keypad+0)+0
	addwf	(??_keypad+0)+0,w
	addlw	_a&0ffh
	movwf	fsr0
	movlw	low(04h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(04h)
	movwf	indf
	line	97
	
l2288:	
;one rupee coin.c: 97: i=i+1;delay(50000);delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l2290:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2292:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	98
	
l588:	
	line	99
	
l2294:	
;one rupee coin.c: 98: }
;one rupee coin.c: 99: if(RB1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u2621
	goto	u2620
u2621:
	goto	l589
u2620:
	line	102
	
l2296:	
;one rupee coin.c: 100: {
;one rupee coin.c: 102: lcd_data('5');
	movlw	(035h)
	fcall	_lcd_data
	line	103
	
l2298:	
;one rupee coin.c: 103: a[i]=5;
	movf	(_i),w
	movwf	(??_keypad+0)+0
	addwf	(??_keypad+0)+0,w
	addlw	_a&0ffh
	movwf	fsr0
	movlw	low(05h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(05h)
	movwf	indf
	line	104
	
l2300:	
;one rupee coin.c: 104: i=i+1;delay(50000);delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l2302:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2304:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	105
	
l589:	
	line	106
	
l2306:	
;one rupee coin.c: 105: }
;one rupee coin.c: 106: if(RB2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7
	goto	u2631
	goto	u2630
u2631:
	goto	l590
u2630:
	line	109
	
l2308:	
;one rupee coin.c: 107: {
;one rupee coin.c: 109: lcd_data('6');
	movlw	(036h)
	fcall	_lcd_data
	line	110
	
l2310:	
;one rupee coin.c: 110: a[i]=6;
	movf	(_i),w
	movwf	(??_keypad+0)+0
	addwf	(??_keypad+0)+0,w
	addlw	_a&0ffh
	movwf	fsr0
	movlw	low(06h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(06h)
	movwf	indf
	line	111
	
l2312:	
;one rupee coin.c: 111: i=i+1;delay(50000);delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l2314:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2316:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	112
	
l590:	
	line	114
	
l2318:	
;one rupee coin.c: 112: }
;one rupee coin.c: 114: RB3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	115
	
l2320:	
;one rupee coin.c: 115: RB4=0;
	bcf	(52/8),(52)&7
	line	116
	
l2322:	
;one rupee coin.c: 116: RB5=1;
	bsf	(53/8),(53)&7
	line	117
	
l2324:	
;one rupee coin.c: 117: RB6=0;
	bcf	(54/8),(54)&7
	line	118
	
l2326:	
;one rupee coin.c: 118: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u2641
	goto	u2640
u2641:
	goto	l591
u2640:
	line	121
	
l2328:	
;one rupee coin.c: 119: {
;one rupee coin.c: 121: lcd_data('7');
	movlw	(037h)
	fcall	_lcd_data
	line	122
	
l2330:	
;one rupee coin.c: 122: a[i]=7;
	movf	(_i),w
	movwf	(??_keypad+0)+0
	addwf	(??_keypad+0)+0,w
	addlw	_a&0ffh
	movwf	fsr0
	movlw	low(07h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(07h)
	movwf	indf
	line	123
	
l2332:	
;one rupee coin.c: 123: i=i+1;delay(50000);delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l2334:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2336:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	124
	
l591:	
	line	125
	
l2338:	
;one rupee coin.c: 124: }
;one rupee coin.c: 125: if(RB1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u2651
	goto	u2650
u2651:
	goto	l592
u2650:
	line	128
	
l2340:	
;one rupee coin.c: 126: {
;one rupee coin.c: 128: lcd_data('8');
	movlw	(038h)
	fcall	_lcd_data
	line	129
	
l2342:	
;one rupee coin.c: 129: a[i]=8;
	movf	(_i),w
	movwf	(??_keypad+0)+0
	addwf	(??_keypad+0)+0,w
	addlw	_a&0ffh
	movwf	fsr0
	movlw	low(08h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(08h)
	movwf	indf
	line	130
	
l2344:	
;one rupee coin.c: 130: i=i+1;delay(50000);delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l2346:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2348:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	131
	
l592:	
	line	132
	
l2350:	
;one rupee coin.c: 131: }
;one rupee coin.c: 132: if(RB2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7
	goto	u2661
	goto	u2660
u2661:
	goto	l593
u2660:
	line	135
	
l2352:	
;one rupee coin.c: 133: {
;one rupee coin.c: 135: lcd_data('9');
	movlw	(039h)
	fcall	_lcd_data
	line	136
	
l2354:	
;one rupee coin.c: 136: a[i]=9;
	movf	(_i),w
	movwf	(??_keypad+0)+0
	addwf	(??_keypad+0)+0,w
	addlw	_a&0ffh
	movwf	fsr0
	movlw	low(09h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(09h)
	movwf	indf
	line	137
	
l2356:	
;one rupee coin.c: 137: i=i+1;delay(50000);delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l2358:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2360:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	138
	
l593:	
	line	141
	
l2362:	
;one rupee coin.c: 138: }
;one rupee coin.c: 141: RB3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	142
	
l2364:	
;one rupee coin.c: 142: RB4=0;
	bcf	(52/8),(52)&7
	line	143
	
l2366:	
;one rupee coin.c: 143: RB5=0;
	bcf	(53/8),(53)&7
	line	144
	
l2368:	
;one rupee coin.c: 144: RB6=1;
	bsf	(54/8),(54)&7
	line	145
	
l2370:	
;one rupee coin.c: 145: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u2671
	goto	u2670
u2671:
	goto	l594
u2670:
	line	148
	
l2372:	
;one rupee coin.c: 146: {
;one rupee coin.c: 148: lcd_data('*');
	movlw	(02Ah)
	fcall	_lcd_data
	line	150
	
l2374:	
;one rupee coin.c: 150: i=i+1;delay(50000);delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l2376:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2378:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	151
	
l594:	
	line	152
	
l2380:	
;one rupee coin.c: 151: }
;one rupee coin.c: 152: if(RB1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u2681
	goto	u2680
u2681:
	goto	l595
u2680:
	line	155
	
l2382:	
;one rupee coin.c: 153: {
;one rupee coin.c: 155: lcd_data('0');
	movlw	(030h)
	fcall	_lcd_data
	line	156
	
l2384:	
;one rupee coin.c: 156: a[i]=0;
	movf	(_i),w
	movwf	(??_keypad+0)+0
	addwf	(??_keypad+0)+0,w
	addlw	_a&0ffh
	movwf	fsr0
	movlw	low(0)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	line	157
	
l2386:	
;one rupee coin.c: 157: i=i+1;delay(50000);delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l2388:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2390:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	158
	
l595:	
	line	159
	
l2392:	
;one rupee coin.c: 158: }
;one rupee coin.c: 159: if(RB2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7
	goto	u2691
	goto	u2690
u2691:
	goto	l596
u2690:
	line	162
	
l2394:	
;one rupee coin.c: 160: {
;one rupee coin.c: 162: lcd_data('#');
	movlw	(023h)
	fcall	_lcd_data
	line	164
	
l2396:	
;one rupee coin.c: 164: i=i+1;delay(50000);delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l2398:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2400:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	165
	
l596:	
	line	168
	
l2402:	
;one rupee coin.c: 165: }
;one rupee coin.c: 168: if(i>9)
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0Ah))^80h
	subwf	btemp+0,w
	skipz
	goto	u2705
	movlw	low(0Ah)
	subwf	(_i),w
u2705:

	skipc
	goto	u2701
	goto	u2700
u2701:
	goto	l597
u2700:
	line	170
	
l2404:	
;one rupee coin.c: 169: {
;one rupee coin.c: 170: break;
	goto	l598
	line	171
	
l597:	
	line	172
	
l599:	
	line	63
	goto	l584
	
l598:	
	line	174
	
l600:	
	return
	opt stack 0
GLOBAL	__end_of_keypad
	__end_of_keypad:
;; =============== function _keypad ends ============

	signat	_keypad,88
	global	_lcd_display
psect	text192,local,class=CODE,delta=2
global __ptext192
__ptext192:

;; *************** function _lcd_display *****************
;; Defined at:
;;		line 54 in file "C:\Users\TECH\Desktop\madhu pic folder\keypad\keypad task\new one rupee coin\one rupee coin\one rupee coin.c"
;; Parameters:    Size  Location     Type
;;  m               1    wreg     PTR unsigned char 
;;		 -> STR_5(17), STR_4(18), STR_3(16), STR_2(16), 
;;		 -> STR_1(8), 
;; Auto vars:     Size  Location     Type
;;  m               1    3[COMMON] PTR unsigned char 
;;		 -> STR_5(17), STR_4(18), STR_3(16), STR_2(16), 
;;		 -> STR_1(8), 
;;  j               2    4[COMMON] int 
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text192
	file	"C:\Users\TECH\Desktop\madhu pic folder\keypad\keypad task\new one rupee coin\one rupee coin\one rupee coin.c"
	line	54
	global	__size_of_lcd_display
	__size_of_lcd_display	equ	__end_of_lcd_display-_lcd_display
	
_lcd_display:	
	opt	stack 7
; Regs used in _lcd_display: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_display@m stored from wreg
	movwf	(lcd_display@m)
	line	55
	
l2232:	
;one rupee coin.c: 55: for(int j=0;m[j]!=0;j++)
	movlw	low(0)
	movwf	(lcd_display@j)
	movlw	high(0)
	movwf	((lcd_display@j))+1
	goto	l578
	line	56
	
l579:	
	line	57
	
l2234:	
;one rupee coin.c: 56: {
;one rupee coin.c: 57: lcd_data(m[j]);
	movf	(lcd_display@j),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_data
	line	55
	
l2236:	
	movlw	low(01h)
	addwf	(lcd_display@j),f
	skipnc
	incf	(lcd_display@j+1),f
	movlw	high(01h)
	addwf	(lcd_display@j+1),f
	
l578:	
	
l2238:	
	movf	(lcd_display@j),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2571
	goto	u2570
u2571:
	goto	l579
u2570:
	
l580:	
	line	59
	
l581:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_display
	__end_of_lcd_display:
;; =============== function _lcd_display ends ============

	signat	_lcd_display,4216
	global	_lcd_init
psect	text193,local,class=CODE,delta=2
global __ptext193
__ptext193:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 47 in file "C:\Users\TECH\Desktop\madhu pic folder\keypad\keypad task\new one rupee coin\one rupee coin\one rupee coin.c"
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
psect	text193
	file	"C:\Users\TECH\Desktop\madhu pic folder\keypad\keypad task\new one rupee coin\one rupee coin\one rupee coin.c"
	line	47
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 7
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	48
	
l2230:	
;one rupee coin.c: 48: lcd_command(0x38);
	movlw	(038h)
	fcall	_lcd_command
	line	49
;one rupee coin.c: 49: lcd_command(0x06);
	movlw	(06h)
	fcall	_lcd_command
	line	50
;one rupee coin.c: 50: lcd_command(0x0C);
	movlw	(0Ch)
	fcall	_lcd_command
	line	51
;one rupee coin.c: 51: lcd_command(0x01);
	movlw	(01h)
	fcall	_lcd_command
	line	52
	
l575:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_data
psect	text194,local,class=CODE,delta=2
global __ptext194
__ptext194:

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 38 in file "C:\Users\TECH\Desktop\madhu pic folder\keypad\keypad task\new one rupee coin\one rupee coin\one rupee coin.c"
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
;;		_keypad
;;		_main
;; This function uses a non-reentrant model
;;
psect	text194
	file	"C:\Users\TECH\Desktop\madhu pic folder\keypad\keypad task\new one rupee coin\one rupee coin\one rupee coin.c"
	line	38
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 7
; Regs used in _lcd_data: [wreg+status,2+status,0+pclath+cstack]
;lcd_data@data stored from wreg
	movwf	(lcd_data@data)
	line	39
	
l2218:	
;one rupee coin.c: 39: PORTD=data;
	movf	(lcd_data@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	40
	
l2220:	
;one rupee coin.c: 40: RC0=1;
	bsf	(56/8),(56)&7
	line	41
	
l2222:	
;one rupee coin.c: 41: RC1=0;
	bcf	(57/8),(57)&7
	line	42
	
l2224:	
;one rupee coin.c: 42: RC2=1;
	bsf	(58/8),(58)&7
	line	43
	
l2226:	
;one rupee coin.c: 43: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	44
	
l2228:	
;one rupee coin.c: 44: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	45
	
l572:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
;; =============== function _lcd_data ends ============

	signat	_lcd_data,4216
	global	_lcd_command
psect	text195,local,class=CODE,delta=2
global __ptext195
__ptext195:

;; *************** function _lcd_command *****************
;; Defined at:
;;		line 29 in file "C:\Users\TECH\Desktop\madhu pic folder\keypad\keypad task\new one rupee coin\one rupee coin\one rupee coin.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text195
	file	"C:\Users\TECH\Desktop\madhu pic folder\keypad\keypad task\new one rupee coin\one rupee coin\one rupee coin.c"
	line	29
	global	__size_of_lcd_command
	__size_of_lcd_command	equ	__end_of_lcd_command-_lcd_command
	
_lcd_command:	
	opt	stack 7
; Regs used in _lcd_command: [wreg+status,2+status,0+pclath+cstack]
;lcd_command@com stored from wreg
	movwf	(lcd_command@com)
	line	30
	
l2206:	
;one rupee coin.c: 30: PORTD=com;
	movf	(lcd_command@com),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	31
	
l2208:	
;one rupee coin.c: 31: RC0=0;
	bcf	(56/8),(56)&7
	line	32
	
l2210:	
;one rupee coin.c: 32: RC1=0;
	bcf	(57/8),(57)&7
	line	33
	
l2212:	
;one rupee coin.c: 33: RC2=1;
	bsf	(58/8),(58)&7
	line	34
	
l2214:	
;one rupee coin.c: 34: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	35
	
l2216:	
;one rupee coin.c: 35: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	36
	
l569:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_command
	__end_of_lcd_command:
;; =============== function _lcd_command ends ============

	signat	_lcd_command,4216
	global	___awmod
psect	text196,local,class=CODE,delta=2
global __ptext196
__ptext196:

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
psect	text196
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2170:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	line	9
	
l2172:	
	btfss	(___awmod@dividend+1),7
	goto	u2481
	goto	u2480
u2481:
	goto	l834
u2480:
	line	10
	
l2174:	
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
	
l834:	
	line	13
	
l2176:	
	btfss	(___awmod@divisor+1),7
	goto	u2491
	goto	u2490
u2491:
	goto	l835
u2490:
	line	14
	
l2178:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	
l835:	
	line	15
	
l2180:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2501
	goto	u2500
u2501:
	goto	l836
u2500:
	line	16
	
l2182:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l837
	
l838:	
	line	18
	
l2184:	
	movlw	01h
	
u2515:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2515
	line	19
	
l2186:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	line	20
	
l837:	
	line	17
	
l2188:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2521
	goto	u2520
u2521:
	goto	l838
u2520:
	
l839:	
	line	21
	
l840:	
	line	22
	
l2190:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2535
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2535:
	skipc
	goto	u2531
	goto	u2530
u2531:
	goto	l841
u2530:
	line	23
	
l2192:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	
l841:	
	line	24
	
l2194:	
	movlw	01h
	
u2545:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2545
	line	25
	
l2196:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2551
	goto	u2550
u2551:
	goto	l840
u2550:
	
l842:	
	line	26
	
l836:	
	line	27
	
l2198:	
	movf	(___awmod@sign),w
	skipz
	goto	u2560
	goto	l843
u2560:
	line	28
	
l2200:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	
l843:	
	line	29
	
l2202:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	
l2204:	
	line	30
	
l844:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text197,local,class=CODE,delta=2
global __ptext197
__ptext197:

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
psect	text197
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2132:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	line	10
	
l2134:	
	btfss	(___awdiv@divisor+1),7
	goto	u2381
	goto	u2380
u2381:
	goto	l766
u2380:
	line	11
	
l2136:	
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
	
l766:	
	line	14
	
l2138:	
	btfss	(___awdiv@dividend+1),7
	goto	u2391
	goto	u2390
u2391:
	goto	l767
u2390:
	line	15
	
l2140:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2142:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l767:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2401
	goto	u2400
u2401:
	goto	l768
u2400:
	line	20
	
l2144:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l769
	
l770:	
	line	22
	
l2146:	
	movlw	01h
	
u2415:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2415
	line	23
	
l2148:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	line	24
	
l769:	
	line	21
	
l2150:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2421
	goto	u2420
u2421:
	goto	l770
u2420:
	
l771:	
	line	25
	
l772:	
	line	26
	
l2152:	
	movlw	01h
	
u2435:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2435
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2445
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2445:
	skipc
	goto	u2441
	goto	u2440
u2441:
	goto	l773
u2440:
	line	28
	
l2154:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2156:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	30
	
l773:	
	line	31
	
l2158:	
	movlw	01h
	
u2455:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2455
	line	32
	
l2160:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2461
	goto	u2460
u2461:
	goto	l772
u2460:
	
l774:	
	line	33
	
l768:	
	line	34
	
l2162:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2470
	goto	l775
u2470:
	line	35
	
l2164:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	
l775:	
	line	36
	
l2166:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	
l2168:	
	line	37
	
l776:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_delay
psect	text198,local,class=CODE,delta=2
global __ptext198
__ptext198:

;; *************** function _delay *****************
;; Defined at:
;;		line 25 in file "C:\Users\TECH\Desktop\madhu pic folder\keypad\keypad task\new one rupee coin\one rupee coin\one rupee coin.c"
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
;;		_keypad
;;		_main
;; This function uses a non-reentrant model
;;
psect	text198
	file	"C:\Users\TECH\Desktop\madhu pic folder\keypad\keypad task\new one rupee coin\one rupee coin\one rupee coin.c"
	line	25
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	26
	
l2128:	
;one rupee coin.c: 26: while(x--);
	goto	l563
	
l564:	
	
l563:	
	
l2130:	
	movlw	low(01h)
	subwf	(delay@x),f
	movlw	high(01h)
	skipc
	decf	(delay@x+1),f
	subwf	(delay@x+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@x+1)),w
	skipz
	goto	u2375
	movlw	low(0FFFFh)
	xorwf	((delay@x)),w
u2375:

	skipz
	goto	u2371
	goto	u2370
u2371:
	goto	l564
u2370:
	
l565:	
	line	27
	
l566:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text199,local,class=CODE,delta=2
global __ptext199
__ptext199:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
