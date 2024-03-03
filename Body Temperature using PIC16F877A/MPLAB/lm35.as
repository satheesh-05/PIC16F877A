opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 5239"

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
# 2 "C:\Users\Satheesh M\Documents\Body Temperature using PIC16F877A\MPLAB\lm35.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "C:\Users\Satheesh M\Documents\Body Temperature using PIC16F877A\MPLAB\lm35.c"
	dw 0X3F72 ;#
;COMMON:	_main->_lcd_cmd
;COMMON:	_lcd_cmd->_delay
;BANK0:	_main->___awdiv
;COMMON:	___awdiv->___wmul
;BANK0:	___awdiv->___wmul
;COMMON:	_main->_lcd_data
;COMMON:	_lcd_data->_delay
	FNCALL	_main,_lcd_init
	FNCALL	_main,_delay
	FNCALL	_main,_lcd_cmd
	FNCALL	_main,_lcd_display
	FNCALL	_main,___wmul
	FNCALL	_main,___awdiv
	FNCALL	_main,___lwdiv
	FNCALL	_main,___lwmod
	FNCALL	_main,_lcd_data
	FNCALL	_lcd_init,_lcd_cmd
	FNCALL	_lcd_display,_lcd_data
	FNCALL	_lcd_cmd,_delay
	FNCALL	_lcd_data,_delay
	FNROOT	_main
	global	_C
	global	_D
	global	_A
	global	_B
	global	_E
	global	_ADCON0
psect	text64,local,class=CODE,delta=2
global __ptext64
__ptext64:
_ADCON0  equ     31
	global	_ADRESH
_ADRESH  equ     30
	global	_CCP1CON
_CCP1CON  equ     23
	global	_CCP2CON
_CCP2CON  equ     29
	global	_CCPR1H
_CCPR1H  equ     22
	global	_CCPR1L
_CCPR1L  equ     21
	global	_CCPR2H
_CCPR2H  equ     28
	global	_CCPR2L
_CCPR2L  equ     27
	global	_FSR
_FSR  equ     4
	global	_INDF
_INDF  equ     0
	global	_INTCON
_INTCON  equ     11
	global	_PCL
_PCL  equ     2
	global	_PCLATH
_PCLATH  equ     10
	global	_PIR1
_PIR1  equ     12
	global	_PIR2
_PIR2  equ     13
	global	_PORTA
_PORTA  equ     5
	global	_PORTB
_PORTB  equ     6
	global	_PORTC
_PORTC  equ     7
	global	_PORTD
_PORTD  equ     8
	global	_PORTE
_PORTE  equ     9
	global	_RCREG
_RCREG  equ     26
	global	_RCSTA
_RCSTA  equ     24
	global	_SSPBUF
_SSPBUF  equ     19
	global	_SSPCON
_SSPCON  equ     20
	global	_STATUS
_STATUS  equ     3
	global	_T1CON
_T1CON  equ     16
	global	_T2CON
_T2CON  equ     18
	global	_TMR0
_TMR0  equ     1
	global	_TMR1H
_TMR1H  equ     15
	global	_TMR1L
_TMR1L  equ     14
	global	_TMR2
_TMR2  equ     17
	global	_TXREG
_TXREG  equ     25
	global	_ADCS0
_ADCS0  equ     254
	global	_ADCS1
_ADCS1  equ     255
	global	_ADDEN
_ADDEN  equ     195
	global	_ADGO
_ADGO  equ     250
	global	_ADIF
_ADIF  equ     102
	global	_ADON
_ADON  equ     248
	global	_BCLIF
_BCLIF  equ     107
	global	_CARRY
_CARRY  equ     24
	global	_CCP1IF
_CCP1IF  equ     98
	global	_CCP1M0
_CCP1M0  equ     184
	global	_CCP1M1
_CCP1M1  equ     185
	global	_CCP1M2
_CCP1M2  equ     186
	global	_CCP1M3
_CCP1M3  equ     187
	global	_CCP1X
_CCP1X  equ     189
	global	_CCP1Y
_CCP1Y  equ     188
	global	_CCP2IF
_CCP2IF  equ     104
	global	_CCP2M0
_CCP2M0  equ     232
	global	_CCP2M1
_CCP2M1  equ     233
	global	_CCP2M2
_CCP2M2  equ     234
	global	_CCP2M3
_CCP2M3  equ     235
	global	_CCP2X
_CCP2X  equ     237
	global	_CCP2Y
_CCP2Y  equ     236
	global	_CHS0
_CHS0  equ     251
	global	_CHS1
_CHS1  equ     252
	global	_CHS2
_CHS2  equ     253
	global	_CKP
_CKP  equ     164
	global	_CMIF
_CMIF  equ     110
	global	_CREN
_CREN  equ     196
	global	_DC
_DC  equ     25
	global	_EEIF
_EEIF  equ     108
	global	_FERR
_FERR  equ     194
	global	_GIE
_GIE  equ     95
	global	_GODONE
_GODONE  equ     250
	global	_INTE
_INTE  equ     92
	global	_INTF
_INTF  equ     89
	global	_IRP
_IRP  equ     31
	global	_OERR
_OERR  equ     193
	global	_PD
_PD  equ     27
	global	_PEIE
_PEIE  equ     94
	global	_PSPIF
_PSPIF  equ     103
	global	_RA0
_RA0  equ     40
	global	_RA1
_RA1  equ     41
	global	_RA2
_RA2  equ     42
	global	_RA3
_RA3  equ     43
	global	_RA4
_RA4  equ     44
	global	_RA5
_RA5  equ     45
	global	_RB0
_RB0  equ     48
	global	_RB1
_RB1  equ     49
	global	_RB2
_RB2  equ     50
	global	_RB3
_RB3  equ     51
	global	_RB4
_RB4  equ     52
	global	_RB5
_RB5  equ     53
	global	_RB6
_RB6  equ     54
	global	_RB7
_RB7  equ     55
	global	_RBIE
_RBIE  equ     91
	global	_RBIF
_RBIF  equ     88
	global	_RC0
_RC0  equ     56
	global	_RC1
