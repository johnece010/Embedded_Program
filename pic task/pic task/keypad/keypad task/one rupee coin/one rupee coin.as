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
	global	_RB7
_RB7	set	55
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
	
STR_6:	
	retlw	99	;'c'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	100	;'d'
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	110	;'n'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	100	;'d'
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
	global	main@n
main@n:	; 2 bytes @ 0x4
	ds	2
;;Data sizes: Strings 93, constant 0, data 0, bss 20, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9      11
;; BANK0           80      6      24
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
;;		 -> STR_6(CODE[18]), STR_5(CODE[17]), STR_4(CODE[18]), STR_3(CODE[16]), 
;;		 -> STR_2(CODE[16]), STR_1(CODE[8]), 
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
;; (0) _main                                                 6     6      0    1131
;;                                              0 BANK0      6     6      0
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
;;ABS                  0      0      23       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      6      18       5       30.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      26      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 178 in file "C:\Users\TECH\Desktop\madhu pic folder\keypad\keypad task\one rupee coin\one rupee coin.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  b               2    2[BANK0 ] int 
;;  a               2    0[BANK0 ] int 
;;  n               2    4[BANK0 ] int 
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
;;      Locals:         0       6       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
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
	file	"C:\Users\TECH\Desktop\madhu pic folder\keypad\keypad task\one rupee coin\one rupee coin.c"
	line	178
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
	line	179
	
l2315:	
;one rupee coin.c: 179: TRISD=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	180
;one rupee coin.c: 180: PORTD=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	182
;one rupee coin.c: 182: TRISC=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	183
;one rupee coin.c: 183: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	185
	
l2317:	
;one rupee coin.c: 185: TRISB=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	187
	
l2319:	
;one rupee coin.c: 187: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	189
	
l2321:	
;one rupee coin.c: 189: lcd_init();
	fcall	_lcd_init
	line	190
	
l2323:	
;one rupee coin.c: 190: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	192
;one rupee coin.c: 192: while(1)
	
l603:	
	line	196
	
