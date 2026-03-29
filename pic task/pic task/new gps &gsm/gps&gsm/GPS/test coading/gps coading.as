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
# 2 "D:\Madhu\madhu pic folder\new gps &gsm\gps&gsm\GPS\test coading\gps coading.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "D:\Madhu\madhu pic folder\new gps &gsm\gps&gsm\GPS\test coading\gps coading.c"
	dw 0X3F72 ;#
	FNCALL	_main,_gps_init
	FNCALL	_main,_delay
	FNCALL	_main,_lcd_cmd
	FNCALL	_main,_lcd_display
	FNCALL	_main,_gps_send
	FNCALL	_gps_send,_lcd_cmd
	FNCALL	_gps_send,_delay
	FNCALL	_gps_send,_lcd_display
	FNCALL	_gps_send,_lcd_data
	FNCALL	_lcd_display,_lcd_data
	FNCALL	_lcd_data,_delay
	FNCALL	_lcd_cmd,_delay
	FNROOT	_main
	FNCALL	intlevel1,_rcx
	global	intlevel1
	FNROOT	intlevel1
	global	_st
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\Madhu\madhu pic folder\new gps &gsm\gps&gsm\GPS\test coading\gps coading.c"
	line	7

;initializer for _st
	retlw	01h
	global	_gpsdata
	global	_i
	global	_j
	global	_data_cap
	global	_ser
	global	_temp
	global	_PORTD
_PORTD	set	8
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_GIE
_GIE	set	95
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
	global	_SPBRG
_SPBRG	set	153
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
	file	"gps coading.as"
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
_gpsdata:
       ds      50

_i:
       ds      2

_j:
       ds      2

_data_cap:
       ds      1

_ser:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\Madhu\madhu pic folder\new gps &gsm\gps&gsm\GPS\test coading\gps coading.c"
_st:
       ds      1

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
	movlw	low((__pbssBANK0)+038h)
	fcall	clear_ram
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
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
	global	?_rcx
?_rcx:	; 0 bytes @ 0x0
	global	??_rcx
??_rcx:	; 0 bytes @ 0x0
	global	?_gps_send
?_gps_send:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	5
	global	?_delay
?_delay:	; 0 bytes @ 0x5
	global	??_gps_init
??_gps_init:	; 0 bytes @ 0x5
	global	delay@x
delay@x:	; 2 bytes @ 0x5
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x7
	global	??_lcd_display
??_lcd_display:	; 0 bytes @ 0x7
	global	??_main
??_main:	; 0 bytes @ 0x7
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
	global	lcd_display@k
lcd_display@k:	; 2 bytes @ 0x4
	ds	2
	global	??_gps_send
??_gps_send:	; 0 bytes @ 0x6
	ds	1