_RC1  equ     57
	global	_RC2
_RC2  equ     58
	global	_RC3
_RC3  equ     59
	global	_RC4
_RC4  equ     60
	global	_RC5
_RC5  equ     61
	global	_RC6
_RC6  equ     62
	global	_RC7
_RC7  equ     63
	global	_RCIF
_RCIF  equ     101
	global	_RD0
_RD0  equ     64
	global	_RD1
_RD1  equ     65
	global	_RD2
_RD2  equ     66
	global	_RD3
_RD3  equ     67
	global	_RD4
_RD4  equ     68
	global	_RD5
_RD5  equ     69
	global	_RD6
_RD6  equ     70
	global	_RD7
_RD7  equ     71
	global	_RE0
_RE0  equ     72
	global	_RE1
_RE1  equ     73
	global	_RE2
_RE2  equ     74
	global	_RP0
_RP0  equ     29
	global	_RP1
_RP1  equ     30
	global	_RX9
_RX9  equ     198
	global	_RX9D
_RX9D  equ     192
	global	_SPEN
_SPEN  equ     199
	global	_SREN
_SREN  equ     197
	global	_SSPEN
_SSPEN  equ     165
	global	_SSPIF
_SSPIF  equ     99
	global	_SSPM0
_SSPM0  equ     160
	global	_SSPM1
_SSPM1  equ     161
	global	_SSPM2
_SSPM2  equ     162
	global	_SSPM3
_SSPM3  equ     163
	global	_SSPOV
_SSPOV  equ     166
	global	_T0IE
_T0IE  equ     93
	global	_T0IF
_T0IF  equ     90
	global	_T1CKPS0
_T1CKPS0  equ     132
	global	_T1CKPS1
_T1CKPS1  equ     133
	global	_T1OSCEN
_T1OSCEN  equ     131
	global	_T1SYNC
_T1SYNC  equ     130
	global	_T2CKPS0
_T2CKPS0  equ     144
	global	_T2CKPS1
_T2CKPS1  equ     145
	global	_TMR0IE
_TMR0IE  equ     93
	global	_TMR0IF
_TMR0IF  equ     90
	global	_TMR1CS
_TMR1CS  equ     129
	global	_TMR1IF
_TMR1IF  equ     96
	global	_TMR1ON
_TMR1ON  equ     128
	global	_TMR2IF
_TMR2IF  equ     97
	global	_TMR2ON
_TMR2ON  equ     146
	global	_TO
_TO  equ     28
	global	_TOUTPS0
_TOUTPS0  equ     147
	global	_TOUTPS1
_TOUTPS1  equ     148
	global	_TOUTPS2
_TOUTPS2  equ     149
	global	_TOUTPS3
_TOUTPS3  equ     150
	global	_TXIF
_TXIF  equ     100
	global	_WCOL
_WCOL  equ     167
	global	_ZERO
_ZERO  equ     26
	global	_ADCON1
_ADCON1  equ     159
	global	_ADRESL
_ADRESL  equ     158
	global	_CMCON
_CMCON  equ     156
	global	_CVRCON
_CVRCON  equ     157
	global	_OPTION
_OPTION  equ     129
	global	_PCON
_PCON  equ     142
	global	_PIE1
_PIE1  equ     140
	global	_PIE2
_PIE2  equ     141
	global	_PR2
_PR2  equ     146
	global	_SPBRG
_SPBRG  equ     153
	global	_SSPADD
_SSPADD  equ     147
	global	_SSPCON2
_SSPCON2  equ     145
	global	_SSPSTAT
_SSPSTAT  equ     148
	global	_TRISA
_TRISA  equ     133
	global	_TRISB
_TRISB  equ     134
	global	_TRISC
_TRISC  equ     135
	global	_TRISD
_TRISD  equ     136
	global	_TRISE
_TRISE  equ     137
	global	_TXSTA
_TXSTA  equ     152
	global	_ACKDT
_ACKDT  equ     1165
	global	_ACKEN
_ACKEN  equ     1164
	global	_ACKSTAT
_ACKSTAT  equ     1166
	global	_ADCS2
_ADCS2  equ     1278
	global	_ADFM
_ADFM  equ     1279
	global	_ADIE
_ADIE  equ     1126
	global	_BCLIE
_BCLIE  equ     1131
	global	_BF
_BF  equ     1184
	global	_BOR
_BOR  equ     1136
	global	_BRGH
_BRGH  equ     1218
	global	_C1INV
_C1INV  equ     1252
	global	_C1OUT
_C1OUT  equ     1254
	global	_C2INV
_C2INV  equ     1253
	global	_C2OUT
_C2OUT  equ     1255
	global	_CCP1IE
_CCP1IE  equ     1122
	global	_CCP2IE
_CCP2IE  equ     1128
	global	_CIS
_CIS  equ     1251
	global	_CKE
_CKE  equ     1190
	global	_CM0
_CM0  equ     1248
	global	_CM1
_CM1  equ     1249
	global	_CM2
_CM2  equ     1250
	global	_CMIE
_CMIE  equ     1134
	global	_CSRC
_CSRC  equ     1223
	global	_CVR0
_CVR0  equ     1256
	global	_CVR1
_CVR1  equ     1257
	global	_CVR2
_CVR2  equ     1258
	global	_CVR3
_CVR3  equ     1259
	global	_CVREN
_CVREN  equ     1263
	global	_CVROE
_CVROE  equ     1262
	global	_CVRR
_CVRR  equ     1261
	global	_DA
_DA  equ     1189
	global	_EEIE
_EEIE  equ     1132
	global	_GCEN
_GCEN  equ     1167
	global	_IBF
_IBF  equ     1103
	global	_IBOV
_IBOV  equ     1101
	global	_INTEDG
_INTEDG  equ     1038
	global	_OBF
_OBF  equ     1102
	global	_PCFG0
_PCFG0  equ     1272
	global	_PCFG1
_PCFG1  equ     1273
	global	_PCFG2
_PCFG2  equ     1274
	global	_PCFG3
_PCFG3  equ     1275
	global	_PEN
_PEN  equ     1162
	global	_POR