l2325:	
;one rupee coin.c: 193: {
;one rupee coin.c: 196: if(RC3==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(59/8),(59)&7
	goto	u2711
	goto	u2710
u2711:
	goto	l604
u2710:
	line	198
	
l2327:	
;one rupee coin.c: 197: {
;one rupee coin.c: 198: lcd_command(0x80);
	movlw	(080h)
	fcall	_lcd_command
	line	199
	
l2329:	
;one rupee coin.c: 199: lcd_display("WELCOME");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_display
	line	200
	
l2331:	
;one rupee coin.c: 200: delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	202
	
l2333:	
;one rupee coin.c: 202: lcd_command(0x01);
	movlw	(01h)
	fcall	_lcd_command
	line	203
	
l2335:	
;one rupee coin.c: 203: lcd_display("INSERT THE COIN");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_lcd_display
	line	204
	
l604:	
	line	206
	
l2337:	
;one rupee coin.c: 204: }
;one rupee coin.c: 206: if(RC4==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(60/8),(60)&7
	goto	u2721
	goto	u2720
u2721:
	goto	l605
u2720:
	line	208
	
l2339:	
;one rupee coin.c: 207: {
;one rupee coin.c: 208: lcd_command(0x01);
	movlw	(01h)
	fcall	_lcd_command
	line	209
;one rupee coin.c: 209: lcd_command(0x80);
	movlw	(080h)
	fcall	_lcd_command
	line	210
	
l2341:	
;one rupee coin.c: 210: lcd_display("dial the number");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_lcd_display
	line	213
	
l2343:	
;one rupee coin.c: 213: lcd_command(0xC0);
	movlw	(0C0h)
	fcall	_lcd_command
	line	214
	
l2345:	
;one rupee coin.c: 214: keypad();
	fcall	_keypad
	line	215
	
l2347:	
;one rupee coin.c: 215: lcd_command(0x01);
	movlw	(01h)
	fcall	_lcd_command
	line	216
	
l2349:	
;one rupee coin.c: 216: lcd_display("connecting.......");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_lcd_display
	line	217
	
l2351:	
;one rupee coin.c: 217: delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	218
	
l605:	
	line	219
	
l2353:	
;one rupee coin.c: 218: }
;one rupee coin.c: 219: delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	221
	
l2355:	
;one rupee coin.c: 221: if(RC5==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(61/8),(61)&7
	goto	u2731
	goto	u2730
u2731:
	goto	l606
u2730:
	line	224
	
l2357:	
;one rupee coin.c: 222: {
;one rupee coin.c: 224: lcd_command(0x01);
	movlw	(01h)
	fcall	_lcd_command
	line	225
;one rupee coin.c: 225: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	226
;one rupee coin.c: 226: lcd_command(0x80);
	movlw	(080h)
	fcall	_lcd_command
	line	228
	
l2359:	
;one rupee coin.c: 228: lcd_display("connected.......");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_lcd_display
	line	229
	
l2361:	
;one rupee coin.c: 229: delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	231
	
l2363:	
;one rupee coin.c: 231: for(int n=59;n>=0;n--)
	movlw	low(03Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@n)
	movlw	high(03Bh)
	movwf	((main@n))+1
	
l2365:	
	btfss	(main@n+1),7
	goto	u2741
	goto	u2740
u2741:
	goto	l607
u2740:
	
l2367:	
	goto	l608
	line	232
	
l607:	
	line	233
	
l2369:	
;one rupee coin.c: 232: {
;one rupee coin.c: 233: int a=n/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
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

	line	234
;one rupee coin.c: 234: int b=n%10;
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

	line	235
;one rupee coin.c: 235: lcd_command(0xC0);
	movlw	(0C0h)
	fcall	_lcd_command
	line	236
;one rupee coin.c: 236: lcd_data(a+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@a),w
	addlw	030h
	fcall	_lcd_data
	line	237
;one rupee coin.c: 237: lcd_data(b+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@b),w
	addlw	030h
	fcall	_lcd_data
	line	238
;one rupee coin.c: 238: delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	239
	
l2371:	
;one rupee coin.c: 239: if(n<=10)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@n+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(0Bh))^80h
	subwf	btemp+0,w
	skipz
	goto	u2755
	movlw	low(0Bh)
	subwf	(main@n),w
u2755:

	skipnc
	goto	u2751
	goto	u2750
u2751:
	goto	l609
u2750:
	line	241
	
l2373:	
;one rupee coin.c: 240: {
;one rupee coin.c: 241: RB7==1;
	line	242
;one rupee coin.c: 242: if(RC6==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(62/8),(62)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l610
u2760:
	line	244
	
l2375:	
;one rupee coin.c: 243: {
;one rupee coin.c: 244: n=n+60;
	movf	(main@n),w
	addlw	low(03Ch)
	movwf	(main@n)
	movf	(main@n+1),w
	skipnc
	addlw	1
	addlw	high(03Ch)
	movwf	1+(main@n)
	line	245
	
l610:	
	line	246
	
l2377:	
;one rupee coin.c: 245: }
;one rupee coin.c: 246: if (RC6==0)
	btfsc	(62/8),(62)&7
	goto	u2771
	goto	u2770
u2771:
	goto	l611
u2770:
	line	248
	
l2379:	
;one rupee coin.c: 247: {
;one rupee coin.c: 248: lcd_command(0x01);
	movlw	(01h)
	fcall	_lcd_command
	line	249
;one rupee coin.c: 249: lcd_command(0xC0);
	movlw	(0C0h)
	fcall	_lcd_command
	line	250
	
l2381:	
;one rupee coin.c: 250: lcd_display("call disconnected");
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_lcd_display
	line	251
	
l611:	
	line	253
	
l609:	
	line	231
	
l2383:	
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@n),f
	skipnc
	incf	(main@n+1),f
	movlw	high(-1)
	addwf	(main@n+1),f
	
l2385:	
	btfss	(main@n+1),7
	goto	u2781
	goto	u2780
u2781:
	goto	l607
u2780:
	
l608:	
	line	256
	
l606:	
	line	258
	
l612:	
	line	192
	goto	l603
	
l613:	
	line	260
	
l614:	
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
;;		line 63 in file "C:\Users\TECH\Desktop\madhu pic folder\keypad\keypad task\one rupee coin\one rupee coin.c"
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
	file	"C:\Users\TECH\Desktop\madhu pic folder\keypad\keypad task\one rupee coin\one rupee coin.c"
	line	63
	global	__size_of_keypad
	__size_of_keypad	equ	__end_of_keypad-_keypad
	
_keypad:	
	opt	stack 7
; Regs used in _keypad: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
	line	65
;one rupee coin.c: 65: while(1)
	
l584:	
	line	68
;one rupee coin.c: 66: {
;one rupee coin.c: 68: RB3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	line	69
;one rupee coin.c: 69: RB4=0;
	bcf	(52/8),(52)&7
	line	70
;one rupee coin.c: 70: RB5=0;
	bcf	(53/8),(53)&7
	line	71
;one rupee coin.c: 71: RB6=0;
	bcf	(54/8),(54)&7
	line	72
;one rupee coin.c: 72: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u2581
	goto	u2580
u2581:
	goto	l585
u2580:
	line	75
	
l2173:	
;one rupee coin.c: 73: {
;one rupee coin.c: 75: lcd_data('1');
	movlw	(031h)
	fcall	_lcd_data
	line	76
	
l2175:	
;one rupee coin.c: 76: a[i]=1;
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
	line	77
	
l2177:	
;one rupee coin.c: 77: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l2179:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	78
	
l585:	
	line	79
	
l2181:	
;one rupee coin.c: 78: }
;one rupee coin.c: 79: if(RB1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u2591
	goto	u2590
u2591:
	goto	l586
u2590:
	line	81
	
l2183:	
;one rupee coin.c: 80: {
;one rupee coin.c: 81: lcd_data('2');
	movlw	(032h)
	fcall	_lcd_data
	line	82
	
l2185:	
;one rupee coin.c: 82: a[i]=2;
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
	line	83
	
l2187:	
;one rupee coin.c: 83: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l2189:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	84
	
l586:	
	line	85
	
l2191:	
;one rupee coin.c: 84: }
;one rupee coin.c: 85: if(RB2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7
	goto	u2601
	goto	u2600
u2601:
	goto	l587
u2600:
	line	87
	
l2193:	
;one rupee coin.c: 86: {
;one rupee coin.c: 87: lcd_data('3');
	movlw	(033h)
	fcall	_lcd_data
	line	88
	
l2195:	
;one rupee coin.c: 88: a[i]=3;
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
	line	89
	
l2197:	
;one rupee coin.c: 89: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l2199:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	90
	
l587:	
	line	92
	
l2201:	
;one rupee coin.c: 90: }
;one rupee coin.c: 92: RB3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	93
	
l2203:	
;one rupee coin.c: 93: RB4=1;
	bsf	(52/8),(52)&7
	line	94
	
l2205:	
;one rupee coin.c: 94: RB5=0;
	bcf	(53/8),(53)&7
	line	95
	
l2207:	
;one rupee coin.c: 95: RB6=0;
	bcf	(54/8),(54)&7
	line	96
	
l2209:	
;one rupee coin.c: 96: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u2611
	goto	u2610
u2611:
	goto	l588
u2610:
	line	98
	
l2211:	
;one rupee coin.c: 97: {
;one rupee coin.c: 98: lcd_data('4');a[i]=4;
	movlw	(034h)
	fcall	_lcd_data
	
l2213:	
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
	line	99
	
l2215:	
;one rupee coin.c: 99: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l2217:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	100
	
l588:	
	line	101
	
l2219:	
;one rupee coin.c: 100: }
;one rupee coin.c: 101: if(RB1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u2621
	goto	u2620
u2621:
	goto	l589
u2620:
	line	104
	
l2221:	
;one rupee coin.c: 102: {
;one rupee coin.c: 104: lcd_data('5');
	movlw	(035h)
	fcall	_lcd_data
	line	105
	
l2223:	
;one rupee coin.c: 105: a[i]=5;
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
	line	106
	
l2225:	
;one rupee coin.c: 106: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l2227:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	107
	
l589:	
	line	108
	
l2229:	
;one rupee coin.c: 107: }
;one rupee coin.c: 108: if(RB2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7
	goto	u2631
	goto	u2630
u2631:
	goto	l590
u2630:
	line	111
	
l2231:	
;one rupee coin.c: 109: {
;one rupee coin.c: 111: lcd_data('6');
	movlw	(036h)
	fcall	_lcd_data
	line	112
	
l2233:	
;one rupee coin.c: 112: a[i]=6;
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
	line	113
	
l2235:	
;one rupee coin.c: 113: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l2237:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	114
	
l590:	
	line	116
	
l2239:	
;one rupee coin.c: 114: }
;one rupee coin.c: 116: RB3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	117
	
l2241:	
;one rupee coin.c: 117: RB4=0;
	bcf	(52/8),(52)&7
	line	118
	
l2243:	
;one rupee coin.c: 118: RB5=1;
	bsf	(53/8),(53)&7
	line	119
	
l2245:	
;one rupee coin.c: 119: RB6=0;
	bcf	(54/8),(54)&7
	line	120
	
l2247:	
;one rupee coin.c: 120: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u2641
	goto	u2640
u2641:
	goto	l591
u2640:
	line	123
	
l2249:	
;one rupee coin.c: 121: {
;one rupee coin.c: 123: lcd_data('7');
	movlw	(037h)
	fcall	_lcd_data
	line	124
	
l2251:	
;one rupee coin.c: 124: a[i]=7;
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
	line	125
	
l2253:	
;one rupee coin.c: 125: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l2255:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	126
	
l591:	
	line	127
	
l2257:	
;one rupee coin.c: 126: }
;one rupee coin.c: 127: if(RB1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u2651
	goto	u2650
u2651:
	goto	l592
u2650:
	line	130
	
l2259:	
;one rupee coin.c: 128: {
;one rupee coin.c: 130: lcd_data('8');
	movlw	(038h)
	fcall	_lcd_data
	line	131
	
l2261:	
;one rupee coin.c: 131: a[i]=8;
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
	line	132
	
l2263:	
;one rupee coin.c: 132: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l2265:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	133
	
l592:	
	line	134
	
l2267:	
;one rupee coin.c: 133: }
;one rupee coin.c: 134: if(RB2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7
	goto	u2661
	goto	u2660
u2661:
	goto	l593
u2660:
	line	137
	
l2269:	
;one rupee coin.c: 135: {
;one rupee coin.c: 137: lcd_data('9');
	movlw	(039h)
	fcall	_lcd_data
	line	138
	
l2271:	
;one rupee coin.c: 138: a[i]=9;
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
	line	139
	
l2273:	
;one rupee coin.c: 139: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l2275:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	140
	
l593:	
	line	143
	
l2277:	
;one rupee coin.c: 140: }
;one rupee coin.c: 143: RB3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	144
	
l2279:	
;one rupee coin.c: 144: RB4=0;
	bcf	(52/8),(52)&7
	line	145
	
l2281:	
;one rupee coin.c: 145: RB5=0;
	bcf	(53/8),(53)&7
	line	146
	
l2283:	
;one rupee coin.c: 146: RB6=1;
	bsf	(54/8),(54)&7
	line	147
	
l2285:	
;one rupee coin.c: 147: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u2671
	goto	u2670
u2671:
	goto	l594
u2670:
	line	150
	
l2287:	
;one rupee coin.c: 148: {
;one rupee coin.c: 150: lcd_data('*');
	movlw	(02Ah)
	fcall	_lcd_data
	line	152
	
l2289:	
;one rupee coin.c: 152: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l2291:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	153
	
l594:	
	line	154
	
l2293:	
;one rupee coin.c: 153: }
;one rupee coin.c: 154: if(RB1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u2681
	goto	u2680
u2681:
	goto	l595
u2680:
	line	157
	
l2295:	
;one rupee coin.c: 155: {
;one rupee coin.c: 157: lcd_data('0');
	movlw	(030h)
	fcall	_lcd_data
	line	158
	
l2297:	
;one rupee coin.c: 158: a[i]=0;
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
	line	159
	
l2299:	
;one rupee coin.c: 159: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l2301:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	160
	
l595:	
	line	161
	
l2303:	
;one rupee coin.c: 160: }
;one rupee coin.c: 161: if(RB2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7
	goto	u2691
	goto	u2690
u2691:
	goto	l596
u2690:
	line	164
	
l2305:	
;one rupee coin.c: 162: {
;one rupee coin.c: 164: lcd_data('#');
	movlw	(023h)
	fcall	_lcd_data
	line	166
	
l2307:	
;one rupee coin.c: 166: i=i+1;delay(50000);
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	
l2309:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	167
	
l596:	
	line	170
	
l2311:	
;one rupee coin.c: 167: }
;one rupee coin.c: 170: if(i>9)
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
	line	172
	
l2313:	
;one rupee coin.c: 171: {
;one rupee coin.c: 172: break;
	goto	l598
	line	173
	
l597:	
	line	174
	
l599:	
	line	65
	goto	l584
	
l598:	
	line	176
	
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
;;		line 56 in file "C:\Users\TECH\Desktop\madhu pic folder\keypad\keypad task\one rupee coin\one rupee coin.c"
;; Parameters:    Size  Location     Type
;;  m               1    wreg     PTR unsigned char 
;;		 -> STR_6(18), STR_5(17), STR_4(18), STR_3(16), 
;;		 -> STR_2(16), STR_1(8), 
;; Auto vars:     Size  Location     Type
;;  m               1    3[COMMON] PTR unsigned char 
;;		 -> STR_6(18), STR_5(17), STR_4(18), STR_3(16), 
;;		 -> STR_2(16), STR_1(8), 
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
	file	"C:\Users\TECH\Desktop\madhu pic folder\keypad\keypad task\one rupee coin\one rupee coin.c"
	line	56
	global	__size_of_lcd_display
	__size_of_lcd_display	equ	__end_of_lcd_display-_lcd_display
	
_lcd_display:	
	opt	stack 7
; Regs used in _lcd_display: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_display@m stored from wreg
	movwf	(lcd_display@m)
	line	57
	
l2165:	
;one rupee coin.c: 57: for(int j=0;m[j]!=0;j++)
	movlw	low(0)
	movwf	(lcd_display@j)
	movlw	high(0)
	movwf	((lcd_display@j))+1
	goto	l578
	line	58
	
l579:	
	line	59
	
l2167:	
;one rupee coin.c: 58: {
;one rupee coin.c: 59: lcd_data(m[j]);
	movf	(lcd_display@j),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_data
	line	57
	
l2169:	
	movlw	low(01h)
	addwf	(lcd_display@j),f
	skipnc
	incf	(lcd_display@j+1),f
	movlw	high(01h)
	addwf	(lcd_display@j+1),f
	
l578:	
	
l2171:	
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
	line	61
	
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
;;		line 49 in file "C:\Users\TECH\Desktop\madhu pic folder\keypad\keypad task\one rupee coin\one rupee coin.c"
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
	file	"C:\Users\TECH\Desktop\madhu pic folder\keypad\keypad task\one rupee coin\one rupee coin.c"
	line	49
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 7
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	50
	
l2163:	
;one rupee coin.c: 50: lcd_command(0x38);
	movlw	(038h)
	fcall	_lcd_command
	line	51
;one rupee coin.c: 51: lcd_command(0x06);
	movlw	(06h)
	fcall	_lcd_command
	line	52
;one rupee coin.c: 52: lcd_command(0x0C);
	movlw	(0Ch)
	fcall	_lcd_command
	line	53
;one rupee coin.c: 53: lcd_command(0x01);
	movlw	(01h)
	fcall	_lcd_command
	line	54
	
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
;;		line 40 in file "C:\Users\TECH\Desktop\madhu pic folder\keypad\keypad task\one rupee coin\one rupee coin.c"
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
	file	"C:\Users\TECH\Desktop\madhu pic folder\keypad\keypad task\one rupee coin\one rupee coin.c"
	line	40
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 7
; Regs used in _lcd_data: [wreg+status,2+status,0+pclath+cstack]
;lcd_data@data stored from wreg
	movwf	(lcd_data@data)
	line	41
	
l2151:	
;one rupee coin.c: 41: PORTD=data;
	movf	(lcd_data@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	42
	
l2153:	
;one rupee coin.c: 42: RC0=1;
	bsf	(56/8),(56)&7
	line	43
	
l2155:	
;one rupee coin.c: 43: RC1=0;
	bcf	(57/8),(57)&7
	line	44
	
l2157:	
;one rupee coin.c: 44: RC2=1;
	bsf	(58/8),(58)&7
	line	45
	
l2159:	
;one rupee coin.c: 45: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	46
	
l2161:	
;one rupee coin.c: 46: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	47
	
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
;;		line 31 in file "C:\Users\TECH\Desktop\madhu pic folder\keypad\keypad task\one rupee coin\one rupee coin.c"
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
	file	"C:\Users\TECH\Desktop\madhu pic folder\keypad\keypad task\one rupee coin\one rupee coin.c"
	line	31
	global	__size_of_lcd_command
	__size_of_lcd_command	equ	__end_of_lcd_command-_lcd_command
	
_lcd_command:	
	opt	stack 7
; Regs used in _lcd_command: [wreg+status,2+status,0+pclath+cstack]
;lcd_command@com stored from wreg
	movwf	(lcd_command@com)
	line	32
	
l2139:	
;one rupee coin.c: 32: PORTD=com;
	movf	(lcd_command@com),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	33
	
l2141:	
;one rupee coin.c: 33: RC0=0;
	bcf	(56/8),(56)&7
	line	34
	
l2143:	
;one rupee coin.c: 34: RC1=0;
	bcf	(57/8),(57)&7
	line	35
	
l2145:	
;one rupee coin.c: 35: RC2=1;
	bsf	(58/8),(58)&7
	line	36
	
l2147:	
;one rupee coin.c: 36: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	37
	
l2149:	
;one rupee coin.c: 37: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	38
	
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
	
l2103:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	line	9
	
l2105:	
	btfss	(___awmod@dividend+1),7
	goto	u2481
	goto	u2480
u2481:
	goto	l831
u2480:
	line	10
	
l2107:	
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
	
l831:	
	line	13
	
l2109:	
	btfss	(___awmod@divisor+1),7
	goto	u2491
	goto	u2490
u2491:
	goto	l832
u2490:
	line	14
	
l2111:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	
l832:	
	line	15
	
l2113:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2501
	goto	u2500
u2501:
	goto	l833
u2500:
	line	16
	
l2115:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l834
	
l835:	
	line	18
	
l2117:	
	movlw	01h
	
u2515:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2515
	line	19
	
l2119:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	line	20
	
l834:	
	line	17
	
l2121:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2521
	goto	u2520
u2521:
	goto	l835
u2520:
	
l836:	
	line	21
	
l837:	
	line	22
	
l2123:	
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
	goto	l838
u2530:
	line	23
	
l2125:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	
l838:	
	line	24
	
l2127:	
	movlw	01h
	
u2545:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2545
	line	25
	
l2129:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2551
	goto	u2550
u2551:
	goto	l837
u2550:
	
l839:	
	line	26
	
l833:	
	line	27
	
l2131:	
	movf	(___awmod@sign),w
	skipz
	goto	u2560
	goto	l840
u2560:
	line	28
	
l2133:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	
l840:	
	line	29
	
l2135:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	
l2137:	
	line	30
	
l841:	
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
	
l2065:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	line	10
	
l2067:	
	btfss	(___awdiv@divisor+1),7
	goto	u2381
	goto	u2380
u2381:
	goto	l763
u2380:
	line	11
	
l2069:	
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
	
l763:	
	line	14
	
l2071:	
	btfss	(___awdiv@dividend+1),7
	goto	u2391
	goto	u2390
u2391:
	goto	l764
u2390:
	line	15
	
l2073:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2075:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l764:	
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
	goto	l765
u2400:
	line	20
	
l2077:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l766
	
l767:	
	line	22
	
l2079:	
	movlw	01h
	
u2415:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2415
	line	23
	
l2081:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	line	24
	
l766:	
	line	21
	
l2083:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2421
	goto	u2420
u2421:
	goto	l767
u2420:
	
l768:	
	line	25
	
l769:	
	line	26
	
l2085:	
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
	goto	l770
u2440:
	line	28
	
l2087:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2089:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	30
	
l770:	
	line	31
	
l2091:	
	movlw	01h
	
u2455:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2455
	line	32
	
l2093:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2461
	goto	u2460
u2461:
	goto	l769
u2460:
	
l771:	
	line	33
	
l765:	
	line	34
	
l2095:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2470
	goto	l772
u2470:
	line	35
	
l2097:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	
l772:	
	line	36
	
l2099:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	
l2101:	
	line	37
	
l773:	
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
;;		line 27 in file "C:\Users\TECH\Desktop\madhu pic folder\keypad\keypad task\one rupee coin\one rupee coin.c"
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
	file	"C:\Users\TECH\Desktop\madhu pic folder\keypad\keypad task\one rupee coin\one rupee coin.c"
	line	27
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	28
	
l2061:	
;one rupee coin.c: 28: while(x--);
	goto	l563
	
l564:	
	
l563:	
	
l2063:	
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
	line	29
	
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
