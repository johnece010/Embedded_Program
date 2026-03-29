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
# 2 "C:\Users\TECH\Desktop\madhu pic folder\new gps &gsm\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "C:\Users\TECH\Desktop\madhu pic folder\new gps &gsm\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
	dw 0X3f72 ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_delay
	FNCALL	_main,_lcd_cmd
	FNCALL	_main,_lcd_display
	FNCALL	_main,___lwdiv
	FNCALL	_main,___lwmod
	FNCALL	_main,_lcd_data
	FNCALL	_main,_serial
	FNCALL	_main,_txs
	FNCALL	_main,_sms1
	FNCALL	_main,_sms2
	FNCALL	_main,_sms3
	FNCALL	_lcd_init,_lcd_cmd
	FNCALL	_lcd_display,_lcd_data
	FNCALL	_serial,_delay
	FNCALL	_sms3,_txs
	FNCALL	_sms3,_delay
	FNCALL	_sms3,_gsm_command
	FNCALL	_sms2,_txs
	FNCALL	_sms2,_delay
	FNCALL	_sms2,_gsm_command
	FNCALL	_sms1,_txs
	FNCALL	_sms1,_delay
	FNCALL	_sms1,_gsm_command
	FNCALL	_lcd_data,_delay
	FNCALL	_lcd_cmd,_delay
	FNROOT	_main
	global	_T
	global	_W
	global	_a
	global	_a1
	global	_a2
	global	_a3
	global	_b
	global	_b1
	global	_b2
	global	_b3
	global	_c
	global	_c1
	global	_c2
	global	_c3
	global	_d
	global	_d1
	global	_d2
	global	_d3
	global	_e
	global	_e1
	global	_e2
	global	_e3
	global	_f
	global	_f1
	global	_f2
	global	_f3
	global	_i
	global	_j
	global	_q
	global	_r
	global	_temp
	global	_temp3
	global	_temp4
	global	_v
	global	_w1
	global	_temp1
	global	_temp2
	global	_ADCON0
psect	text310,local,class=CODE,delta=2
global __ptext310
__ptext310:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_RCSTA
_RCSTA	set	24
	global	_TXREG
_TXREG	set	25
	global	_ADON
_ADON	set	248
	global	_CHS0
_CHS0	set	251
	global	_CHS1
_CHS1	set	252
	global	_CHS2
_CHS2	set	253
	global	_GIE
_GIE	set	95
	global	_OERR
_OERR	set	193
	global	_PEIE
_PEIE	set	94
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_TXIF
_TXIF	set	100
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_SPBRG
_SPBRG	set	153
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
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
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	115	;'s'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	49	;'1'
	retlw	32	;' '
	retlw	97	;'a'
	retlw	98	;'b'
	retlw	110	;'n'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	109	;'m'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	0
psect	strings
	
STR_2:	
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	115	;'s'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	50	;'2'
	retlw	32	;' '
	retlw	97	;'a'
	retlw	98	;'b'
	retlw	110	;'n'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	109	;'m'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	0
psect	strings
	
STR_3:	
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	115	;'s'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	51	;'3'
	retlw	32	;' '
	retlw	97	;'a'
	retlw	98	;'b'
	retlw	110	;'n'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	109	;'m'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	0
psect	strings
	
STR_7:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	67	;'C'
	retlw	77	;'M'
	retlw	71	;'G'
	retlw	70	;'F'
	retlw	61	;'='
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_4:	
	retlw	87	;'W'
	retlw	69	;'E'
	retlw	76	;'L'
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	0
psect	strings
	
STR_6:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	0
psect	strings
STR_11	equ	STR_3+0
STR_8	equ	STR_2+0
STR_5	equ	STR_1+0
STR_9	equ	STR_6+0
STR_12	equ	STR_6+0
STR_10	equ	STR_7+0
STR_13	equ	STR_7+0
	file	"multi sensor on gsm.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_temp1:
       ds      2

_temp2:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_T:
       ds      2

_W:
       ds      2

_a:
       ds      2

_a1:
       ds      2

_a2:
       ds      2

_a3:
       ds      2

_b:
       ds      2

_b1:
       ds      2

_b2:
       ds      2

_b3:
       ds      2

_c:
       ds      2

_c1:
       ds      2

_c2:
       ds      2

_c3:
       ds      2

_d:
       ds      2

_d1:
       ds      2

_d2:
       ds      2

_d3:
       ds      2

_e:
       ds      2

_e1:
       ds      2

_e2:
       ds      2

_e3:
       ds      2

_f:
       ds      2

_f1:
       ds      2

_f2:
       ds      2

_f3:
       ds      2

_i:
       ds      2

_j:
       ds      2

_q:
       ds      2

_r:
       ds      2

_temp:
       ds      2

_temp3:
       ds      2

_temp4:
       ds      2

_v:
       ds      2

_w1:
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

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+046h)
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
	global	?_lcd_cmd
?_lcd_cmd:	; 0 bytes @ 0x0
	global	?_lcd_data
?_lcd_data:	; 0 bytes @ 0x0
	global	?_lcd_display
?_lcd_display:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_gsm_command
?_gsm_command:	; 0 bytes @ 0x0
	global	??_gsm_command
??_gsm_command:	; 0 bytes @ 0x0
	global	?_txs
?_txs:	; 0 bytes @ 0x0
	global	??_txs
??_txs:	; 0 bytes @ 0x0
	global	?_sms1
?_sms1:	; 0 bytes @ 0x0
	global	?_sms2
?_sms2:	; 0 bytes @ 0x0
	global	?_sms3
?_sms3:	; 0 bytes @ 0x0
	global	?_serial
?_serial:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	gsm_command@da
gsm_command@da:	; 1 bytes @ 0x0
	global	txs@val
txs@val:	; 1 bytes @ 0x0
	global	delay@a
delay@a:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	gsm_command@s
gsm_command@s:	; 2 bytes @ 0x1
	ds	1
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	??_lcd_cmd
??_lcd_cmd:	; 0 bytes @ 0x2
	global	??_lcd_data
??_lcd_data:	; 0 bytes @ 0x2
	global	??_serial
??_serial:	; 0 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_sms1
??_sms1:	; 0 bytes @ 0x3
	global	??_sms2
??_sms2:	; 0 bytes @ 0x3
	global	??_sms3
??_sms3:	; 0 bytes @ 0x3
	global	serial@a
serial@a:	; 1 bytes @ 0x3
	ds	1
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x4
	global	lcd_cmd@com
lcd_cmd@com:	; 1 bytes @ 0x4
	global	lcd_data@dat
lcd_data@dat:	; 1 bytes @ 0x4
	global	serial@i
serial@i:	; 1 bytes @ 0x4
	ds	1
	global	??_lcd_display
??_lcd_display:	; 0 bytes @ 0x5
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x5
	global	lcd_display@m
lcd_display@m:	; 1 bytes @ 0x5
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
	global	lcd_display@k
lcd_display@k:	; 2 bytes @ 0x6
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x8
	ds	2
