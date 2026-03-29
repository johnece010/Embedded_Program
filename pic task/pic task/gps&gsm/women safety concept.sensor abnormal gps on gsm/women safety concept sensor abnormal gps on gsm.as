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
# 2 "C:\Users\TECH\Desktop\madhu pic folder\gps&gsm\women safety concept.sensor abnormal gps on gsm\women safety concept sensor abnormal gps on gsm.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "C:\Users\TECH\Desktop\madhu pic folder\gps&gsm\women safety concept.sensor abnormal gps on gsm\women safety concept sensor abnormal gps on gsm.c"
	dw 0X3F72 ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_delay
	FNCALL	_main,_gps_init
	FNCALL	_main,_lcd_cmd
	FNCALL	_main,_lcd_display
	FNCALL	_main,___lwdiv
	FNCALL	_main,___lwmod
	FNCALL	_main,_lcd_data
	FNCALL	_main,_serial
	FNCALL	_main,_txs
	FNCALL	_main,_gps_send
	FNCALL	_main,_sms1
	FNCALL	_gps_send,_lcd_cmd
	FNCALL	_gps_send,_delay
	FNCALL	_gps_send,_lcd_display
	FNCALL	_gps_send,_lcd_data
	FNCALL	_sms1,_txs
	FNCALL	_sms1,_delay
	FNCALL	_sms1,_gsm_command
	FNCALL	_sms1,_lcd_cmd
	FNCALL	_lcd_init,_lcd_cmd
	FNCALL	_lcd_display,_lcd_data
	FNCALL	_serial,_delay
	FNCALL	_lcd_data,_delay
	FNCALL	_lcd_cmd,_delay
	FNROOT	_main
	FNCALL	intlevel1,_rcx
	global	intlevel1
	FNROOT	intlevel1
	global	_ser
	global	_st
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\TECH\Desktop\madhu pic folder\gps&gsm\women safety concept.sensor abnormal gps on gsm\women safety concept sensor abnormal gps on gsm.c"
	line	9

;initializer for _ser
	retlw	037h

;initializer for _st
	retlw	01h
	global	_a
	global	_b
	global	_c
	global	_d
	global	_e
	global	_f
	global	_i
	global	_j
	global	_temp1
	global	_y
	global	_z
	global	_data_cap
	global	_temp
	global	_gpsdata
	global	_ADCON0
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
	global	_RCREG
_RCREG	set	26
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
	global	_RCIF
_RCIF	set	101
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
	global	_BRGH
_BRGH	set	1218
	global	_RCIE
_RCIE	set	1125
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
	retlw	103	;'g'
	retlw	112	;'p'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	99	;'c'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	0
psect	strings
	
STR_4:	
	retlw	77	;'M'
	retlw	115	;'s'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	0
psect	strings
	
STR_6:	
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
	
STR_3:	
	retlw	87	;'W'
	retlw	69	;'E'
	retlw	76	;'L'
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	0
psect	strings
	
STR_1:	
	retlw	103	;'g'
	retlw	112	;'p'
	retlw	115	;'s'
	retlw	0
psect	strings
	
STR_5:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	0
psect	strings
	file	"women safety concept sensor abnormal gps on gsm.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_temp:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_a:
       ds      2

_b:
       ds      2

_c:
       ds      2

_d:
       ds      2

_e:
       ds      2

_f:
       ds      2

_i:
       ds      2

_j:
       ds      2

_temp1:
       ds      2

_y:
       ds      2

_z:
       ds      2

_data_cap:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\TECH\Desktop\madhu pic folder\gps&gsm\women safety concept.sensor abnormal gps on gsm\women safety concept sensor abnormal gps on gsm.c"
_ser:
       ds      1

psect	dataBANK0
	file	"C:\Users\TECH\Desktop\madhu pic folder\gps&gsm\women safety concept.sensor abnormal gps on gsm\women safety concept sensor abnormal gps on gsm.c"
_st:
       ds      1

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_gpsdata:
       ds      50

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
	movlw	low((__pbssBANK0)+017h)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+032h)
	fcall	clear_ram
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_gps_init
?_gps_init:	; 0 bytes @ 0x0
	global	?_lcd_cmd
?_lcd_cmd:	; 0 bytes @ 0x0
	global	?_lcd_data
?_lcd_data:	; 0 bytes @ 0x0
	global	?_lcd_display
?_lcd_display:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_rcx
?_rcx:	; 0 bytes @ 0x0
	global	??_rcx
??_rcx:	; 0 bytes @ 0x0
	global	?_gps_send
?_gps_send:	; 0 bytes @ 0x0
	global	?_gsm_command
?_gsm_command:	; 0 bytes @ 0x0
	global	?_txs
?_txs:	; 0 bytes @ 0x0
	global	?_sms1
?_sms1:	; 0 bytes @ 0x0
	global	?_serial
?_serial:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	5
	global	?_delay
?_delay:	; 0 bytes @ 0x5
	global	??_gps_init
??_gps_init:	; 0 bytes @ 0x5
	global	??_gsm_command
??_gsm_command:	; 0 bytes @ 0x5
	global	??_txs
??_txs:	; 0 bytes @ 0x5
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x5
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x5
	global	txs@val
txs@val:	; 1 bytes @ 0x5
	global	delay@x
delay@x:	; 2 bytes @ 0x5
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x6
	ds	1
	global	??_delay
??_delay:	; 0 bytes @ 0x7
	global	??_lcd_display
??_lcd_display:	; 0 bytes @ 0x7
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x7
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_lcd_cmd
??_lcd_cmd:	; 0 bytes @ 0x0
	global	??_lcd_data
??_lcd_data:	; 0 bytes @ 0x0
	global	??_serial
??_serial:	; 0 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	gsm_command@da
gsm_command@da:	; 1 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	serial@a
serial@a:	; 1 bytes @ 0x1
	global	gsm_command@s
gsm_command@s:	; 2 bytes @ 0x1
	ds	1
	global	lcd_cmd@com
lcd_cmd@com:	; 1 bytes @ 0x2
	global	lcd_data@dat
lcd_data@dat:	; 1 bytes @ 0x2
	global	serial@B
serial@B:	; 1 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_sms1
??_sms1:	; 0 bytes @ 0x3
	global	lcd_display@m
lcd_display@m:	; 1 bytes @ 0x3
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x4
	global	lcd_display@k
lcd_display@k:	; 2 bytes @ 0x4
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
	global	??_gps_send
??_gps_send:	; 0 bytes @ 0x6
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x7
	ds	2