_POR  equ     1137
	global	_PS0
_PS0  equ     1032
	global	_PS1
_PS1  equ     1033
	global	_PS2
_PS2  equ     1034
	global	_PSA
_PSA  equ     1035
	global	_PSPIE
_PSPIE  equ     1127
	global	_PSPMODE
_PSPMODE  equ     1100
	global	_RBPU
_RBPU  equ     1039
	global	_RCEN
_RCEN  equ     1163
	global	_RCIE
_RCIE  equ     1125
	global	_RSEN
_RSEN  equ     1161
	global	_RW
_RW  equ     1186
	global	_SEN
_SEN  equ     1160
	global	_SMP
_SMP  equ     1191
	global	_SSPIE
_SSPIE  equ     1123
	global	_START
_START  equ     1187
	global	_STOP
_STOP  equ     1188
	global	_SYNC
_SYNC  equ     1220
	global	_T0CS
_T0CS  equ     1037
	global	_T0SE
_T0SE  equ     1036
	global	_TMR1IE
_TMR1IE  equ     1120
	global	_TMR2IE
_TMR2IE  equ     1121
	global	_TRISA0
_TRISA0  equ     1064
	global	_TRISA1
_TRISA1  equ     1065
	global	_TRISA2
_TRISA2  equ     1066
	global	_TRISA3
_TRISA3  equ     1067
	global	_TRISA4
_TRISA4  equ     1068
	global	_TRISA5
_TRISA5  equ     1069
	global	_TRISB0
_TRISB0  equ     1072
	global	_TRISB1
_TRISB1  equ     1073
	global	_TRISB2
_TRISB2  equ     1074
	global	_TRISB3
_TRISB3  equ     1075
	global	_TRISB4
_TRISB4  equ     1076
	global	_TRISB5
_TRISB5  equ     1077
	global	_TRISB6
_TRISB6  equ     1078
	global	_TRISB7
_TRISB7  equ     1079
	global	_TRISC0
_TRISC0  equ     1080
	global	_TRISC1
_TRISC1  equ     1081
	global	_TRISC2
_TRISC2  equ     1082
	global	_TRISC3
_TRISC3  equ     1083
	global	_TRISC4
_TRISC4  equ     1084
	global	_TRISC5
_TRISC5  equ     1085
	global	_TRISC6
_TRISC6  equ     1086
	global	_TRISC7
_TRISC7  equ     1087
	global	_TRISD0
_TRISD0  equ     1088
	global	_TRISD1
_TRISD1  equ     1089
	global	_TRISD2
_TRISD2  equ     1090
	global	_TRISD3
_TRISD3  equ     1091
	global	_TRISD4
_TRISD4  equ     1092
	global	_TRISD5
_TRISD5  equ     1093
	global	_TRISD6
_TRISD6  equ     1094
	global	_TRISD7
_TRISD7  equ     1095
	global	_TRISE0
_TRISE0  equ     1096
	global	_TRISE1
_TRISE1  equ     1097
	global	_TRISE2
_TRISE2  equ     1098
	global	_TRMT
_TRMT  equ     1217
	global	_TX9
_TX9  equ     1222
	global	_TX9D
_TX9D  equ     1216
	global	_TXEN
_TXEN  equ     1221
	global	_TXIE
_TXIE  equ     1124
	global	_UA
_UA  equ     1185
	global	_EEADR
_EEADR  equ     269
	global	_EEADRH
_EEADRH  equ     271
	global	_EEADRL
_EEADRL  equ     269
	global	_EEDATA
_EEDATA  equ     268
	global	_EEDATH
_EEDATH  equ     270
	global	_EECON1
_EECON1  equ     396
	global	_EECON2
_EECON2  equ     397
	global	_EEPGD
_EEPGD  equ     3175
	global	_RD
_RD  equ     3168
	global	_WR
_WR  equ     3169
	global	_WREN
_WREN  equ     3170
	global	_WRERR
_WRERR  equ     3171
psect	strings,class=CODE,delta=2,reloc=256
global __pstrings
__pstrings:
	global	stringdir,stringtab,__stringbase,stringjmp
stringtab:
;	String table - string pointers are 1 byte each
	movwf	(btemp)&07Fh
	btfss	(btemp)&07Fh,7
	goto	stringcode
	bcf	status,7
	btfsc	btemp&7Fh,0
	bsf	status,7
	movf	indf,w
	return
stringcode:
	movf	fsr,w
stringdir:
movwf btemp&07Fh
movlw high(stringdir)
movwf pclath
movf btemp&07Fh,w
stringjmp:
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_2:	
	retlw	66	;'B'
	retlw	111	;'o'
	retlw	100	;'d'
	retlw	121	;'y'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	112	;'p'
	retlw	40	;'('
	retlw	70	;'F'
	retlw	41	;')'
	retlw	32	;' '
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
	file	"lm35.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_A:
       ds      2

_B:
       ds      2

_E:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_C:
       ds      2

_D:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
	clrf	((__pbssCOMMON)+5)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initationation code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	??___lwmod
??___lwmod: ;@ 0x0
	global	??___wmul
??___wmul: ;@ 0x0
	global	??_delay
??_delay: ;@ 0x0
	global	?_delay
?_delay: ;@ 0x0
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x0
	global	delay@a
delay@a:	; 2 bytes @ 0x0
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x1
	ds	1
	global	??_lcd_cmd
??_lcd_cmd: ;@ 0x2
	global	??___awdiv
??___awdiv: ;@ 0x2
	global	??_lcd_data
??_lcd_data: ;@ 0x2
	global	??___lwdiv
??___lwdiv: ;@ 0x2
	ds	1
	global	??_lcd_display
??_lcd_display: ;@ 0x3
	global	??_lcd_init
??_lcd_init: ;@ 0x3
	ds	2
	global	?_lcd_init
?_lcd_init: ;@ 0x5
	global	?_main
?_main: ;@ 0x5
	global	?_lcd_data
?_lcd_data: ;@ 0x5
	global	?_lcd_display
?_lcd_display: ;@ 0x5
	global	?_lcd_cmd