;;Data sizes: Strings 72, constant 0, data 0, bss 74, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      14
;; BANK0           80      0      70
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; serial@a	PTR const unsigned char  size(1) Largest target is 10
;;		 -> STR_13(CODE[10]), STR_12(CODE[3]), STR_10(CODE[10]), STR_9(CODE[3]), 
;;		 -> STR_7(CODE[10]), STR_6(CODE[3]), 
;;
;; gsm_command@da	PTR const unsigned char  size(1) Largest target is 17
;;		 -> STR_3(CODE[17]), STR_2(CODE[17]), STR_1(CODE[17]), 
;;
;; lcd_display@m	PTR const unsigned char  size(1) Largest target is 17
;;		 -> STR_11(CODE[17]), STR_8(CODE[17]), STR_5(CODE[17]), STR_4(CODE[8]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_lcd_display
;;   _main->___lwdiv
;;   _lcd_init->_lcd_cmd
;;   _lcd_display->_lcd_data
;;   _serial->_delay
;;   _sms3->_gsm_command
;;   _sms2->_gsm_command
;;   _sms1->_gsm_command
;;   _lcd_data->_delay
;;   _lcd_cmd->_delay
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
;; (0) _main                                                 2     2      0    1233
;;                                              8 COMMON     2     2      0
;;                           _lcd_init
;;                              _delay
;;                            _lcd_cmd
;;                        _lcd_display
;;                            ___lwdiv
;;                            ___lwmod
;;                           _lcd_data
;;                             _serial
;;                                _txs
;;                               _sms1
;;                               _sms2
;;                               _sms3
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             0     0      0      66
;;                            _lcd_cmd
;; ---------------------------------------------------------------------------------
;; (1) _lcd_display                                          3     3      0     156
;;                                              5 COMMON     3     3      0
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _serial                                               3     3      0     112
;;                                              2 COMMON     3     3      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _sms3                                                 0     0      0     134
;;                                _txs
;;                              _delay
;;                        _gsm_command
;; ---------------------------------------------------------------------------------
;; (1) _sms2                                                 0     0      0     134
;;                                _txs
;;                              _delay
;;                        _gsm_command
;; ---------------------------------------------------------------------------------
;; (1) _sms1                                                 0     0      0     134
;;                                _txs
;;                              _delay
;;                        _gsm_command
;; ---------------------------------------------------------------------------------
;; (1) _lcd_data                                             3     3      0      66
;;                                              2 COMMON     3     3      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _lcd_cmd                                              3     3      0      66
;;                                              2 COMMON     3     3      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) ___lwmod                                              6     2      4     159
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (1) ___lwdiv                                              8     4      4     162
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (2) _txs                                                  1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _gsm_command                                          3     3      0      90
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
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
;;   ___lwdiv
;;   ___lwmod
;;   _lcd_data
;;     _delay
;;   _serial
;;     _delay
;;   _txs
;;   _sms1
;;     _txs
;;     _delay
;;     _gsm_command
;;   _sms2
;;     _txs
;;     _delay
;;     _gsm_command
;;   _sms3
;;     _txs
;;     _delay
;;     _gsm_command
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      A       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0      54       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0      46       5       87.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      57      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 233 in file "C:\Users\TECH\Desktop\madhu pic folder\new gps &gsm\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_init
;;		_delay
;;		_lcd_cmd
;;		_lcd_display
;;		___lwdiv
;;		___lwmod
;;		_lcd_data
;;		_serial
;;		_txs
;;		_sms1
;;		_sms2
;;		_sms3
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\TECH\Desktop\madhu pic folder\new gps &gsm\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
	line	233
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
	line	234
	
l2987:	
;multi sensor on gsm.c: 234: ADCON1=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	235
;multi sensor on gsm.c: 235: ADCON0=0X40;
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	237
	
l2989:	
;multi sensor on gsm.c: 237: TRISD=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	238
	
l2991:	
;multi sensor on gsm.c: 238: PORTD=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	240
;multi sensor on gsm.c: 240: TRISA=0x0F;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	241
	
l2993:	
;multi sensor on gsm.c: 241: PORTA=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	243
	
l2995:	
;multi sensor on gsm.c: 243: TRISC=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	244
	
l2997:	
;multi sensor on gsm.c: 244: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	246
	
l2999:	
;multi sensor on gsm.c: 246: TRISB=0X03;
	movlw	(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	247
;multi sensor on gsm.c: 247: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	249
	
l3001:	
;multi sensor on gsm.c: 249: lcd_init();
	fcall	_lcd_init
	line	250
	
l3003:	
;multi sensor on gsm.c: 250: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	252
	
l3005:	
;multi sensor on gsm.c: 252: TXSTA=0x24;
	movlw	(024h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	253
	
l3007:	
;multi sensor on gsm.c: 253: RCSTA=0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	254
	
l3009:	
;multi sensor on gsm.c: 254: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	256
	
l3011:	
;multi sensor on gsm.c: 256: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	257
	
l3013:	
;multi sensor on gsm.c: 257: PEIE=1;
	bsf	(94/8),(94)&7
	line	258
	
l3015:	
;multi sensor on gsm.c: 258: GIE=1;
	bsf	(95/8),(95)&7
	line	260
	
l3017:	
;multi sensor on gsm.c: 260: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	261
	
l3019:	
;multi sensor on gsm.c: 261: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	263
	
l3021:	
;multi sensor on gsm.c: 263: lcd_display("WELCOME");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_lcd_display
	line	264
	
l3023:	
;multi sensor on gsm.c: 264: delay(50000);delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3025:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	265
	
l3027:	
;multi sensor on gsm.c: 265: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	266
;multi sensor on gsm.c: 266: while(1)
	
l684:	
	line	268
	
l3029:	
;multi sensor on gsm.c: 267: {
;multi sensor on gsm.c: 268: CHS2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(253/8),(253)&7
	line	269
	
l3031:	
;multi sensor on gsm.c: 269: CHS1=0;
	bcf	(252/8),(252)&7
	line	270
	
l3033:	
;multi sensor on gsm.c: 270: CHS0=0;
	bcf	(251/8),(251)&7
	line	271
	
l3035:	
;multi sensor on gsm.c: 271: ADON=1;
	bsf	(248/8),(248)&7
	line	272
	
l3037:	
;multi sensor on gsm.c: 272: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	273
	
l3039:	
;multi sensor on gsm.c: 273: ADCON0=(ADCON0|0X04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	iorlw	04h
	movwf	(31)	;volatile
	line	274
	
l3041:	
;multi sensor on gsm.c: 274: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	275
	
l3043:	
;multi sensor on gsm.c: 275: temp1=ADRESH<<8;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movlw	08h
	movwf	btemp+0
u2495:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+0,f
	goto	u2495
	movf	0+(??_main+0)+0,w
	movwf	(_temp1)
	movf	1+(??_main+0)+0,w
	movwf	(_temp1+1)
	line	276
	
l3045:	
;multi sensor on gsm.c: 276: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	277
	
l3047:	
;multi sensor on gsm.c: 277: temp1=temp1+ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	addwf	(_temp1),w
	movwf	(_temp1)
	movf	(_temp1+1),w
	skipnc
	incf	(_temp1+1),w
	movwf	((_temp1))+1
	line	278
	
l3049:	
;multi sensor on gsm.c: 278: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	279
	
l3051:	
;multi sensor on gsm.c: 279: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	280
	
l3053:	
;multi sensor on gsm.c: 280: a=temp1/1000;
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	movf	(_temp1+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_temp1),w
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

	line	281
	
l3055:	
;multi sensor on gsm.c: 281: b=temp1%1000;
	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	movf	(_temp1+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_temp1),w
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

	line	282
	
l3057:	
;multi sensor on gsm.c: 282: c=b/100;
	movlw	low(064h)
	movwf	(?___lwdiv)
	movlw	high(064h)
	movwf	((?___lwdiv))+1
	movf	(_b+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_b),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_c+1)
	addwf	(_c+1)
	movf	(0+(?___lwdiv)),w
	clrf	(_c)
	addwf	(_c)

	line	283
	
l3059:	
;multi sensor on gsm.c: 283: d=b%100;
	movlw	low(064h)
	movwf	(?___lwmod)
	movlw	high(064h)
	movwf	((?___lwmod))+1
	movf	(_b+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_b),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_d+1)
	addwf	(_d+1)
	movf	(0+(?___lwmod)),w
	clrf	(_d)
	addwf	(_d)

	line	284
	
l3061:	
;multi sensor on gsm.c: 284: e=d/10;
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	(_d+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_d),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_e+1)
	addwf	(_e+1)
	movf	(0+(?___lwdiv)),w
	clrf	(_e)
	addwf	(_e)

	line	285
	
l3063:	
;multi sensor on gsm.c: 285: f=d%10;
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movf	(_d+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_d),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_f+1)
	addwf	(_f+1)
	movf	(0+(?___lwmod)),w
	clrf	(_f)
	addwf	(_f)

	line	287
	
l3065:	
;multi sensor on gsm.c: 287: lcd_cmd(0xC0);
	movlw	(0C0h)
	fcall	_lcd_cmd
	line	288
	
l3067:	
;multi sensor on gsm.c: 288: lcd_data(a+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a),w
	addlw	030h
	fcall	_lcd_data
	line	289
	
l3069:	
;multi sensor on gsm.c: 289: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	290
	
l3071:	
;multi sensor on gsm.c: 290: lcd_data(c+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c),w
	addlw	030h
	fcall	_lcd_data
	line	291
	
l3073:	
;multi sensor on gsm.c: 291: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	292
	
