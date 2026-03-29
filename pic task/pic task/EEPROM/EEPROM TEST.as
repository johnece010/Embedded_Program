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
	FNCALL	_main,_lcd_data
	FNCALL	_main,_write
	FNCALL	_main,_read
	FNCALL	_lcd_init,_lcd_command
	FNCALL	_lcd_data,_delay
	FNCALL	_lcd_command,_delay
	FNROOT	_main
	global	_byte
	global	_m
	global	_PORTC
psect	text108,local,class=CODE,delta=2
global __ptext108
__ptext108:
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_EEIF
_EEIF	set	108
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
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
	file	"EEPROM TEST.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_byte:
       ds      1

_m:
       ds      1

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
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
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_lcd_data
?_lcd_data:	; 0 bytes @ 0x0
	global	?_write
?_write:	; 0 bytes @ 0x0
	global	?_read
?_read:	; 0 bytes @ 0x0
	global	??_read
??_read:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	write@data
write@data:	; 1 bytes @ 0x0
	global	delay@x
delay@x:	; 2 bytes @ 0x0
	ds	1
	global	??_write
??_write:	; 0 bytes @ 0x1
	global	write@addr
write@addr:	; 1 bytes @ 0x1
	global	read@addr
read@addr:	; 1 bytes @ 0x1
	ds	1
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
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x3
	global	??_main
??_main:	; 0 bytes @ 0x3
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 2, persistent 0 stack 0
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
;;   _main->_lcd_command
;;   _main->_lcd_data
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0     150
;;                                              3 COMMON     1     1      0
;;                           _lcd_init
;;                              _delay
;;                        _lcd_command
;;                           _lcd_data
;;                              _write
;;                               _read
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             0     0      0      30
;;                        _lcd_command
;; ---------------------------------------------------------------------------------
;; (1) _lcd_data                                             1     1      0      30
;;                                              2 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _lcd_command                                          1     1      0      30
;;                                              2 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _read                                                 2     2      0      15
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _write                                                2     1      1      30
;;                                              0 COMMON     2     1      1
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                2     0      2      15
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
;;   _lcd_data
;;     _delay
;;   _write
;;   _read
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
;;STACK                0      0       3       2        0.0%
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
;;DATA                 0      0       9      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 55 in file "C:\Users\TECH\Desktop\madhu pic folder\EEPROM\EEPROM TEST.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_init
;;		_delay
;;		_lcd_command
;;		_lcd_data
;;		_write
;;		_read
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\TECH\Desktop\madhu pic folder\EEPROM\EEPROM TEST.C"
	line	55
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l1789:	
;EEPROM TEST.C: 56: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	57
;EEPROM TEST.C: 57: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	58
;EEPROM TEST.C: 58: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	59
;EEPROM TEST.C: 59: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	60
	
l1791:	
;EEPROM TEST.C: 60: lcd_init();
	fcall	_lcd_init
	line	61
	
l1793:	
;EEPROM TEST.C: 61: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	62
	
l1795:	
;EEPROM TEST.C: 62: lcd_command(0x80);
	movlw	(080h)
	fcall	_lcd_command
	line	63
	
l1797:	
;EEPROM TEST.C: 63: lcd_data('a');
	movlw	(061h)
	fcall	_lcd_data
	line	64
	
l1799:	
;EEPROM TEST.C: 64: delay(500000);
	movlw	low(0A120h)
	movwf	(?_delay)
	movlw	high(0A120h)
	movwf	((?_delay))+1
	fcall	_delay
	line	65
;EEPROM TEST.C: 65: while(1)
	
l587:	
	line	67
	