?_lcd_cmd: ;@ 0x5
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?___lwmod
?___lwmod: ;@ 0x0
	global	?___wmul
?___wmul: ;@ 0x0
	global	lcd_cmd@b
lcd_cmd@b:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	lcd_data@c
lcd_data@c:	; 2 bytes @ 0x0
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x0
	ds	2
	global	lcd_data@dat
lcd_data@dat:	; 1 bytes @ 0x2
	global	lcd_cmd@com
lcd_cmd@com:	; 1 bytes @ 0x2
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds	1
	global	lcd_display@d
lcd_display@d:	; 1 bytes @ 0x3
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	global	lcd_display@e
lcd_display@e:	; 2 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds	1
	global	?___lwdiv
?___lwdiv: ;@ 0x7
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x7
	ds	1
	global	?___awdiv
?___awdiv: ;@ 0x8
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x8
	ds	1
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x9
	ds	1
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0xA
	ds	2
	global	??_main
??_main: ;@ 0xC
	ds	3
	global	_main$744
_main$744:	; 2 bytes @ 0xF
	ds	2
	global	main@Celsius
main@Celsius:	; 2 bytes @ 0x11
	ds	2
;Data sizes: Strings 22, constant 0, data 0, bss 10, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      5      11
; BANK0           80     19      23
; BANK1           80      0       0
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:

;lcd_display@d	PTR const unsigned char  size(1); Largest target is 14
;		 -> STR_1(CODE[8]), STR_2(CODE[14]), 
;?___awdiv	int  size(1); Largest target is 0
;?___wmul	unsigned int  size(1); Largest target is 0
;?___lwmod	unsigned int  size(1); Largest target is 0
;?___lwdiv	unsigned int  size(1); Largest target is 0


;Main: autosize = 0, tempsize = 3, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                7    0 1108   0.00
;                                   12 BANK0    7
;           _lcd_init
;              _delay
;            _lcd_cmd
;        _lcd_display
;             ___wmul
;            ___awdiv
;            ___lwdiv
;            ___lwmod
;           _lcd_data
;  ___awdiv                                           5    4  290   0.00
;                                    2 COMMO    1
;                                    4 BANK0    8
;             ___wmul (ARG)
;  ___wmul                                            2    4   68   0.00
;                                    0 COMMO    2
;                                    0 BANK0    4
;  ___lwmod                                           2    4  117   0.00
;                                    0 COMMO    2
;                                    0 BANK0    4
;  ___lwdiv                                           4    4  237   0.00
;                                    2 COMMO    1
;                                    4 BANK0    7
;            ___lwmod (ARG)
;  _lcd_init                                          0    0   65   0.00
;            _lcd_cmd
;  _lcd_display                                       3    0  131   0.00
;                                    3 BANK0    3
;           _lcd_data
;    _lcd_cmd                                         6    0   65   0.00
;                                    2 COMMO    3
;                                    0 BANK0    3
;              _delay
;    _lcd_data                                        6    0   65   0.00
;                                    2 COMMO    3
;                                    0 BANK0    3
;              _delay
;      _delay                                         0    2   16   0.00
;                                    0 COMMO    2
; Estimated maximum call depth 3
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            E      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               E      5       B       1       78.6%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;BITSFR1              0      0       0       2        0.0%
;SFR1                 0      0       0       2        0.0%
;ABS                  0      0      22       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50     13      17       5       28.8%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50      0       0       7        0.0%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0      22      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 67 in file "C:\Users\Satheesh M\Documents\Body Temperature using PIC16F877A\MPLAB\lm35.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  Celsius         2   17[BANK0 ] int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       7       0       0       0
;      Temp:     3
;      Total:    7
; This function calls:
;		_lcd_init
;		_delay
;		_lcd_cmd
;		_lcd_display
;		___wmul
;		___awdiv
;		___lwdiv
;		___lwmod
;		_lcd_data
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"C:\Users\Satheesh M\Documents\Body Temperature using PIC16F877A\MPLAB\lm35.c"
	line	67
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;lm35.c: 67: void main() {
	
_main:	
	opt stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	68
	
l30000648:	
;lm35.c: 68: ADCON0 = 0X40;
	movlw	(040h)
	movwf	(31)	;volatile
	line	69
;lm35.c: 69: ADCON1 = 0X8E;
	movlw	(08Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	
l30000649:	
	line	70
;lm35.c: 70: TRISD = 0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(136)^080h	;volatile
	
l30000650:	
	line	71
;lm35.c: 71: PORTD = 0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l30000651:	
	line	72
;lm35.c: 72: lcd_init();
	fcall	_lcd_init
	
l30000652:	
	line	73
;lm35.c: 73: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	
l30000653:	
	line	74
;lm35.c: 74: lcd_cmd(0x80);
	movlw	(080h)
	fcall	_lcd_cmd
	
l30000654:	
	line	75
;lm35.c: 75: lcd_display("WELCOME");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_display
	
l30000655:	
	line	76
;lm35.c: 76: delay(50000);
	movlw	low(0C350h)
	movwf	(?_delay)
	movlw	high(0C350h)
	movwf	((?_delay))+1
	fcall	_delay
	
l30000656:	
	line	80
;lm35.c: 80: CHS2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(253/8),(253)&7
	
l30000657:	
	line	81
;lm35.c: 81: CHS1 = 0;
	bcf	(252/8),(252)&7
	
l30000658:	
	line	82
;lm35.c: 82: CHS0 = 0;
	bcf	(251/8),(251)&7
	
l30000659:	
	line	83
;lm35.c: 83: ADON = 1;
	bsf	(248/8),(248)&7
	
l30000660:	
	line	84
;lm35.c: 84: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	
l30000661:	
	line	85
;lm35.c: 85: ADCON0 = (ADCON0 + 0X04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	addlw	04h
	movwf	(31)	;volatile
	
l30000662:	
	line	86
;lm35.c: 86: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	
l30000663:	
	line	87
;lm35.c: 87: A = ADRESH << 8;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_main+0+0)
	clrf	(??_main+0+0+1)
	movlw	08h
	movwf	(??_main+2+0)
u675:
	clrc
	rlf	(??_main+0+0),f
	rlf	(??_main+0+1),f
	decfsz	(??_main+2+0),f
	goto	u675
	movf	0+(??_main+0+0),w
	movwf	(_A)
	movf	1+(??_main+0+0),w
	movwf	(_A+1)
	
l30000664:	
	line	88
;lm35.c: 88: delay(600);
	movlw	low(0258h)
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	
l30000665:	
	line	89
;lm35.c: 89: A = (A + ADRESL);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	addwf	(_A),w
	movwf	(_A)
	movf	(_A+1),w
	skipnc
	incf	(_A+1),w
	movwf	((_A))+1
	
l30000666:	
	line	91
;lm35.c: 91: int Celsius = A / 2;
	movf	(_A+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0+0+1)
	movf	(_A),w
	movwf	(??_main+0+0)
	movlw	01h
u685:
	clrc
	rrf	(??_main+0+1),f
	rrf	(??_main+0+0),f
	addlw	-1
	skipz
	goto	u685
	movf	0+(??_main+0+0),w
	movwf	(main@Celsius)
	movf	1+(??_main+0+0),w
	movwf	(main@Celsius+1)
	
l30000667:	
	line	92
;lm35.c: 92: B = ((Celsius * 9) / 5) + 32;
	movf	(main@Celsius+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(main@Celsius),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(09h)
	movwf	0+(?___wmul)+02h
	movlw	high(09h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___wmul)),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(0+(?___wmul)),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	movlw	low(05h)
	movwf	0+(?___awdiv)+02h
	movlw	high(05h)
	movwf	(0+(?___awdiv)+02h)+1
	fcall	___awdiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	low(020h)
	movwf	(_B)
	movf	(1+(?___awdiv)),w
	skipnc
	addlw	1
	addlw	high(020h)
	movwf	1+(_B)
	
l30000668:	
	line	93
;lm35.c: 93: C = B / 100;
	movf	(_B+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(_B),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	movlw	low(064h)
	movwf	0+(?___lwdiv)+02h
	movlw	high(064h)
	movwf	(0+(?___lwdiv)+02h)+1
	fcall	___lwdiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	clrf	(_C+1)
	addwf	(_C+1)
	movf	(0+(?___lwdiv)),w
	clrf	(_C)
	addwf	(_C)

	
l30000669:	
	line	94
;lm35.c: 94: D = (B % 100) / 10;
	movf	(_B+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(_B),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	movlw	low(064h)
	movwf	0+(?___lwmod)+02h
	movlw	high(064h)
	movwf	(0+(?___lwmod)+02h)+1
	fcall	___lwmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwmod)),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(0+(?___lwmod)),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	movlw	low(0Ah)
	movwf	0+(?___lwdiv)+02h
	movlw	high(0Ah)
	movwf	(0+(?___lwdiv)+02h)+1
	fcall	___lwdiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	clrf	(_D+1)
	addwf	(_D+1)
	movf	(0+(?___lwdiv)),w
	clrf	(_D)
	addwf	(_D)

	
l30000670:	
	line	103
	movf	(_B+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(_B),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	movlw	low(064h)
	movwf	0+(?___lwmod)+02h
	movlw	high(064h)
	movwf	(0+(?___lwmod)+02h)+1
	fcall	___lwmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwmod)),w
	clrf	(_main$744+1)
	addwf	(_main$744+1)
	movf	(0+(?___lwmod)),w
	clrf	(_main$744)
	addwf	(_main$744)

	
l30000671:	
	line	95
;lm35.c: 95: E = (B % 100) % 10;
	movf	(_main$744+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(_main$744),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	movlw	low(0Ah)
	movwf	0+(?___lwmod)+02h
	movlw	high(0Ah)
	movwf	(0+(?___lwmod)+02h)+1
	fcall	___lwmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwmod)),w
	clrf	(_E+1)
	addwf	(_E+1)
	movf	(0+(?___lwmod)),w
	clrf	(_E)
	addwf	(_E)

	