;;Data sizes: Strings 12, constant 0, data 1, bss 58, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7       9
;; BANK0           80      7      64
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; lcd_display@m	PTR const unsigned char  size(1) Largest target is 8
;;		 -> STR_2(CODE[8]), STR_1(CODE[4]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_delay
;;   _gps_send->_delay
;;   _lcd_data->_delay
;;   _lcd_cmd->_delay
;;
;; Critical Paths under _rcx in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_gps_send
;;   _gps_send->_lcd_display
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0     724
;;                           _gps_init
;;                              _delay
;;                            _lcd_cmd
;;                        _lcd_display
;;                           _gps_send
;; ---------------------------------------------------------------------------------
;; (1) _gps_send                                             1     1      0     404
;;                                              6 BANK0      1     1      0
;;                            _lcd_cmd
;;                              _delay
;;                        _lcd_display
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (2) _lcd_display                                          3     3      0     214
;;                                              3 BANK0      3     3      0
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (2) _lcd_data                                             3     3      0      84
;;                                              0 BANK0      3     3      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _lcd_cmd                                              3     3      0      84
;;                                              0 BANK0      3     3      0
;;                              _delay
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
;;   _gps_init
;;   _delay
;;   _lcd_cmd
;;     _delay
;;   _lcd_display
;;     _lcd_data
;;       _delay
;;   _gps_send
;;     _lcd_cmd
;;       _delay
;;     _delay
;;     _lcd_display
;;       _lcd_data
;;         _delay
;;     _lcd_data
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
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      4D      12        0.0%
;;ABS                  0      0      49       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       4       2        0.0%
;;BANK0               50      7      40       5       80.0%
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
;;		line 174 in file "D:\Madhu\madhu pic folder\new gps &gsm\gps&gsm\GPS\test coading\gps coading.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_gps_init
;;		_delay
;;		_lcd_cmd
;;		_lcd_display
;;		_gps_send
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Madhu\madhu pic folder\new gps &gsm\gps&gsm\GPS\test coading\gps coading.c"
	line	174
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
	line	175
	
l2243:	
;gps coading.c: 175: gps_init();
	fcall	_gps_init
	line	176
;gps coading.c: 176: delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	177
;gps coading.c: 177: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	178
	
l2245:	
;gps coading.c: 178: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	179
	
l2247:	
;gps coading.c: 179: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	180
	
l2249:	
;gps coading.c: 180: lcd_display("WELCOME");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_lcd_display
	line	181
	
l2251:	
;gps coading.c: 181: delay(50000);delay(50000);delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2253:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2255:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	182
	
l2257:	
;gps coading.c: 182: delay(50000);delay(50000);delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2259:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2261:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	184
;gps coading.c: 184: while(1)
	
l611:	
	line	187
	
l2263:	
;gps coading.c: 185: {
;gps coading.c: 187: gps_send();
	fcall	_gps_send
	line	188
	
l612:	
	line	184
	goto	l611
	
l613:	
	line	189
	
l614:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_gps_send
psect	text279,local,class=CODE,delta=2
global __ptext279
__ptext279:

;; *************** function _gps_send *****************
;; Defined at:
;;		line 115 in file "D:\Madhu\madhu pic folder\new gps &gsm\gps&gsm\GPS\test coading\gps coading.c"
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
psect	text279
	file	"D:\Madhu\madhu pic folder\new gps &gsm\gps&gsm\GPS\test coading\gps coading.c"
	line	115
	global	__size_of_gps_send
	__size_of_gps_send	equ	__end_of_gps_send-_gps_send
	
_gps_send:	
	opt	stack 7
; Regs used in _gps_send: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
	line	116
	
l2181:	
;gps coading.c: 116: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	117
;gps coading.c: 117: lcd_cmd(0x87);
	movlw	(087h)
	fcall	_lcd_cmd
	line	118
	
l2183:	
;gps coading.c: 118: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	119
	
l2185:	
;gps coading.c: 119: lcd_display("gps");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_display
	line	121
	
l2187:	
;gps coading.c: 121: delay(50000);delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l2189:	
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	line	122
	
l2191:	
;gps coading.c: 122: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	123
	
l2193:	
;gps coading.c: 123: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	131
	
l2195:	
;gps coading.c: 131: if(i>43)
	movlw	high(02Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_i+1),w
	movlw	low(02Ch)
	skipnz
	subwf	(_i),w
	skipc
	goto	u2451
	goto	u2450
u2451:
	goto	l603
u2450:
	line	134
	
l2197:	
;gps coading.c: 132: {
;gps coading.c: 134: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	line	135
	
l2199:	
;gps coading.c: 135: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	137
	
l2201:	
;gps coading.c: 137: for(j=16;j<28;j++)
	movlw	low(010h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_j)
	movlw	high(010h)
	movwf	((_j))+1
	
l2203:	
	movlw	high(01Ch)
	subwf	(_j+1),w
	movlw	low(01Ch)
	skipnz
	subwf	(_j),w
	skipc
	goto	u2461
	goto	u2460
u2461:
	goto	l604
u2460:
	
l2205:	
	goto	l605
	line	138
	
l604:	
	line	140
	
l2207:	
;gps coading.c: 138: {
;gps coading.c: 140: ser=(gpsdata[j]);
	movf	(_j),w
	addlw	_gpsdata&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_gps_send+0)+0
	movf	(??_gps_send+0)+0,w
	movwf	(_ser)
	line	141
	
l2209:	
;gps coading.c: 141: lcd_data(ser);
	movf	(_ser),w
	fcall	_lcd_data
	line	143
	
l2211:	
;gps coading.c: 143: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	137
	
l2213:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	
l2215:	
	movlw	high(01Ch)
	subwf	(_j+1),w
	movlw	low(01Ch)
	skipnz
	subwf	(_j),w
	skipc
	goto	u2471
	goto	u2470
u2471:
	goto	l604
u2470:
	
l605:	
	line	145
	
l2217:	
;gps coading.c: 144: }
;gps coading.c: 145: lcd_cmd(0xc0);
	movlw	(0C0h)
	fcall	_lcd_cmd
	line	147
	
l2219:	
;gps coading.c: 147: for(j=30;j<41;j++)
	movlw	low(01Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_j)
	movlw	high(01Eh)
	movwf	((_j))+1
	
l2221:	
	movlw	high(029h)
	subwf	(_j+1),w
	movlw	low(029h)
	skipnz
	subwf	(_j),w
	skipc
	goto	u2481
	goto	u2480
u2481:
	goto	l606
u2480:
	
l2223:	
	goto	l607
	line	148
	
l606:	
	line	150
	
l2225:	
;gps coading.c: 148: {
;gps coading.c: 150: ser=(gpsdata[j]);
	movf	(_j),w
	addlw	_gpsdata&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_gps_send+0)+0
	movf	(??_gps_send+0)+0,w
	movwf	(_ser)
	line	151
	
l2227:	
;gps coading.c: 151: lcd_data(ser);
	movf	(_ser),w
	fcall	_lcd_data
	line	153
	
l2229:	
;gps coading.c: 153: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	147
	
l2231:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	
l2233:	
	movlw	high(029h)
	subwf	(_j+1),w
	movlw	low(029h)
	skipnz
	subwf	(_j),w
	skipc
	goto	u2491
	goto	u2490
u2491:
	goto	l606
u2490:
	
l607:	
	line	156
	
l2235:	
;gps coading.c: 154: }
;gps coading.c: 156: delay(50000);delay(50000);
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
	line	157
;gps coading.c: 157: delay(50000);delay(50000);
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
	
l2237:	
;gps coading.c: 159: data_cap=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_data_cap)
	line	160
	