;;Data sizes: Strings 50, constant 0, data 2, bss 75, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7       9
;; BANK0           80      9      34
;; BANK1           80      0      50
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; serial@a	PTR const unsigned char  size(1) Largest target is 10
;;		 -> STR_6(CODE[10]), STR_5(CODE[3]), 
;;
;; gsm_command@da	PTR const unsigned char  size(1) Largest target is 13
;;		 -> STR_2(CODE[13]), 
;;
;; lcd_display@m	PTR const unsigned char  size(1) Largest target is 12
;;		 -> STR_4(CODE[12]), STR_3(CODE[8]), STR_1(CODE[4]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_delay
;;   _main->___lwmod
;;   _gps_send->_delay
;;   _sms1->_delay
;;   _serial->_delay
;;   _lcd_data->_delay
;;   _lcd_cmd->_delay
;;
;; Critical Paths under _rcx in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->___lwdiv
;;   _main->_gps_send
;;   _gps_send->_lcd_display
;;   _sms1->_gsm_command
;;   _sms1->_lcd_cmd
;;   _lcd_init->_lcd_cmd
;;   _lcd_display->_lcd_data
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0    1797
;;                                              7 BANK0      2     2      0
;;                           _lcd_init
;;                              _delay
;;                           _gps_init
;;                            _lcd_cmd
;;                        _lcd_display
;;                            ___lwdiv
;;                            ___lwmod
;;                           _lcd_data
;;                             _serial
;;                                _txs
;;                           _gps_send
;;                               _sms1
;; ---------------------------------------------------------------------------------
;; (1) _gps_send                                             1     1      0     404
;;                                              6 BANK0      1     1      0
;;                            _lcd_cmd
;;                              _delay
;;                        _lcd_display
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _sms1                                                 1     1      0     258
;;                                              3 BANK0      1     1      0
;;                                _txs
;;                              _delay
;;                        _gsm_command
;;                            _lcd_cmd
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             0     0      0      84
;;                            _lcd_cmd
;; ---------------------------------------------------------------------------------
;; (2) _lcd_display                                          3     3      0     214
;;                                              3 BANK0      3     3      0
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _serial                                               3     3      0     152
;;                                              0 BANK0      3     3      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _lcd_data                                             3     3      0      84
;;                                              0 BANK0      3     3      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _lcd_cmd                                              3     3      0      84
;;                                              0 BANK0      3     3      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) ___lwmod                                              6     2      4     232
;;                                              5 COMMON     2     2      0
;;                                              0 BANK0      4     0      4
;; ---------------------------------------------------------------------------------
;; (1) ___lwdiv                                              8     4      4     241
;;                                              5 COMMON     1     1      0
;;                                              0 BANK0      7     3      4
;; ---------------------------------------------------------------------------------
;; (2) _txs                                                  1     1      0      22
;;                                              5 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _gsm_command                                          3     3      0     130
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _gps_init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _delay                                                2     0      2      22
;;                                              5 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (5) _rcx                                                  5     5      0       0
;;                                              0 COMMON     5     5      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_init
;;     _lcd_cmd
;;       _delay
;;   _delay
;;   _gps_init
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
;;   _gps_send
;;     _lcd_cmd
;;       _delay
;;     _delay
;;     _lcd_display
;;       _lcd_data
;;         _delay
;;     _lcd_data
;;       _delay
;;   _sms1
;;     _txs
;;     _delay
;;     _gsm_command
;;     _lcd_cmd
;;       _delay
;;
;; _rcx (ROOT)
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
;;BANK1               50      0      32       7       62.5%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      61      12        0.0%
;;ABS                  0      0      5D       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       4       2        0.0%
;;BANK0               50      9      22       5       42.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      7       9       1       64.3%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 262 in file "C:\Users\TECH\Desktop\madhu pic folder\gps&gsm\women safety concept.sensor abnormal gps on gsm\women safety concept sensor abnormal gps on gsm.c"
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
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_init
;;		_delay
;;		_gps_init
;;		_lcd_cmd
;;		_lcd_display
;;		___lwdiv
;;		___lwmod
;;		_lcd_data
;;		_serial
;;		_txs
;;		_gps_send
;;		_sms1
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\TECH\Desktop\madhu pic folder\gps&gsm\women safety concept.sensor abnormal gps on gsm\women safety concept sensor abnormal gps on gsm.c"
	line	262
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
	line	263
	
l2997:	
;women safety concept sensor abnormal gps on gsm.c: 263: ADCON1=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	264
;women safety concept sensor abnormal gps on gsm.c: 264: ADCON0=0X40;
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	266
;women safety concept sensor abnormal gps on gsm.c: 266: TRISA=0x0F;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	267
	
l2999:	
;women safety concept sensor abnormal gps on gsm.c: 267: PORTA=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	269
	
l3001:	
;women safety concept sensor abnormal gps on gsm.c: 269: TRISB=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	270
	
l3003:	
;women safety concept sensor abnormal gps on gsm.c: 270: PORTB=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	272
	
l3005:	
;women safety concept sensor abnormal gps on gsm.c: 272: TRISD=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	273
	
l3007:	
;women safety concept sensor abnormal gps on gsm.c: 273: PORTD=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	275
	
l3009:	
;women safety concept sensor abnormal gps on gsm.c: 275: TRISC=0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	276
;women safety concept sensor abnormal gps on gsm.c: 276: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	278
	
l3011:	
;women safety concept sensor abnormal gps on gsm.c: 278: lcd_init();
	fcall	_lcd_init
	line	279
	
l3013:	
;women safety concept sensor abnormal gps on gsm.c: 279: delay(500);
	movlw	low(01F4h)
	movwf	(?_delay)
	movlw	high(01F4h)
	movwf	((?_delay))+1
	fcall	_delay
	line	281
	
l3015:	
;women safety concept sensor abnormal gps on gsm.c: 281: gps_init();
	fcall	_gps_init
	line	282
	
l3017:	
;women safety concept sensor abnormal gps on gsm.c: 282: delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	284
	
l3019:	
;women safety concept sensor abnormal gps on gsm.c: 284: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	285
	
l3021:	
;women safety concept sensor abnormal gps on gsm.c: 285: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	286
	
l3023:	
;women safety concept sensor abnormal gps on gsm.c: 286: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	287
	
l3025:	
;women safety concept sensor abnormal gps on gsm.c: 287: lcd_display("WELCOME");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_lcd_display
	line	288
	
l3027:	
;women safety concept sensor abnormal gps on gsm.c: 288: delay(50000);delay(50000);delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3029:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3031:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	291
;women safety concept sensor abnormal gps on gsm.c: 291: while(1)
	
l657:	
	line	294
	
l3033:	
;women safety concept sensor abnormal gps on gsm.c: 292: {
;women safety concept sensor abnormal gps on gsm.c: 294: CHS2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(253/8),(253)&7
	line	295
	
l3035:	
;women safety concept sensor abnormal gps on gsm.c: 295: CHS1=0;
	bcf	(252/8),(252)&7
	line	296
	
l3037:	
;women safety concept sensor abnormal gps on gsm.c: 296: CHS0=0;
	bcf	(251/8),(251)&7
	line	297
	
l3039:	
;women safety concept sensor abnormal gps on gsm.c: 297: ADON=1;
	bsf	(248/8),(248)&7
	line	298
	
l3041:	
;women safety concept sensor abnormal gps on gsm.c: 298: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	299
	
l3043:	
;women safety concept sensor abnormal gps on gsm.c: 299: ADCON0=(ADCON0|0X04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	iorlw	04h
	movwf	(31)	;volatile
	line	300
	
l3045:	
;women safety concept sensor abnormal gps on gsm.c: 300: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	301
	
l3047:	
;women safety concept sensor abnormal gps on gsm.c: 301: temp1=ADRESH<<8;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movlw	08h
	movwf	btemp+0
u3095:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+0,f
	goto	u3095
	movf	0+(??_main+0)+0,w
	movwf	(_temp1)
	movf	1+(??_main+0)+0,w
	movwf	(_temp1+1)
	line	302
	
l3049:	
;women safety concept sensor abnormal gps on gsm.c: 302: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	303
	
l3051:	
;women safety concept sensor abnormal gps on gsm.c: 303: temp1=temp1+ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_temp1),w
	movwf	(_temp1)
	movf	(_temp1+1),w
	skipnc
	incf	(_temp1+1),w
	movwf	((_temp1))+1
	line	304
	
l3053:	
;women safety concept sensor abnormal gps on gsm.c: 304: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	305
	
l3055:	
;women safety concept sensor abnormal gps on gsm.c: 305: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	306
	
l3057:	
;women safety concept sensor abnormal gps on gsm.c: 306: a=temp1/1000;
	movlw	low(03E8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	clrf	(_a+1)
	addwf	(_a+1)
	movf	(0+(?___lwdiv)),w
	clrf	(_a)
	addwf	(_a)

	line	307
	
l3059:	
;women safety concept sensor abnormal gps on gsm.c: 307: b=temp1%1000;
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwmod)),w
	clrf	(_b+1)
	addwf	(_b+1)
	movf	(0+(?___lwmod)),w
	clrf	(_b)
	addwf	(_b)

	line	308
	
l3061:	
;women safety concept sensor abnormal gps on gsm.c: 308: c=b/100;
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	clrf	(_c+1)
	addwf	(_c+1)
	movf	(0+(?___lwdiv)),w
	clrf	(_c)
	addwf	(_c)

	line	309
	
l3063:	
;women safety concept sensor abnormal gps on gsm.c: 309: d=b%100;
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwmod)),w
	clrf	(_d+1)
	addwf	(_d+1)
	movf	(0+(?___lwmod)),w
	clrf	(_d)
	addwf	(_d)

	line	310
	