l30000672:	
	line	97
;lm35.c: 97: lcd_cmd(0xC0);
	movlw	(0C0h)
	fcall	_lcd_cmd
	
l30000673:	
	line	98
;lm35.c: 98: lcd_display("Body Temp(F) ");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_lcd_display
	
l30000674:	
	line	99
;lm35.c: 99: lcd_data(C + 0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_C),w
	addlw	030h
	fcall	_lcd_data
	
l30000675:	
	line	100
;lm35.c: 100: lcd_data(D + 0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_D),w
	addlw	030h
	fcall	_lcd_data
	
l30000676:	
	line	101
;lm35.c: 101: lcd_data(E + 0x30);
	movf	(_E),w
	addlw	030h
	fcall	_lcd_data
	goto	l30000656
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	103
	signat	_main,88
	global	___awdiv
psect	text65,local,class=CODE,delta=2
global __ptext65
__ptext65:

; *************** function ___awdiv *****************
; Defined at:
;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\awdiv.c"
; Parameters:    Size  Location     Type
;  dividend        2    8[BANK0 ] int 
;  divisor         2   10[BANK0 ] int 
; Auto vars:     Size  Location     Type
;  quotient        2    6[BANK0 ] int 
;  sign            1    5[BANK0 ] unsigned char 
;  counter         1    4[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  2    8[BANK0 ] int 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1       8       0       0       0
;      Temp:     1
;      Total:    9
; This function calls:
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text65
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l30000622:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awdiv@sign)
	
l30000623:	
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u571
	goto	u570
u571:
	goto	l30000625
u570:
	
l30000624:	
	line	11
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	
l30000625:	
	line	14
	btfss	(___awdiv@dividend+1),7
	goto	u581
	goto	u580
u581:
	goto	l168
u580:
	
l30000626:	
	line	15
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	
l30000627:	
	line	16
	movlw	(01h)
	movwf	(??___awdiv+0+0)
	movf	(??___awdiv+0+0),w
	xorwf	(___awdiv@sign),f
	
l168:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u591
	goto	u590
u591:
	goto	l30000637
u590:
	
l30000628:	
	line	20
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	goto	l30000631
	