l2239:	
;gps coading.c: 160: st=0x01;
	clrf	(_st)
	bsf	status,0
	rlf	(_st),f
	line	161
	
l2241:	
;gps coading.c: 161: i=0x00;
	movlw	low(0)
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	line	163
;gps coading.c: 163: delay(35000);
	movlw	low(088B8h)
	movwf	(?_delay)
	movlw	high(088B8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	165
	
l603:	
	line	166
	
l608:	
	return
	opt stack 0
GLOBAL	__end_of_gps_send
	__end_of_gps_send:
;; =============== function _gps_send ends ============

	signat	_gps_send,88
	global	_lcd_display
psect	text280,local,class=CODE,delta=2
global __ptext280
__ptext280:

;; *************** function _lcd_display *****************
;; Defined at:
;;		line 71 in file "D:\Madhu\madhu pic folder\new gps &gsm\gps&gsm\GPS\test coading\gps coading.c"
;; Parameters:    Size  Location     Type
;;  m               1    wreg     PTR const unsigned char 
;;		 -> STR_2(8), STR_1(4), 
;; Auto vars:     Size  Location     Type
;;  m               1    3[BANK0 ] PTR const unsigned char 
;;		 -> STR_2(8), STR_1(4), 
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
psect	text280
	file	"D:\Madhu\madhu pic folder\new gps &gsm\gps&gsm\GPS\test coading\gps coading.c"
	line	71
	global	__size_of_lcd_display
	__size_of_lcd_display	equ	__end_of_lcd_display-_lcd_display
	
_lcd_display:	
	opt	stack 6
; Regs used in _lcd_display: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
;lcd_display@m stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_display@m)
	line	72
	
