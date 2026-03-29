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
# 2 "D:\Madhu\madhu pic folder\pic task\timer0\traffic light\traffic light.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "D:\Madhu\madhu pic folder\pic task\timer0\traffic light\traffic light.c"
	dw 0X3F72 ;#
	FNCALL	_main,_lcd_command
	FNCALL	_main,_lcd_display
	FNCALL	_main,_delay4
	FNCALL	_main,_delay2
	FNCALL	_main,_delay1
	FNCALL	_lcd_display,_lcd_data
	FNCALL	_lcd_display,_delay4
	FNCALL	_delay2,_delay
	FNCALL	_delay1,_delay
	FNCALL	_lcd_data,_delay4
	FNCALL	_lcd_command,_delay4
	FNROOT	_main
	global	_b
	global	_ser1
	global	_st1
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\Madhu\madhu pic folder\pic task\timer0\traffic light\traffic light.c"
	line	26

;initializer for _b
	retlw	01h
	retlw	0

	retlw	02h
	retlw	0

	retlw	03h
	retlw	0

	retlw	04h
	retlw	0

	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
psect	idataCOMMON,class=CODE,space=0,delta=2
global __pidataCOMMON
__pidataCOMMON:
	line	22

;initializer for _ser1
	retlw	052h

;initializer for _st1
psect	idataBANK0
	retlw	01h
	global	_gpsdata
	global	_a
	global	_F
	global	_T
	global	_W
	global	_W1
	global	_Y
	global	_Z
	global	_i
	global	_p
	global	_temp
	global	_data_cap1
	global	_n
	global	_o
	global	_x
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_TMR0
_TMR0	set	1
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_T0IF
_T0IF	set	90
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_PS0
_PS0	set	1032
	global	_PS1
_PS1	set	1033
	global	_PS2
_PS2	set	1034
	global	_PSA
_PSA	set	1035
	global	_T0CS
_T0CS	set	1037
	global	_T0SE
_T0SE	set	1036
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
	retlw	119	;'w'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	0
psect	strings
	file	"traffic light.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_data_cap1:
       ds      1

psect	dataCOMMON,class=COMMON,space=1
global __pdataCOMMON
__pdataCOMMON:
	file	"D:\Madhu\madhu pic folder\pic task\timer0\traffic light\traffic light.c"
_ser1:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_a:
       ds      20

_F:
       ds      2

_T:
       ds      2

_W:
       ds      2

_W1:
       ds      2

_Y:
       ds      2

_Z:
       ds      2

_i:
       ds      2

_p:
       ds      2

_temp:
       ds      2

_n:
       ds      1

_o:
       ds      1

_x:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\Madhu\madhu pic folder\pic task\timer0\traffic light\traffic light.c"
	line	26
_b:
       ds      20

psect	dataBANK0
	file	"D:\Madhu\madhu pic folder\pic task\timer0\traffic light\traffic light.c"
	line	22
_st1:
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
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+029h)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+032h)
	fcall	clear_ram
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
	movlw low(__pdataBANK0+21)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_delay4
?_delay4:	; 0 bytes @ 0x0
	global	?_lcd_display
?_lcd_display:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	??_delay
??_delay:	; 0 bytes @ 0x0
	global	?_delay1
?_delay1:	; 0 bytes @ 0x0
	global	??_delay1
??_delay1:	; 0 bytes @ 0x0
	global	?_delay2
?_delay2:	; 0 bytes @ 0x0
	global	??_delay2
??_delay2:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	delay4@x
delay4@x:	; 2 bytes @ 0x0
	global	delay1@i
delay1@i:	; 2 bytes @ 0x0
	global	delay2@i
delay2@i:	; 2 bytes @ 0x0
	ds	2
	global	??_delay4
??_delay4:	; 0 bytes @ 0x2
	global	?_lcd_command
?_lcd_command:	; 0 bytes @ 0x2
	global	?_lcd_data
?_lcd_data:	; 0 bytes @ 0x2
	global	lcd_command@COM
lcd_command@COM:	; 2 bytes @ 0x2
	global	lcd_data@data
lcd_data@data:	; 2 bytes @ 0x2
	ds	2
	global	??_lcd_command
??_lcd_command:	; 0 bytes @ 0x4
	global	??_lcd_data
??_lcd_data:	; 0 bytes @ 0x4
	ds	2
	global	lcd_command@temp