l30000629:	
	line	22
	movlw	01h
u605:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u605
	
l30000630:	
	line	23
	movlw	(01h)
	movwf	(??___awdiv+0+0)
	movf	(??___awdiv+0+0),w
	addwf	(___awdiv@counter),f
	
l30000631:	
	line	21
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u611
	goto	u610
u611:
	goto	l30000629
u610:
	
l30000632:	
	line	26
	movlw	01h
u625:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u625
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u635
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u635:
	skipc
	goto	u631
	goto	u630
u631:
	goto	l30000635
u630:
	
l30000633:	
	line	28
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	
l30000634:	
	line	29
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	
l30000635:	
	line	31
	movlw	01h
u645:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u645
	
l30000636:	
	line	32
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u651
	goto	u650
u651:
	goto	l30000632
u650:
	
l30000637:	
	line	34
	movf	(___awdiv@sign),w
	skipz
	goto	u660
	goto	l30000639
u660:
	
l30000638:	
	line	35
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	
l30000639:	
	line	36
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	
l166:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
; =============== function ___awdiv ends ============

psect	text66,local,class=CODE,delta=2
global __ptext66
__ptext66:
	line	37
	signat	___awdiv,8314
	global	___wmul

; *************** function ___wmul *****************
; Defined at:
;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\wmul.c"
; Parameters:    Size  Location     Type
;  multiplier      2    0[BANK0 ] unsigned int 
;  multiplicand    2    2[BANK0 ] unsigned int 
; Auto vars:     Size  Location     Type
;  product         2    0[COMMON] unsigned int 
; Return value:  Size  Location     Type
;                  2    0[BANK0 ] unsigned int 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         2       4       0       0       0
;      Temp:     0
;      Total:    6
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text66
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l30000595:	
	movlw	low(0)
	movwf	(___wmul@product)
	movlw	high(0)
	movwf	((___wmul@product))+1
	
l30000596:	
	line	7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___wmul@multiplier),(0)&7
	goto	u401
	goto	u400
u401:
	goto	l26
u400:
	
l30000597:	
	line	8
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l26:	
	line	9
	movlw	01h
u415:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u415
	
l30000598:	
	line	10
	movlw	01h
u425:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u425
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u431
	goto	u430
u431:
	goto	l30000596
u430:
	
l30000599:	
	line	12
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	
l22:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
; =============== function ___wmul ends ============

psect	text67,local,class=CODE,delta=2
global __ptext67
__ptext67:
	line	13
	signat	___wmul,8314
	global	___lwmod

; *************** function ___lwmod *****************
; Defined at:
;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\lwmod.c"
; Parameters:    Size  Location     Type
;  dividend        2    0[BANK0 ] unsigned int 
;  divisor         2    2[BANK0 ] unsigned int 
; Auto vars:     Size  Location     Type
;  counter         1    1[COMMON] unsigned char 
; Return value:  Size  Location     Type
;                  2    0[BANK0 ] unsigned int 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         2       4       0       0       0
;      Temp:     1
;      Total:    6
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text67
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt stack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l30000601:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u441
	goto	u440
u441:
	goto	l37
u440:
	
l30000602:	
	line	9
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	goto	l30000605
	
l30000603:	
	line	11
	movlw	01h
u455:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u455
	
l30000604:	
	line	12
	movlw	(01h)
	movwf	(??___lwmod+0+0)
	movf	(??___lwmod+0+0),w
	addwf	(___lwmod@counter),f
	
l30000605:	
	line	10
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u461
	goto	u460
u461:
	goto	l30000603
u460:
	
l30000606:	
	line	15
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u475
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u475:
	skipc
	goto	u471
	goto	u470
u471:
	goto	l30000608
u470:
	
l30000607:	
	line	16
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	
l30000608:	
	line	17
	movlw	01h
u485:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u485
	
l30000609:	
	line	18
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u491
	goto	u490
u491:
	goto	l30000606
u490:
	
l37:	
	line	20
	
l36:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
; =============== function ___lwmod ends ============

psect	text68,local,class=CODE,delta=2
global __ptext68
__ptext68:
	line	21
	signat	___lwmod,8314
	global	___lwdiv

