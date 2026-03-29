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
# 2 "D:\madhu pic folder\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "D:\madhu pic folder\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
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
	FNCALL	_lcd_init,_lcd_cmd
	FNCALL	_lcd_display,_lcd_data
	FNCALL	_serial,_delay
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
psect	text262,local,class=CODE,delta=2
global __ptext262
__ptext262:
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
	
STR_5:	
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
	
STR_4:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	0
psect	strings
STR_3	equ	STR_1+0
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
;;Data sizes: Strings 37, constant 0, data 0, bss 74, persistent 0 stack 0
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
;;		 -> STR_5(CODE[10]), STR_4(CODE[3]), 
;;
;; gsm_command@da	PTR const unsigned char  size(1) Largest target is 16
;;		 -> STR_1(CODE[16]), 
;;
;; lcd_display@m	PTR const unsigned char  size(1) Largest target is 16
;;		 -> STR_3(CODE[16]), STR_2(CODE[8]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_lcd_display
;;   _main->___lwdiv
;;   _lcd_init->_lcd_cmd
;;   _lcd_display->_lcd_data
;;   _serial->_delay
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
;; (0) _main                                                 2     2      0     965
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
;;		line 186 in file "D:\madhu pic folder\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
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
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\madhu pic folder\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
	line	186
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
	line	187
	
l2979:	
;multi sensor on gsm.c: 187: ADCON1=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	188
;multi sensor on gsm.c: 188: ADCON0=0X40;
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	190
	
l2981:	
;multi sensor on gsm.c: 190: TRISD=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	191
	
l2983:	
;multi sensor on gsm.c: 191: PORTD=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	193
;multi sensor on gsm.c: 193: TRISA=0x0F;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	194
	
l2985:	
;multi sensor on gsm.c: 194: PORTA=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	196
	
l2987:	
;multi sensor on gsm.c: 196: TRISC=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	197
	
l2989:	
;multi sensor on gsm.c: 197: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	199
	
l2991:	
;multi sensor on gsm.c: 199: TRISB=0X03;
	movlw	(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	200
;multi sensor on gsm.c: 200: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	202
	
l2993:	
;multi sensor on gsm.c: 202: lcd_init();
	fcall	_lcd_init
	line	203
	
l2995:	
;multi sensor on gsm.c: 203: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	205
	
l2997:	
;multi sensor on gsm.c: 205: TXSTA=0x24;
	movlw	(024h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	206
	
l2999:	
;multi sensor on gsm.c: 206: RCSTA=0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	207
	
l3001:	
;multi sensor on gsm.c: 207: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	209
	
l3003:	
;multi sensor on gsm.c: 209: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	210
	
l3005:	
;multi sensor on gsm.c: 210: PEIE=1;
	bsf	(94/8),(94)&7
	line	211
	
l3007:	
;multi sensor on gsm.c: 211: GIE=1;
	bsf	(95/8),(95)&7
	line	213
	
l3009:	
;multi sensor on gsm.c: 213: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	214
	
l3011:	
;multi sensor on gsm.c: 214: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	216
	
l3013:	
;multi sensor on gsm.c: 216: lcd_display("WELCOME");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_lcd_display
	line	217
	
l3015:	
;multi sensor on gsm.c: 217: delay(50000);delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3017:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	218
	
l3019:	
;multi sensor on gsm.c: 218: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	219
;multi sensor on gsm.c: 219: while(1)
	
l682:	
	line	221
	
l3021:	
;multi sensor on gsm.c: 220: {
;multi sensor on gsm.c: 221: CHS2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(253/8),(253)&7
	line	222
	
l3023:	
;multi sensor on gsm.c: 222: CHS1=0;
	bcf	(252/8),(252)&7
	line	223
	
l3025:	
;multi sensor on gsm.c: 223: CHS0=0;
	bcf	(251/8),(251)&7
	line	224
	
l3027:	
;multi sensor on gsm.c: 224: ADON=1;
	bsf	(248/8),(248)&7
	line	225
	
l3029:	
;multi sensor on gsm.c: 225: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	226
	
l3031:	
;multi sensor on gsm.c: 226: ADCON0=(ADCON0|0X04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	iorlw	04h
	movwf	(31)	;volatile
	line	227
	
l3033:	
;multi sensor on gsm.c: 227: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	228
	
l3035:	
;multi sensor on gsm.c: 228: temp1=ADRESH<<8;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movlw	08h
	movwf	btemp+0
u2595:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+0,f
	goto	u2595
	movf	0+(??_main+0)+0,w
	movwf	(_temp1)
	movf	1+(??_main+0)+0,w
	movwf	(_temp1+1)
	line	229
	
l3037:	
;multi sensor on gsm.c: 229: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	230
	
l3039:	
;multi sensor on gsm.c: 230: temp1=temp1+ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	addwf	(_temp1),w
	movwf	(_temp1)
	movf	(_temp1+1),w
	skipnc
	incf	(_temp1+1),w
	movwf	((_temp1))+1
	line	231
	
l3041:	
;multi sensor on gsm.c: 231: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	232
	
l3043:	
;multi sensor on gsm.c: 232: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	233
	
l3045:	
;multi sensor on gsm.c: 233: a=temp1/1000;
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

	line	234
	
l3047:	
;multi sensor on gsm.c: 234: b=temp1%1000;
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

	line	235
	
l3049:	
;multi sensor on gsm.c: 235: c=b/100;
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

	line	236
	
l3051:	
;multi sensor on gsm.c: 236: d=b%100;
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

	line	237
	
l3053:	
;multi sensor on gsm.c: 237: e=d/10;
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

	line	238
	
l3055:	
;multi sensor on gsm.c: 238: f=d%10;
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

	line	240
	
l3057:	
;multi sensor on gsm.c: 240: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	241
	
l3059:	
;multi sensor on gsm.c: 241: lcd_data(a+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a),w
	addlw	030h
	fcall	_lcd_data
	line	242
	
l3061:	
;multi sensor on gsm.c: 242: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	243
	
l3063:	
;multi sensor on gsm.c: 243: lcd_data(c+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c),w
	addlw	030h
	fcall	_lcd_data
	line	244
	
l3065:	
;multi sensor on gsm.c: 244: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	245
	
l3067:	
;multi sensor on gsm.c: 245: lcd_data(e+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_e),w
	addlw	030h
	fcall	_lcd_data
	line	246
	
l3069:	
;multi sensor on gsm.c: 246: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	247
	
l3071:	
;multi sensor on gsm.c: 247: lcd_data(f+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_f),w
	addlw	030h
	fcall	_lcd_data
	line	248
	
l3073:	
;multi sensor on gsm.c: 248: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	251
	
l3075:	
;multi sensor on gsm.c: 251: CHS2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(253/8),(253)&7
	line	252
	
l3077:	
;multi sensor on gsm.c: 252: CHS1=0;
	bcf	(252/8),(252)&7
	line	253
	
l3079:	
;multi sensor on gsm.c: 253: CHS0=1;
	bsf	(251/8),(251)&7
	line	254
	
l3081:	
;multi sensor on gsm.c: 254: ADON=1;
	bsf	(248/8),(248)&7
	line	255
	
l3083:	
;multi sensor on gsm.c: 255: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	256
	
l3085:	
;multi sensor on gsm.c: 256: ADCON0=(ADCON0|0X04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	iorlw	04h
	movwf	(31)	;volatile
	line	257
	
l3087:	
;multi sensor on gsm.c: 257: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	258
	
l3089:	
;multi sensor on gsm.c: 258: temp2=ADRESH<<8;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movlw	08h
	movwf	btemp+0
u2605:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+0,f
	goto	u2605
	movf	0+(??_main+0)+0,w
	movwf	(_temp2)
	movf	1+(??_main+0)+0,w
	movwf	(_temp2+1)
	line	259
	
l3091:	
;multi sensor on gsm.c: 259: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	260
	
l3093:	
;multi sensor on gsm.c: 260: temp2=temp2+ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	addwf	(_temp2),w
	movwf	(_temp2)
	movf	(_temp2+1),w
	skipnc
	incf	(_temp2+1),w
	movwf	((_temp2))+1
	line	261
	
l3095:	
;multi sensor on gsm.c: 261: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	262
	
l3097:	
;multi sensor on gsm.c: 262: a1=temp2/1000;
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

	line	263
	
l3099:	
;multi sensor on gsm.c: 263: b1=temp2%1000;
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

	line	264
	
l3101:	
;multi sensor on gsm.c: 264: c1=b1/100;
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

	line	265
	
l3103:	
;multi sensor on gsm.c: 265: d1=b1%100;
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

	line	266
	
l3105:	
;multi sensor on gsm.c: 266: e1=d1/10;
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

	line	267
	
l3107:	
;multi sensor on gsm.c: 267: f1=d1%10;
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

	line	268
	
l3109:	
;multi sensor on gsm.c: 268: lcd_cmd(0x8A);
	movlw	(08Ah)
	fcall	_lcd_cmd
	line	269
	
l3111:	
;multi sensor on gsm.c: 269: lcd_data(a1+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a1),w
	addlw	030h
	fcall	_lcd_data
	line	270
	
l3113:	
;multi sensor on gsm.c: 270: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	271
	
l3115:	
;multi sensor on gsm.c: 271: lcd_data(c1+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c1),w
	addlw	030h
	fcall	_lcd_data
	line	272
	
l3117:	
;multi sensor on gsm.c: 272: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	273
	
l3119:	
;multi sensor on gsm.c: 273: lcd_data(e1+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_e1),w
	addlw	030h
	fcall	_lcd_data
	line	274
	
l3121:	
;multi sensor on gsm.c: 274: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	275
	
l3123:	
;multi sensor on gsm.c: 275: lcd_data(f1+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_f1),w
	addlw	030h
	fcall	_lcd_data
	line	276
	
l3125:	
;multi sensor on gsm.c: 276: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	279
	
l3127:	
;multi sensor on gsm.c: 279: CHS2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(253/8),(253)&7
	line	280
	
l3129:	
;multi sensor on gsm.c: 280: CHS1=1;
	bsf	(252/8),(252)&7
	line	281
	
l3131:	
;multi sensor on gsm.c: 281: CHS0=0;
	bcf	(251/8),(251)&7
	line	282
	
l3133:	
;multi sensor on gsm.c: 282: ADON=1;
	bsf	(248/8),(248)&7
	line	283
	
l3135:	
;multi sensor on gsm.c: 283: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	284
	
l3137:	
;multi sensor on gsm.c: 284: ADCON0=(ADCON0|0X04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	iorlw	04h
	movwf	(31)	;volatile
	line	285
	
l3139:	
;multi sensor on gsm.c: 285: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	286
	
l3141:	
;multi sensor on gsm.c: 286: temp3=ADRESH<<8;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movlw	08h
	movwf	btemp+0
u2615:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+0,f
	goto	u2615
	movf	0+(??_main+0)+0,w
	movwf	(_temp3)
	movf	1+(??_main+0)+0,w
	movwf	(_temp3+1)
	line	287
	
l3143:	
;multi sensor on gsm.c: 287: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	288
	
l3145:	
;multi sensor on gsm.c: 288: temp3=temp3+ADRESL;
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
	line	289
	
l3147:	
;multi sensor on gsm.c: 289: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	290
	
l3149:	
;multi sensor on gsm.c: 290: a2=temp3/1000;
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

	line	291
	
l3151:	
;multi sensor on gsm.c: 291: b2=temp3%1000;
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

	line	292
	
l3153:	
;multi sensor on gsm.c: 292: c2=b2/100;
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

	line	293
	
l3155:	
;multi sensor on gsm.c: 293: d2=b2%100;
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

	line	294
	
l3157:	
;multi sensor on gsm.c: 294: e2=d2/10;
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

	line	295
	
l3159:	
;multi sensor on gsm.c: 295: f2=d2%10;
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

	line	296
	
l3161:	
;multi sensor on gsm.c: 296: lcd_cmd(0xC0);
	movlw	(0C0h)
	fcall	_lcd_cmd
	line	297
	
l3163:	
;multi sensor on gsm.c: 297: lcd_data(a2+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a2),w
	addlw	030h
	fcall	_lcd_data
	line	298
	
l3165:	
;multi sensor on gsm.c: 298: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	299
	
l3167:	
;multi sensor on gsm.c: 299: lcd_data(c2+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c2),w
	addlw	030h
	fcall	_lcd_data
	line	300
	
l3169:	
;multi sensor on gsm.c: 300: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	301
	
l3171:	
;multi sensor on gsm.c: 301: lcd_data(e2+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_e2),w
	addlw	030h
	fcall	_lcd_data
	line	302
	
l3173:	
;multi sensor on gsm.c: 302: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	303
	
l3175:	
;multi sensor on gsm.c: 303: lcd_data(f2+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_f2),w
	addlw	030h
	fcall	_lcd_data
	line	304
	
l3177:	
;multi sensor on gsm.c: 304: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	306
	
l3179:	
;multi sensor on gsm.c: 306: CHS2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(253/8),(253)&7
	line	307
	
l3181:	
;multi sensor on gsm.c: 307: CHS1=1;
	bsf	(252/8),(252)&7
	line	308
	
l3183:	
;multi sensor on gsm.c: 308: CHS0=1;
	bsf	(251/8),(251)&7
	line	309
	
l3185:	
;multi sensor on gsm.c: 309: ADON=1;
	bsf	(248/8),(248)&7
	line	310
	
l3187:	
;multi sensor on gsm.c: 310: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	311
	
l3189:	
;multi sensor on gsm.c: 311: ADCON0=(ADCON0|0X04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	iorlw	04h
	movwf	(31)	;volatile
	line	312
	
l3191:	
;multi sensor on gsm.c: 312: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	313
	
l3193:	
;multi sensor on gsm.c: 313: temp4=ADRESH<<8;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movlw	08h
	movwf	btemp+0
u2625:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+0,f
	goto	u2625
	movf	0+(??_main+0)+0,w
	movwf	(_temp4)
	movf	1+(??_main+0)+0,w
	movwf	(_temp4+1)
	line	314
	
l3195:	
;multi sensor on gsm.c: 314: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	315
	
l3197:	
;multi sensor on gsm.c: 315: temp4=temp4+ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_temp4),w
	movwf	(_temp4)
	movf	(_temp4+1),w
	skipnc
	incf	(_temp4+1),w
	movwf	((_temp4))+1
	line	316
	
l3199:	
;multi sensor on gsm.c: 316: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	317
	
l3201:	
;multi sensor on gsm.c: 317: a3=temp4/1000;
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_temp4+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_temp4),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_a3+1)
	addwf	(_a3+1)
	movf	(0+(?___lwdiv)),w
	clrf	(_a3)
	addwf	(_a3)

	line	318
	
l3203:	
;multi sensor on gsm.c: 318: b3=temp4%1000;
	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	movf	(_temp4+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_temp4),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b3+1)
	addwf	(_b3+1)
	movf	(0+(?___lwmod)),w
	clrf	(_b3)
	addwf	(_b3)

	line	319
	
l3205:	
;multi sensor on gsm.c: 319: c3=b3/100;
	movlw	low(064h)
	movwf	(?___lwdiv)
	movlw	high(064h)
	movwf	((?___lwdiv))+1
	movf	(_b3+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_b3),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_c3+1)
	addwf	(_c3+1)
	movf	(0+(?___lwdiv)),w
	clrf	(_c3)
	addwf	(_c3)

	line	320
	
l3207:	
;multi sensor on gsm.c: 320: d3=b3%100;
	movlw	low(064h)
	movwf	(?___lwmod)
	movlw	high(064h)
	movwf	((?___lwmod))+1
	movf	(_b3+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_b3),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_d3+1)
	addwf	(_d3+1)
	movf	(0+(?___lwmod)),w
	clrf	(_d3)
	addwf	(_d3)

	line	321
	
l3209:	
;multi sensor on gsm.c: 321: e3=d3/10;
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	(_d3+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_d3),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_e3+1)
	addwf	(_e3+1)
	movf	(0+(?___lwdiv)),w
	clrf	(_e3)
	addwf	(_e3)

	line	322
	
l3211:	
;multi sensor on gsm.c: 322: f3=d3%10;
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movf	(_d3+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_d3),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_f3+1)
	addwf	(_f3+1)
	movf	(0+(?___lwmod)),w
	clrf	(_f3)
	addwf	(_f3)

	line	323
	