l3065:	
;women safety concept sensor abnormal gps on gsm.c: 310: e=d/10;
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	clrf	(_e+1)
	addwf	(_e+1)
	movf	(0+(?___lwdiv)),w
	clrf	(_e)
	addwf	(_e)

	line	311
	
l3067:	
;women safety concept sensor abnormal gps on gsm.c: 311: f=d%10;
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwmod)),w
	clrf	(_f+1)
	addwf	(_f+1)
	movf	(0+(?___lwmod)),w
	clrf	(_f)
	addwf	(_f)

	line	313
	
l3069:	
;women safety concept sensor abnormal gps on gsm.c: 313: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	314
	
l3071:	
;women safety concept sensor abnormal gps on gsm.c: 314: lcd_data(a+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a),w
	addlw	030h
	fcall	_lcd_data
	line	315
	
l3073:	
;women safety concept sensor abnormal gps on gsm.c: 315: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	316
	
l3075:	
;women safety concept sensor abnormal gps on gsm.c: 316: lcd_data(c+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c),w
	addlw	030h
	fcall	_lcd_data
	line	317
	
l3077:	
;women safety concept sensor abnormal gps on gsm.c: 317: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	318
	
l3079:	
;women safety concept sensor abnormal gps on gsm.c: 318: lcd_data(e+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_e),w
	addlw	030h
	fcall	_lcd_data
	line	319
	
l3081:	
;women safety concept sensor abnormal gps on gsm.c: 319: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	320
	
l3083:	
;women safety concept sensor abnormal gps on gsm.c: 320: lcd_data(f+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_f),w
	addlw	030h
	fcall	_lcd_data
	line	321
	
l3085:	
;women safety concept sensor abnormal gps on gsm.c: 321: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	322
	
l3087:	
;women safety concept sensor abnormal gps on gsm.c: 322: if(y==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_y+1)),w
	iorwf	((_y)),w
	skipz
	goto	u3101
	goto	u3100
u3101:
	goto	l658
u3100:
	line	324
	
l3089:	
;women safety concept sensor abnormal gps on gsm.c: 323: {
;women safety concept sensor abnormal gps on gsm.c: 324: if(temp1>=500)
	movlw	high(01F4h)
	subwf	(_temp1+1),w
	movlw	low(01F4h)
	skipnz
	subwf	(_temp1),w
	skipc
	goto	u3111
	goto	u3110
u3111:
	goto	l659
u3110:
	line	326
	
l3091:	
;women safety concept sensor abnormal gps on gsm.c: 325: {
;women safety concept sensor abnormal gps on gsm.c: 326: y=1;
	movlw	low(01h)
	movwf	(_y)
	movlw	high(01h)
	movwf	((_y))+1
	line	327
	
l3093:	
;women safety concept sensor abnormal gps on gsm.c: 327: z=z+1;
	movf	(_z),w
	addlw	low(01h)
	movwf	(_z)
	movf	(_z+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_z)
	line	328
	
l3095:	
;women safety concept sensor abnormal gps on gsm.c: 328: lcd_cmd(0xC0);
	movlw	(0C0h)
	fcall	_lcd_cmd
	line	329
	
l3097:	
;women safety concept sensor abnormal gps on gsm.c: 329: lcd_data(z+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_z),w
	addlw	030h
	fcall	_lcd_data
	line	330
	
l3099:	
;women safety concept sensor abnormal gps on gsm.c: 330: delay(50000);delay(50000);delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3101:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3103:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	331
	
l659:	
	line	333
	
l658:	
	line	334
	
l3105:	
;women safety concept sensor abnormal gps on gsm.c: 331: }
;women safety concept sensor abnormal gps on gsm.c: 333: }
;women safety concept sensor abnormal gps on gsm.c: 334: if(temp1<=500)
	movlw	high(01F5h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_temp1+1),w
	movlw	low(01F5h)
	skipnz
	subwf	(_temp1),w
	skipnc
	goto	u3121
	goto	u3120
u3121:
	goto	l660
u3120:
	line	336
	
l3107:	
;women safety concept sensor abnormal gps on gsm.c: 335: {
;women safety concept sensor abnormal gps on gsm.c: 336: y=0;
	movlw	low(0)
	movwf	(_y)
	movlw	high(0)
	movwf	((_y))+1
	line	337
	
l660:	
	line	339
;women safety concept sensor abnormal gps on gsm.c: 337: }
;women safety concept sensor abnormal gps on gsm.c: 339: if(z>=3)
	movlw	high(03h)
	subwf	(_z+1),w
	movlw	low(03h)
	skipnz
	subwf	(_z),w
	skipc
	goto	u3131
	goto	u3130
u3131:
	goto	l661
u3130:
	line	341
	
l3109:	
;women safety concept sensor abnormal gps on gsm.c: 340: {
;women safety concept sensor abnormal gps on gsm.c: 341: delay(50000);delay(50000);delay(50000);delay(50000);
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
	line	342
	
l3111:	
;women safety concept sensor abnormal gps on gsm.c: 342: z=0;
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_z)
	movlw	high(0)
	movwf	((_z))+1
	line	343
	
l3113:	
;women safety concept sensor abnormal gps on gsm.c: 343: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	344
	
l3115:	
;women safety concept sensor abnormal gps on gsm.c: 344: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	345
	
l3117:	
;women safety concept sensor abnormal gps on gsm.c: 345: lcd_display("Msg sending");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_lcd_display
	line	346
	
l3119:	
;women safety concept sensor abnormal gps on gsm.c: 346: delay(50000);delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3121:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	348
	
l3123:	
;women safety concept sensor abnormal gps on gsm.c: 348: serial("AT");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_serial
	line	349
	
l3125:	
;women safety concept sensor abnormal gps on gsm.c: 349: txs(13);delay(60000);delay(60000);
	movlw	(0Dh)
	fcall	_txs
	
l3127:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3129:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	350
	
l3131:	
;women safety concept sensor abnormal gps on gsm.c: 350: txs(10);
	movlw	(0Ah)
	fcall	_txs
	line	351
	
l3133:	
;women safety concept sensor abnormal gps on gsm.c: 351: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	352
	
l3135:	
;women safety concept sensor abnormal gps on gsm.c: 352: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	353
	
l3137:	
;women safety concept sensor abnormal gps on gsm.c: 353: serial("AT+CMGF=1");
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_serial
	line	354
	
l3139:	
;women safety concept sensor abnormal gps on gsm.c: 354: txs(13);delay(60000);delay(60000);
	movlw	(0Dh)
	fcall	_txs
	
l3141:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3143:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	355
	
l3145:	
;women safety concept sensor abnormal gps on gsm.c: 355: txs(10);
	movlw	(0Ah)
	fcall	_txs
	line	356
	
l3147:	
;women safety concept sensor abnormal gps on gsm.c: 356: delay(10000);delay(50000);gps_send();
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3149:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3151:	
	fcall	_gps_send
	line	357
	
l3153:	
;women safety concept sensor abnormal gps on gsm.c: 357: delay(50000);delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3155:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	358
	
l3157:	
;women safety concept sensor abnormal gps on gsm.c: 358: sms1();
	fcall	_sms1
	line	359
	
l661:	
	line	360
	
l3159:	
;women safety concept sensor abnormal gps on gsm.c: 359: }
;women safety concept sensor abnormal gps on gsm.c: 360: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	361
	
l3161:	
;women safety concept sensor abnormal gps on gsm.c: 361: delay(50000);delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3163:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	362
	
l662:	
	line	291
	goto	l657
	
l663:	
	line	363
	
l664:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_gps_send
psect	text508,local,class=CODE,delta=2
global __ptext508
__ptext508:

;; *************** function _gps_send *****************
;; Defined at:
;;		line 117 in file "C:\Users\TECH\Desktop\madhu pic folder\gps&gsm\women safety concept.sensor abnormal gps on gsm\women safety concept sensor abnormal gps on gsm.c"
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
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_cmd
;;		_delay
;;		_lcd_display
;;		_lcd_data
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text508
	file	"C:\Users\TECH\Desktop\madhu pic folder\gps&gsm\women safety concept.sensor abnormal gps on gsm\women safety concept sensor abnormal gps on gsm.c"
	line	117
	global	__size_of_gps_send
	__size_of_gps_send	equ	__end_of_gps_send-_gps_send
	
_gps_send:	
	opt	stack 7
; Regs used in _gps_send: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
	line	118
	
l2935:	
;women safety concept sensor abnormal gps on gsm.c: 118: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	119
;women safety concept sensor abnormal gps on gsm.c: 119: lcd_cmd(0x87);
	movlw	(087h)
	fcall	_lcd_cmd
	line	120
	
l2937:	
;women safety concept sensor abnormal gps on gsm.c: 120: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	121
	
l2939:	
;women safety concept sensor abnormal gps on gsm.c: 121: lcd_display("gps");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_display
	line	123
	
l2941:	
;women safety concept sensor abnormal gps on gsm.c: 123: delay(50000);delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2943:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	124
	
l2945:	
;women safety concept sensor abnormal gps on gsm.c: 124: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	125
	
l2947:	
;women safety concept sensor abnormal gps on gsm.c: 125: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	133
	
l2949:	
;women safety concept sensor abnormal gps on gsm.c: 133: if(i>43)
	movlw	high(02Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_i+1),w
	movlw	low(02Ch)
	skipnz
	subwf	(_i),w
	skipc
	goto	u3041
	goto	u3040
u3041:
	goto	l621
u3040:
	line	136
	
l2951:	
;women safety concept sensor abnormal gps on gsm.c: 134: {
;women safety concept sensor abnormal gps on gsm.c: 136: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	137
	
l2953:	
;women safety concept sensor abnormal gps on gsm.c: 137: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	139
	
l2955:	
;women safety concept sensor abnormal gps on gsm.c: 139: for(j=16;j<28;j++)
	movlw	low(010h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_j)
	movlw	high(010h)
	movwf	((_j))+1
	
l2957:	
	movlw	high(01Ch)
	subwf	(_j+1),w
	movlw	low(01Ch)
	skipnz
	subwf	(_j),w
	skipc
	goto	u3051
	goto	u3050
u3051:
	goto	l622
u3050:
	
l2959:	
	goto	l623
	line	140
	
l622:	
	line	142
	
l2961:	
;women safety concept sensor abnormal gps on gsm.c: 140: {
;women safety concept sensor abnormal gps on gsm.c: 142: ser=(gpsdata[j]);
	movf	(_j),w
	addlw	_gpsdata&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(??_gps_send+0)+0
	movf	(??_gps_send+0)+0,w
	movwf	(_ser)
	line	143
	
l2963:	
;women safety concept sensor abnormal gps on gsm.c: 143: lcd_data(ser);
	movf	(_ser),w
	fcall	_lcd_data
	line	145
	
l2965:	
;women safety concept sensor abnormal gps on gsm.c: 145: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	139
	
l2967:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	
l2969:	
	movlw	high(01Ch)
	subwf	(_j+1),w
	movlw	low(01Ch)
	skipnz
	subwf	(_j),w
	skipc
	goto	u3061
	goto	u3060
u3061:
	goto	l622
u3060:
	
l623:	
	line	147
	
l2971:	
;women safety concept sensor abnormal gps on gsm.c: 146: }
;women safety concept sensor abnormal gps on gsm.c: 147: lcd_cmd(0xc0);
	movlw	(0C0h)
	fcall	_lcd_cmd
	line	149
	
l2973:	
;women safety concept sensor abnormal gps on gsm.c: 149: for(j=30;j<41;j++)
	movlw	low(01Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_j)
	movlw	high(01Eh)
	movwf	((_j))+1
	
l2975:	
	movlw	high(029h)
	subwf	(_j+1),w
	movlw	low(029h)
	skipnz
	subwf	(_j),w
	skipc
	goto	u3071
	goto	u3070
u3071:
	goto	l624
u3070:
	
l2977:	
	goto	l625
	line	150
	
l624:	
	line	152
	
l2979:	
;women safety concept sensor abnormal gps on gsm.c: 150: {
;women safety concept sensor abnormal gps on gsm.c: 152: ser=(gpsdata[j]);
	movf	(_j),w
	addlw	_gpsdata&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(??_gps_send+0)+0
	movf	(??_gps_send+0)+0,w
	movwf	(_ser)
	line	153
	
l2981:	
;women safety concept sensor abnormal gps on gsm.c: 153: lcd_data(ser);
	movf	(_ser),w
	fcall	_lcd_data
	line	155
	
l2983:	
;women safety concept sensor abnormal gps on gsm.c: 155: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	149
	
l2985:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	
l2987:	
	movlw	high(029h)
	subwf	(_j+1),w
	movlw	low(029h)
	skipnz
	subwf	(_j),w
	skipc
	goto	u3081
	goto	u3080
u3081:
	goto	l624
u3080:
	
l625:	
	line	158
	
l2989:	
;women safety concept sensor abnormal gps on gsm.c: 156: }
;women safety concept sensor abnormal gps on gsm.c: 158: delay(50000);delay(50000);
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
	line	159
;women safety concept sensor abnormal gps on gsm.c: 159: delay(50000);delay(50000);
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
	line	161
	
l2991:	
;women safety concept sensor abnormal gps on gsm.c: 161: data_cap=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_data_cap)
	line	162
	
l2993:	
;women safety concept sensor abnormal gps on gsm.c: 162: st=0x01;
	clrf	(_st)
	bsf	status,0
	rlf	(_st),f
	line	163
	