l3075:	
;multi sensor on gsm.c: 292: lcd_data(e+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_e),w
	addlw	030h
	fcall	_lcd_data
	line	293
	
l3077:	
;multi sensor on gsm.c: 293: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	294
	
l3079:	
;multi sensor on gsm.c: 294: lcd_data(f+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_f),w
	addlw	030h
	fcall	_lcd_data
	line	295
	
l3081:	
;multi sensor on gsm.c: 295: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	298
	
l3083:	
;multi sensor on gsm.c: 298: CHS2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(253/8),(253)&7
	line	299
	
l3085:	
;multi sensor on gsm.c: 299: CHS1=0;
	bcf	(252/8),(252)&7
	line	300
	
l3087:	
;multi sensor on gsm.c: 300: CHS0=1;
	bsf	(251/8),(251)&7
	line	301
	
l3089:	
;multi sensor on gsm.c: 301: ADON=1;
	bsf	(248/8),(248)&7
	line	302
	
l3091:	
;multi sensor on gsm.c: 302: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	303
	
l3093:	
;multi sensor on gsm.c: 303: ADCON0=(ADCON0|0X04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	iorlw	04h
	movwf	(31)	;volatile
	line	304
	
l3095:	
;multi sensor on gsm.c: 304: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	305
	
l3097:	
;multi sensor on gsm.c: 305: temp2=ADRESH<<8;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movlw	08h
	movwf	btemp+0
u2505:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+0,f
	goto	u2505
	movf	0+(??_main+0)+0,w
	movwf	(_temp2)
	movf	1+(??_main+0)+0,w
	movwf	(_temp2+1)
	line	306
	
l3099:	
;multi sensor on gsm.c: 306: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	307
	
l3101:	
;multi sensor on gsm.c: 307: temp2=temp2+ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	addwf	(_temp2),w
	movwf	(_temp2)
	movf	(_temp2+1),w
	skipnc
	incf	(_temp2+1),w
	movwf	((_temp2))+1
	line	308
	
l3103:	
;multi sensor on gsm.c: 308: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	309
	
l3105:	
;multi sensor on gsm.c: 309: a1=temp2/1000;
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	movf	(_temp2+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_temp2),w
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

	line	310
	
l3107:	
;multi sensor on gsm.c: 310: b1=temp2%1000;
	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	movf	(_temp2+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_temp2),w
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

	line	311
	
l3109:	
;multi sensor on gsm.c: 311: c1=b1/100;
	movlw	low(064h)
	movwf	(?___lwdiv)
	movlw	high(064h)
	movwf	((?___lwdiv))+1
	movf	(_b1+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_b1),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_c1+1)
	addwf	(_c1+1)
	movf	(0+(?___lwdiv)),w
	clrf	(_c1)
	addwf	(_c1)

	line	312
	
l3111:	
;multi sensor on gsm.c: 312: d1=b1%100;
	movlw	low(064h)
	movwf	(?___lwmod)
	movlw	high(064h)
	movwf	((?___lwmod))+1
	movf	(_b1+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_b1),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_d1+1)
	addwf	(_d1+1)
	movf	(0+(?___lwmod)),w
	clrf	(_d1)
	addwf	(_d1)

	line	313
	
l3113:	
;multi sensor on gsm.c: 313: e1=d1/10;
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	(_d1+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_d1),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_e1+1)
	addwf	(_e1+1)
	movf	(0+(?___lwdiv)),w
	clrf	(_e1)
	addwf	(_e1)

	line	314
	
l3115:	
;multi sensor on gsm.c: 314: f1=d1%10;
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movf	(_d1+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_d1),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_f1+1)
	addwf	(_f1+1)
	movf	(0+(?___lwmod)),w
	clrf	(_f1)
	addwf	(_f1)

	line	315
	
l3117:	
;multi sensor on gsm.c: 315: lcd_cmd(0xC4);
	movlw	(0C4h)
	fcall	_lcd_cmd
	line	316
	
l3119:	
;multi sensor on gsm.c: 316: lcd_data(a1+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a1),w
	addlw	030h
	fcall	_lcd_data
	line	317
	
l3121:	
;multi sensor on gsm.c: 317: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	318
	
l3123:	
;multi sensor on gsm.c: 318: lcd_data(c1+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c1),w
	addlw	030h
	fcall	_lcd_data
	line	319
	
l3125:	
;multi sensor on gsm.c: 319: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	320
	
l3127:	
;multi sensor on gsm.c: 320: lcd_data(e1+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_e1),w
	addlw	030h
	fcall	_lcd_data
	line	321
	
l3129:	
;multi sensor on gsm.c: 321: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	322
	
l3131:	
;multi sensor on gsm.c: 322: lcd_data(f1+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_f1),w
	addlw	030h
	fcall	_lcd_data
	line	323
	
l3133:	
;multi sensor on gsm.c: 323: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	326
	
l3135:	
;multi sensor on gsm.c: 326: CHS2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(253/8),(253)&7
	line	327
	
l3137:	
;multi sensor on gsm.c: 327: CHS1=1;
	bsf	(252/8),(252)&7
	line	328
	
l3139:	
;multi sensor on gsm.c: 328: CHS0=0;
	bcf	(251/8),(251)&7
	line	329
	
l3141:	
;multi sensor on gsm.c: 329: ADON=1;
	bsf	(248/8),(248)&7
	line	330
	
l3143:	
;multi sensor on gsm.c: 330: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	331
	
l3145:	
;multi sensor on gsm.c: 331: ADCON0=(ADCON0|0X04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	iorlw	04h
	movwf	(31)	;volatile
	line	332
	
l3147:	
;multi sensor on gsm.c: 332: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	333
	
l3149:	
;multi sensor on gsm.c: 333: temp3=ADRESH<<8;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movlw	08h
	movwf	btemp+0
u2515:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+0,f
	goto	u2515
	movf	0+(??_main+0)+0,w
	movwf	(_temp3)
	movf	1+(??_main+0)+0,w
	movwf	(_temp3+1)
	line	334
	
l3151:	
;multi sensor on gsm.c: 334: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	335
	
l3153:	
;multi sensor on gsm.c: 335: temp3=temp3+ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_temp3),w
	movwf	(_temp3)
	movf	(_temp3+1),w
	skipnc
	incf	(_temp3+1),w
	movwf	((_temp3))+1
	line	336
	
l3155:	
;multi sensor on gsm.c: 336: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	337
	
l3157:	
;multi sensor on gsm.c: 337: a2=temp3/1000;
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_temp3+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_temp3),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_a2+1)
	addwf	(_a2+1)
	movf	(0+(?___lwdiv)),w
	clrf	(_a2)
	addwf	(_a2)

	line	338
	
l3159:	
;multi sensor on gsm.c: 338: b2=temp3%1000;
	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	movf	(_temp3+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_temp3),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b2+1)
	addwf	(_b2+1)
	movf	(0+(?___lwmod)),w
	clrf	(_b2)
	addwf	(_b2)

	line	339
	
l3161:	
;multi sensor on gsm.c: 339: c2=b2/100;
	movlw	low(064h)
	movwf	(?___lwdiv)
	movlw	high(064h)
	movwf	((?___lwdiv))+1
	movf	(_b2+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_b2),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_c2+1)
	addwf	(_c2+1)
	movf	(0+(?___lwdiv)),w
	clrf	(_c2)
	addwf	(_c2)

	line	340
	
l3163:	
;multi sensor on gsm.c: 340: d2=b2%100;
	movlw	low(064h)
	movwf	(?___lwmod)
	movlw	high(064h)
	movwf	((?___lwmod))+1
	movf	(_b2+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_b2),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_d2+1)
	addwf	(_d2+1)
	movf	(0+(?___lwmod)),w
	clrf	(_d2)
	addwf	(_d2)

	line	341
	
l3165:	
;multi sensor on gsm.c: 341: e2=d2/10;
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	(_d2+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_d2),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_e2+1)
	addwf	(_e2+1)
	movf	(0+(?___lwdiv)),w
	clrf	(_e2)
	addwf	(_e2)

	line	342
	
l3167:	
;multi sensor on gsm.c: 342: f2=d2%10;
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movf	(_d2+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_d2),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_f2+1)
	addwf	(_f2+1)
	movf	(0+(?___lwmod)),w
	clrf	(_f2)
	addwf	(_f2)

	line	343
	