l2173:	
;gps coading.c: 72: for(int k=0;m[k]!=0;k++)
	movlw	low(0)
	movwf	(lcd_display@k)
	movlw	high(0)
	movwf	((lcd_display@k))+1
	goto	l588
	line	73
	
l589:	
	line	74
	
l2175:	
;gps coading.c: 73: {
;gps coading.c: 74: lcd_data(m[k]);
	movf	(lcd_display@k),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_data
	line	72
	
l2177:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(lcd_display@k),f
	skipnc
	incf	(lcd_display@k+1),f
	movlw	high(01h)
	addwf	(lcd_display@k+1),f
	
l588:	
	
l2179:	
	movf	(lcd_display@k),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2441
	goto	u2440
u2441:
	goto	l589
u2440:
	
l590:	
	line	76
	
l591:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_display
	__end_of_lcd_display:
;; =============== function _lcd_display ends ============

	signat	_lcd_display,4216
	global	_lcd_data
psect	text281,local,class=CODE,delta=2
global __ptext281
__ptext281:

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 52 in file "D:\Madhu\madhu pic folder\new gps &gsm\gps&gsm\GPS\test coading\gps coading.c"
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
;; This function uses a non-reentrant model
;;
psect	text281
	file	"D:\Madhu\madhu pic folder\new gps &gsm\gps&gsm\GPS\test coading\gps coading.c"
	line	52
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 6
; Regs used in _lcd_data: [wreg+status,2-btemp+0+pclath+cstack]
;lcd_data@dat stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_data@dat)
	line	53
	
l2147:	
;gps coading.c: 53: PORTD=(dat&0xf0);
	movf	(lcd_data@dat),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	54
	
l2149:	
;gps coading.c: 54: RD1=1;
	bsf	(65/8),(65)&7
	line	55
	
l2151:	
;gps coading.c: 55: RD2=0;
	bcf	(66/8),(66)&7
	line	56
	
l2153:	
;gps coading.c: 56: RD3=1;
	bsf	(67/8),(67)&7
	line	57
	
l2155:	
;gps coading.c: 57: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	58
	
l2157:	
;gps coading.c: 58: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	59
	
l2159:	
;gps coading.c: 59: temp=dat<<4;
	movf	(lcd_data@dat),w
	movwf	(??_lcd_data+0)+0
	clrf	(??_lcd_data+0)+0+1
	movlw	04h
	movwf	btemp+0
u2435:
	clrc
	rlf	(??_lcd_data+0)+0,f
	rlf	(??_lcd_data+0)+1,f
	decfsz	btemp+0,f
	goto	u2435
	movf	0+(??_lcd_data+0)+0,w
	movwf	(_temp)
	movf	1+(??_lcd_data+0)+0,w
	movwf	(_temp+1)
	line	60
	
l2161:	
;gps coading.c: 60: PORTD=(temp&0xf0);
	movf	(_temp),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	61
	
l2163:	
;gps coading.c: 61: RD1=1;
	bsf	(65/8),(65)&7
	line	62
	
l2165:	
;gps coading.c: 62: RD2=0;
	bcf	(66/8),(66)&7
	line	63
	
l2167:	
;gps coading.c: 63: RD3=1;
	bsf	(67/8),(67)&7
	line	64
	
l2169:	
;gps coading.c: 64: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	65
	
l2171:	
;gps coading.c: 65: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	66
	
l585:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
;; =============== function _lcd_data ends ============

	signat	_lcd_data,4216
	global	_lcd_cmd