lcd_command@temp:	; 1 bytes @ 0x6
	global	lcd_data@val1
lcd_data@val1:	; 1 bytes @ 0x6
	ds	1
	global	??_lcd_display
??_lcd_display:	; 0 bytes @ 0x7
	ds	2
	global	lcd_display@i
lcd_display@i:	; 2 bytes @ 0x9
	ds	2
	global	lcd_display@m
lcd_display@m:	; 1 bytes @ 0xB
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xC
;;Data sizes: Strings 8, constant 0, data 22, bss 92, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     12      14
;; BANK0           80      0      62
;; BANK1           80      0      50
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; lcd_display@m	PTR const unsigned char  size(1) Largest target is 8
;;		 -> STR_1(CODE[8]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_lcd_display
;;   _lcd_display->_lcd_data
;;   _lcd_data->_delay4
;;   _lcd_command->_delay4
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
;; (0) _main                                                 0     0      0     270
;;                        _lcd_command
;;                        _lcd_display
;;                             _delay4
;;                             _delay2
;;                             _delay1
;; ---------------------------------------------------------------------------------
;; (1) _lcd_display                                          5     5      0     135
;;                                              7 COMMON     5     5      0
;;                           _lcd_data
;;                             _delay4
;; ---------------------------------------------------------------------------------
;; (1) _delay2                                               2     2      0      30
;;                                              0 COMMON     2     2      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _delay1                                               2     2      0      30
;;                                              0 COMMON     2     2      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _lcd_data                                             5     3      2      60
;;                                              2 COMMON     5     3      2
;;                             _delay4
;; ---------------------------------------------------------------------------------
;; (1) _lcd_command                                          5     3      2      60
;;                                              2 COMMON     5     3      2
;;                             _delay4
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _delay4                                               2     0      2      15
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_command
;;     _delay4
;;   _lcd_display
;;     _lcd_data
;;       _delay4
;;     _delay4
;;   _delay4
;;   _delay2
;;     _delay
;;   _delay1
;;     _delay
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
;;DATA                 0      0      81      12        0.0%
;;ABS                  0      0      7E       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       3       2        0.0%
;;BANK0               50      0      3E       5       77.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      C       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 133 in file "D:\Madhu\madhu pic folder\pic task\timer0\traffic light\traffic light.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_command
;;		_lcd_display
;;		_delay4
;;		_delay2
;;		_delay1
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Madhu\madhu pic folder\pic task\timer0\traffic light\traffic light.c"
	line	133
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2-btemp+0+pclath+cstack]
	line	134
	
l1892:	
;traffic light.c: 134: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	135
;traffic light.c: 135: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	136
;traffic light.c: 136: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	137
;traffic light.c: 137: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	138
	
l1894:	
;traffic light.c: 138: lcd_command(0x80);
	movlw	low(080h)
	movwf	(?_lcd_command)
	movlw	high(080h)
	movwf	((?_lcd_command))+1
	fcall	_lcd_command
	line	139
	
l1896:	
;traffic light.c: 139: lcd_display("welcome");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_display
	line	140
	
l1898:	
;traffic light.c: 140: delay4(10000);delay4(10000);
	movlw	low(02710h)
	movwf	(?_delay4)
	movlw	high(02710h)
	movwf	((?_delay4))+1
	fcall	_delay4
	
l1900:	
	movlw	low(02710h)
	movwf	(?_delay4)
	movlw	high(02710h)
	movwf	((?_delay4))+1
	fcall	_delay4
	line	141
;traffic light.c: 141: while(1)
	
l632:	
	line	143
	