l1801:	
;EEPROM TEST.C: 66: {
;EEPROM TEST.C: 67: write(0x07,'M');
	movlw	(04Dh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_write)
	movlw	(07h)
	fcall	_write
	line	68
	
l1803:	
;EEPROM TEST.C: 68: read(0x07);
	movlw	(07h)
	fcall	_read
	line	69
	
l1805:	
;EEPROM TEST.C: 69: lcd_command(0xC0);
	movlw	(0C0h)
	fcall	_lcd_command
	line	70
	
l1807:	
;EEPROM TEST.C: 70: lcd_data(byte);
	movf	(_byte),w
	fcall	_lcd_data
	line	71
	
l1809:	
;EEPROM TEST.C: 71: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	72
	
l588:	
	line	65
	goto	l587
	
l589:	
	line	73
	
l590:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_init
psect	text109,local,class=CODE,delta=2
global __ptext109
__ptext109:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 20 in file "C:\Users\TECH\Desktop\madhu pic folder\EEPROM\EEPROM TEST.C"
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
psect	text109
	file	"C:\Users\TECH\Desktop\madhu pic folder\EEPROM\EEPROM TEST.C"
	line	20
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 7
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	21
	
l1787:	
;EEPROM TEST.C: 21: lcd_command(0x38);
	movlw	(038h)
	fcall	_lcd_command
	line	22
;EEPROM TEST.C: 22: lcd_command(0x06);
	movlw	(06h)
	fcall	_lcd_command
	line	23
;EEPROM TEST.C: 23: lcd_command(0x0c);
	movlw	(0Ch)
	fcall	_lcd_command
	line	24
;EEPROM TEST.C: 24: lcd_command(0x01);
	movlw	(01h)
	fcall	_lcd_command
	line	25
	
l572:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_data
psect	text110,local,class=CODE,delta=2
global __ptext110
__ptext110:

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 27 in file "C:\Users\TECH\Desktop\madhu pic folder\EEPROM\EEPROM TEST.C"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text110
	file	"C:\Users\TECH\Desktop\madhu pic folder\EEPROM\EEPROM TEST.C"
	line	27
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 7
; Regs used in _lcd_data: [wreg+status,2+status,0+pclath+cstack]
;lcd_data@data stored from wreg
	movwf	(lcd_data@data)
	line	28
	
l1775:	
;EEPROM TEST.C: 28: PORTD=data;
	movf	(lcd_data@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	29
	
l1777:	
;EEPROM TEST.C: 29: RC0=1;
	bsf	(56/8),(56)&7
	line	30
	
l1779:	
;EEPROM TEST.C: 30: RC1=0;
	bcf	(57/8),(57)&7
	line	31
	
l1781:	
;EEPROM TEST.C: 31: RC2=1;
	bsf	(58/8),(58)&7
	line	32
	
l1783:	
;EEPROM TEST.C: 32: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	33
	
l1785:	
;EEPROM TEST.C: 33: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	34
	
l575:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
;; =============== function _lcd_data ends ============

	signat	_lcd_data,4216
	global	_lcd_command
psect	text111,local,class=CODE,delta=2
global __ptext111
__ptext111:

;; *************** function _lcd_command *****************
;; Defined at:
;;		line 11 in file "C:\Users\TECH\Desktop\madhu pic folder\EEPROM\EEPROM TEST.C"
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
psect	text111
	file	"C:\Users\TECH\Desktop\madhu pic folder\EEPROM\EEPROM TEST.C"
	line	11
	global	__size_of_lcd_command
	__size_of_lcd_command	equ	__end_of_lcd_command-_lcd_command
	
_lcd_command:	
	opt	stack 7
; Regs used in _lcd_command: [wreg+status,2+status,0+pclath+cstack]
;lcd_command@com stored from wreg
	movwf	(lcd_command@com)
	line	12
	
l1763:	
;EEPROM TEST.C: 12: PORTD=com;
	movf	(lcd_command@com),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	13
	
l1765:	
;EEPROM TEST.C: 13: RC0=0;
	bcf	(56/8),(56)&7
	line	14
	
l1767:	
;EEPROM TEST.C: 14: RC1=0;
	bcf	(57/8),(57)&7
	line	15
	
l1769:	
;EEPROM TEST.C: 15: RC2=1;
	bsf	(58/8),(58)&7
	line	16
	
l1771:	
;EEPROM TEST.C: 16: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	17
	
l1773:	
;EEPROM TEST.C: 17: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	18
	
l569:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_command
	__end_of_lcd_command:
;; =============== function _lcd_command ends ============

	signat	_lcd_command,4216
	global	_read
psect	text112,local,class=CODE,delta=2
global __ptext112
__ptext112:

;; *************** function _read *****************
;; Defined at:
;;		line 48 in file "C:\Users\TECH\Desktop\madhu pic folder\EEPROM\EEPROM TEST.C"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    1[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text112
	file	"C:\Users\TECH\Desktop\madhu pic folder\EEPROM\EEPROM TEST.C"
	line	48
	global	__size_of_read
	__size_of_read	equ	__end_of_read-_read
	
_read:	
	opt	stack 7
; Regs used in _read: [wreg]
;read@addr stored from wreg
	movwf	(read@addr)
	line	49
	
l971:	
;EEPROM TEST.C: 49: EEADR=addr;
	movf	(read@addr),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	line	50
	
l973:	
;EEPROM TEST.C: 50: EEPGD=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3175/8)^0180h,(3175)&7
	line	51
	
l975:	
;EEPROM TEST.C: 51: RD=1;
	bsf	(3168/8)^0180h,(3168)&7
	line	52
;EEPROM TEST.C: 52: byte=EEDATA;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(268)^0100h,w	;volatile
	movwf	(??_read+0)+0
	movf	(??_read+0)+0,w
	movwf	(_byte)
	line	53
	
l584:	
	return
	opt stack 0
GLOBAL	__end_of_read
	__end_of_read:
;; =============== function _read ends ============

	signat	_read,4216
	global	_write
psect	text113,local,class=CODE,delta=2
global __ptext113
__ptext113:

;; *************** function _write *****************
;; Defined at:
;;		line 36 in file "C:\Users\TECH\Desktop\madhu pic folder\EEPROM\EEPROM TEST.C"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;;  data            1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
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
psect	text113
	file	"C:\Users\TECH\Desktop\madhu pic folder\EEPROM\EEPROM TEST.C"
	line	36
	global	__size_of_write
	__size_of_write	equ	__end_of_write-_write
	
_write:	
	opt	stack 7
; Regs used in _write: [wreg]
;write@addr stored from wreg
	movwf	(write@addr)
	line	37
	
l963:	
;EEPROM TEST.C: 37: EEADR=addr;
	movf	(write@addr),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	line	38
;EEPROM TEST.C: 38: EEDATA=data;
	movf	(write@data),w
	movwf	(268)^0100h	;volatile
	line	39
	
l965:	
;EEPROM TEST.C: 39: EEPGD=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3175/8)^0180h,(3175)&7
	line	40
	
l967:	
;EEPROM TEST.C: 40: WREN=1;
	bsf	(3170/8)^0180h,(3170)&7
	line	41
;EEPROM TEST.C: 41: EECON2=0X55;
	movlw	(055h)
	movwf	(397)^0180h	;volatile
	line	42
;EEPROM TEST.C: 42: EECON2=0XAA;
	movlw	(0AAh)
	movwf	(397)^0180h	;volatile
	line	43
	
l969:	
;EEPROM TEST.C: 43: WR=1;
	bsf	(3169/8)^0180h,(3169)&7
	line	44
;EEPROM TEST.C: 44: while(EEIF==0);
	goto	l578
	
l579:	
	
l578:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(108/8),(108)&7
	goto	u21
	goto	u20
u21:
	goto	l579
u20:
	
l580:	
	line	45
;EEPROM TEST.C: 45: EEIF=0;
	bcf	(108/8),(108)&7
	line	46
	
l581:	
	return
	opt stack 0
GLOBAL	__end_of_write
	__end_of_write:
;; =============== function _write ends ============

	signat	_write,8312
	global	_delay
psect	text114,local,class=CODE,delta=2
global __ptext114
__ptext114:

;; *************** function _delay *****************
;; Defined at:
;;		line 6 in file "C:\Users\TECH\Desktop\madhu pic folder\EEPROM\EEPROM TEST.C"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text114
	file	"C:\Users\TECH\Desktop\madhu pic folder\EEPROM\EEPROM TEST.C"
	line	6
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	7
	
l959:	
;EEPROM TEST.C: 7: while(x--);
	goto	l563
	
l564:	
	
l563:	
	
l961:	
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
	goto	l564
u10:
	
l565:	
	line	8
	
l566:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text115,local,class=CODE,delta=2
global __ptext115
__ptext115:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