; *************** function ___lwdiv *****************
; Defined at:
;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\lwdiv.c"
; Parameters:    Size  Location     Type
;  dividend        2    7[BANK0 ] unsigned int 
;  divisor         2    9[BANK0 ] unsigned int 
; Auto vars:     Size  Location     Type
;  quotient        2    4[BANK0 ] unsigned int 
;  counter         1    6[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  2    7[BANK0 ] unsigned int 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1       7       0       0       0
;      Temp:     1
;      Total:    8
; This function calls:
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text68
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l30000610:	
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
	goto	u501
	goto	u500
u501:
	goto	l30000620
u500:
	
l30000611:	
	line	11
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	goto	l30000614
	
l30000612:	
	line	13
	movlw	01h
u515:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u515
	
l30000613:	
	line	14
	movlw	(01h)
	movwf	(??___lwdiv+0+0)
	movf	(??___lwdiv+0+0),w
	addwf	(___lwdiv@counter),f
	
l30000614:	
	line	12
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u521
	goto	u520
u521:
	goto	l30000612
u520:
	
l30000615:	
	line	17
	movlw	01h
u535:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u535
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u545
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u545:
	skipc
	goto	u541
	goto	u540
u541:
	goto	l30000618
u540:
	
l30000616:	
	line	19
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	
l30000617:	
	line	20
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	
l30000618:	
	line	22
	movlw	01h
u555:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u555
	
l30000619:	
	line	23
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u561
	goto	u560
u561:
	goto	l30000615
u560:
	
l30000620:	
	line	25
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	
l27:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
; =============== function ___lwdiv ends ============

psect	text69,local,class=CODE,delta=2
global __ptext69
__ptext69:
	line	26
	signat	___lwdiv,8314
	global	_lcd_init

; *************** function _lcd_init *****************
; Defined at:
;		line 51 in file "C:\Users\Satheesh M\Documents\Body Temperature using PIC16F877A\MPLAB\lm35.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_lcd_cmd
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text69
	file	"C:\Users\Satheesh M\Documents\Body Temperature using PIC16F877A\MPLAB\lm35.c"
	line	51
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
;lm35.c: 51: void lcd_init() {
	
_lcd_init:	
	opt stack 6
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	52
	
l30000594:	
;lm35.c: 52: lcd_cmd(0x02);
	movlw	(02h)
	fcall	_lcd_cmd
	line	53
;lm35.c: 53: lcd_cmd(0x28);
	movlw	(028h)
	fcall	_lcd_cmd
	line	54
;lm35.c: 54: lcd_cmd(0x06);
	movlw	(06h)
	fcall	_lcd_cmd
	line	55
;lm35.c: 55: lcd_cmd(0x0c);
	movlw	(0Ch)
	fcall	_lcd_cmd
	line	56
;lm35.c: 56: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	
l7:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
; =============== function _lcd_init ends ============

psect	text70,local,class=CODE,delta=2
global __ptext70
__ptext70:
	line	57
	signat	_lcd_init,88
	global	_lcd_display

; *************** function _lcd_display *****************
; Defined at:
;		line 60 in file "C:\Users\Satheesh M\Documents\Body Temperature using PIC16F877A\MPLAB\lm35.c"
; Parameters:    Size  Location     Type
;  d               1    wreg     PTR const unsigned char 
;		 -> STR_1(8), STR_2(14), 
; Auto vars:     Size  Location     Type
;  d               1    3[BANK0 ] PTR const unsigned char 
;		 -> STR_1(8), STR_2(14), 
;  e               2    4[BANK0 ] int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       3       0       0       0
;      Temp:     0
;      Total:    3
; This function calls:
;		_lcd_data
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text70
	file	"C:\Users\Satheesh M\Documents\Body Temperature using PIC16F877A\MPLAB\lm35.c"
	line	60
	global	__size_of_lcd_display
	__size_of_lcd_display	equ	__end_of_lcd_display-_lcd_display
;lm35.c: 60: void lcd_display(const unsigned char d[]) {
	
_lcd_display:	
	opt stack 6
; Regs used in _lcd_display: [wreg+status,2+status,0+pclath+cstack]
;lcd_display@d stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_display@d)
	
l30000546:	
	line	61
;lm35.c: 61: for(int e = 0; d[e] != 0; e++) {
	movlw	low(0)
	movwf	(lcd_display@e)
	movlw	high(0)
	movwf	((lcd_display@e))+1
	goto	l30000549
	
l30000547:	
	line	62
;lm35.c: 62: lcd_data(d[e]);
	movf	(lcd_display@d),w
	addwf	(lcd_display@e),w
	FNCALL _lcd_display,stringtab
	fcall	stringdir
	fcall	_lcd_data
	
l30000548:	
	line	61
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(lcd_display@e),f
	skipnc
	incf	(lcd_display@e+1),f
	movlw	high(01h)
	addwf	(lcd_display@e+1),f
	
l30000549:	
	movf	(lcd_display@d),w
	addwf	(lcd_display@e),w
	FNCALL _lcd_display,stringtab
	fcall	stringdir
	iorlw	0
	skipz
	goto	u351
	goto	u350
u351:
	goto	l30000547
u350:
	
l8:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_display
	__end_of_lcd_display:
; =============== function _lcd_display ends ============

psect	text71,local,class=CODE,delta=2
global __ptext71
__ptext71:
	line	64
	signat	_lcd_display,4216
	global	_lcd_cmd

; *************** function _lcd_cmd *****************
; Defined at:
;		line 16 in file "C:\Users\Satheesh M\Documents\Body Temperature using PIC16F877A\MPLAB\lm35.c"
; Parameters:    Size  Location     Type
;  com             1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  com             1    2[BANK0 ] unsigned char 
;  b               2    0[BANK0 ] unsigned int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         3       3       0       0       0
;      Temp:     3
;      Total:    6
; This function calls:
;		_delay
; This function is called by:
;		_lcd_init
;		_main
; This function uses a non-reentrant model
; 
psect	text71
	file	"C:\Users\Satheesh M\Documents\Body Temperature using PIC16F877A\MPLAB\lm35.c"
	line	16
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
;lm35.c: 16: void lcd_cmd(unsigned char com) {
	
_lcd_cmd:	
	opt stack 5
; Regs used in _lcd_cmd: [wreg+status,2+status,0+pclath+cstack]
;lcd_cmd@com stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_cmd@com)
	
l30000581:	
	line	17
;lm35.c: 17: PORTD = (com & 0xf0);
	movf	(lcd_cmd@com),w
	andlw	0F0h
	movwf	(8)	;volatile
	
l30000582:	
	line	18
;lm35.c: 18: RD0 = 0;
	bcf	(64/8),(64)&7
	
l30000583:	
	line	19
;lm35.c: 19: RD1 = 0;
	bcf	(65/8),(65)&7
	
l30000584:	
	line	20
;lm35.c: 20: RD2 = 1;
	bsf	(66/8),(66)&7
	
l30000585:	
	line	21
;lm35.c: 21: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	
l30000586:	
	line	22
;lm35.c: 22: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	
l30000587:	
	line	24
;lm35.c: 23: unsigned int b;
;lm35.c: 24: b = com << 4;
	movf	(lcd_cmd@com),w
	movwf	(??_lcd_cmd+0+0)
	clrf	(??_lcd_cmd+0+0+1)
	movlw	04h
	movwf	(??_lcd_cmd+2+0)
u395:
	clrc
	rlf	(??_lcd_cmd+0+0),f
	rlf	(??_lcd_cmd+0+1),f
	decfsz	(??_lcd_cmd+2+0),f
	goto	u395
	movf	0+(??_lcd_cmd+0+0),w
	movwf	(lcd_cmd@b)
	movf	1+(??_lcd_cmd+0+0),w
	movwf	(lcd_cmd@b+1)
	
l30000588:	
	line	25
;lm35.c: 25: PORTD = (b & 0xf0);
	movf	(lcd_cmd@b),w
	andlw	0F0h
	movwf	(8)	;volatile
	
l30000589:	
	line	26
;lm35.c: 26: RD0 = 0;
	bcf	(64/8),(64)&7
	
l30000590:	
	line	27
;lm35.c: 27: RD1 = 0;
	bcf	(65/8),(65)&7
	
l30000591:	
	line	28
;lm35.c: 28: RD2 = 1;
	bsf	(66/8),(66)&7
	
l30000592:	
	line	29
;lm35.c: 29: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	
l30000593:	
	line	30
;lm35.c: 30: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	
l5:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
; =============== function _lcd_cmd ends ============

psect	text72,local,class=CODE,delta=2
global __ptext72
__ptext72:
	line	31
	signat	_lcd_cmd,4216
	global	_lcd_data

; *************** function _lcd_data *****************
; Defined at:
;		line 33 in file "C:\Users\Satheesh M\Documents\Body Temperature using PIC16F877A\MPLAB\lm35.c"
; Parameters:    Size  Location     Type
;  dat             1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  dat             1    2[BANK0 ] unsigned char 
;  c               2    0[BANK0 ] unsigned int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         3       3       0       0       0
;      Temp:     3
;      Total:    6
; This function calls:
;		_delay
; This function is called by:
;		_lcd_display
;		_main
; This function uses a non-reentrant model
; 
psect	text72
	file	"C:\Users\Satheesh M\Documents\Body Temperature using PIC16F877A\MPLAB\lm35.c"
	line	33
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
;lm35.c: 33: void lcd_data(unsigned char dat) {
	
_lcd_data:	
	opt stack 5
; Regs used in _lcd_data: [wreg+status,2+status,0+pclath+cstack]
;lcd_data@dat stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_data@dat)
	
l30000533:	
	line	34
;lm35.c: 34: PORTD = (dat & 0xf0);
	movf	(lcd_data@dat),w
	andlw	0F0h
	movwf	(8)	;volatile
	
l30000534:	
	line	35
;lm35.c: 35: RD0 = 1;
	bsf	(64/8),(64)&7
	
l30000535:	
	line	36
;lm35.c: 36: RD1 = 0;
	bcf	(65/8),(65)&7
	
l30000536:	
	line	37
;lm35.c: 37: RD2 = 1;
	bsf	(66/8),(66)&7
	
l30000537:	
	line	38
;lm35.c: 38: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	
l30000538:	
	line	39
;lm35.c: 39: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	
l30000539:	
	line	41
;lm35.c: 40: unsigned int c;
;lm35.c: 41: c = dat << 4;
	movf	(lcd_data@dat),w
	movwf	(??_lcd_data+0+0)
	clrf	(??_lcd_data+0+0+1)
	movlw	04h
	movwf	(??_lcd_data+2+0)
u345:
	clrc
	rlf	(??_lcd_data+0+0),f
	rlf	(??_lcd_data+0+1),f
	decfsz	(??_lcd_data+2+0),f
	goto	u345
	movf	0+(??_lcd_data+0+0),w
	movwf	(lcd_data@c)
	movf	1+(??_lcd_data+0+0),w
	movwf	(lcd_data@c+1)
	
l30000540:	
	line	42
;lm35.c: 42: PORTD = (c & 0xf0);
	movf	(lcd_data@c),w
	andlw	0F0h
	movwf	(8)	;volatile
	
l30000541:	
	line	43
;lm35.c: 43: RD0 = 1;
	bsf	(64/8),(64)&7
	
l30000542:	
	line	44
;lm35.c: 44: RD1 = 0;
	bcf	(65/8),(65)&7
	
l30000543:	
	line	45
;lm35.c: 45: RD2 = 1;
	bsf	(66/8),(66)&7
	
l30000544:	
	line	46
;lm35.c: 46: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	
l30000545:	
	line	47
;lm35.c: 47: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	
l6:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
; =============== function _lcd_data ends ============

psect	text73,local,class=CODE,delta=2
global __ptext73
__ptext73:
	line	48
	signat	_lcd_data,4216
	global	_delay

; *************** function _delay *****************
; Defined at:
;		line 11 in file "C:\Users\Satheesh M\Documents\Body Temperature using PIC16F877A\MPLAB\lm35.c"
; Parameters:    Size  Location     Type
;  a               2    0[COMMON] unsigned int 
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         2       0       0       0       0
;      Temp:     0
;      Total:    2
; This function calls:
;		Nothing
; This function is called by:
;		_lcd_cmd
;		_lcd_data
;		_main
; This function uses a non-reentrant model
; 
psect	text73
	file	"C:\Users\Satheesh M\Documents\Body Temperature using PIC16F877A\MPLAB\lm35.c"
	line	11
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
;pic168xa.h: 19: volatile unsigned char INDF @ 0x00;
;pic168xa.h: 20: volatile unsigned char TMR0 @ 0x01;
;pic168xa.h: 21: volatile unsigned char PCL @ 0x02;
;pic168xa.h: 22: volatile unsigned char STATUS @ 0x03;
;pic168xa.h: 23: unsigned char FSR @ 0x04;
;pic168xa.h: 24: volatile unsigned char PORTA @ 0x05;
;pic168xa.h: 25: volatile unsigned char PORTB @ 0x06;
;pic168xa.h: 26: volatile unsigned char PORTC @ 0x07;
;pic168xa.h: 28: volatile unsigned char PORTD @ 0x08;
;pic168xa.h: 29: volatile unsigned char PORTE @ 0x09;
	
_delay:	
	opt stack 4
; Regs used in _delay: [wreg]
	
l30000579:	
	
l30000580:	
	line	12
	movlw	low(01h)
	subwf	(delay@a),f
	movlw	high(01h)
	skipc
	decf	(delay@a+1),f
	subwf	(delay@a+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@a+1))&07fh,w
	skipz
	goto	u385
	movlw	low(0FFFFh)
	xorwf	((delay@a))&07fh,w
u385:

	skipz
	goto	u381
	goto	u380
u381:
	goto	l30000580
u380:
	
l1:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
; =============== function _delay ends ============

psect	text74,local,class=CODE,delta=2
global __ptext74
__ptext74:
	line	13
	signat	_delay,4216
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	end