l3213:	
;multi sensor on gsm.c: 323: lcd_cmd(0xCA);
	movlw	(0CAh)
	fcall	_lcd_cmd
	line	324
	
l3215:	
;multi sensor on gsm.c: 324: lcd_data(a3+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a3),w
	addlw	030h
	fcall	_lcd_data
	line	325
	
l3217:	
;multi sensor on gsm.c: 325: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	326
	
l3219:	
;multi sensor on gsm.c: 326: lcd_data(c3+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c3),w
	addlw	030h
	fcall	_lcd_data
	line	327
	
l3221:	
;multi sensor on gsm.c: 327: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	328
	
l3223:	
;multi sensor on gsm.c: 328: lcd_data(e3+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_e3),w
	addlw	030h
	fcall	_lcd_data
	line	329
	
l3225:	
;multi sensor on gsm.c: 329: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	330
	
l3227:	
;multi sensor on gsm.c: 330: lcd_data(f3+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_f3),w
	addlw	030h
	fcall	_lcd_data
	line	331
	
l3229:	
;multi sensor on gsm.c: 331: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	333
	
l3231:	
;multi sensor on gsm.c: 333: if((temp1>=500)||(temp2>=500)||(temp3>=500)||(temp4>=500))
	movlw	high(01F4h)
	subwf	(_temp1+1),w
	movlw	low(01F4h)
	skipnz
	subwf	(_temp1),w
	skipnc
	goto	u2631
	goto	u2630