l2995:	
;women safety concept sensor abnormal gps on gsm.c: 163: i=0x00;
	movlw	low(0)
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	line	165
;women safety concept sensor abnormal gps on gsm.c: 165: delay(35000);
	movlw	low(088B8h)
	movwf	(?_delay)
	movlw	high(088B8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	167
	
l621:	
	line	168
	
l626:	
	return
	opt stack 0
GLOBAL	__end_of_gps_send
	__end_of_gps_send:
;; =============== function _gps_send ends ============

	signat	_gps_send,88
	global	_sms1
psect	text509,local,class=CODE,delta=2
global __ptext509
__ptext509:

;; *************** function _sms1 *****************
;; Defined at:
;;		line 195 in file "C:\Users\TECH\Desktop\madhu pic folder\gps&gsm\women safety concept.sensor abnormal gps on gsm\women safety concept sensor abnormal gps on gsm.c"
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
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_txs
;;		_delay
;;		_gsm_command
;;		_lcd_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text509
	file	"C:\Users\TECH\Desktop\madhu pic folder\gps&gsm\women safety concept.sensor abnormal gps on gsm\women safety concept sensor abnormal gps on gsm.c"
	line	195
	global	__size_of_sms1
	__size_of_sms1	equ	__end_of_sms1-_sms1
	
_sms1:	
	opt	stack 7
; Regs used in _sms1: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
	line	196
	
l2891:	
;women safety concept sensor abnormal gps on gsm.c: 196: txs('A');txs('T');txs('+');txs('C');txs('M');txs('G');
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
	line	197
;women safety concept sensor abnormal gps on gsm.c: 197: txs('S');txs('=');
	movlw	(053h)
	fcall	_txs
	movlw	(03Dh)
	fcall	_txs
	line	198
;women safety concept sensor abnormal gps on gsm.c: 198: txs('"');
	movlw	(022h)
	fcall	_txs
	line	199
;women safety concept sensor abnormal gps on gsm.c: 199: txs('9');txs('7');txs('5');txs('1');txs('5');
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
	line	200
;women safety concept sensor abnormal gps on gsm.c: 200: txs('0');txs('5');txs('7');txs('0');txs('6');
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
	line	201
;women safety concept sensor abnormal gps on gsm.c: 201: txs('"');
	movlw	(022h)
	fcall	_txs
	line	202
;women safety concept sensor abnormal gps on gsm.c: 202: txs(13); delay(10000);txs(10);
	movlw	(0Dh)
	fcall	_txs
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	movlw	(0Ah)
	fcall	_txs
	line	204
;women safety concept sensor abnormal gps on gsm.c: 204: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	205
;women safety concept sensor abnormal gps on gsm.c: 205: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	208
	
l2893:	
;women safety concept sensor abnormal gps on gsm.c: 208: gsm_command("gps location");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_gsm_command
	line	211
	
l2895:	
;women safety concept sensor abnormal gps on gsm.c: 211: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	212
	
l2897:	
;women safety concept sensor abnormal gps on gsm.c: 212: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	214
	
l2899:	
;women safety concept sensor abnormal gps on gsm.c: 214: for(j=16;j<28;j++)
	movlw	low(010h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_j)
	movlw	high(010h)
	movwf	((_j))+1
	
l2901:	
	movlw	high(01Ch)
	subwf	(_j+1),w
	movlw	low(01Ch)
	skipnz
	subwf	(_j),w
	skipc
	goto	u3001
	goto	u3000
u3001:
	goto	l644
u3000:
	
l2903:	
	goto	l645
	line	215
	
l644:	
	line	217
	
l2905:	
;women safety concept sensor abnormal gps on gsm.c: 215: {
;women safety concept sensor abnormal gps on gsm.c: 217: ser=(gpsdata[j]);
	movf	(_j),w
	addlw	_gpsdata&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(??_sms1+0)+0
	movf	(??_sms1+0)+0,w
	movwf	(_ser)
	line	219
	
l2907:	
;women safety concept sensor abnormal gps on gsm.c: 219: TXREG=ser;
	movf	(_ser),w
	movwf	(25)	;volatile
	line	221
	
l2909:	
;women safety concept sensor abnormal gps on gsm.c: 221: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	214
	
l2911:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	
l2913:	
	movlw	high(01Ch)
	subwf	(_j+1),w
	movlw	low(01Ch)
	skipnz
	subwf	(_j),w
	skipc
	goto	u3011
	goto	u3010
u3011:
	goto	l644
u3010:
	
l645:	
	line	223
	
l2915:	
;women safety concept sensor abnormal gps on gsm.c: 222: }
;women safety concept sensor abnormal gps on gsm.c: 223: lcd_cmd(0xc0);
	movlw	(0C0h)
	fcall	_lcd_cmd
	line	225
	
l2917:	
;women safety concept sensor abnormal gps on gsm.c: 225: for(j=30;j<41;j++)
	movlw	low(01Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_j)
	movlw	high(01Eh)
	movwf	((_j))+1
	
l2919:	
	movlw	high(029h)
	subwf	(_j+1),w
	movlw	low(029h)
	skipnz
	subwf	(_j),w
	skipc
	goto	u3021
	goto	u3020
u3021:
	goto	l646
u3020:
	
l2921:	
	goto	l647
	line	226
	
l646:	
	line	228
	
l2923:	
;women safety concept sensor abnormal gps on gsm.c: 226: {
;women safety concept sensor abnormal gps on gsm.c: 228: ser=(gpsdata[j]);
	movf	(_j),w
	addlw	_gpsdata&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(??_sms1+0)+0
	movf	(??_sms1+0)+0,w
	movwf	(_ser)
	line	230
	
l2925:	
;women safety concept sensor abnormal gps on gsm.c: 230: TXREG=ser;
	movf	(_ser),w
	movwf	(25)	;volatile
	line	232
	
l2927:	
;women safety concept sensor abnormal gps on gsm.c: 232: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	225
	
l2929:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	
l2931:	
	movlw	high(029h)
	subwf	(_j+1),w
	movlw	low(029h)
	skipnz
	subwf	(_j),w
	skipc
	goto	u3031
	goto	u3030
u3031:
	goto	l646
u3030:
	
l647:	
	line	236
	
l2933:	
;women safety concept sensor abnormal gps on gsm.c: 233: }
;women safety concept sensor abnormal gps on gsm.c: 236: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	237
;women safety concept sensor abnormal gps on gsm.c: 237: txs(13);delay(60000);
	movlw	(0Dh)
	fcall	_txs
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	238
;women safety concept sensor abnormal gps on gsm.c: 238: txs(10);
	movlw	(0Ah)
	fcall	_txs
	line	239
;women safety concept sensor abnormal gps on gsm.c: 239: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	241
;women safety concept sensor abnormal gps on gsm.c: 241: txs(26);
	movlw	(01Ah)
	fcall	_txs
	line	242
;women safety concept sensor abnormal gps on gsm.c: 242: delay(50000);delay(50000);
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
	line	243
;women safety concept sensor abnormal gps on gsm.c: 243: delay(50000);delay(50000);
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
	line	244
	
l648:	
	return
	opt stack 0
GLOBAL	__end_of_sms1
	__end_of_sms1:
;; =============== function _sms1 ends ============

	signat	_sms1,88
	global	_lcd_init
psect	text510,local,class=CODE,delta=2
global __ptext510
__ptext510:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 83 in file "C:\Users\TECH\Desktop\madhu pic folder\gps&gsm\women safety concept.sensor abnormal gps on gsm\women safety concept sensor abnormal gps on gsm.c"
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
psect	text510
	file	"C:\Users\TECH\Desktop\madhu pic folder\gps&gsm\women safety concept.sensor abnormal gps on gsm\women safety concept sensor abnormal gps on gsm.c"
	line	83
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 7
; Regs used in _lcd_init: [wreg+status,2-btemp+0+pclath+cstack]
	line	84
	
l2889:	
;women safety concept sensor abnormal gps on gsm.c: 84: lcd_cmd(0x02);
	movlw	(02h)
	fcall	_lcd_cmd
	line	85
;women safety concept sensor abnormal gps on gsm.c: 85: lcd_cmd(0x2c);
	movlw	(02Ch)
	fcall	_lcd_cmd
	line	86
;women safety concept sensor abnormal gps on gsm.c: 86: lcd_cmd(0x06);
	movlw	(06h)
	fcall	_lcd_cmd
	line	87
;women safety concept sensor abnormal gps on gsm.c: 87: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	88
;women safety concept sensor abnormal gps on gsm.c: 88: lcd_cmd(0x0c);
	movlw	(0Ch)
	fcall	_lcd_cmd
	line	89
;women safety concept sensor abnormal gps on gsm.c: 89: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	90
	
l612:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_display
psect	text511,local,class=CODE,delta=2
global __ptext511
__ptext511:

;; *************** function _lcd_display *****************
;; Defined at:
;;		line 73 in file "C:\Users\TECH\Desktop\madhu pic folder\gps&gsm\women safety concept.sensor abnormal gps on gsm\women safety concept sensor abnormal gps on gsm.c"
;; Parameters:    Size  Location     Type
;;  m               1    wreg     PTR const unsigned char 
;;		 -> STR_4(12), STR_3(8), STR_1(4), 
;; Auto vars:     Size  Location     Type
;;  m               1    3[BANK0 ] PTR const unsigned char 
;;		 -> STR_4(12), STR_3(8), STR_1(4), 
;;  k               2    4[BANK0 ] int 
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
;;		_gps_send
;;		_main
;; This function uses a non-reentrant model
;;
psect	text511
	file	"C:\Users\TECH\Desktop\madhu pic folder\gps&gsm\women safety concept.sensor abnormal gps on gsm\women safety concept sensor abnormal gps on gsm.c"
	line	73
	global	__size_of_lcd_display
	__size_of_lcd_display	equ	__end_of_lcd_display-_lcd_display
	
_lcd_display:	
	opt	stack 6
; Regs used in _lcd_display: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
;lcd_display@m stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_display@m)
	line	74
	
l2881:	
;women safety concept sensor abnormal gps on gsm.c: 74: for(int k=0;m[k]!=0;k++)
	movlw	low(0)
	movwf	(lcd_display@k)
	movlw	high(0)
	movwf	((lcd_display@k))+1
	goto	l606
	line	75
	
l607:	
	line	76
	