psect	text282,local,class=CODE,delta=2
global __ptext282
__ptext282:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 33 in file "D:\Madhu\madhu pic folder\new gps &gsm\gps&gsm\GPS\test coading\gps coading.c"
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
;;		_gps_send
;;		_main
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text282
	file	"D:\Madhu\madhu pic folder\new gps &gsm\gps&gsm\GPS\test coading\gps coading.c"
	line	33
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 6
; Regs used in _lcd_cmd: [wreg+status,2-btemp+0+pclath+cstack]
;lcd_cmd@com stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_cmd@com)
	line	34
	
l2121:	
;gps coading.c: 34: PORTD=(com&0xf0);
	movf	(lcd_cmd@com),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	35
	
l2123:	
;gps coading.c: 35: RD1=0;
	bcf	(65/8),(65)&7
	line	36
	
l2125:	
;gps coading.c: 36: RD2=0;
	bcf	(66/8),(66)&7
	line	37
	
l2127:	
;gps coading.c: 37: RD3=1;
	bsf	(67/8),(67)&7
	line	38
	
l2129:	
;gps coading.c: 38: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	39
	
l2131:	
;gps coading.c: 39: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	40
	
l2133:	
;gps coading.c: 40: temp=com<<4;
	movf	(lcd_cmd@com),w
	movwf	(??_lcd_cmd+0)+0
	clrf	(??_lcd_cmd+0)+0+1
	movlw	04h
	movwf	btemp+0
u2425:
	clrc
	rlf	(??_lcd_cmd+0)+0,f
	rlf	(??_lcd_cmd+0)+1,f
	decfsz	btemp+0,f
	goto	u2425
	movf	0+(??_lcd_cmd+0)+0,w
	movwf	(_temp)
	movf	1+(??_lcd_cmd+0)+0,w
	movwf	(_temp+1)
	line	41
	
l2135:	
;gps coading.c: 41: PORTD=(temp&0xf0);
	movf	(_temp),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	42
	
l2137:	
;gps coading.c: 42: RD1=0;
	bcf	(65/8),(65)&7
	line	43
	
l2139:	
;gps coading.c: 43: RD2=0;
	bcf	(66/8),(66)&7
	line	44
	
l2141:	
;gps coading.c: 44: RD3=1;
	bsf	(67/8),(67)&7
	line	45
	
l2143:	
;gps coading.c: 45: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	46
	
l2145:	
;gps coading.c: 46: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	47
	
l582:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,4216
	global	_gps_init
psect	text283,local,class=CODE,delta=2
global __ptext283
__ptext283:

;; *************** function _gps_init *****************
;; Defined at:
;;		line 17 in file "D:\Madhu\madhu pic folder\new gps &gsm\gps&gsm\GPS\test coading\gps coading.c"
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
psect	text283
	file	"D:\Madhu\madhu pic folder\new gps &gsm\gps&gsm\GPS\test coading\gps coading.c"
	line	17
	global	__size_of_gps_init
	__size_of_gps_init	equ	__end_of_gps_init-_gps_init
	
_gps_init:	
	opt	stack 7
; Regs used in _gps_init: [wreg]
	line	18
	
l991:	
;gps coading.c: 18: TXSTA=0X24;
	movlw	(024h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	19
;gps coading.c: 19: RCSTA=0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	20
;gps coading.c: 20: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	21
	
l993:	
;gps coading.c: 21: BRGH=1;
	bsf	(1218/8)^080h,(1218)&7
	line	22
	
l995:	
;gps coading.c: 22: GIE=1;
	bsf	(95/8),(95)&7
	line	23
	
l997:	
;gps coading.c: 23: PEIE=1;
	bsf	(94/8),(94)&7
	line	24
	
l999:	
;gps coading.c: 24: RCIE=1;
	bsf	(1125/8)^080h,(1125)&7
	line	26
	
l579:	
	return
	opt stack 0
GLOBAL	__end_of_gps_init
	__end_of_gps_init:
;; =============== function _gps_init ends ============

	signat	_gps_init,88
	global	_delay
psect	text284,local,class=CODE,delta=2
global __ptext284
__ptext284:

;; *************** function _delay *****************
;; Defined at:
;;		line 10 in file "D:\Madhu\madhu pic folder\new gps &gsm\gps&gsm\GPS\test coading\gps coading.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text284
	file	"D:\Madhu\madhu pic folder\new gps &gsm\gps&gsm\GPS\test coading\gps coading.c"
	line	10
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	11
	
l1951:	
;gps coading.c: 11: while (x--);
	goto	l573
	
l574:	
	
l573:	
	
l1953:	
	movlw	low(01h)
	subwf	(delay@x),f
	movlw	high(01h)
	skipc
	decf	(delay@x+1),f
	subwf	(delay@x+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@x+1)),w
	skipz
	goto	u2285
	movlw	low(0FFFFh)
	xorwf	((delay@x)),w