l1902:	
;traffic light.c: 142: {
;traffic light.c: 143: PORTB=0X14;
	movlw	(014h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	144
	
l1904:	
;traffic light.c: 144: PORTC=0X01;
	movlw	(01h)
	movwf	(7)	;volatile
	line	145
	
l1906:	
;traffic light.c: 145: delay2();
	fcall	_delay2
	line	147
	
l1908:	
;traffic light.c: 147: PORTB=0X36;
	movlw	(036h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	148
	
l1910:	
;traffic light.c: 148: PORTC=0X01;
	movlw	(01h)
	movwf	(7)	;volatile
	line	149
	
l1912:	
;traffic light.c: 149: delay1();
	fcall	_delay1
	line	152
	
l1914:	
;traffic light.c: 152: PORTB=0X41;
	movlw	(041h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	153
	
l1916:	
;traffic light.c: 153: PORTC=0X01;
	movlw	(01h)
	movwf	(7)	;volatile
	line	154
	
l1918:	
;traffic light.c: 154: delay2();
	fcall	_delay2
	line	156
	
l1920:	
;traffic light.c: 156: PORTB=0X61;
	movlw	(061h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	157
	
l1922:	
;traffic light.c: 157: PORTC=0X03;
	movlw	(03h)
	movwf	(7)	;volatile
	line	158
	
l1924:	
;traffic light.c: 158: delay1();
	fcall	_delay1
	line	160
	
l1926:	
;traffic light.c: 160: PORTB=0X11;
	movlw	(011h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	161
	
l1928:	
;traffic light.c: 161: PORTC=0X04;
	movlw	(04h)
	movwf	(7)	;volatile
	line	162
	
l1930:	
;traffic light.c: 162: delay2();
	fcall	_delay2
	line	164
	
l1932:	
;traffic light.c: 164: PORTB=0X13;
	movlw	(013h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	165
	
l1934:	
;traffic light.c: 165: PORTC=0X06;
	movlw	(06h)
	movwf	(7)	;volatile
	line	166
	
l1936:	
;traffic light.c: 166: delay1();
	fcall	_delay1
	line	167
	
l633:	
	line	141
	goto	l632
	
l634:	
	line	168
	
l635:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_display
psect	text110,local,class=CODE,delta=2
global __ptext110
__ptext110:

;; *************** function _lcd_display *****************
;; Defined at:
;;		line 94 in file "D:\Madhu\madhu pic folder\pic task\timer0\traffic light\traffic light.c"
;; Parameters:    Size  Location     Type
;;  m               1    wreg     PTR const unsigned char 
;;		 -> STR_1(8), 
;; Auto vars:     Size  Location     Type
;;  m               1   11[COMMON] PTR const unsigned char 
;;		 -> STR_1(8), 
;;  i               2    9[COMMON] int 
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
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_data
;;		_delay4
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text110
	file	"D:\Madhu\madhu pic folder\pic task\timer0\traffic light\traffic light.c"
	line	94
	global	__size_of_lcd_display
	__size_of_lcd_display	equ	__end_of_lcd_display-_lcd_display
	
_lcd_display:	
	opt	stack 7
; Regs used in _lcd_display: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_display@m stored from wreg
	movwf	(lcd_display@m)
	line	95
	
l1882:	
;traffic light.c: 95: for(int i=0;m[i]!=0;i++)
	movlw	low(0)
	movwf	(lcd_display@i)
	movlw	high(0)
	movwf	((lcd_display@i))+1
	goto	l610
	line	96
	
l611:	
	line	97
	
l1884:	
;traffic light.c: 96: {
;traffic light.c: 97: lcd_data(m[i]);
	movf	(lcd_display@i),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_lcd_display+0)+0
	clrf	(??_lcd_display+0)+0+1
	movf	0+(??_lcd_display+0)+0,w
	movwf	(?_lcd_data)
	movf	1+(??_lcd_display+0)+0,w
	movwf	(?_lcd_data+1)
	fcall	_lcd_data
	line	98
	
l1886:	
;traffic light.c: 98: delay4(1000);
	movlw	low(03E8h)
	movwf	(?_delay4)
	movlw	high(03E8h)
	movwf	((?_delay4))+1
	fcall	_delay4
	line	95
	
l1888:	
	movlw	low(01h)
	addwf	(lcd_display@i),f
	skipnc
	incf	(lcd_display@i+1),f
	movlw	high(01h)
	addwf	(lcd_display@i+1),f
	
l610:	
	
l1890:	
	movf	(lcd_display@i),w
	addwf	(lcd_display@m),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2221
	goto	u2220
u2221:
	goto	l611
u2220:
	
l612:	
	line	100
	
l613:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_display
	__end_of_lcd_display:
;; =============== function _lcd_display ends ============

	signat	_lcd_display,4216
	global	_delay2
psect	text111,local,class=CODE,delta=2
global __ptext111
__ptext111:

;; *************** function _delay2 *****************
;; Defined at:
;;		line 125 in file "D:\Madhu\madhu pic folder\pic task\timer0\traffic light\traffic light.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0[COMMON] int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text111
	file	"D:\Madhu\madhu pic folder\pic task\timer0\traffic light\traffic light.c"
	line	125
	global	__size_of_delay2
	__size_of_delay2	equ	__end_of_delay2-_delay2
	
_delay2:	
	opt	stack 7
; Regs used in _delay2: [wreg+status,2-btemp+0+pclath+cstack]
	line	126
	
l1870:	
;traffic light.c: 126: for(int i=0;i<=500;i++)
	movlw	low(0)
	movwf	(delay2@i)
	movlw	high(0)
	movwf	((delay2@i))+1
	
l1872:	
	movf	(delay2@i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(01F5h))^80h
	subwf	btemp+0,w
	skipz
	goto	u2205
	movlw	low(01F5h)
	subwf	(delay2@i),w
u2205:

	skipc
	goto	u2201
	goto	u2200
u2201:
	goto	l627
u2200:
	
l1874:	
	goto	l628
	line	127
	
l627:	
	line	128
	
l1876:	
;traffic light.c: 127: {
;traffic light.c: 128: delay();
	fcall	_delay
	line	126
	
l1878:	
	movlw	low(01h)
	addwf	(delay2@i),f
	skipnc
	incf	(delay2@i+1),f
	movlw	high(01h)
	addwf	(delay2@i+1),f
	
l1880:	
	movf	(delay2@i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(01F5h))^80h
	subwf	btemp+0,w
	skipz
	goto	u2215
	movlw	low(01F5h)
	subwf	(delay2@i),w
u2215:

	skipc
	goto	u2211
	goto	u2210
u2211:
	goto	l627
u2210:
	
l628:	
	line	130
	
l629:	
	return
	opt stack 0
GLOBAL	__end_of_delay2
	__end_of_delay2:
;; =============== function _delay2 ends ============

	signat	_delay2,88
	global	_delay1
psect	text112,local,class=CODE,delta=2
global __ptext112
__ptext112:

;; *************** function _delay1 *****************
;; Defined at:
;;		line 117 in file "D:\Madhu\madhu pic folder\pic task\timer0\traffic light\traffic light.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0[COMMON] int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text112
	file	"D:\Madhu\madhu pic folder\pic task\timer0\traffic light\traffic light.c"
	line	117
	global	__size_of_delay1
	__size_of_delay1	equ	__end_of_delay1-_delay1
	
_delay1:	
	opt	stack 7
; Regs used in _delay1: [wreg+status,2-btemp+0+pclath+cstack]
	line	118
	
l1858:	
;traffic light.c: 118: for(int i=0;i<=100;i++)
	movlw	low(0)
	movwf	(delay1@i)
	movlw	high(0)
	movwf	((delay1@i))+1
	
l1860:	
	movf	(delay1@i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(065h))^80h
	subwf	btemp+0,w
	skipz
	goto	u2185
	movlw	low(065h)
	subwf	(delay1@i),w
u2185:

	skipc
	goto	u2181
	goto	u2180
u2181:
	goto	l622
u2180:
	
l1862:	
	goto	l623
	line	119
	
l622:	
	line	120
	
l1864:	
;traffic light.c: 119: {
;traffic light.c: 120: delay();
	fcall	_delay
	line	118
	
l1866:	
	movlw	low(01h)
	addwf	(delay1@i),f
	skipnc
	incf	(delay1@i+1),f
	movlw	high(01h)
	addwf	(delay1@i+1),f
	
l1868:	
	movf	(delay1@i+1),w
	xorlw	80h
	movwf	btemp+0
	movlw	(high(065h))^80h
	subwf	btemp+0,w
	skipz
	goto	u2195
	movlw	low(065h)
	subwf	(delay1@i),w
u2195:

	skipc
	goto	u2191
	goto	u2190
u2191:
	goto	l622
u2190:
	
l623:	
	line	122
	
l624:	
	return
	opt stack 0
GLOBAL	__end_of_delay1
	__end_of_delay1:
;; =============== function _delay1 ends ============

	signat	_delay1,88
	global	_lcd_data
psect	text113,local,class=CODE,delta=2
global __ptext113
__ptext113:

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 60 in file "D:\Madhu\madhu pic folder\pic task\timer0\traffic light\traffic light.c"
;; Parameters:    Size  Location     Type
;;  data            2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  val1            1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay4
;; This function is called by:
;;		_lcd_display
;; This function uses a non-reentrant model
;;
psect	text113
	file	"D:\Madhu\madhu pic folder\pic task\timer0\traffic light\traffic light.c"
	line	60
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 6
; Regs used in _lcd_data: [wreg+status,2+status,0+pclath+cstack]
	line	62
	
l1832:	
;traffic light.c: 61: unsigned char val1;
;traffic light.c: 62: PORTD=data&0xf0;
	movf	(lcd_data@data),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	63
	
l1834:	
;traffic light.c: 63: RD1=1;
	bsf	(65/8),(65)&7
	line	64
	
l1836:	
;traffic light.c: 64: RD2=0;
	bcf	(66/8),(66)&7
	line	65
	
l1838:	
;traffic light.c: 65: RD3=1;
	bsf	(67/8),(67)&7
	line	66
	
l1840:	
;traffic light.c: 66: delay4(1000);
	movlw	low(03E8h)
	movwf	(?_delay4)
	movlw	high(03E8h)
	movwf	((?_delay4))+1
	fcall	_delay4
	line	67
	
l1842:	
;traffic light.c: 67: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	68
	
l1844:	
;traffic light.c: 68: val1=data<<4;
	movf	(lcd_data@data),w
	movwf	(??_lcd_data+0)+0
	movlw	(04h)-1
u2175:
	clrc
	rlf	(??_lcd_data+0)+0,f
	addlw	-1
	skipz
	goto	u2175
	clrc
	rlf	(??_lcd_data+0)+0,w
	movwf	(??_lcd_data+1)+0
	movf	(??_lcd_data+1)+0,w
	movwf	(lcd_data@val1)
	line	69
	
l1846:	
;traffic light.c: 69: PORTD=val1&0Xf0;
	movf	(lcd_data@val1),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	70
	
l1848:	
;traffic light.c: 70: RD1=1;
	bsf	(65/8),(65)&7
	line	71
	
l1850:	
;traffic light.c: 71: RD2=0;
	bcf	(66/8),(66)&7
	line	72
	
l1852:	
;traffic light.c: 72: RD3=1;
	bsf	(67/8),(67)&7
	line	73
	
l1854:	
;traffic light.c: 73: delay4(1000);
	movlw	low(03E8h)
	movwf	(?_delay4)
	movlw	high(03E8h)
	movwf	((?_delay4))+1
	fcall	_delay4
	line	74
	
l1856:	
;traffic light.c: 74: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	82
	
l604:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
;; =============== function _lcd_data ends ============

	signat	_lcd_data,4216
	global	_lcd_command
psect	text114,local,class=CODE,delta=2
global __ptext114
__ptext114:

;; *************** function _lcd_command *****************
;; Defined at:
;;		line 36 in file "D:\Madhu\madhu pic folder\pic task\timer0\traffic light\traffic light.c"
;; Parameters:    Size  Location     Type
;;  COM             2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  temp            1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay4
;; This function is called by:
;;		_main
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text114
	file	"D:\Madhu\madhu pic folder\pic task\timer0\traffic light\traffic light.c"
	line	36
	global	__size_of_lcd_command
	__size_of_lcd_command	equ	__end_of_lcd_command-_lcd_command
	
_lcd_command:	
	opt	stack 7
; Regs used in _lcd_command: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l1806:	
;traffic light.c: 37: unsigned char temp;
;traffic light.c: 38: PORTD=COM&0Xf0;
	movf	(lcd_command@COM),w
	andlw	0F0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	39
	
l1808:	
;traffic light.c: 39: RD1=0;
	bcf	(65/8),(65)&7
	line	40
	
l1810:	
;traffic light.c: 40: RD2=0;
	bcf	(66/8),(66)&7
	line	41
	
l1812:	
;traffic light.c: 41: RD3=1;
	bsf	(67/8),(67)&7
	line	42
	
l1814:	
;traffic light.c: 42: delay4(200);
	movlw	low(0C8h)
	movwf	(?_delay4)
	movlw	high(0C8h)
	movwf	((?_delay4))+1
	fcall	_delay4
	line	43
	
l1816:	
;traffic light.c: 43: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	44
	
l1818:	
;traffic light.c: 44: temp=COM<<4;
	movf	(lcd_command@COM),w
	movwf	(??_lcd_command+0)+0
	movlw	(04h)-1
u2165:
	clrc
	rlf	(??_lcd_command+0)+0,f
	addlw	-1
	skipz
	goto	u2165
	clrc
	rlf	(??_lcd_command+0)+0,w
	movwf	(??_lcd_command+1)+0
	movf	(??_lcd_command+1)+0,w
	movwf	(lcd_command@temp)
	line	45
	
l1820:	
;traffic light.c: 45: PORTD=temp&0Xf0;
	movf	(lcd_command@temp),w
	andlw	0F0h
	movwf	(8)	;volatile
	line	46
	
l1822:	
;traffic light.c: 46: RD1=0;
	bcf	(65/8),(65)&7
	line	47
	
l1824:	
;traffic light.c: 47: RD2=0;
	bcf	(66/8),(66)&7
	line	48
	
l1826:	
;traffic light.c: 48: RD3=1;
	bsf	(67/8),(67)&7
	line	49
	
l1828:	
;traffic light.c: 49: delay4(200);
	movlw	low(0C8h)
	movwf	(?_delay4)
	movlw	high(0C8h)
	movwf	((?_delay4))+1
	fcall	_delay4
	line	50
	
l1830:	
;traffic light.c: 50: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	58
	
l601:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_command
	__end_of_lcd_command:
;; =============== function _lcd_command ends ============

	signat	_lcd_command,4216
	global	_delay
psect	text115,local,class=CODE,delta=2
global __ptext115
__ptext115:

;; *************** function _delay *****************
;; Defined at:
;;		line 104 in file "D:\Madhu\madhu pic folder\pic task\timer0\traffic light\traffic light.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_delay1
;;		_delay2
;; This function uses a non-reentrant model
;;
psect	text115
	file	"D:\Madhu\madhu pic folder\pic task\timer0\traffic light\traffic light.c"
	line	104
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg+status,2]
	line	105
	
l1014:	
;traffic light.c: 105: T0CS=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1037/8)^080h,(1037)&7
	line	106
;traffic light.c: 106: T0SE=0;
	bcf	(1036/8)^080h,(1036)&7
	line	107
;traffic light.c: 107: PSA=0;
	bcf	(1035/8)^080h,(1035)&7
	line	108
;traffic light.c: 108: PS0=1;
	bsf	(1032/8)^080h,(1032)&7
	line	109
;traffic light.c: 109: PS1=1;
	bsf	(1033/8)^080h,(1033)&7
	line	110
;traffic light.c: 110: PS2=1;
	bsf	(1034/8)^080h,(1034)&7
	line	111
	
l1016:	
;traffic light.c: 111: TMR0=60;
	movlw	(03Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	112
;traffic light.c: 112: while(T0IF==0);
	goto	l616
	
l617:	
	
l616:	
	btfss	(90/8),(90)&7
	goto	u21
	goto	u20
u21:
	goto	l617
u20:
	
l618:	
	line	113
;traffic light.c: 113: T0IF=0;
	bcf	(90/8),(90)&7
	line	114
	
l1018:	
;traffic light.c: 114: TMR0=0;
	clrf	(1)	;volatile
	line	115
	
l619:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
	global	_delay4
psect	text116,local,class=CODE,delta=2
global __ptext116
__ptext116:

;; *************** function _delay4 *****************
;; Defined at:
;;		line 32 in file "D:\Madhu\madhu pic folder\pic task\timer0\traffic light\traffic light.c"
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
;;		_lcd_display
;;		_main
;; This function uses a non-reentrant model
;;
psect	text116
	file	"D:\Madhu\madhu pic folder\pic task\timer0\traffic light\traffic light.c"
	line	32
	global	__size_of_delay4
	__size_of_delay4	equ	__end_of_delay4-_delay4
	
_delay4:	
	opt	stack 7
; Regs used in _delay4: [wreg]
	line	33
	
l1008:	
;traffic light.c: 33: while(x--);
	goto	l595
	
l596:	
	
l595:	
	
l1010:	
	movlw	low(01h)
	subwf	(delay4@x),f
	movlw	high(01h)
	skipc
	decf	(delay4@x+1),f
	subwf	(delay4@x+1),f
	movlw	high(0FFFFh)
	xorwf	((delay4@x+1)),w
	skipz
	goto	u15
	movlw	low(0FFFFh)
	xorwf	((delay4@x)),w
u15:

	skipz
	goto	u11
	goto	u10
u11:
	goto	l596
u10:
	
l597:	
	line	34
	
l598:	
	return
	opt stack 0
GLOBAL	__end_of_delay4
	__end_of_delay4:
;; =============== function _delay4 ends ============

	signat	_delay4,4216
psect	text117,local,class=CODE,delta=2
global __ptext117
__ptext117:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