l3169:	
;multi sensor on gsm.c: 343: lcd_cmd(0xC8);
	movlw	(0C8h)
	fcall	_lcd_cmd
	line	344
	
l3171:	
;multi sensor on gsm.c: 344: lcd_data(a2+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a2),w
	addlw	030h
	fcall	_lcd_data
	line	345
	
l3173:	
;multi sensor on gsm.c: 345: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	346
	
l3175:	
;multi sensor on gsm.c: 346: lcd_data(c2+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c2),w
	addlw	030h
	fcall	_lcd_data
	line	347
	
l3177:	
;multi sensor on gsm.c: 347: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	348
	
l3179:	
;multi sensor on gsm.c: 348: lcd_data(e2+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_e2),w
	addlw	030h
	fcall	_lcd_data
	line	349
	
l3181:	
;multi sensor on gsm.c: 349: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	350
	
l3183:	
;multi sensor on gsm.c: 350: lcd_data(f2+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_f2),w
	addlw	030h
	fcall	_lcd_data
	line	351
	
l3185:	
;multi sensor on gsm.c: 351: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	354
	
l3187:	
;multi sensor on gsm.c: 354: if(temp1>=500)
	movlw	high(01F4h)
	subwf	(_temp1+1),w
	movlw	low(01F4h)
	skipnz
	subwf	(_temp1),w
	skipc
	goto	u2521
	goto	u2520
u2521:
	goto	l685
u2520:
	line	356
	
l3189:	
;multi sensor on gsm.c: 355: {
;multi sensor on gsm.c: 356: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	357
;multi sensor on gsm.c: 357: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	358
	
l3191:	
;multi sensor on gsm.c: 358: lcd_display("sensor1 abnormal");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_lcd_display
	line	359
	
l3193:	
;multi sensor on gsm.c: 359: delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	360
;multi sensor on gsm.c: 360: serial("AT");
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_serial
	line	361
	
l3195:	
;multi sensor on gsm.c: 361: txs(13);delay(60000);delay(60000);
	movlw	(0Dh)
	fcall	_txs
	
l3197:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3199:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	362
	
l3201:	
;multi sensor on gsm.c: 362: txs(10);
	movlw	(0Ah)
	fcall	_txs
	line	363
	
l3203:	
;multi sensor on gsm.c: 363: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	364
	
l3205:	
;multi sensor on gsm.c: 364: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	365
;multi sensor on gsm.c: 365: serial("AT+CMGF=1");
	movlw	((STR_7-__stringbase))&0ffh
	fcall	_serial
	line	366
	
l3207:	
;multi sensor on gsm.c: 366: txs(13);delay(60000);
	movlw	(0Dh)
	fcall	_txs
	
l3209:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	367
	
l3211:	
;multi sensor on gsm.c: 367: delay(60000);
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	368
	
l3213:	
;multi sensor on gsm.c: 368: txs(10);
	movlw	(0Ah)
	fcall	_txs
	line	369
	
l3215:	
;multi sensor on gsm.c: 369: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	370
	
l3217:	
;multi sensor on gsm.c: 370: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	372
;multi sensor on gsm.c: 372: sms1();
	fcall	_sms1
	line	374
	
l685:	
	line	375
	
l3219:	
;multi sensor on gsm.c: 374: }
;multi sensor on gsm.c: 375: if(temp2>=500)
	movlw	high(01F4h)
	subwf	(_temp2+1),w
	movlw	low(01F4h)
	skipnz
	subwf	(_temp2),w
	skipc
	goto	u2531
	goto	u2530
u2531:
	goto	l686
u2530:
	line	377
	
l3221:	
;multi sensor on gsm.c: 376: {
;multi sensor on gsm.c: 377: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	378
;multi sensor on gsm.c: 378: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	379
	
l3223:	
;multi sensor on gsm.c: 379: lcd_display("sensor2 abnormal");
	movlw	((STR_8-__stringbase))&0ffh
	fcall	_lcd_display
	line	380
	
l3225:	
;multi sensor on gsm.c: 380: delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	381
;multi sensor on gsm.c: 381: serial("AT");
	movlw	((STR_9-__stringbase))&0ffh
	fcall	_serial
	line	382
	
l3227:	
;multi sensor on gsm.c: 382: txs(13);delay(60000);delay(60000);
	movlw	(0Dh)
	fcall	_txs
	
l3229:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3231:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	383
	
l3233:	
;multi sensor on gsm.c: 383: txs(10);
	movlw	(0Ah)
	fcall	_txs
	line	384
	
l3235:	
;multi sensor on gsm.c: 384: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	385
	
l3237:	
;multi sensor on gsm.c: 385: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	386
;multi sensor on gsm.c: 386: serial("AT+CMGF=1");
	movlw	((STR_10-__stringbase))&0ffh
	fcall	_serial
	line	387
	
l3239:	
;multi sensor on gsm.c: 387: txs(13);delay(60000);
	movlw	(0Dh)
	fcall	_txs
	
l3241:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	388
	
l3243:	
;multi sensor on gsm.c: 388: delay(60000);
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	389
	
l3245:	
;multi sensor on gsm.c: 389: txs(10);
	movlw	(0Ah)
	fcall	_txs
	line	390
	
l3247:	
;multi sensor on gsm.c: 390: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	391
	
l3249:	
;multi sensor on gsm.c: 391: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	393
;multi sensor on gsm.c: 393: sms2();
	fcall	_sms2
	line	395
	
l686:	
	line	397
	
l3251:	
;multi sensor on gsm.c: 395: }
;multi sensor on gsm.c: 397: if(temp3>=500)
	movlw	high(01F4h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_temp3+1),w
	movlw	low(01F4h)
	skipnz
	subwf	(_temp3),w
	skipc
	goto	u2541
	goto	u2540
u2541:
	goto	l687
u2540:
	line	399
	