u2285:

	skipz
	goto	u2281
	goto	u2280
u2281:
	goto	l574
u2280:
	
l575:	
	line	12
	
l576:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_rcx
psect	text285,local,class=CODE,delta=2
global __ptext285
__ptext285:

;; *************** function _rcx *****************
;; Defined at:
;;		line 93 in file "D:\Madhu\madhu pic folder\new gps &gsm\gps&gsm\GPS\test coading\gps coading.c"
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
psect	text285
	file	"D:\Madhu\madhu pic folder\new gps &gsm\gps&gsm\GPS\test coading\gps coading.c"
	line	93
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
psect	text285
	line	95
	
i1l1957:	
;gps coading.c: 95: if(RCIF==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u229_21
	goto	u229_20
u229_21:
	goto	i1l597
u229_20:
	line	98
	
i1l1959:	
;gps coading.c: 96: {
;gps coading.c: 98: RCIF=0;
	bcf	(101/8),(101)&7
	line	99
	
i1l1961:	
;gps coading.c: 99: ser=RCREG;
	movf	(26),w	;volatile
	movwf	(??_rcx+0)+0
	movf	(??_rcx+0)+0,w
	movwf	(_ser)
	line	101
;gps coading.c: 101: if((ser==0x52)&&(st==0x01))
	movf	(_ser),w
	xorlw	052h
	skipz
	goto	u230_21
	goto	u230_20
u230_21:
	goto	i1l598
u230_20:
	
i1l1963:	
	movf	(_st),w
	xorlw	01h
	skipz
	goto	u231_21
	goto	u231_20
u231_21:
	goto	i1l598
u231_20:
	line	103
	
i1l1965:	
;gps coading.c: 102: {
;gps coading.c: 103: data_cap=0x01;
	clrf	(_data_cap)
	bsf	status,0
	rlf	(_data_cap),f
	line	104
	
i1l1967:	
;gps coading.c: 104: st=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_st)
	line	105
	
i1l598:	
	line	106
;gps coading.c: 105: }
;gps coading.c: 106: if((data_cap==0x01)&&(i<45))
	movf	(_data_cap),w
	xorlw	01h
	skipz
	goto	u232_21
	goto	u232_20
u232_21:
	goto	i1l599
u232_20:
	
i1l1969:	
	movlw	high(02Dh)
	subwf	(_i+1),w
	movlw	low(02Dh)
	skipnz
	subwf	(_i),w
	skipnc
	goto	u233_21
	goto	u233_20
u233_21:
	goto	i1l599
u233_20:
	line	108
	
i1l1971:	
;gps coading.c: 107: {
;gps coading.c: 108: gpsdata[i]=ser;
	movf	(_ser),w
	movwf	(??_rcx+0)+0
	movf	(_i),w
	addlw	_gpsdata&0ffh
	movwf	fsr0
	movf	(??_rcx+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	109
	
i1l1973:	
;gps coading.c: 109: i=i+1;
	movf	(_i),w
	addlw	low(01h)
	movwf	(_i)
	movf	(_i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_i)
	line	110
	
i1l599:	
	line	111
	
i1l597:	
	line	112
	
i1l600:	
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
psect	text286,local,class=CODE,delta=2
global __ptext286
__ptext286:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