l2883:	
;women safety concept sensor abnormal gps on gsm.c: 75: {
;women safety concept sensor abnormal gps on gsm.c: 76: lcd_data(m[k]);
	movf	(lcd_display@k),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_data
	line	74
	
l2885:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(lcd_display@k),f
	skipnc
	incf	(lcd_display@k+1),f
	movlw	high(01h)
	addwf	(lcd_display@k+1),f
	
l606:	
	
l2887:	
	movf	(lcd_display@k),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2991
	goto	u2990
u2991:
	goto	l607
u2990:
	
l608:	
	line	78
	
l609:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_display
	__end_of_lcd_display:
;; =============== function _lcd_display ends ============

	signat	_lcd_display,4216
	global	_serial
psect	text512,local,class=CODE,delta=2
global __ptext512
__ptext512:

;; *************** function _serial *****************
;; Defined at:
;;		line 246 in file "C:\Users\TECH\Desktop\madhu pic folder\gps&gsm\women safety concept.sensor abnormal gps on gsm\women safety concept sensor abnormal gps on gsm.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     PTR const unsigned char 
;;		 -> STR_6(10), STR_5(3), 
;; Auto vars:     Size  Location     Type
;;  a               1    1[BANK0 ] PTR const unsigned char 
;;		 -> STR_6(10), STR_5(3), 
;;  B               1    2[BANK0 ] unsigned char 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text512
	file	"C:\Users\TECH\Desktop\madhu pic folder\gps&gsm\women safety concept.sensor abnormal gps on gsm\women safety concept sensor abnormal gps on gsm.c"
	line	246
	global	__size_of_serial
	__size_of_serial	equ	__end_of_serial-_serial
	
_serial:	
	opt	stack 7
; Regs used in _serial: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;serial@a stored from wreg
	line	248
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(serial@a)
	
l2871:	
;women safety concept sensor abnormal gps on gsm.c: 247: unsigned char B;
;women safety concept sensor abnormal gps on gsm.c: 248: for(B=0;a[B]!=0;B++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(serial@B)
	goto	l651
	line	249
	
l652:	
	line	250
	
l2873:	
;women safety concept sensor abnormal gps on gsm.c: 249: {
;women safety concept sensor abnormal gps on gsm.c: 250: TXREG=a[B];
	movf	(serial@B),w
	addwf	(serial@a),w
	movwf	fsr0
	fcall	stringdir
	movwf	(25)	;volatile
	line	251
	
l2875:	
;women safety concept sensor abnormal gps on gsm.c: 251: delay(20000);
	movlw	low(04E20h)
	movwf	(?_delay)
	movlw	high(04E20h)
	movwf	((?_delay))+1
	fcall	_delay
	line	248
	
l2877:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_serial+0)+0
	movf	(??_serial+0)+0,w
	addwf	(serial@B),f
	
l651:	
	
l2879:	
	movf	(serial@B),w
	addwf	(serial@a),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2981
	goto	u2980
u2981:
	goto	l652
u2980:
	
l653:	
	line	254
	
l654:	
	return
	opt stack 0
GLOBAL	__end_of_serial
	__end_of_serial:
;; =============== function _serial ends ============

	signat	_serial,4216
	global	_lcd_data
psect	text513,local,class=CODE,delta=2
global __ptext513
__ptext513:

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 54 in file "C:\Users\TECH\Desktop\madhu pic folder\gps&gsm\women safety concept.sensor abnormal gps on gsm\women safety concept sensor abnormal gps on gsm.c"
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
;;		_gps_send
;;		_main
;; This function uses a non-reentrant model
;;
psect	text513
	file	"C:\Users\TECH\Desktop\madhu pic folder\gps&gsm\women safety concept.sensor abnormal gps on gsm\women safety concept sensor abnormal gps on gsm.c"
	line	54
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 6
; Regs used in _lcd_data: [wreg+status,2-btemp+0+pclath+cstack]
;lcd_data@dat stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_data@dat)
	line	55
	
l2845:	
;women safety concept sensor abnormal gps on gsm.c: 55: PORTD=(dat&0xf0);
	movf	(lcd_data@dat),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	56
	
l2847:	
;women safety concept sensor abnormal gps on gsm.c: 56: RD1=1;
	bsf	(65/8),(65)&7
	line	57
	
l2849:	
;women safety concept sensor abnormal gps on gsm.c: 57: RD2=0;
	bcf	(66/8),(66)&7
	line	58
	
l2851:	
;women safety concept sensor abnormal gps on gsm.c: 58: RD3=1;
	bsf	(67/8),(67)&7
	line	59
	
l2853:	
;women safety concept sensor abnormal gps on gsm.c: 59: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	60
	
l2855:	
;women safety concept sensor abnormal gps on gsm.c: 60: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	61
	
l2857:	
;women safety concept sensor abnormal gps on gsm.c: 61: temp=dat<<4;
	movf	(lcd_data@dat),w
	movwf	(??_lcd_data+0)+0
	clrf	(??_lcd_data+0)+0+1
	movlw	04h
	movwf	btemp+0
u2975:
	clrc
	rlf	(??_lcd_data+0)+0,f
	rlf	(??_lcd_data+0)+1,f
	decfsz	btemp+0,f
	goto	u2975
	movf	0+(??_lcd_data+0)+0,w
	movwf	(_temp)
	movf	1+(??_lcd_data+0)+0,w
	movwf	(_temp+1)
	line	62
	
l2859:	
;women safety concept sensor abnormal gps on gsm.c: 62: PORTD=(temp&0xf0);
	movf	(_temp),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	63
	
l2861:	
;women safety concept sensor abnormal gps on gsm.c: 63: RD1=1;
	bsf	(65/8),(65)&7
	line	64
	
l2863:	
;women safety concept sensor abnormal gps on gsm.c: 64: RD2=0;
	bcf	(66/8),(66)&7
	line	65
	
l2865:	
;women safety concept sensor abnormal gps on gsm.c: 65: RD3=1;
	bsf	(67/8),(67)&7
	line	66
	
l2867:	
;women safety concept sensor abnormal gps on gsm.c: 66: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	67
	
l2869:	
;women safety concept sensor abnormal gps on gsm.c: 67: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	68
	
l603:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
;; =============== function _lcd_data ends ============

	signat	_lcd_data,4216
	global	_lcd_cmd
psect	text514,local,class=CODE,delta=2
global __ptext514
__ptext514:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 35 in file "C:\Users\TECH\Desktop\madhu pic folder\gps&gsm\women safety concept.sensor abnormal gps on gsm\women safety concept sensor abnormal gps on gsm.c"
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
;;		_gps_send
;;		_sms1
;;		_main
;; This function uses a non-reentrant model
;;
psect	text514
	file	"C:\Users\TECH\Desktop\madhu pic folder\gps&gsm\women safety concept.sensor abnormal gps on gsm\women safety concept sensor abnormal gps on gsm.c"
	line	35
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 6
; Regs used in _lcd_cmd: [wreg+status,2-btemp+0+pclath+cstack]
;lcd_cmd@com stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_cmd@com)
	line	36
	
l2819:	
;women safety concept sensor abnormal gps on gsm.c: 36: PORTD=(com&0xf0);
	movf	(lcd_cmd@com),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	37
	
l2821:	
;women safety concept sensor abnormal gps on gsm.c: 37: RD1=0;
	bcf	(65/8),(65)&7
	line	38
	
l2823:	
;women safety concept sensor abnormal gps on gsm.c: 38: RD2=0;
	bcf	(66/8),(66)&7
	line	39
	
l2825:	
;women safety concept sensor abnormal gps on gsm.c: 39: RD3=1;
	bsf	(67/8),(67)&7
	line	40
	
l2827:	
;women safety concept sensor abnormal gps on gsm.c: 40: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	41
	
l2829:	
;women safety concept sensor abnormal gps on gsm.c: 41: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	42
	
l2831:	
;women safety concept sensor abnormal gps on gsm.c: 42: temp=com<<4;
	movf	(lcd_cmd@com),w
	movwf	(??_lcd_cmd+0)+0
	clrf	(??_lcd_cmd+0)+0+1
	movlw	04h
	movwf	btemp+0