l3253:	
;multi sensor on gsm.c: 398: {
;multi sensor on gsm.c: 399: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	400
;multi sensor on gsm.c: 400: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	401
	
l3255:	
;multi sensor on gsm.c: 401: lcd_display("sensor3 abnormal");
	movlw	((STR_11-__stringbase))&0ffh
	fcall	_lcd_display
	line	402
	
l3257:	
;multi sensor on gsm.c: 402: delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	403
;multi sensor on gsm.c: 403: serial("AT");
	movlw	((STR_12-__stringbase))&0ffh
	fcall	_serial
	line	404
	
l3259:	
;multi sensor on gsm.c: 404: txs(13);delay(60000);delay(60000);
	movlw	(0Dh)
	fcall	_txs
	
l3261:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3263:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	405
	
l3265:	
;multi sensor on gsm.c: 405: txs(10);
	movlw	(0Ah)
	fcall	_txs
	line	406
	
l3267:	
;multi sensor on gsm.c: 406: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	407
	
l3269:	
;multi sensor on gsm.c: 407: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	408
;multi sensor on gsm.c: 408: serial("AT+CMGF=1");
	movlw	((STR_13-__stringbase))&0ffh
	fcall	_serial
	line	409
	
l3271:	
;multi sensor on gsm.c: 409: txs(13);delay(60000);
	movlw	(0Dh)
	fcall	_txs
	
l3273:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	410
	
l3275:	
;multi sensor on gsm.c: 410: delay(60000);
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	411
	
l3277:	
;multi sensor on gsm.c: 411: txs(10);
	movlw	(0Ah)
	fcall	_txs
	line	412
	
l3279:	
;multi sensor on gsm.c: 412: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	413
	
l3281:	
;multi sensor on gsm.c: 413: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	415
;multi sensor on gsm.c: 415: sms3();
	fcall	_sms3
	line	417
	
l687:	
	line	419
	
l688:	
	line	266
	goto	l684
	
l689:	
	line	420
	
l690:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_init
psect	text311,local,class=CODE,delta=2
global __ptext311
__ptext311:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 59 in file "C:\Users\TECH\Desktop\madhu pic folder\new gps &gsm\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text311
	file	"C:\Users\TECH\Desktop\madhu pic folder\new gps &gsm\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
	line	59
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 7
; Regs used in _lcd_init: [wreg+status,2-btemp+0+pclath+cstack]
	line	60
	
l2985:	
;multi sensor on gsm.c: 60: lcd_cmd(0x02);
	movlw	(02h)
	fcall	_lcd_cmd
	line	61
;multi sensor on gsm.c: 61: lcd_cmd(0x2c);
	movlw	(02Ch)
	fcall	_lcd_cmd
	line	62
;multi sensor on gsm.c: 62: lcd_cmd(0x06);
	movlw	(06h)
	fcall	_lcd_cmd
	line	63
;multi sensor on gsm.c: 63: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	64
;multi sensor on gsm.c: 64: lcd_cmd(0x0c);
	movlw	(0Ch)
	fcall	_lcd_cmd
	line	65
;multi sensor on gsm.c: 65: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	66
	
l651:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_display
psect	text312,local,class=CODE,delta=2
global __ptext312
__ptext312:

;; *************** function _lcd_display *****************
;; Defined at:
;;		line 52 in file "C:\Users\TECH\Desktop\madhu pic folder\new gps &gsm\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
;; Parameters:    Size  Location     Type
;;  m               1    wreg     PTR const unsigned char 
;;		 -> STR_11(17), STR_8(17), STR_5(17), STR_4(8), 
;; Auto vars:     Size  Location     Type
;;  m               1    5[COMMON] PTR const unsigned char 
;;		 -> STR_11(17), STR_8(17), STR_5(17), STR_4(8), 
;;  k               2    6[COMMON] int 
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
psect	text312
	file	"C:\Users\TECH\Desktop\madhu pic folder\new gps &gsm\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
	line	52
	global	__size_of_lcd_display
	__size_of_lcd_display	equ	__end_of_lcd_display-_lcd_display
	
_lcd_display:	
	opt	stack 7
; Regs used in _lcd_display: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
;lcd_display@m stored from wreg
	movwf	(lcd_display@m)
	line	53
	
l2977:	
;multi sensor on gsm.c: 53: for(int k=0;m[k]!=0;k++)
	movlw	low(0)
	movwf	(lcd_display@k)
	movlw	high(0)
	movwf	((lcd_display@k))+1
	goto	l645
	line	54
	
l646:	
	line	55
	
l2979:	
;multi sensor on gsm.c: 54: {
;multi sensor on gsm.c: 55: lcd_data(m[k]);
	movf	(lcd_display@k),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_data
	line	53
	
l2981:	
	movlw	low(01h)
	addwf	(lcd_display@k),f
	skipnc
	incf	(lcd_display@k+1),f
	movlw	high(01h)
	addwf	(lcd_display@k+1),f
	
l645:	
	
l2983:	
	movf	(lcd_display@k),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2481
	goto	u2480
u2481:
	goto	l646
u2480:
	
l647:	
	line	57
	
l648:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_display
	__end_of_lcd_display:
;; =============== function _lcd_display ends ============

	signat	_lcd_display,4216
	global	_serial
psect	text313,local,class=CODE,delta=2
global __ptext313
__ptext313:

;; *************** function _serial *****************
;; Defined at:
;;		line 222 in file "C:\Users\TECH\Desktop\madhu pic folder\new gps &gsm\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     PTR const unsigned char 
;;		 -> STR_13(10), STR_12(3), STR_10(10), STR_9(3), 
;;		 -> STR_7(10), STR_6(3), 
;; Auto vars:     Size  Location     Type
;;  a               1    3[COMMON] PTR const unsigned char 
;;		 -> STR_13(10), STR_12(3), STR_10(10), STR_9(3), 
;;		 -> STR_7(10), STR_6(3), 
;;  i               1    4[COMMON] unsigned char 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
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
psect	text313
	file	"C:\Users\TECH\Desktop\madhu pic folder\new gps &gsm\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
	line	222
	global	__size_of_serial
	__size_of_serial	equ	__end_of_serial-_serial
	
_serial:	
	opt	stack 7
; Regs used in _serial: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;serial@a stored from wreg
	line	224
	movwf	(serial@a)
	
l2967:	
;multi sensor on gsm.c: 223: unsigned char i;
;multi sensor on gsm.c: 224: for(i=0;a[i]!=0;i++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(serial@i)
	goto	l678
	line	225
	
l679:	
	line	226
	
l2969:	
;multi sensor on gsm.c: 225: {
;multi sensor on gsm.c: 226: TXREG=a[i];
	movf	(serial@i),w
	addwf	(serial@a),w
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	227
	
l2971:	
;multi sensor on gsm.c: 227: delay(20000);
	movlw	low(04E20h)
	movwf	(?_delay)
	movlw	high(04E20h)
	movwf	((?_delay))+1
	fcall	_delay
	line	224
	
l2973:	
	movlw	(01h)
	movwf	(??_serial+0)+0
	movf	(??_serial+0)+0,w
	addwf	(serial@i),f
	
l678:	
	
l2975:	
	movf	(serial@i),w
	addwf	(serial@a),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2471
	goto	u2470
u2471:
	goto	l679
u2470:
	
l680:	
	line	230
	
l681:	
	return
	opt stack 0
GLOBAL	__end_of_serial
	__end_of_serial:
;; =============== function _serial ends ============

	signat	_serial,4216
	global	_sms3
psect	text314,local,class=CODE,delta=2
global __ptext314
__ptext314:

;; *************** function _sms3 *****************
;; Defined at:
;;		line 179 in file "C:\Users\TECH\Desktop\madhu pic folder\new gps &gsm\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_txs
;;		_delay
;;		_gsm_command
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text314
	file	"C:\Users\TECH\Desktop\madhu pic folder\new gps &gsm\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
	line	179
	global	__size_of_sms3
	__size_of_sms3	equ	__end_of_sms3-_sms3
	
_sms3:	
	opt	stack 7
; Regs used in _sms3: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	180
	
l2913:	
;multi sensor on gsm.c: 180: txs('A');txs('T');txs('+');txs('C');txs('M');txs('G');
	movlw	(041h)
	fcall	_txs
	movlw	(054h)
	fcall	_txs
	movlw	(02Bh)
	fcall	_txs
	movlw	(043h)
	fcall	_txs
	movlw	(04Dh)
	fcall	_txs
	movlw	(047h)
	fcall	_txs
	line	181
;multi sensor on gsm.c: 181: txs('S');txs('=');
	movlw	(053h)
	fcall	_txs
	movlw	(03Dh)
	fcall	_txs
	line	182
;multi sensor on gsm.c: 182: txs('"');
	movlw	(022h)
	fcall	_txs
	line	183
;multi sensor on gsm.c: 183: txs('9');txs('7');txs('5');txs('1');txs('5');
	movlw	(039h)
	fcall	_txs
	movlw	(037h)
	fcall	_txs
	movlw	(035h)
	fcall	_txs
	movlw	(031h)
	fcall	_txs
	movlw	(035h)
	fcall	_txs
	line	184
;multi sensor on gsm.c: 184: txs('0');txs('5');txs('7');txs('0');txs('6');
	movlw	(030h)
	fcall	_txs
	movlw	(035h)
	fcall	_txs
	movlw	(037h)
	fcall	_txs
	movlw	(030h)
	fcall	_txs
	movlw	(036h)
	fcall	_txs
	line	185
;multi sensor on gsm.c: 185: txs('"');
	movlw	(022h)
	fcall	_txs
	line	186
;multi sensor on gsm.c: 186: txs(13); delay(10000);txs(10);
	movlw	(0Dh)
	fcall	_txs
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	movlw	(0Ah)
	fcall	_txs
	line	188
;multi sensor on gsm.c: 188: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	189
;multi sensor on gsm.c: 189: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	191
	
l2915:	
;multi sensor on gsm.c: 191: gsm_command("sensor3 abnormal");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_gsm_command
	line	192
	
l2917:	
;multi sensor on gsm.c: 192: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	195
	
l2919:	
;multi sensor on gsm.c: 195: txs(13); delay(10000);txs(10);
	movlw	(0Dh)
	fcall	_txs
	
l2921:	
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2923:	
	movlw	(0Ah)
	fcall	_txs
	line	197
	
l2925:	
;multi sensor on gsm.c: 197: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	198
	
l2927:	
;multi sensor on gsm.c: 198: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	200
	
l2929:	
;multi sensor on gsm.c: 200: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	201
	
l2931:	
;multi sensor on gsm.c: 201: TXREG=(a2+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a2),w
	addlw	030h
	movwf	(25)	;volatile
	line	202
	
l2933:	
;multi sensor on gsm.c: 202: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	203
	
l2935:	
;multi sensor on gsm.c: 203: TXREG=(c2+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c2),w
	addlw	030h
	movwf	(25)	;volatile
	line	204
	
l2937:	
;multi sensor on gsm.c: 204: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	205
	
l2939:	
;multi sensor on gsm.c: 205: TXREG=(e2+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_e2),w
	addlw	030h
	movwf	(25)	;volatile
	line	206
	
l2941:	
;multi sensor on gsm.c: 206: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	207
	
l2943:	
;multi sensor on gsm.c: 207: TXREG=(f2+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_f2),w
	addlw	030h
	movwf	(25)	;volatile
	line	208
	
l2945:	
;multi sensor on gsm.c: 208: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	212
	
l2947:	
;multi sensor on gsm.c: 212: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	213
	
l2949:	
;multi sensor on gsm.c: 213: txs(13);delay(60000);
	movlw	(0Dh)
	fcall	_txs
	
l2951:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	214
	
l2953:	
;multi sensor on gsm.c: 214: txs(10);
	movlw	(0Ah)
	fcall	_txs
	line	215
	
l2955:	
;multi sensor on gsm.c: 215: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	217
	
l2957:	
;multi sensor on gsm.c: 217: txs(26);
	movlw	(01Ah)
	fcall	_txs
	line	218
	
l2959:	
;multi sensor on gsm.c: 218: delay(50000);delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2961:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	219
	
l2963:	
;multi sensor on gsm.c: 219: delay(50000);delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2965:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	220
	
l675:	
	return
	opt stack 0
GLOBAL	__end_of_sms3
	__end_of_sms3:
;; =============== function _sms3 ends ============

	signat	_sms3,88
	global	_sms2
psect	text315,local,class=CODE,delta=2
global __ptext315
__ptext315:

;; *************** function _sms2 *****************
;; Defined at:
;;		line 135 in file "C:\Users\TECH\Desktop\madhu pic folder\new gps &gsm\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_txs
;;		_delay
;;		_gsm_command
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text315
	file	"C:\Users\TECH\Desktop\madhu pic folder\new gps &gsm\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
	line	135
	global	__size_of_sms2
	__size_of_sms2	equ	__end_of_sms2-_sms2
	
_sms2:	
	opt	stack 7
; Regs used in _sms2: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	136
	
l2859:	
;multi sensor on gsm.c: 136: txs('A');txs('T');txs('+');txs('C');txs('M');txs('G');
	movlw	(041h)
	fcall	_txs
	movlw	(054h)
	fcall	_txs
	movlw	(02Bh)
	fcall	_txs
	movlw	(043h)
	fcall	_txs
	movlw	(04Dh)
	fcall	_txs
	movlw	(047h)
	fcall	_txs
	line	137
;multi sensor on gsm.c: 137: txs('S');txs('=');
	movlw	(053h)
	fcall	_txs
	movlw	(03Dh)
	fcall	_txs
	line	138
;multi sensor on gsm.c: 138: txs('"');
	movlw	(022h)
	fcall	_txs
	line	139
;multi sensor on gsm.c: 139: txs('9');txs('7');txs('5');txs('1');txs('5');
	movlw	(039h)
	fcall	_txs
	movlw	(037h)
	fcall	_txs
	movlw	(035h)
	fcall	_txs
	movlw	(031h)
	fcall	_txs
	movlw	(035h)
	fcall	_txs
	line	140
;multi sensor on gsm.c: 140: txs('0');txs('5');txs('7');txs('0');txs('6');
	movlw	(030h)
	fcall	_txs
	movlw	(035h)
	fcall	_txs
	movlw	(037h)
	fcall	_txs
	movlw	(030h)
	fcall	_txs
	movlw	(036h)
	fcall	_txs
	line	141
;multi sensor on gsm.c: 141: txs('"');
	movlw	(022h)
	fcall	_txs
	line	142
;multi sensor on gsm.c: 142: txs(13); delay(10000);txs(10);
	movlw	(0Dh)
	fcall	_txs
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	movlw	(0Ah)
	fcall	_txs
	line	144
;multi sensor on gsm.c: 144: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	145
;multi sensor on gsm.c: 145: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	147
	
l2861:	
;multi sensor on gsm.c: 147: gsm_command("sensor2 abnormal");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_gsm_command
	line	148
	
l2863:	
;multi sensor on gsm.c: 148: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	151
	
l2865:	
;multi sensor on gsm.c: 151: txs(13); delay(10000);txs(10);
	movlw	(0Dh)
	fcall	_txs
	
l2867:	
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2869:	
	movlw	(0Ah)
	fcall	_txs
	line	153
	
l2871:	
;multi sensor on gsm.c: 153: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	154
	
l2873:	
;multi sensor on gsm.c: 154: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	156
	
l2875:	
;multi sensor on gsm.c: 156: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	157
	
l2877:	
;multi sensor on gsm.c: 157: TXREG=(a1+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a1),w
	addlw	030h
	movwf	(25)	;volatile
	line	158
	
l2879:	
;multi sensor on gsm.c: 158: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	159
	
l2881:	
;multi sensor on gsm.c: 159: TXREG=(c1+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c1),w
	addlw	030h
	movwf	(25)	;volatile
	line	160
	
l2883:	
;multi sensor on gsm.c: 160: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	161
	
l2885:	
;multi sensor on gsm.c: 161: TXREG=(e1+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_e1),w
	addlw	030h
	movwf	(25)	;volatile
	line	162
	
l2887:	
;multi sensor on gsm.c: 162: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	163
	
l2889:	
;multi sensor on gsm.c: 163: TXREG=(f1+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_f1),w
	addlw	030h
	movwf	(25)	;volatile
	line	164
	
l2891:	
;multi sensor on gsm.c: 164: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	168
	
l2893:	
;multi sensor on gsm.c: 168: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	169
	
l2895:	
;multi sensor on gsm.c: 169: txs(13);delay(60000);
	movlw	(0Dh)
	fcall	_txs
	
l2897:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	170
	
l2899:	
;multi sensor on gsm.c: 170: txs(10);
	movlw	(0Ah)
	fcall	_txs
	line	171
	
l2901:	
;multi sensor on gsm.c: 171: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	173
	
l2903:	
;multi sensor on gsm.c: 173: txs(26);
	movlw	(01Ah)
	fcall	_txs
	line	174
	
l2905:	
;multi sensor on gsm.c: 174: delay(50000);delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2907:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	175
	
l2909:	
;multi sensor on gsm.c: 175: delay(50000);delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2911:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	176
	
l672:	
	return
	opt stack 0
GLOBAL	__end_of_sms2
	__end_of_sms2:
;; =============== function _sms2 ends ============

	signat	_sms2,88
	global	_sms1
psect	text316,local,class=CODE,delta=2
global __ptext316
__ptext316:

;; *************** function _sms1 *****************
;; Defined at:
;;		line 92 in file "C:\Users\TECH\Desktop\madhu pic folder\new gps &gsm\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_txs
;;		_delay
;;		_gsm_command
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text316
	file	"C:\Users\TECH\Desktop\madhu pic folder\new gps &gsm\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
	line	92
	global	__size_of_sms1
	__size_of_sms1	equ	__end_of_sms1-_sms1
	
_sms1:	
	opt	stack 7
; Regs used in _sms1: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	93
	
l2805:	
;multi sensor on gsm.c: 93: txs('A');txs('T');txs('+');txs('C');txs('M');txs('G');
	movlw	(041h)
	fcall	_txs
	movlw	(054h)
	fcall	_txs
	movlw	(02Bh)
	fcall	_txs
	movlw	(043h)
	fcall	_txs
	movlw	(04Dh)
	fcall	_txs
	movlw	(047h)
	fcall	_txs
	line	94
;multi sensor on gsm.c: 94: txs('S');txs('=');
	movlw	(053h)
	fcall	_txs
	movlw	(03Dh)
	fcall	_txs
	line	95
;multi sensor on gsm.c: 95: txs('"');
	movlw	(022h)
	fcall	_txs
	line	96
;multi sensor on gsm.c: 96: txs('9');txs('7');txs('5');txs('1');txs('5');
	movlw	(039h)
	fcall	_txs
	movlw	(037h)
	fcall	_txs
	movlw	(035h)
	fcall	_txs
	movlw	(031h)
	fcall	_txs
	movlw	(035h)
	fcall	_txs
	line	97
;multi sensor on gsm.c: 97: txs('0');txs('5');txs('7');txs('0');txs('6');
	movlw	(030h)
	fcall	_txs
	movlw	(035h)
	fcall	_txs
	movlw	(037h)
	fcall	_txs
	movlw	(030h)
	fcall	_txs
	movlw	(036h)
	fcall	_txs
	line	98
;multi sensor on gsm.c: 98: txs('"');
	movlw	(022h)
	fcall	_txs
	line	99
;multi sensor on gsm.c: 99: txs(13); delay(10000);txs(10);
	movlw	(0Dh)
	fcall	_txs
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	movlw	(0Ah)
	fcall	_txs
	line	101
;multi sensor on gsm.c: 101: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	102
;multi sensor on gsm.c: 102: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	104
	
l2807:	
;multi sensor on gsm.c: 104: gsm_command("sensor1 abnormal");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_gsm_command
	line	105
	
l2809:	
;multi sensor on gsm.c: 105: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	108
	
l2811:	
;multi sensor on gsm.c: 108: txs(13); delay(10000);txs(10);
	movlw	(0Dh)
	fcall	_txs
	
l2813:	
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2815:	
	movlw	(0Ah)
	fcall	_txs
	line	110
	
l2817:	
;multi sensor on gsm.c: 110: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	111
	
l2819:	
;multi sensor on gsm.c: 111: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	113
	
l2821:	
;multi sensor on gsm.c: 113: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	114
	
l2823:	
;multi sensor on gsm.c: 114: TXREG=(a+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a),w
	addlw	030h
	movwf	(25)	;volatile
	line	115
	
l2825:	
;multi sensor on gsm.c: 115: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	116
	
l2827:	
;multi sensor on gsm.c: 116: TXREG=(c+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c),w
	addlw	030h
	movwf	(25)	;volatile
	line	117
	
l2829:	
;multi sensor on gsm.c: 117: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	118
	
l2831:	
;multi sensor on gsm.c: 118: TXREG=(e+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_e),w
	addlw	030h
	movwf	(25)	;volatile
	line	119
	
l2833:	
;multi sensor on gsm.c: 119: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	120
	
l2835:	
;multi sensor on gsm.c: 120: TXREG=(f+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_f),w
	addlw	030h
	movwf	(25)	;volatile
	line	121
	
l2837:	
;multi sensor on gsm.c: 121: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	125
	
l2839:	
;multi sensor on gsm.c: 125: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	126
	
l2841:	
;multi sensor on gsm.c: 126: txs(13);delay(60000);
	movlw	(0Dh)
	fcall	_txs
	
l2843:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	127
	
l2845:	
;multi sensor on gsm.c: 127: txs(10);
	movlw	(0Ah)
	fcall	_txs
	line	128
	
l2847:	
;multi sensor on gsm.c: 128: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	130
	
l2849:	
;multi sensor on gsm.c: 130: txs(26);
	movlw	(01Ah)
	fcall	_txs
	line	131
	
l2851:	
;multi sensor on gsm.c: 131: delay(50000);delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2853:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	132
	
l2855:	
;multi sensor on gsm.c: 132: delay(50000);delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2857:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	133
	
l669:	
	return
	opt stack 0
GLOBAL	__end_of_sms1
	__end_of_sms1:
;; =============== function _sms1 ends ============

	signat	_sms1,88
	global	_lcd_data
psect	text317,local,class=CODE,delta=2
global __ptext317
__ptext317:

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 36 in file "C:\Users\TECH\Desktop\madhu pic folder\new gps &gsm\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1    4[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_lcd_display
;;		_main
;; This function uses a non-reentrant model
;;
psect	text317
	file	"C:\Users\TECH\Desktop\madhu pic folder\new gps &gsm\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
	line	36
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 7
; Regs used in _lcd_data: [wreg+status,2-btemp+0+pclath+cstack]
;lcd_data@dat stored from wreg
	movwf	(lcd_data@dat)
	line	37
	
l2779:	
;multi sensor on gsm.c: 37: PORTD=(dat&0xf0);
	movf	(lcd_data@dat),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	38
	
l2781:	
;multi sensor on gsm.c: 38: RD1=1;
	bsf	(65/8),(65)&7
	line	39
	
l2783:	
;multi sensor on gsm.c: 39: RD2=0;
	bcf	(66/8),(66)&7
	line	40
	
l2785:	
;multi sensor on gsm.c: 40: RD3=1;
	bsf	(67/8),(67)&7
	line	41
	
l2787:	
;multi sensor on gsm.c: 41: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	42
	
l2789:	
;multi sensor on gsm.c: 42: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	43
	
l2791:	
;multi sensor on gsm.c: 43: temp=dat<<4;
	movf	(lcd_data@dat),w
	movwf	(??_lcd_data+0)+0
	clrf	(??_lcd_data+0)+0+1
	movlw	04h
	movwf	btemp+0
u2465:
	clrc
	rlf	(??_lcd_data+0)+0,f
	rlf	(??_lcd_data+0)+1,f
	decfsz	btemp+0,f
	goto	u2465
	movf	0+(??_lcd_data+0)+0,w
	movwf	(_temp)
	movf	1+(??_lcd_data+0)+0,w
	movwf	(_temp+1)
	line	44
	
l2793:	
;multi sensor on gsm.c: 44: PORTD=(temp&0xf0);
	movf	(_temp),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	45
	
l2795:	
;multi sensor on gsm.c: 45: RD1=1;
	bsf	(65/8),(65)&7
	line	46
	
l2797:	
;multi sensor on gsm.c: 46: RD2=0;
	bcf	(66/8),(66)&7
	line	47
	
l2799:	
;multi sensor on gsm.c: 47: RD3=1;
	bsf	(67/8),(67)&7
	line	48
	
l2801:	
;multi sensor on gsm.c: 48: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	49
	
l2803:	
;multi sensor on gsm.c: 49: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	50
	
l642:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
;; =============== function _lcd_data ends ============

	signat	_lcd_data,4216
	global	_lcd_cmd
psect	text318,local,class=CODE,delta=2
global __ptext318
__ptext318:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 20 in file "C:\Users\TECH\Desktop\madhu pic folder\new gps &gsm\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
;; Parameters:    Size  Location     Type
;;  com             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  com             1    4[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_lcd_init
;;		_main
;; This function uses a non-reentrant model
;;
psect	text318
	file	"C:\Users\TECH\Desktop\madhu pic folder\new gps &gsm\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
	line	20
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 7
; Regs used in _lcd_cmd: [wreg+status,2-btemp+0+pclath+cstack]
;lcd_cmd@com stored from wreg
	movwf	(lcd_cmd@com)
	line	21
	
l2753:	
;multi sensor on gsm.c: 21: PORTD=(com&0xf0);
	movf	(lcd_cmd@com),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	22
	
l2755:	
;multi sensor on gsm.c: 22: RD1=0;
	bcf	(65/8),(65)&7
	line	23
	
l2757:	
;multi sensor on gsm.c: 23: RD2=0;
	bcf	(66/8),(66)&7
	line	24
	
l2759:	
;multi sensor on gsm.c: 24: RD3=1;
	bsf	(67/8),(67)&7
	line	25
	
l2761:	
;multi sensor on gsm.c: 25: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	26
	
l2763:	
;multi sensor on gsm.c: 26: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	27
	
l2765:	
;multi sensor on gsm.c: 27: temp=com<<4;
	movf	(lcd_cmd@com),w
	movwf	(??_lcd_cmd+0)+0
	clrf	(??_lcd_cmd+0)+0+1
	movlw	04h
	movwf	btemp+0
u2455:
	clrc
	rlf	(??_lcd_cmd+0)+0,f
	rlf	(??_lcd_cmd+0)+1,f
	decfsz	btemp+0,f
	goto	u2455
	movf	0+(??_lcd_cmd+0)+0,w
	movwf	(_temp)
	movf	1+(??_lcd_cmd+0)+0,w
	movwf	(_temp+1)
	line	28
	
l2767:	
;multi sensor on gsm.c: 28: PORTD=(temp&0xf0);
	movf	(_temp),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	29
	
l2769:	
;multi sensor on gsm.c: 29: RD1=0;
	bcf	(65/8),(65)&7
	line	30
	
l2771:	
;multi sensor on gsm.c: 30: RD2=0;
	bcf	(66/8),(66)&7
	line	31
	
l2773:	
;multi sensor on gsm.c: 31: RD3=1;
	bsf	(67/8),(67)&7
	line	32
	
l2775:	
;multi sensor on gsm.c: 32: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	33
	
l2777:	
;multi sensor on gsm.c: 33: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	34
	
l639:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,4216
	global	___lwmod
psect	text319,local,class=CODE,delta=2
global __ptext319
__ptext319:

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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text319
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 7
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l2731:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2391
	goto	u2390
u2391:
	goto	l715
u2390:
	line	9
	
l2733:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l716
	
l717:	
	line	11
	
l2735:	
	movlw	01h
	
u2405:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2405
	line	12
	
l2737:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	line	13
	
l716:	
	line	10
	
l2739:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2411
	goto	u2410
u2411:
	goto	l717
u2410:
	
l718:	
	line	14
	
l719:	
	line	15
	
l2741:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2425
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2425:
	skipc
	goto	u2421
	goto	u2420
u2421:
	goto	l720
u2420:
	line	16
	
l2743:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	
l720:	
	line	17
	
l2745:	
	movlw	01h
	
u2435:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2435
	line	18
	
l2747:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2441
	goto	u2440
u2441:
	goto	l719
u2440:
	
l721:	
	line	19
	
l715:	
	line	20
	
l2749:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	
l2751:	
	line	21
	
l722:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text320,local,class=CODE,delta=2
global __ptext320
__ptext320:

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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text320
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 7
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l2707:	
	movlw	low(0)
	movwf	(___lwdiv@quotient)
	movlw	high(0)
	movwf	((___lwdiv@quotient))+1
	line	10
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2321
	goto	u2320
u2321:
	goto	l705
u2320:
	line	11
	
l2709:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l706
	
l707:	
	line	13
	
l2711:	
	movlw	01h
	
u2335:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2335
	line	14
	
l2713:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	line	15
	
l706:	
	line	12
	
l2715:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l707
u2340:
	
l708:	
	line	16
	
l709:	
	line	17
	
l2717:	
	movlw	01h
	
u2355:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2355
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2365
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2365:
	skipc
	goto	u2361
	goto	u2360
u2361:
	goto	l710
u2360:
	line	19
	
l2719:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l2721:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	21
	
l710:	
	line	22
	
l2723:	
	movlw	01h
	
u2375:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2375
	line	23
	
l2725:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2381
	goto	u2380
u2381:
	goto	l709
u2380:
	
l711:	
	line	24
	
l705:	
	line	25
	
l2727:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	
l2729:	
	line	26
	
l712:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_txs
psect	text321,local,class=CODE,delta=2
global __ptext321
__ptext321:

;; *************** function _txs *****************
;; Defined at:
;;		line 83 in file "C:\Users\TECH\Desktop\madhu pic folder\new gps &gsm\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1    0[COMMON] unsigned char 
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
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sms1
;;		_sms2
;;		_sms3
;;		_main
;; This function uses a non-reentrant model
;;
psect	text321
	file	"C:\Users\TECH\Desktop\madhu pic folder\new gps &gsm\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
	line	83
	global	__size_of_txs
	__size_of_txs	equ	__end_of_txs-_txs
	
_txs:	
	opt	stack 6
; Regs used in _txs: [wreg]
;txs@val stored from wreg
	movwf	(txs@val)
	line	84
	
l2703:	
;multi sensor on gsm.c: 84: while(!TXIF)
	goto	l663
	
l664:	
	line	86
;multi sensor on gsm.c: 85: {
	
l663:	
	line	84
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l664
u2310:
	
l665:	
	line	87
;multi sensor on gsm.c: 86: }
;multi sensor on gsm.c: 87: OERR=0;
	bcf	(193/8),(193)&7
	line	88
	
l2705:	
;multi sensor on gsm.c: 88: TXREG=val;
	movf	(txs@val),w
	movwf	(25)	;volatile
	line	89
	
l666:	
	return
	opt stack 0
GLOBAL	__end_of_txs
	__end_of_txs:
;; =============== function _txs ends ============

	signat	_txs,4216
	global	_gsm_command
psect	text322,local,class=CODE,delta=2
global __ptext322
__ptext322:

;; *************** function _gsm_command *****************
;; Defined at:
;;		line 70 in file "C:\Users\TECH\Desktop\madhu pic folder\new gps &gsm\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
;; Parameters:    Size  Location     Type
;;  da              1    wreg     PTR const unsigned char 
;;		 -> STR_3(17), STR_2(17), STR_1(17), 
;; Auto vars:     Size  Location     Type
;;  da              1    0[COMMON] PTR const unsigned char 
;;		 -> STR_3(17), STR_2(17), STR_1(17), 
;;  s               2    1[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
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
;; Hardware stack levels used:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sms1
;;		_sms2
;;		_sms3
;; This function uses a non-reentrant model
;;
psect	text322
	file	"C:\Users\TECH\Desktop\madhu pic folder\new gps &gsm\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
	line	70
	global	__size_of_gsm_command
	__size_of_gsm_command	equ	__end_of_gsm_command-_gsm_command
	
_gsm_command:	
	opt	stack 5
; Regs used in _gsm_command: [wreg-fsr0h+status,2+status,0+pclath]
;gsm_command@da stored from wreg
	line	72
	movwf	(gsm_command@da)
	
l2695:	
;multi sensor on gsm.c: 71: unsigned int s;
;multi sensor on gsm.c: 72: for(s=0;da[s]!=0;s++)
	movlw	low(0)
	movwf	(gsm_command@s)
	movlw	high(0)
	movwf	((gsm_command@s))+1
	goto	l654
	line	73
	
l655:	
	line	74
;multi sensor on gsm.c: 73: {
;multi sensor on gsm.c: 74: while(!TXIF)
	goto	l656
	
l657:	
	line	76
;multi sensor on gsm.c: 75: {
	
l656:	
	line	74
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l657
u2290:
	
l658:	
	line	77
;multi sensor on gsm.c: 76: }
;multi sensor on gsm.c: 77: OERR=0;
	bcf	(193/8),(193)&7
	line	78
	
l2697:	
;multi sensor on gsm.c: 78: TXREG=da[s];
	movf	(gsm_command@s),w
	addwf	(gsm_command@da),w
	movwf	fsr0
	fcall	stringdir
	movwf	(25)	;volatile
	line	72
	
l2699:	
	movlw	low(01h)
	addwf	(gsm_command@s),f
	skipnc
	incf	(gsm_command@s+1),f
	movlw	high(01h)
	addwf	(gsm_command@s+1),f
	
l654:	
	
l2701:	
	movf	(gsm_command@s),w
	addwf	(gsm_command@da),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2301
	goto	u2300
u2301:
	goto	l655
u2300:
	
l659:	
	line	80
	
l660:	
	return
	opt stack 0
GLOBAL	__end_of_gsm_command
	__end_of_gsm_command:
;; =============== function _gsm_command ends ============

	signat	_gsm_command,4216
	global	_delay
psect	text323,local,class=CODE,delta=2
global __ptext323
__ptext323:

;; *************** function _delay *****************
;; Defined at:
;;		line 15 in file "C:\Users\TECH\Desktop\madhu pic folder\new gps &gsm\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
;; Parameters:    Size  Location     Type
;;  a               2    0[COMMON] unsigned int 
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
;;		_lcd_cmd
;;		_lcd_data
;;		_sms1
;;		_sms2
;;		_sms3
;;		_serial
;;		_main
;; This function uses a non-reentrant model
;;
psect	text323
	file	"C:\Users\TECH\Desktop\madhu pic folder\new gps &gsm\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
	line	15
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	16
	
l2691:	
;multi sensor on gsm.c: 16: while(a--);
	goto	l633
	
l634:	
	
l633:	
	
l2693:	
	movlw	low(01h)
	subwf	(delay@a),f
	movlw	high(01h)
	skipc
	decf	(delay@a+1),f
	subwf	(delay@a+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@a+1)),w
	skipz
	goto	u2285
	movlw	low(0FFFFh)
	xorwf	((delay@a)),w
u2285:

	skipz
	goto	u2281
	goto	u2280
u2281:
	goto	l634
u2280:
	
l635:	
	line	17
	
l636:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text324,local,class=CODE,delta=2
global __ptext324
__ptext324:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