u2631:
	goto	l685
u2630:
	
l3233:	
	movlw	high(01F4h)
	subwf	(_temp2+1),w
	movlw	low(01F4h)
	skipnz
	subwf	(_temp2),w
	skipnc
	goto	u2641
	goto	u2640
u2641:
	goto	l685
u2640:
	
l3235:	
	movlw	high(01F4h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_temp3+1),w
	movlw	low(01F4h)
	skipnz
	subwf	(_temp3),w
	skipnc
	goto	u2651
	goto	u2650
u2651:
	goto	l685
u2650:
	
l3237:	
	movlw	high(01F4h)
	subwf	(_temp4+1),w
	movlw	low(01F4h)
	skipnz
	subwf	(_temp4),w
	skipc
	goto	u2661
	goto	u2660
u2661:
	goto	l683
u2660:
	
l685:	
	line	335
	
l3239:	
;multi sensor on gsm.c: 334: {
;multi sensor on gsm.c: 335: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	336
;multi sensor on gsm.c: 336: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	337
	
l3241:	
;multi sensor on gsm.c: 337: lcd_display("sensor abnormal");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_lcd_display
	line	338
	
l3243:	
;multi sensor on gsm.c: 338: delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	339
;multi sensor on gsm.c: 339: serial("AT");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_serial
	line	340
	
l3245:	
;multi sensor on gsm.c: 340: txs(13);delay(60000);delay(60000);
	movlw	(0Dh)
	fcall	_txs
	
l3247:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3249:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	341
	
l3251:	
;multi sensor on gsm.c: 341: txs(10);
	movlw	(0Ah)
	fcall	_txs
	line	342
	
l3253:	
;multi sensor on gsm.c: 342: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	343
	
l3255:	
;multi sensor on gsm.c: 343: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	344
;multi sensor on gsm.c: 344: serial("AT+CMGF=1");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_serial
	line	345
	
l3257:	
;multi sensor on gsm.c: 345: txs(13);delay(60000);
	movlw	(0Dh)
	fcall	_txs
	
l3259:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	346
	
l3261:	
;multi sensor on gsm.c: 346: delay(60000);
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	347
	
l3263:	
;multi sensor on gsm.c: 347: txs(10);
	movlw	(0Ah)
	fcall	_txs
	line	348
	
l3265:	
;multi sensor on gsm.c: 348: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	349
	
l3267:	
;multi sensor on gsm.c: 349: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	351
;multi sensor on gsm.c: 351: sms1();
	fcall	_sms1
	line	353
	
l683:	
	line	356
	
l686:	
	line	219
	goto	l682
	
l687:	
	line	357
	
l688:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_init
psect	text263,local,class=CODE,delta=2
global __ptext263
__ptext263:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 59 in file "D:\madhu pic folder\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
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
psect	text263
	file	"D:\madhu pic folder\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
	line	59
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 7
; Regs used in _lcd_init: [wreg+status,2-btemp+0+pclath+cstack]
	line	60
	
l2977:	
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
psect	text264,local,class=CODE,delta=2
global __ptext264
__ptext264:

;; *************** function _lcd_display *****************
;; Defined at:
;;		line 52 in file "D:\madhu pic folder\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
;; Parameters:    Size  Location     Type
;;  m               1    wreg     PTR const unsigned char 
;;		 -> STR_3(16), STR_2(8), 
;; Auto vars:     Size  Location     Type
;;  m               1    5[COMMON] PTR const unsigned char 
;;		 -> STR_3(16), STR_2(8), 
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
psect	text264
	file	"D:\madhu pic folder\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
	line	52
	global	__size_of_lcd_display
	__size_of_lcd_display	equ	__end_of_lcd_display-_lcd_display
	
_lcd_display:	
	opt	stack 7
; Regs used in _lcd_display: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
;lcd_display@m stored from wreg
	movwf	(lcd_display@m)
	line	53
	
l2969:	
;multi sensor on gsm.c: 53: for(int k=0;m[k]!=0;k++)
	movlw	low(0)
	movwf	(lcd_display@k)
	movlw	high(0)
	movwf	((lcd_display@k))+1
	goto	l645
	line	54
	
l646:	
	line	55
	
l2971:	
;multi sensor on gsm.c: 54: {
;multi sensor on gsm.c: 55: lcd_data(m[k]);
	movf	(lcd_display@k),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_data
	line	53
	
l2973:	
	movlw	low(01h)
	addwf	(lcd_display@k),f
	skipnc
	incf	(lcd_display@k+1),f
	movlw	high(01h)
	addwf	(lcd_display@k+1),f
	
l645:	
	
l2975:	
	movf	(lcd_display@k),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2581
	goto	u2580
u2581:
	goto	l646
u2580:
	
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
psect	text265,local,class=CODE,delta=2
global __ptext265
__ptext265:

;; *************** function _serial *****************
;; Defined at:
;;		line 175 in file "D:\madhu pic folder\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     PTR const unsigned char 
;;		 -> STR_5(10), STR_4(3), 
;; Auto vars:     Size  Location     Type
;;  a               1    3[COMMON] PTR const unsigned char 
;;		 -> STR_5(10), STR_4(3), 
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
psect	text265
	file	"D:\madhu pic folder\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
	line	175
	global	__size_of_serial
	__size_of_serial	equ	__end_of_serial-_serial
	
_serial:	
	opt	stack 7
; Regs used in _serial: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;serial@a stored from wreg
	line	177
	movwf	(serial@a)
	
l2959:	
;multi sensor on gsm.c: 176: unsigned char i;
;multi sensor on gsm.c: 177: for(i=0;a[i]!=0;i++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(serial@i)
	goto	l676
	line	178
	
l677:	
	line	179
	
l2961:	
;multi sensor on gsm.c: 178: {
;multi sensor on gsm.c: 179: TXREG=a[i];
	movf	(serial@i),w
	addwf	(serial@a),w
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	180
	
l2963:	
;multi sensor on gsm.c: 180: delay(20000);
	movlw	low(04E20h)
	movwf	(?_delay)
	movlw	high(04E20h)
	movwf	((?_delay))+1
	fcall	_delay
	line	177
	
l2965:	
	movlw	(01h)
	movwf	(??_serial+0)+0
	movf	(??_serial+0)+0,w
	addwf	(serial@i),f
	
l676:	
	
l2967:	
	movf	(serial@i),w
	addwf	(serial@a),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2571
	goto	u2570
u2571:
	goto	l677
u2570:
	
l678:	
	line	183
	
l679:	
	return
	opt stack 0
GLOBAL	__end_of_serial
	__end_of_serial:
;; =============== function _serial ends ============

	signat	_serial,4216
	global	_sms1
psect	text266,local,class=CODE,delta=2
global __ptext266
__ptext266:

;; *************** function _sms1 *****************
;; Defined at:
;;		line 92 in file "D:\madhu pic folder\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
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
psect	text266
	file	"D:\madhu pic folder\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
	line	92
	global	__size_of_sms1
	__size_of_sms1	equ	__end_of_sms1-_sms1
	
_sms1:	
	opt	stack 7
; Regs used in _sms1: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	93
	
l2845:	
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
;multi sensor on gsm.c: 96: txs('8');txs('0');txs('9');txs('8');txs('1');
	movlw	(038h)
	fcall	_txs
	movlw	(030h)
	fcall	_txs
	movlw	(039h)
	fcall	_txs
	movlw	(038h)
	fcall	_txs
	movlw	(031h)
	fcall	_txs
	line	97
;multi sensor on gsm.c: 97: txs('4');txs('2');txs('0');txs('6');txs('4');
	movlw	(034h)
	fcall	_txs
	movlw	(032h)
	fcall	_txs
	movlw	(030h)
	fcall	_txs
	movlw	(036h)
	fcall	_txs
	movlw	(034h)
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
	
l2847:	
;multi sensor on gsm.c: 104: gsm_command("sensor abnormal");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_gsm_command
	line	105
	
l2849:	
;multi sensor on gsm.c: 105: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	106
	
l2851:	
;multi sensor on gsm.c: 106: if(temp1>=500)
	movlw	high(01F4h)
	subwf	(_temp1+1),w
	movlw	low(01F4h)
	skipnz
	subwf	(_temp1),w
	skipc
	goto	u2531
	goto	u2530
u2531:
	goto	l669
u2530:
	line	108
	
l2853:	
;multi sensor on gsm.c: 107: {
;multi sensor on gsm.c: 108: TXREG=0x0D;
	movlw	(0Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	110
	
l2855:	
;multi sensor on gsm.c: 110: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	111
	
l2857:	
;multi sensor on gsm.c: 111: TXREG=(a+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a),w
	addlw	030h
	movwf	(25)	;volatile
	line	112
	
l2859:	
;multi sensor on gsm.c: 112: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	113
	
l2861:	
;multi sensor on gsm.c: 113: TXREG=(c+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c),w
	addlw	030h
	movwf	(25)	;volatile
	line	114
	
l2863:	
;multi sensor on gsm.c: 114: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	115
	
l2865:	
;multi sensor on gsm.c: 115: TXREG=(e+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_e),w
	addlw	030h
	movwf	(25)	;volatile
	line	116
	
l2867:	
;multi sensor on gsm.c: 116: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	117
	
l2869:	
;multi sensor on gsm.c: 117: TXREG=(f+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_f),w
	addlw	030h
	movwf	(25)	;volatile
	line	118
	
l2871:	
;multi sensor on gsm.c: 118: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	119
	
l669:	
	line	120
	
l2873:	
;multi sensor on gsm.c: 119: }
;multi sensor on gsm.c: 120: if(temp2>=500)
	movlw	high(01F4h)
	subwf	(_temp2+1),w
	movlw	low(01F4h)
	skipnz
	subwf	(_temp2),w
	skipc
	goto	u2541
	goto	u2540
u2541:
	goto	l670
u2540:
	line	122
	
l2875:	
;multi sensor on gsm.c: 121: {
;multi sensor on gsm.c: 122: TXREG=0x0D;
	movlw	(0Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	124
	
l2877:	
;multi sensor on gsm.c: 124: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	125
	
l2879:	
;multi sensor on gsm.c: 125: TXREG=(a1+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a1),w
	addlw	030h
	movwf	(25)	;volatile
	line	126
	
l2881:	
;multi sensor on gsm.c: 126: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	127
	
l2883:	
;multi sensor on gsm.c: 127: TXREG=(c1+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c1),w
	addlw	030h
	movwf	(25)	;volatile
	line	128
	
l2885:	
;multi sensor on gsm.c: 128: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	129
	
l2887:	
;multi sensor on gsm.c: 129: TXREG=(e1+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_e1),w
	addlw	030h
	movwf	(25)	;volatile
	line	130
	
l2889:	
;multi sensor on gsm.c: 130: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	131
	
l2891:	
;multi sensor on gsm.c: 131: TXREG=(f1+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_f1),w
	addlw	030h
	movwf	(25)	;volatile
	line	132
	
l2893:	
;multi sensor on gsm.c: 132: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	134
	
l670:	
	line	136
	
l2895:	
;multi sensor on gsm.c: 134: }
;multi sensor on gsm.c: 136: if(temp3>=500)
	movlw	high(01F4h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_temp3+1),w
	movlw	low(01F4h)
	skipnz
	subwf	(_temp3),w
	skipc
	goto	u2551
	goto	u2550
u2551:
	goto	l671
u2550:
	line	138
	
l2897:	
;multi sensor on gsm.c: 137: {
;multi sensor on gsm.c: 138: TXREG=0x0D;
	movlw	(0Dh)
	movwf	(25)	;volatile
	line	140
	
l2899:	
;multi sensor on gsm.c: 140: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	141
	
l2901:	
;multi sensor on gsm.c: 141: TXREG=(a2+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a2),w
	addlw	030h
	movwf	(25)	;volatile
	line	142
	
l2903:	
;multi sensor on gsm.c: 142: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	143
	
l2905:	
;multi sensor on gsm.c: 143: TXREG=(c2+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c2),w
	addlw	030h
	movwf	(25)	;volatile
	line	144
	
l2907:	
;multi sensor on gsm.c: 144: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	145
	
l2909:	
;multi sensor on gsm.c: 145: TXREG=(e2+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_e2),w
	addlw	030h
	movwf	(25)	;volatile
	line	146
	
l2911:	
;multi sensor on gsm.c: 146: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	147
	
l2913:	
;multi sensor on gsm.c: 147: TXREG=(f2+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_f2),w
	addlw	030h
	movwf	(25)	;volatile
	line	148
	
l2915:	
;multi sensor on gsm.c: 148: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	149
	
l671:	
	line	150
	
l2917:	
;multi sensor on gsm.c: 149: }
;multi sensor on gsm.c: 150: if(temp4>=500)
	movlw	high(01F4h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_temp4+1),w
	movlw	low(01F4h)
	skipnz
	subwf	(_temp4),w
	skipc
	goto	u2561
	goto	u2560
u2561:
	goto	l672
u2560:
	line	152
	
l2919:	
;multi sensor on gsm.c: 151: {
;multi sensor on gsm.c: 152: TXREG=0x0D;
	movlw	(0Dh)
	movwf	(25)	;volatile
	line	154
	
l2921:	
;multi sensor on gsm.c: 154: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	155
	
l2923:	
;multi sensor on gsm.c: 155: TXREG=(a3+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a3),w
	addlw	030h
	movwf	(25)	;volatile
	line	156
	
l2925:	
;multi sensor on gsm.c: 156: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	157
	
l2927:	
;multi sensor on gsm.c: 157: TXREG=(c3+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c3),w
	addlw	030h
	movwf	(25)	;volatile
	line	158
	
l2929:	
;multi sensor on gsm.c: 158: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	159
	
l2931:	
;multi sensor on gsm.c: 159: TXREG=(e3+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_e3),w
	addlw	030h
	movwf	(25)	;volatile
	line	160
	
l2933:	
;multi sensor on gsm.c: 160: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	161
	
l2935:	
;multi sensor on gsm.c: 161: TXREG=(f3+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_f3),w
	addlw	030h
	movwf	(25)	;volatile
	line	162
	
l2937:	
;multi sensor on gsm.c: 162: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	163
	
l672:	
	line	164
	
l2939:	
;multi sensor on gsm.c: 163: }
;multi sensor on gsm.c: 164: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	165
	
l2941:	
;multi sensor on gsm.c: 165: txs(13);delay(60000);
	movlw	(0Dh)
	fcall	_txs
	
l2943:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	166
	
l2945:	
;multi sensor on gsm.c: 166: txs(10);
	movlw	(0Ah)
	fcall	_txs
	line	167
	
l2947:	
;multi sensor on gsm.c: 167: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	169
	
l2949:	
;multi sensor on gsm.c: 169: txs(26);
	movlw	(01Ah)
	fcall	_txs
	line	170
	
l2951:	
;multi sensor on gsm.c: 170: delay(50000);delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2953:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	171
	
l2955:	
;multi sensor on gsm.c: 171: delay(50000);delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2957:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	172
	
l673:	
	return
	opt stack 0
GLOBAL	__end_of_sms1
	__end_of_sms1:
;; =============== function _sms1 ends ============

	signat	_sms1,88
	global	_lcd_data
psect	text267,local,class=CODE,delta=2
global __ptext267
__ptext267:

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 36 in file "D:\madhu pic folder\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
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
psect	text267
	file	"D:\madhu pic folder\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
	line	36
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 7
; Regs used in _lcd_data: [wreg+status,2-btemp+0+pclath+cstack]
;lcd_data@dat stored from wreg
	movwf	(lcd_data@dat)
	line	37
	
l2819:	
;multi sensor on gsm.c: 37: PORTD=(dat&0xf0);
	movf	(lcd_data@dat),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	38
	
l2821:	
;multi sensor on gsm.c: 38: RD1=1;
	bsf	(65/8),(65)&7
	line	39
	
l2823:	
;multi sensor on gsm.c: 39: RD2=0;
	bcf	(66/8),(66)&7
	line	40
	
l2825:	
;multi sensor on gsm.c: 40: RD3=1;
	bsf	(67/8),(67)&7
	line	41
	
l2827:	
;multi sensor on gsm.c: 41: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	42
	
l2829:	
;multi sensor on gsm.c: 42: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	43
	
l2831:	
;multi sensor on gsm.c: 43: temp=dat<<4;
	movf	(lcd_data@dat),w
	movwf	(??_lcd_data+0)+0
	clrf	(??_lcd_data+0)+0+1
	movlw	04h
	movwf	btemp+0
u2525:
	clrc
	rlf	(??_lcd_data+0)+0,f
	rlf	(??_lcd_data+0)+1,f
	decfsz	btemp+0,f
	goto	u2525
	movf	0+(??_lcd_data+0)+0,w
	movwf	(_temp)
	movf	1+(??_lcd_data+0)+0,w
	movwf	(_temp+1)
	line	44
	
l2833:	
;multi sensor on gsm.c: 44: PORTD=(temp&0xf0);
	movf	(_temp),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	45
	
l2835:	
;multi sensor on gsm.c: 45: RD1=1;
	bsf	(65/8),(65)&7
	line	46
	
l2837:	
;multi sensor on gsm.c: 46: RD2=0;
	bcf	(66/8),(66)&7
	line	47
	
l2839:	
;multi sensor on gsm.c: 47: RD3=1;
	bsf	(67/8),(67)&7
	line	48
	
l2841:	
;multi sensor on gsm.c: 48: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	49
	
l2843:	
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
psect	text268,local,class=CODE,delta=2
global __ptext268
__ptext268:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 20 in file "D:\madhu pic folder\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
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
psect	text268
	file	"D:\madhu pic folder\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
	line	20
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 7
; Regs used in _lcd_cmd: [wreg+status,2-btemp+0+pclath+cstack]
;lcd_cmd@com stored from wreg
	movwf	(lcd_cmd@com)
	line	21
	
l2793:	
;multi sensor on gsm.c: 21: PORTD=(com&0xf0);
	movf	(lcd_cmd@com),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	22
	
l2795:	
;multi sensor on gsm.c: 22: RD1=0;
	bcf	(65/8),(65)&7
	line	23
	
l2797:	
;multi sensor on gsm.c: 23: RD2=0;
	bcf	(66/8),(66)&7
	line	24
	
l2799:	
;multi sensor on gsm.c: 24: RD3=1;
	bsf	(67/8),(67)&7
	line	25
	
l2801:	
;multi sensor on gsm.c: 25: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	26
	
l2803:	
;multi sensor on gsm.c: 26: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	27
	
l2805:	
;multi sensor on gsm.c: 27: temp=com<<4;
	movf	(lcd_cmd@com),w
	movwf	(??_lcd_cmd+0)+0
	clrf	(??_lcd_cmd+0)+0+1
	movlw	04h
	movwf	btemp+0
u2515:
	clrc
	rlf	(??_lcd_cmd+0)+0,f
	rlf	(??_lcd_cmd+0)+1,f
	decfsz	btemp+0,f
	goto	u2515
	movf	0+(??_lcd_cmd+0)+0,w
	movwf	(_temp)
	movf	1+(??_lcd_cmd+0)+0,w
	movwf	(_temp+1)
	line	28
	
l2807:	
;multi sensor on gsm.c: 28: PORTD=(temp&0xf0);
	movf	(_temp),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	29
	
l2809:	
;multi sensor on gsm.c: 29: RD1=0;
	bcf	(65/8),(65)&7
	line	30
	
l2811:	
;multi sensor on gsm.c: 30: RD2=0;
	bcf	(66/8),(66)&7
	line	31
	
l2813:	
;multi sensor on gsm.c: 31: RD3=1;
	bsf	(67/8),(67)&7
	line	32
	
l2815:	
;multi sensor on gsm.c: 32: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	33
	
l2817:	
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
psect	text269,local,class=CODE,delta=2
global __ptext269
__ptext269:

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
psect	text269
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 7
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l2771:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2451
	goto	u2450
u2451:
	goto	l713
u2450:
	line	9
	
l2773:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l714
	
l715:	
	line	11
	
l2775:	
	movlw	01h
	
u2465:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2465
	line	12
	
l2777:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	line	13
	
l714:	
	line	10
	
l2779:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2471
	goto	u2470
u2471:
	goto	l715
u2470:
	
l716:	
	line	14
	
l717:	
	line	15
	
l2781:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2485
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2485:
	skipc
	goto	u2481
	goto	u2480
u2481:
	goto	l718
u2480:
	line	16
	
l2783:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	
l718:	
	line	17
	
l2785:	
	movlw	01h
	
u2495:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2495
	line	18
	
l2787:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2501
	goto	u2500
u2501:
	goto	l717
u2500:
	
l719:	
	line	19
	
l713:	
	line	20
	
l2789:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	
l2791:	
	line	21
	
l720:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text270,local,class=CODE,delta=2
global __ptext270
__ptext270:

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
psect	text270
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 7
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l2747:	
	movlw	low(0)
	movwf	(___lwdiv@quotient)
	movlw	high(0)
	movwf	((___lwdiv@quotient))+1
	line	10
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2381
	goto	u2380
u2381:
	goto	l703
u2380:
	line	11
	
l2749:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l704
	
l705:	
	line	13
	
l2751:	
	movlw	01h
	
u2395:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2395
	line	14
	
l2753:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	line	15
	
l704:	
	line	12
	
l2755:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2401
	goto	u2400
u2401:
	goto	l705
u2400:
	
l706:	
	line	16
	
l707:	
	line	17
	
l2757:	
	movlw	01h
	
u2415:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2415
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2425
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2425:
	skipc
	goto	u2421
	goto	u2420
u2421:
	goto	l708
u2420:
	line	19
	
l2759:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l2761:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	21
	
l708:	
	line	22
	
l2763:	
	movlw	01h
	
u2435:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2435
	line	23
	
l2765:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2441
	goto	u2440
u2441:
	goto	l707
u2440:
	
l709:	
	line	24
	
l703:	
	line	25
	
l2767:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	
l2769:	
	line	26
	
l710:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_txs
psect	text271,local,class=CODE,delta=2
global __ptext271
__ptext271:

;; *************** function _txs *****************
;; Defined at:
;;		line 83 in file "D:\madhu pic folder\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text271
	file	"D:\madhu pic folder\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
	line	83
	global	__size_of_txs
	__size_of_txs	equ	__end_of_txs-_txs
	
_txs:	
	opt	stack 6
; Regs used in _txs: [wreg]
;txs@val stored from wreg
	movwf	(txs@val)
	line	84
	
l2743:	
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
	goto	u2371
	goto	u2370
u2371:
	goto	l664
u2370:
	
l665:	
	line	87
;multi sensor on gsm.c: 86: }
;multi sensor on gsm.c: 87: OERR=0;
	bcf	(193/8),(193)&7
	line	88
	
l2745:	
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
psect	text272,local,class=CODE,delta=2
global __ptext272
__ptext272:

;; *************** function _gsm_command *****************
;; Defined at:
;;		line 70 in file "D:\madhu pic folder\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
;; Parameters:    Size  Location     Type
;;  da              1    wreg     PTR const unsigned char 
;;		 -> STR_1(16), 
;; Auto vars:     Size  Location     Type
;;  da              1    0[COMMON] PTR const unsigned char 
;;		 -> STR_1(16), 
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
;; This function uses a non-reentrant model
;;
psect	text272
	file	"D:\madhu pic folder\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
	line	70
	global	__size_of_gsm_command
	__size_of_gsm_command	equ	__end_of_gsm_command-_gsm_command
	
_gsm_command:	
	opt	stack 5
; Regs used in _gsm_command: [wreg-fsr0h+status,2+status,0+pclath]
;gsm_command@da stored from wreg
	line	72
	movwf	(gsm_command@da)
	
l2735:	
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
	goto	u2351
	goto	u2350
u2351:
	goto	l657
u2350:
	
l658:	
	line	77
;multi sensor on gsm.c: 76: }
;multi sensor on gsm.c: 77: OERR=0;
	bcf	(193/8),(193)&7
	line	78
	
l2737:	
;multi sensor on gsm.c: 78: TXREG=da[s];
	movf	(gsm_command@s),w
	addwf	(gsm_command@da),w
	movwf	fsr0
	fcall	stringdir
	movwf	(25)	;volatile
	line	72
	
l2739:	
	movlw	low(01h)
	addwf	(gsm_command@s),f
	skipnc
	incf	(gsm_command@s+1),f
	movlw	high(01h)
	addwf	(gsm_command@s+1),f
	
l654:	
	
l2741:	
	movf	(gsm_command@s),w
	addwf	(gsm_command@da),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2361
	goto	u2360
u2361:
	goto	l655
u2360:
	
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
psect	text273,local,class=CODE,delta=2
global __ptext273
__ptext273:

;; *************** function _delay *****************
;; Defined at:
;;		line 15 in file "D:\madhu pic folder\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
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
;;		_serial
;;		_main
;; This function uses a non-reentrant model
;;
psect	text273
	file	"D:\madhu pic folder\gps&gsm\multi senor on gsm\multi sensor on gsm.c"
	line	15
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	16
	
l2731:	
;multi sensor on gsm.c: 16: while(a--);
	goto	l633
	
l634:	
	
l633:	
	
l2733:	
	movlw	low(01h)
	subwf	(delay@a),f
	movlw	high(01h)
	skipc
	decf	(delay@a+1),f
	subwf	(delay@a+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@a+1)),w
	skipz
	goto	u2345
	movlw	low(0FFFFh)
	xorwf	((delay@a)),w
u2345:

	skipz
	goto	u2341
	goto	u2340
u2341:
	goto	l634
u2340:
	
l635:	
	line	17
	
l636:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text274,local,class=CODE,delta=2
global __ptext274
__ptext274:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