u2965:
	clrc
	rlf	(??_lcd_cmd+0)+0,f
	rlf	(??_lcd_cmd+0)+1,f
	decfsz	btemp+0,f
	goto	u2965
	movf	0+(??_lcd_cmd+0)+0,w
	movwf	(_temp)
	movf	1+(??_lcd_cmd+0)+0,w
	movwf	(_temp+1)
	line	43
	
l2833:	
;women safety concept sensor abnormal gps on gsm.c: 43: PORTD=(temp&0xf0);
	movf	(_temp),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	44
	
l2835:	
;women safety concept sensor abnormal gps on gsm.c: 44: RD1=0;
	bcf	(65/8),(65)&7
	line	45
	
l2837:	
;women safety concept sensor abnormal gps on gsm.c: 45: RD2=0;
	bcf	(66/8),(66)&7
	line	46
	
l2839:	
;women safety concept sensor abnormal gps on gsm.c: 46: RD3=1;
	bsf	(67/8),(67)&7
	line	47
	
l2841:	
;women safety concept sensor abnormal gps on gsm.c: 47: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	48
	
l2843:	
;women safety concept sensor abnormal gps on gsm.c: 48: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	49
	
l600:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,4216
	global	___lwmod
psect	text515,local,class=CODE,delta=2
global __ptext515
__ptext515:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       4       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text515
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 7
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l2797:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2901
	goto	u2900
u2901:
	goto	l689
u2900:
	line	9
	
l2799:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l690
	
l691:	
	line	11
	
l2801:	
	movlw	01h
	
u2915:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2915
	line	12
	
l2803:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	line	13
	
l690:	
	line	10
	
l2805:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2921
	goto	u2920
u2921:
	goto	l691
u2920:
	
l692:	
	line	14
	
l693:	
	line	15
	
l2807:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2935
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2935:
	skipc
	goto	u2931
	goto	u2930
u2931:
	goto	l694
u2930:
	line	16
	
l2809:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	
l694:	
	line	17
	
l2811:	
	movlw	01h
	
u2945:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2945
	line	18
	
l2813:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2951
	goto	u2950
u2951:
	goto	l693
u2950:
	
l695:	
	line	19
	
l689:	
	line	20
	
l2815:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	
l2817:	
	line	21
	
l696:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text516,local,class=CODE,delta=2
global __ptext516
__ptext516:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[BANK0 ] unsigned int 
;;  counter         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       7       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text516
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 7
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l2773:	
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lwdiv@quotient)
	movlw	high(0)
	movwf	((___lwdiv@quotient))+1
	line	10
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2831
	goto	u2830
u2831:
	goto	l679
u2830:
	line	11
	
l2775:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l680
	
l681:	
	line	13
	
l2777:	
	movlw	01h
	
u2845:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2845
	line	14
	
l2779:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	line	15
	
l680:	
	line	12
	
l2781:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2851
	goto	u2850
u2851:
	goto	l681
u2850:
	
l682:	
	line	16
	
l683:	
	line	17
	
l2783:	
	movlw	01h
	
u2865:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2865
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2875
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2875:
	skipc
	goto	u2871
	goto	u2870
u2871:
	goto	l684
u2870:
	line	19
	
l2785:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l2787:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	21
	
l684:	
	line	22
	
l2789:	
	movlw	01h
	
u2885:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2885
	line	23
	
l2791:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2891
	goto	u2890
u2891:
	goto	l683
u2890:
	
l685:	
	line	24
	
l679:	
	line	25
	
l2793:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	
l2795:	
	line	26
	
l686:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_txs
psect	text517,local,class=CODE,delta=2
global __ptext517
__ptext517:

;; *************** function _txs *****************
;; Defined at:
;;		line 186 in file "C:\Users\TECH\Desktop\madhu pic folder\gps&gsm\women safety concept.sensor abnormal gps on gsm\women safety concept sensor abnormal gps on gsm.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1    5[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sms1
;;		_main
;; This function uses a non-reentrant model
;;
psect	text517
	file	"C:\Users\TECH\Desktop\madhu pic folder\gps&gsm\women safety concept.sensor abnormal gps on gsm\women safety concept sensor abnormal gps on gsm.c"
	line	186
	global	__size_of_txs
	__size_of_txs	equ	__end_of_txs-_txs
	
_txs:	
	opt	stack 6
; Regs used in _txs: [wreg]
;txs@val stored from wreg
	movwf	(txs@val)
	line	187
	
l2357:	
;women safety concept sensor abnormal gps on gsm.c: 187: while(!TXIF)
	goto	l638
	
l639:	
	line	189
;women safety concept sensor abnormal gps on gsm.c: 188: {
	
l638:	
	line	187
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u2491
	goto	u2490
u2491:
	goto	l639
u2490:
	
l640:	
	line	190
;women safety concept sensor abnormal gps on gsm.c: 189: }
;women safety concept sensor abnormal gps on gsm.c: 190: OERR=0;
	bcf	(193/8),(193)&7
	line	191
	
l2359:	
;women safety concept sensor abnormal gps on gsm.c: 191: TXREG=val;
	movf	(txs@val),w
	movwf	(25)	;volatile
	line	192
	
l641:	
	return
	opt stack 0
GLOBAL	__end_of_txs
	__end_of_txs:
;; =============== function _txs ends ============

	signat	_txs,4216
	global	_gsm_command
psect	text518,local,class=CODE,delta=2
global __ptext518
__ptext518:

;; *************** function _gsm_command *****************
;; Defined at:
;;		line 173 in file "C:\Users\TECH\Desktop\madhu pic folder\gps&gsm\women safety concept.sensor abnormal gps on gsm\women safety concept sensor abnormal gps on gsm.c"
;; Parameters:    Size  Location     Type
;;  da              1    wreg     PTR const unsigned char 
;;		 -> STR_2(13), 
;; Auto vars:     Size  Location     Type
;;  da              1    0[BANK0 ] PTR const unsigned char 
;;		 -> STR_2(13), 
;;  s               2    1[BANK0 ] unsigned int 
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
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    2
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sms1
;; This function uses a non-reentrant model
;;
psect	text518
	file	"C:\Users\TECH\Desktop\madhu pic folder\gps&gsm\women safety concept.sensor abnormal gps on gsm\women safety concept sensor abnormal gps on gsm.c"
	line	173
	global	__size_of_gsm_command
	__size_of_gsm_command	equ	__end_of_gsm_command-_gsm_command
	
_gsm_command:	
	opt	stack 5
; Regs used in _gsm_command: [wreg-fsr0h+status,2+status,0+pclath]
;gsm_command@da stored from wreg
	line	175
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(gsm_command@da)
	
l2765:	
;women safety concept sensor abnormal gps on gsm.c: 174: unsigned int s;
;women safety concept sensor abnormal gps on gsm.c: 175: for(s=0;da[s]!=0;s++)
	movlw	low(0)
	movwf	(gsm_command@s)
	movlw	high(0)
	movwf	((gsm_command@s))+1
	goto	l629
	line	176
	
l630:	
	line	177
;women safety concept sensor abnormal gps on gsm.c: 176: {
;women safety concept sensor abnormal gps on gsm.c: 177: while(!TXIF)
	goto	l631
	
l632:	
	line	179
;women safety concept sensor abnormal gps on gsm.c: 178: {
	
l631:	
	line	177
	btfss	(100/8),(100)&7
	goto	u2811
	goto	u2810
u2811:
	goto	l632
u2810:
	
l633:	
	line	180
;women safety concept sensor abnormal gps on gsm.c: 179: }
;women safety concept sensor abnormal gps on gsm.c: 180: OERR=0;
	bcf	(193/8),(193)&7
	line	181
	
l2767:	
;women safety concept sensor abnormal gps on gsm.c: 181: TXREG=da[s];
	movf	(gsm_command@s),w
	addwf	(gsm_command@da),w
	movwf	fsr0
	fcall	stringdir
	movwf	(25)	;volatile
	line	175
	
l2769:	
	movlw	low(01h)
	addwf	(gsm_command@s),f
	skipnc
	incf	(gsm_command@s+1),f
	movlw	high(01h)
	addwf	(gsm_command@s+1),f
	
l629:	
	
l2771:	
	movf	(gsm_command@s),w
	addwf	(gsm_command@da),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2821
	goto	u2820
u2821:
	goto	l630
u2820:
	
l634:	
	line	183
	
l635:	
	return
	opt stack 0
GLOBAL	__end_of_gsm_command
	__end_of_gsm_command:
;; =============== function _gsm_command ends ============

	signat	_gsm_command,4216
	global	_gps_init
psect	text519,local,class=CODE,delta=2
global __ptext519
__ptext519:

;; *************** function _gps_init *****************
;; Defined at:
;;		line 19 in file "C:\Users\TECH\Desktop\madhu pic folder\gps&gsm\women safety concept.sensor abnormal gps on gsm\women safety concept sensor abnormal gps on gsm.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text519
	file	"C:\Users\TECH\Desktop\madhu pic folder\gps&gsm\women safety concept.sensor abnormal gps on gsm\women safety concept sensor abnormal gps on gsm.c"
	line	19
	global	__size_of_gps_init
	__size_of_gps_init	equ	__end_of_gps_init-_gps_init
	
_gps_init:	
	opt	stack 7
; Regs used in _gps_init: [wreg]
	line	20
	
l2321:	
;women safety concept sensor abnormal gps on gsm.c: 20: TXSTA=0X24;
	movlw	(024h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	21
;women safety concept sensor abnormal gps on gsm.c: 21: RCSTA=0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	22
;women safety concept sensor abnormal gps on gsm.c: 22: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	23
	
l2323:	
;women safety concept sensor abnormal gps on gsm.c: 23: BRGH=1;
	bsf	(1218/8)^080h,(1218)&7
	line	24
	
l2325:	
;women safety concept sensor abnormal gps on gsm.c: 24: GIE=1;
	bsf	(95/8),(95)&7
	line	25
	
l2327:	
;women safety concept sensor abnormal gps on gsm.c: 25: PEIE=1;
	bsf	(94/8),(94)&7
	line	26
	
l2329:	
;women safety concept sensor abnormal gps on gsm.c: 26: RCIE=1;
	bsf	(1125/8)^080h,(1125)&7
	line	28
	
l597:	
	return
	opt stack 0
GLOBAL	__end_of_gps_init
	__end_of_gps_init:
;; =============== function _gps_init ends ============

	signat	_gps_init,88
	global	_delay
psect	text520,local,class=CODE,delta=2
global __ptext520
__ptext520:

;; *************** function _delay *****************
;; Defined at:
;;		line 12 in file "C:\Users\TECH\Desktop\madhu pic folder\gps&gsm\women safety concept.sensor abnormal gps on gsm\women safety concept sensor abnormal gps on gsm.c"
;; Parameters:    Size  Location     Type
;;  x               2    5[COMMON] unsigned int 
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
;;		_gps_send
;;		_sms1
;;		_serial
;;		_main
;; This function uses a non-reentrant model
;;
psect	text520
	file	"C:\Users\TECH\Desktop\madhu pic folder\gps&gsm\women safety concept.sensor abnormal gps on gsm\women safety concept sensor abnormal gps on gsm.c"
	line	12
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	13
	
l2317:	
;women safety concept sensor abnormal gps on gsm.c: 13: while (x--);
	goto	l591
	
l592:	
	
l591:	
	
l2319:	
	movlw	low(01h)
	subwf	(delay@x),f
	movlw	high(01h)
	skipc
	decf	(delay@x+1),f
	subwf	(delay@x+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@x+1)),w
	skipz
	goto	u2415
	movlw	low(0FFFFh)
	xorwf	((delay@x)),w
u2415:

	skipz
	goto	u2411
	goto	u2410
u2411:
	goto	l592
u2410:
	
l593:	
	line	14
	
l594:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_rcx
psect	text521,local,class=CODE,delta=2
global __ptext521
__ptext521:

;; *************** function _rcx *****************
;; Defined at:
;;		line 95 in file "C:\Users\TECH\Desktop\madhu pic folder\gps&gsm\women safety concept.sensor abnormal gps on gsm\women safety concept sensor abnormal gps on gsm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text521
	file	"C:\Users\TECH\Desktop\madhu pic folder\gps&gsm\women safety concept.sensor abnormal gps on gsm\women safety concept sensor abnormal gps on gsm.c"
	line	95
	global	__size_of_rcx
	__size_of_rcx	equ	__end_of_rcx-_rcx
	
_rcx:	
	opt	stack 3
; Regs used in _rcx: [wreg-fsr0h+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	movf	status,w
	movwf	(??_rcx+1)
	movf	fsr0,w
	movwf	(??_rcx+2)
	movf	pclath,w
	movwf	(??_rcx+3)
	movf	btemp+1,w
	movwf	(??_rcx+4)
	ljmp	_rcx
psect	text521
	line	97
	
i1l2331:	
;women safety concept sensor abnormal gps on gsm.c: 97: if(RCIF==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u242_21
	goto	u242_20
u242_21:
	goto	i1l615
u242_20:
	line	100
	
i1l2333:	
;women safety concept sensor abnormal gps on gsm.c: 98: {
;women safety concept sensor abnormal gps on gsm.c: 100: RCIF=0;
	bcf	(101/8),(101)&7
	line	101
	
i1l2335:	
;women safety concept sensor abnormal gps on gsm.c: 101: ser=RCREG;
	movf	(26),w	;volatile
	movwf	(??_rcx+0)+0
	movf	(??_rcx+0)+0,w
	movwf	(_ser)
	line	103
;women safety concept sensor abnormal gps on gsm.c: 103: if((ser==0x52)&&(st==0x01))
	movf	(_ser),w
	xorlw	052h
	skipz
	goto	u243_21
	goto	u243_20
u243_21:
	goto	i1l616
u243_20:
	
i1l2337:	
	movf	(_st),w
	xorlw	01h
	skipz
	goto	u244_21
	goto	u244_20
u244_21:
	goto	i1l616
u244_20:
	line	105
	
i1l2339:	
;women safety concept sensor abnormal gps on gsm.c: 104: {
;women safety concept sensor abnormal gps on gsm.c: 105: data_cap=0x01;
	clrf	(_data_cap)
	bsf	status,0
	rlf	(_data_cap),f
	line	106
	
i1l2341:	
;women safety concept sensor abnormal gps on gsm.c: 106: st=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_st)
	line	107
	
i1l616:	
	line	108
;women safety concept sensor abnormal gps on gsm.c: 107: }
;women safety concept sensor abnormal gps on gsm.c: 108: if((data_cap==0x01)&&(i<45))
	movf	(_data_cap),w
	xorlw	01h
	skipz
	goto	u245_21
	goto	u245_20
u245_21:
	goto	i1l617
u245_20:
	
i1l2343:	
	movlw	high(02Dh)
	subwf	(_i+1),w
	movlw	low(02Dh)
	skipnz
	subwf	(_i),w
	skipnc
	goto	u246_21
	goto	u246_20
u246_21:
	goto	i1l617
u246_20:
	line	110
	
i1l2345:	
;women safety concept sensor abnormal gps on gsm.c: 109: {
;women safety concept sensor abnormal gps on gsm.c: 110: gpsdata[i]=ser;
	movf	(_ser),w
	movwf	(??_rcx+0)+0
	movf	(_i),w
	addlw	_gpsdata&0ffh
	movwf	fsr0
	movf	(??_rcx+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	111
	
i1l2347:	
;women safety concept sensor abnormal gps on gsm.c: 111: i=i+1;
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	line	112
	
i1l617:	
	line	113
	
i1l615:	
	line	114
	
i1l618:	
	movf	(??_rcx+4),w
	movwf	btemp+1
	movf	(??_rcx+3),w
	movwf	pclath
	movf	(??_rcx+2),w
	movwf	fsr0
	movf	(??_rcx+1),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_rcx
	__end_of_rcx:
;; =============== function _rcx ends ============

	signat	_rcx,88
psect	text522,local,class=CODE,delta=2
global __ptext522
__ptext522:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
