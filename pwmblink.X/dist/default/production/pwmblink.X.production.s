subtitle "Microchip MPLAB XC8 C Compiler v2.50 (Free license) build 20240725155939 Og1 "

pagewidth 120

	opt flic

	processor	18F57Q43
include "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\18f57q43.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 328 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLKRCON equ 039h ;# 
# 432 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLKRCLK equ 03Ah ;# 
# 516 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMCON0 equ 040h ;# 
# 560 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMCON1 equ 041h ;# 
# 595 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMLOCK equ 042h ;# 
# 617 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMADR equ 043h ;# 
# 624 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMADRL equ 043h ;# 
# 694 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMADRH equ 044h ;# 
# 764 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMADRU equ 045h ;# 
# 822 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMDAT equ 046h ;# 
# 829 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMDATL equ 046h ;# 
# 899 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMDATH equ 047h ;# 
# 969 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
VREGCON equ 048h ;# 
# 1023 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
BORCON equ 049h ;# 
# 1050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
HLVDCON0 equ 04Ah ;# 
# 1130 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
HLVDCON1 equ 04Bh ;# 
# 1202 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ZCDCON equ 04Ch ;# 
# 1282 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD0 equ 060h ;# 
# 1339 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD1 equ 061h ;# 
# 1401 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD3 equ 063h ;# 
# 1452 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD4 equ 064h ;# 
# 1508 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD5 equ 065h ;# 
# 1559 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD6 equ 066h ;# 
# 1621 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD7 equ 067h ;# 
# 1683 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD8 equ 068h ;# 
# 1733 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CON0 equ 06Ah ;# 
# 1801 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CON1 equ 06Bh ;# 
# 1867 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1SRC equ 06Ch ;# 
# 1971 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CARL equ 06Dh ;# 
# 2063 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CARH equ 06Eh ;# 
# 2155 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CMOUT equ 06Fh ;# 
# 2181 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM1CON0 equ 070h ;# 
# 2261 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM1CON1 equ 071h ;# 
# 2301 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM1NCH equ 072h ;# 
# 2361 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM1PCH equ 073h ;# 
# 2421 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM2CON0 equ 074h ;# 
# 2501 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM2CON1 equ 075h ;# 
# 2541 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM2NCH equ 076h ;# 
# 2601 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM2PCH equ 077h ;# 
# 2661 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTCON0 equ 078h ;# 
# 2772 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTCON1 equ 079h ;# 
# 2892 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTPS equ 07Ah ;# 
# 2899 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTPSL equ 07Ah ;# 
# 2977 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTPSH equ 07Bh ;# 
# 3055 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTTMR equ 07Ch ;# 
# 3152 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DAC1DAT equ 07Dh ;# 
# 3159 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DAC1DATL equ 07Dh ;# 
# 3237 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DAC1CON equ 07Fh ;# 
# 3340 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1RXB equ 080h ;# 
# 3410 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TXB equ 081h ;# 
# 3480 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TCNT equ 082h ;# 
# 3487 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TCNTL equ 082h ;# 
# 3507 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TCNTH equ 083h ;# 
# 3527 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1CON0 equ 084h ;# 
# 3593 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1CON1 equ 085h ;# 
# 3695 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1CON2 equ 086h ;# 
# 3773 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1STATUS equ 087h ;# 
# 3855 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TWIDTH equ 088h ;# 
# 3895 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1BAUD equ 089h ;# 
# 3965 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1INTF equ 08Ah ;# 
# 4057 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1INTE equ 08Bh ;# 
# 4149 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1CLK equ 08Ch ;# 
# 4241 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2RXB equ 08Dh ;# 
# 4311 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TXB equ 08Eh ;# 
# 4381 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TCNT equ 08Fh ;# 
# 4388 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TCNTL equ 08Fh ;# 
# 4408 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TCNTH equ 090h ;# 
# 4428 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2CON0 equ 091h ;# 
# 4494 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2CON1 equ 092h ;# 
# 4596 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2CON2 equ 093h ;# 
# 4674 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2STATUS equ 094h ;# 
# 4756 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TWIDTH equ 095h ;# 
# 4796 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2BAUD equ 096h ;# 
# 4866 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2INTF equ 097h ;# 
# 4958 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2INTE equ 098h ;# 
# 5050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2CLK equ 099h ;# 
# 5142 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ACTCON equ 0ACh ;# 
# 5212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCCON1 equ 0ADh ;# 
# 5282 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCCON2 equ 0AEh ;# 
# 5352 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCCON3 equ 0AFh ;# 
# 5392 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCTUNE equ 0B0h ;# 
# 5450 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCFRQ equ 0B1h ;# 
# 5455 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCFREQ equ 0B1h ;# 
# 5540 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCSTAT equ 0B2h ;# 
# 5545 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCSTAT1 equ 0B2h ;# 
# 5652 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCEN equ 0B3h ;# 
# 5709 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRLOCK equ 0B4h ;# 
# 5729 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANPR equ 0B5h ;# 
# 5797 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA1PR equ 0B6h ;# 
# 5865 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA2PR equ 0B7h ;# 
# 5933 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA3PR equ 0B8h ;# 
# 6001 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA4PR equ 0B9h ;# 
# 6069 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA5PR equ 0BAh ;# 
# 6137 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA6PR equ 0BBh ;# 
# 6205 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MAINPR equ 0BEh ;# 
# 6273 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ISRPR equ 0BFh ;# 
# 6341 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCDATA equ 0D4h ;# 
# 6403 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCSELECT equ 0D5h ;# 
# 6443 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnCON equ 0D6h ;# 
# 6513 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnPOL equ 0D7h ;# 
# 6558 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnSEL0 equ 0D8h ;# 
# 6628 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnSEL1 equ 0D9h ;# 
# 6698 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnSEL2 equ 0DAh ;# 
# 6768 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnSEL3 equ 0DBh ;# 
# 6838 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnGLS0 equ 0DCh ;# 
# 6900 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnGLS1 equ 0DDh ;# 
# 6962 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnGLS2 equ 0DEh ;# 
# 7024 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnGLS3 equ 0DFh ;# 
# 7086 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMASELECT equ 0E8h ;# 
# 7126 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnBUF equ 0E9h ;# 
# 7196 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDCNT equ 0EAh ;# 
# 7203 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDCNTL equ 0EAh ;# 
# 7273 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDCNTH equ 0EBh ;# 
# 7319 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDPTR equ 0ECh ;# 
# 7326 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDPTRL equ 0ECh ;# 
# 7396 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDPTRH equ 0EDh ;# 
# 7466 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSZ equ 0EEh ;# 
# 7473 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSZL equ 0EEh ;# 
# 7543 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSZH equ 0EFh ;# 
# 7589 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSA equ 0F0h ;# 
# 7596 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSAL equ 0F0h ;# 
# 7666 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSAH equ 0F1h ;# 
# 7736 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSCNT equ 0F2h ;# 
# 7743 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSCNTL equ 0F2h ;# 
# 7813 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSCNTH equ 0F3h ;# 
# 7861 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSPTR equ 0F4h ;# 
# 7868 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSPTRL equ 0F4h ;# 
# 7938 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSPTRH equ 0F5h ;# 
# 8008 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSPTRU equ 0F6h ;# 
# 8066 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSZ equ 0F7h ;# 
# 8073 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSZL equ 0F7h ;# 
# 8143 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSZH equ 0F8h ;# 
# 8191 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSA equ 0F9h ;# 
# 8198 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSAL equ 0F9h ;# 
# 8268 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSAH equ 0FAh ;# 
# 8338 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSAU equ 0FBh ;# 
# 8396 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnCON0 equ 0FCh ;# 
# 8442 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnCON1 equ 0FDh ;# 
# 8486 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnAIRQ equ 0FEh ;# 
# 8556 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSIRQ equ 0FFh ;# 
# 8626 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PPSLOCK equ 0200h ;# 
# 8646 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA0PPS equ 0201h ;# 
# 8702 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA1PPS equ 0202h ;# 
# 8758 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA2PPS equ 0203h ;# 
# 8814 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA3PPS equ 0204h ;# 
# 8870 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA4PPS equ 0205h ;# 
# 8926 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA5PPS equ 0206h ;# 
# 8982 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA6PPS equ 0207h ;# 
# 9038 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA7PPS equ 0208h ;# 
# 9094 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB0PPS equ 0209h ;# 
# 9150 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB1PPS equ 020Ah ;# 
# 9206 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB2PPS equ 020Bh ;# 
# 9262 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB3PPS equ 020Ch ;# 
# 9318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB4PPS equ 020Dh ;# 
# 9374 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB5PPS equ 020Eh ;# 
# 9430 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB6PPS equ 020Fh ;# 
# 9486 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB7PPS equ 0210h ;# 
# 9542 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC0PPS equ 0211h ;# 
# 9598 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC1PPS equ 0212h ;# 
# 9654 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC2PPS equ 0213h ;# 
# 9710 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC3PPS equ 0214h ;# 
# 9766 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC4PPS equ 0215h ;# 
# 9822 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC5PPS equ 0216h ;# 
# 9878 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC6PPS equ 0217h ;# 
# 9934 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC7PPS equ 0218h ;# 
# 9990 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD0PPS equ 0219h ;# 
# 10046 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD1PPS equ 021Ah ;# 
# 10102 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD2PPS equ 021Bh ;# 
# 10158 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD3PPS equ 021Ch ;# 
# 10214 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD4PPS equ 021Dh ;# 
# 10270 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD5PPS equ 021Eh ;# 
# 10326 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD6PPS equ 021Fh ;# 
# 10382 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD7PPS equ 0220h ;# 
# 10438 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RE0PPS equ 0221h ;# 
# 10494 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RE1PPS equ 0222h ;# 
# 10550 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RE2PPS equ 0223h ;# 
# 10606 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF0PPS equ 0229h ;# 
# 10662 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF1PPS equ 022Ah ;# 
# 10718 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF2PPS equ 022Bh ;# 
# 10774 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF3PPS equ 022Ch ;# 
# 10830 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF4PPS equ 022Dh ;# 
# 10886 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF5PPS equ 022Eh ;# 
# 10942 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF6PPS equ 022Fh ;# 
# 10998 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF7PPS equ 0230h ;# 
# 11054 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INT0PPS equ 023Eh ;# 
# 11114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INT1PPS equ 023Fh ;# 
# 11180 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INT2PPS equ 0240h ;# 
# 11252 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T0CKIPPS equ 0241h ;# 
# 11324 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1CKIPPS equ 0242h ;# 
# 11396 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1GPPS equ 0243h ;# 
# 11462 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3CKIPPS equ 0244h ;# 
# 11534 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3GPPS equ 0245h ;# 
# 11600 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5CKIPPS equ 0246h ;# 
# 11672 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5GPPS equ 0247h ;# 
# 11738 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2INPPS equ 0248h ;# 
# 11804 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4INPPS equ 0249h ;# 
# 11870 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6INPPS equ 024Ah ;# 
# 11936 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP1PPS equ 024Fh ;# 
# 12008 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP2PPS equ 0250h ;# 
# 12080 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP3PPS equ 0251h ;# 
# 12146 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1ERSPPS equ 0253h ;# 
# 12212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2ERSPPS equ 0254h ;# 
# 12284 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3ERSPPS equ 0255h ;# 
# 12350 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWMIN0PPS equ 0257h ;# 
# 12422 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWMIN1PPS equ 0258h ;# 
# 12494 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1WINPPS equ 0259h ;# 
# 12566 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1SIGPPS equ 025Ah ;# 
# 12638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1PPS equ 025Bh ;# 
# 12643 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1INPPS equ 025Bh ;# 
# 12848 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2PPS equ 025Ch ;# 
# 12853 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2INPPS equ 025Ch ;# 
# 13058 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3PPS equ 025Dh ;# 
# 13063 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3INPPS equ 025Dh ;# 
# 13268 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CARLPPS equ 025Eh ;# 
# 13273 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MDCARLPPS equ 025Eh ;# 
# 13398 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CARHPPS equ 025Fh ;# 
# 13403 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MDCARHPPS equ 025Fh ;# 
# 13528 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1SRCPPS equ 0260h ;# 
# 13533 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MDSRCPPS equ 0260h ;# 
# 13658 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN0PPS equ 0261h ;# 
# 13724 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN1PPS equ 0262h ;# 
# 13790 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN2PPS equ 0263h ;# 
# 13856 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN3PPS equ 0264h ;# 
# 13922 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN4PPS equ 0265h ;# 
# 13988 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN5PPS equ 0266h ;# 
# 14054 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN6PPS equ 0267h ;# 
# 14120 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN7PPS equ 0268h ;# 
# 14186 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACTPPS equ 0269h ;# 
# 14252 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1SCKPPS equ 026Ah ;# 
# 14318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1SDIPPS equ 026Bh ;# 
# 14384 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1SSPPS equ 026Ch ;# 
# 14450 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2SCKPPS equ 026Dh ;# 
# 14516 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2SDIPPS equ 026Eh ;# 
# 14582 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2SSPPS equ 026Fh ;# 
# 14648 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1SDAPPS equ 0270h ;# 
# 14714 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1SCLPPS equ 0271h ;# 
# 14780 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1RXPPS equ 0272h ;# 
# 14852 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1CTSPPS equ 0273h ;# 
# 14924 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2RXPPS equ 0274h ;# 
# 14990 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2CTSPPS equ 0275h ;# 
# 15056 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3RXPPS equ 0276h ;# 
# 15128 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3CTSPPS equ 0277h ;# 
# 15200 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4RXPPS equ 0278h ;# 
# 15266 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4CTSPPS equ 0279h ;# 
# 15332 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5RXPPS equ 027Ah ;# 
# 15404 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5CTSPPS equ 027Bh ;# 
# 15476 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC4I2C equ 0286h ;# 
# 15608 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC3I2C equ 0287h ;# 
# 15740 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB2I2C equ 0288h ;# 
# 15872 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB1I2C equ 0289h ;# 
# 16004 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1RXB equ 028Bh ;# 
# 16024 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1TXB equ 028Ch ;# 
# 16044 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CNT equ 028Dh ;# 
# 16114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADB0 equ 028Eh ;# 
# 16134 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADB1 equ 028Fh ;# 
# 16154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADR0 equ 0290h ;# 
# 16174 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADR1 equ 0291h ;# 
# 16195 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADR2 equ 0292h ;# 
# 16215 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADR3 equ 0293h ;# 
# 16236 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CON0 equ 0294h ;# 
# 16313 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CON1 equ 0295h ;# 
# 16370 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CON2 equ 0296h ;# 
# 16446 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ERR equ 0297h ;# 
# 16536 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1STAT0 equ 0298h ;# 
# 16626 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1STAT1 equ 0299h ;# 
# 16673 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1PIR equ 029Ah ;# 
# 16775 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1PIE equ 029Bh ;# 
# 16877 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CLK equ 029Ch ;# 
# 16969 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1BTO equ 029Dh ;# 
# 17049 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1RXB equ 02A1h ;# 
# 17054 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1RXBL equ 02A1h ;# 
# 17087 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1RXCHK equ 02A2h ;# 
# 17107 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1TXB equ 02A3h ;# 
# 17112 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1TXBL equ 02A3h ;# 
# 17145 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1TXCHK equ 02A4h ;# 
# 17165 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P1 equ 02A5h ;# 
# 17172 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P1L equ 02A5h ;# 
# 17192 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P1H equ 02A6h ;# 
# 17212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P2 equ 02A7h ;# 
# 17219 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P2L equ 02A7h ;# 
# 17239 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P2H equ 02A8h ;# 
# 17259 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P3 equ 02A9h ;# 
# 17266 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P3L equ 02A9h ;# 
# 17286 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P3H equ 02AAh ;# 
# 17306 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1CON0 equ 02ABh ;# 
# 17434 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1CON1 equ 02ACh ;# 
# 17514 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1CON2 equ 02ADh ;# 
# 17656 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1BRG equ 02AEh ;# 
# 17663 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1BRGL equ 02AEh ;# 
# 17683 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1BRGH equ 02AFh ;# 
# 17703 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1FIFO equ 02B0h ;# 
# 17833 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1UIR equ 02B1h ;# 
# 17889 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1ERRIR equ 02B2h ;# 
# 18001 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1ERRIE equ 02B3h ;# 
# 18113 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2RXB equ 02B4h ;# 
# 18118 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2RXBL equ 02B4h ;# 
# 18151 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2TXB equ 02B6h ;# 
# 18156 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2TXBL equ 02B6h ;# 
# 18189 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P1 equ 02B8h ;# 
# 18196 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P1L equ 02B8h ;# 
# 18216 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P2 equ 02BAh ;# 
# 18223 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P2L equ 02BAh ;# 
# 18243 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P3 equ 02BCh ;# 
# 18250 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P3L equ 02BCh ;# 
# 18270 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2CON0 equ 02BEh ;# 
# 18386 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2CON1 equ 02BFh ;# 
# 18466 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2CON2 equ 02C0h ;# 
# 18598 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2BRG equ 02C1h ;# 
# 18605 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2BRGL equ 02C1h ;# 
# 18625 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2BRGH equ 02C2h ;# 
# 18645 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2FIFO equ 02C3h ;# 
# 18775 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2UIR equ 02C4h ;# 
# 18831 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2ERRIR equ 02C5h ;# 
# 18943 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2ERRIE equ 02C6h ;# 
# 19055 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3RXB equ 02C7h ;# 
# 19060 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3RXBL equ 02C7h ;# 
# 19093 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3TXB equ 02C9h ;# 
# 19098 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3TXBL equ 02C9h ;# 
# 19131 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P1 equ 02CBh ;# 
# 19138 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P1L equ 02CBh ;# 
# 19158 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P2 equ 02CDh ;# 
# 19165 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P2L equ 02CDh ;# 
# 19185 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P3 equ 02CFh ;# 
# 19192 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P3L equ 02CFh ;# 
# 19212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3CON0 equ 02D1h ;# 
# 19328 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3CON1 equ 02D2h ;# 
# 19408 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3CON2 equ 02D3h ;# 
# 19540 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3BRG equ 02D4h ;# 
# 19547 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3BRGL equ 02D4h ;# 
# 19567 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3BRGH equ 02D5h ;# 
# 19587 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3FIFO equ 02D6h ;# 
# 19717 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3UIR equ 02D7h ;# 
# 19773 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3ERRIR equ 02D8h ;# 
# 19885 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3ERRIE equ 02D9h ;# 
# 19997 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4RXB equ 02DAh ;# 
# 20002 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4RXBL equ 02DAh ;# 
# 20035 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4TXB equ 02DCh ;# 
# 20040 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4TXBL equ 02DCh ;# 
# 20073 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P1 equ 02DEh ;# 
# 20080 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P1L equ 02DEh ;# 
# 20100 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P2 equ 02E0h ;# 
# 20107 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P2L equ 02E0h ;# 
# 20127 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P3 equ 02E2h ;# 
# 20134 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P3L equ 02E2h ;# 
# 20154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4CON0 equ 02E4h ;# 
# 20270 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4CON1 equ 02E5h ;# 
# 20350 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4CON2 equ 02E6h ;# 
# 20482 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4BRG equ 02E7h ;# 
# 20489 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4BRGL equ 02E7h ;# 
# 20509 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4BRGH equ 02E8h ;# 
# 20529 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4FIFO equ 02E9h ;# 
# 20659 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4UIR equ 02EAh ;# 
# 20715 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4ERRIR equ 02EBh ;# 
# 20827 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4ERRIE equ 02ECh ;# 
# 20939 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5RXB equ 02EDh ;# 
# 20944 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5RXBL equ 02EDh ;# 
# 20977 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5TXB equ 02EFh ;# 
# 20982 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5TXBL equ 02EFh ;# 
# 21015 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P1 equ 02F1h ;# 
# 21022 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P1L equ 02F1h ;# 
# 21042 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P2 equ 02F3h ;# 
# 21049 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P2L equ 02F3h ;# 
# 21069 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P3 equ 02F5h ;# 
# 21076 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P3L equ 02F5h ;# 
# 21096 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5CON0 equ 02F7h ;# 
# 21212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5CON1 equ 02F8h ;# 
# 21292 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5CON2 equ 02F9h ;# 
# 21424 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5BRG equ 02FAh ;# 
# 21431 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5BRGL equ 02FAh ;# 
# 21451 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5BRGH equ 02FBh ;# 
# 21471 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5FIFO equ 02FCh ;# 
# 21601 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5UIR equ 02FDh ;# 
# 21657 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5ERRIR equ 02FEh ;# 
# 21769 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5ERRIE equ 02FFh ;# 
# 21883 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1TMR equ 0300h ;# 
# 21890 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1TMRL equ 0300h ;# 
# 21960 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1TMRH equ 0301h ;# 
# 22030 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1TMRU equ 0302h ;# 
# 22102 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPR equ 0303h ;# 
# 22109 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPRL equ 0303h ;# 
# 22179 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPRH equ 0304h ;# 
# 22249 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPRU equ 0305h ;# 
# 22321 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPW equ 0306h ;# 
# 22328 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPWL equ 0306h ;# 
# 22398 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPWH equ 0307h ;# 
# 22468 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPWU equ 0308h ;# 
# 22540 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1PR equ 0309h ;# 
# 22547 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1PRL equ 0309h ;# 
# 22617 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1PRH equ 030Ah ;# 
# 22687 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1PRU equ 030Bh ;# 
# 22757 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CON0 equ 030Ch ;# 
# 22822 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CON1 equ 030Dh ;# 
# 22922 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1STAT equ 030Eh ;# 
# 23012 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CLK equ 030Fh ;# 
# 23092 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1SIG equ 0310h ;# 
# 23196 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1WIN equ 0311h ;# 
# 23300 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR0L equ 0318h ;# 
# 23305 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR0 equ 0318h ;# 
# 23438 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR0H equ 0319h ;# 
# 23443 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR0 equ 0319h ;# 
# 23692 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T0CON0 equ 031Ah ;# 
# 23816 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T0CON1 equ 031Bh ;# 
# 23958 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1 equ 031Ch ;# 
# 23965 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1L equ 031Ch ;# 
# 24085 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1H equ 031Dh ;# 
# 24205 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1CON equ 031Eh ;# 
# 24210 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1CON equ 031Eh ;# 
# 24427 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1GCON equ 031Fh ;# 
# 24432 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1GCON equ 031Fh ;# 
# 24713 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1GATE equ 0320h ;# 
# 24718 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1GATE equ 0320h ;# 
# 24903 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1CLK equ 0321h ;# 
# 24908 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1CLK equ 0321h ;# 
# 24912 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR1 equ 0321h ;# 
# 25149 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2TMR equ 0322h ;# 
# 25154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR2 equ 0322h ;# 
# 25187 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2PR equ 0323h ;# 
# 25192 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR2 equ 0323h ;# 
# 25225 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2CON equ 0324h ;# 
# 25371 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2HLT equ 0325h ;# 
# 25499 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2CLKCON equ 0326h ;# 
# 25504 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2CLK equ 0326h ;# 
# 25705 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2RST equ 0327h ;# 
# 25821 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3 equ 0328h ;# 
# 25828 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3L equ 0328h ;# 
# 25948 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3H equ 0329h ;# 
# 26068 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3CON equ 032Ah ;# 
# 26073 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3CON equ 032Ah ;# 
# 26290 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3GCON equ 032Bh ;# 
# 26295 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3GCON equ 032Bh ;# 
# 26576 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3GATE equ 032Ch ;# 
# 26581 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3GATE equ 032Ch ;# 
# 26766 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3CLK equ 032Dh ;# 
# 26771 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3CLK equ 032Dh ;# 
# 26775 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR3 equ 032Dh ;# 
# 27012 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4TMR equ 032Eh ;# 
# 27017 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR4 equ 032Eh ;# 
# 27050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4PR equ 032Fh ;# 
# 27055 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR4 equ 032Fh ;# 
# 27088 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4CON equ 0330h ;# 
# 27234 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4HLT equ 0331h ;# 
# 27362 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4CLKCON equ 0332h ;# 
# 27367 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4CLK equ 0332h ;# 
# 27568 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4RST equ 0333h ;# 
# 27684 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5 equ 0334h ;# 
# 27691 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5L equ 0334h ;# 
# 27811 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5H equ 0335h ;# 
# 27931 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5CON equ 0336h ;# 
# 27936 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5CON equ 0336h ;# 
# 28153 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5GCON equ 0337h ;# 
# 28158 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5GCON equ 0337h ;# 
# 28439 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5GATE equ 0338h ;# 
# 28444 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5GATE equ 0338h ;# 
# 28629 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5CLK equ 0339h ;# 
# 28634 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5CLK equ 0339h ;# 
# 28638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR5 equ 0339h ;# 
# 28875 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6TMR equ 033Ah ;# 
# 28880 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR6 equ 033Ah ;# 
# 28913 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6PR equ 033Bh ;# 
# 28918 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR6 equ 033Bh ;# 
# 28951 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6CON equ 033Ch ;# 
# 29097 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6HLT equ 033Dh ;# 
# 29225 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6CLKCON equ 033Eh ;# 
# 29230 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6CLK equ 033Eh ;# 
# 29431 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6RST equ 033Fh ;# 
# 29547 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR1 equ 0340h ;# 
# 29554 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR1L equ 0340h ;# 
# 29574 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR1H equ 0341h ;# 
# 29594 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP1CON equ 0342h ;# 
# 29712 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP1CAP equ 0343h ;# 
# 29792 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR2 equ 0344h ;# 
# 29799 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR2L equ 0344h ;# 
# 29819 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR2H equ 0345h ;# 
# 29839 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP2CON equ 0346h ;# 
# 29957 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP2CAP equ 0347h ;# 
# 30037 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR3 equ 0348h ;# 
# 30044 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR3L equ 0348h ;# 
# 30064 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR3H equ 0349h ;# 
# 30084 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP3CON equ 034Ah ;# 
# 30202 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP3CAP equ 034Bh ;# 
# 30282 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPTMRS0 equ 034Ch ;# 
# 30352 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCDATA equ 034Fh ;# 
# 30359 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCDATL equ 034Fh ;# 
# 30421 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCDATH equ 0350h ;# 
# 30483 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCACC equ 0351h ;# 
# 30490 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCACCL equ 0351h ;# 
# 30552 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCACCH equ 0352h ;# 
# 30614 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCSHFT equ 0353h ;# 
# 30621 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCSHIFTL equ 0353h ;# 
# 30683 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCSHIFTH equ 0354h ;# 
# 30745 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCXOR equ 0355h ;# 
# 30752 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCXORL equ 0355h ;# 
# 30809 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCXORH equ 0356h ;# 
# 30871 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCCON0 equ 0357h ;# 
# 30931 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCCON1 equ 0358h ;# 
# 31009 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANLADR equ 035Ah ;# 
# 31016 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANLADRL equ 035Ah ;# 
# 31144 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANLADRH equ 035Bh ;# 
# 31272 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANLADRU equ 035Ch ;# 
# 31378 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANHADR equ 035Dh ;# 
# 31385 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANHADRL equ 035Dh ;# 
# 31513 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANHADRH equ 035Eh ;# 
# 31641 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANHADRU equ 035Fh ;# 
# 31745 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANCON0 equ 0360h ;# 
# 31805 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANTRIG equ 0361h ;# 
# 31865 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR0 equ 0362h ;# 
# 31917 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR1 equ 0363h ;# 
# 31979 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR2 equ 0364h ;# 
# 32024 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR3 equ 0365h ;# 
# 32086 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR4 equ 0366h ;# 
# 32137 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR5 equ 0367h ;# 
# 32194 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR6 equ 0368h ;# 
# 32256 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR7 equ 0369h ;# 
# 32313 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR8 equ 036Ah ;# 
# 32375 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR9 equ 036Bh ;# 
# 32420 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR10 equ 036Ch ;# 
# 32482 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR11 equ 036Dh ;# 
# 32544 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR12 equ 036Eh ;# 
# 32606 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR13 equ 036Fh ;# 
# 32668 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR14 equ 0370h ;# 
# 32701 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR15 equ 0371h ;# 
# 32739 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
STATUS_CSHAD equ 0373h ;# 
# 32828 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WREG_CSHAD equ 0374h ;# 
# 32848 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
BSR_CSHAD equ 0375h ;# 
# 32855 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SHADCON equ 0376h ;# 
# 32875 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
STATUS_SHAD equ 0377h ;# 
# 32964 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WREG_SHAD equ 0378h ;# 
# 32984 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
BSR_SHAD equ 0379h ;# 
# 32991 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLATH_SHAD equ 037Ah ;# 
# 33011 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLATU_SHAD equ 037Bh ;# 
# 33031 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0SH equ 037Ch ;# 
# 33038 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0L_SHAD equ 037Ch ;# 
# 33058 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0H_SHAD equ 037Dh ;# 
# 33078 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1SH equ 037Eh ;# 
# 33085 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1L_SHAD equ 037Eh ;# 
# 33105 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1H_SHAD equ 037Fh ;# 
# 33125 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2SH equ 0380h ;# 
# 33132 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2L_SHAD equ 0380h ;# 
# 33152 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2H_SHAD equ 0381h ;# 
# 33172 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODSH equ 0382h ;# 
# 33179 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODL_SHAD equ 0382h ;# 
# 33199 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODH_SHAD equ 0383h ;# 
# 33219 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1CLK equ 03BCh ;# 
# 33224 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1CLKCON equ 03BCh ;# 
# 33273 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1ISM equ 03BDh ;# 
# 33278 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1DAT equ 03BDh ;# 
# 33391 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1DBR equ 03BEh ;# 
# 33495 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1DBF equ 03BFh ;# 
# 33599 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1CON0 equ 03C0h ;# 
# 33700 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1CON1 equ 03C1h ;# 
# 33778 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1AS0 equ 03C2h ;# 
# 33940 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1AS1 equ 03C3h ;# 
# 34002 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1STR equ 03C4h ;# 
# 34114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2CLK equ 03C5h ;# 
# 34119 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2CLKCON equ 03C5h ;# 
# 34168 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2ISM equ 03C6h ;# 
# 34173 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2DAT equ 03C6h ;# 
# 34286 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2DBR equ 03C7h ;# 
# 34390 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2DBF equ 03C8h ;# 
# 34494 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2CON0 equ 03C9h ;# 
# 34595 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2CON1 equ 03CAh ;# 
# 34673 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2AS0 equ 03CBh ;# 
# 34835 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2AS1 equ 03CCh ;# 
# 34897 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2STR equ 03CDh ;# 
# 35009 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3CLK equ 03CEh ;# 
# 35014 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3CLKCON equ 03CEh ;# 
# 35063 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3ISM equ 03CFh ;# 
# 35068 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3DAT equ 03CFh ;# 
# 35181 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3DBR equ 03D0h ;# 
# 35285 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3DBF equ 03D1h ;# 
# 35389 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3CON0 equ 03D2h ;# 
# 35490 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3CON1 equ 03D3h ;# 
# 35568 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3AS0 equ 03D4h ;# 
# 35730 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3AS1 equ 03D5h ;# 
# 35792 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3STR equ 03D6h ;# 
# 35904 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FVRCON equ 03D7h ;# 
# 35993 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCPCON equ 03D8h ;# 
# 35998 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCP equ 03D8h ;# 
# 36093 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADLTH equ 03D9h ;# 
# 36100 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADLTHL equ 03D9h ;# 
# 36228 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADLTHH equ 03DAh ;# 
# 36356 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADUTH equ 03DBh ;# 
# 36363 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADUTHL equ 03DBh ;# 
# 36491 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADUTHH equ 03DCh ;# 
# 36619 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADERR equ 03DDh ;# 
# 36626 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADERRL equ 03DDh ;# 
# 36754 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADERRH equ 03DEh ;# 
# 36882 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADSTPT equ 03DFh ;# 
# 36889 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADSTPTL equ 03DFh ;# 
# 37017 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADSTPTH equ 03E0h ;# 
# 37145 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADFLTR equ 03E1h ;# 
# 37152 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADFLTRL equ 03E1h ;# 
# 37280 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADFLTRH equ 03E2h ;# 
# 37410 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACC equ 03E3h ;# 
# 37417 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACCL equ 03E3h ;# 
# 37545 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACCH equ 03E4h ;# 
# 37673 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACCU equ 03E5h ;# 
# 37801 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCNT equ 03E6h ;# 
# 37929 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADRPT equ 03E7h ;# 
# 38057 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREV equ 03E8h ;# 
# 38064 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREVL equ 03E8h ;# 
# 38192 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREVH equ 03E9h ;# 
# 38320 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADRES equ 03EAh ;# 
# 38327 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADRESL equ 03EAh ;# 
# 38455 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADRESH equ 03EBh ;# 
# 38575 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPCH equ 03ECh ;# 
# 38633 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACQ equ 03EEh ;# 
# 38640 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACQL equ 03EEh ;# 
# 38768 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACQH equ 03EFh ;# 
# 38860 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCAP equ 03F0h ;# 
# 38912 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPRE equ 03F1h ;# 
# 38919 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREL equ 03F1h ;# 
# 39047 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREH equ 03F2h ;# 
# 39139 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCON0 equ 03F3h ;# 
# 39257 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCON1 equ 03F4h ;# 
# 39323 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCON2 equ 03F5h ;# 
# 39465 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCON3 equ 03F6h ;# 
# 39595 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADSTAT equ 03F7h ;# 
# 39727 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADREF equ 03F8h ;# 
# 39809 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACT equ 03F9h ;# 
# 39913 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCLK equ 03FAh ;# 
# 40017 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELA equ 0400h ;# 
# 40079 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUA equ 0401h ;# 
# 40141 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONA equ 0402h ;# 
# 40203 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONA equ 0403h ;# 
# 40265 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLA equ 0404h ;# 
# 40327 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCAP equ 0405h ;# 
# 40389 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCAN equ 0406h ;# 
# 40451 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCAF equ 0407h ;# 
# 40513 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELB equ 0408h ;# 
# 40575 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUB equ 0409h ;# 
# 40637 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONB equ 040Ah ;# 
# 40699 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONB equ 040Bh ;# 
# 40761 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLB equ 040Ch ;# 
# 40823 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCBP equ 040Dh ;# 
# 40885 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCBN equ 040Eh ;# 
# 40947 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCBF equ 040Fh ;# 
# 41009 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELC equ 0410h ;# 
# 41071 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUC equ 0411h ;# 
# 41133 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONC equ 0412h ;# 
# 41195 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONC equ 0413h ;# 
# 41257 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLC equ 0414h ;# 
# 41319 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCCP equ 0415h ;# 
# 41381 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCCN equ 0416h ;# 
# 41443 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCCF equ 0417h ;# 
# 41505 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELD equ 0418h ;# 
# 41567 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUD equ 0419h ;# 
# 41629 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCOND equ 041Ah ;# 
# 41691 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCOND equ 041Bh ;# 
# 41753 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLD equ 041Ch ;# 
# 41815 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELE equ 0420h ;# 
# 41847 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUE equ 0421h ;# 
# 41885 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONE equ 0422h ;# 
# 41917 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONE equ 0423h ;# 
# 41949 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLE equ 0424h ;# 
# 41987 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCEP equ 0425h ;# 
# 42008 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCEN equ 0426h ;# 
# 42029 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCEF equ 0427h ;# 
# 42050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELF equ 0428h ;# 
# 42112 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUF equ 0429h ;# 
# 42174 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONF equ 042Ah ;# 
# 42236 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONF equ 042Bh ;# 
# 42298 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLF equ 042Ch ;# 
# 42362 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1ACC equ 0440h ;# 
# 42369 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1ACCL equ 0440h ;# 
# 42497 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1ACCH equ 0441h ;# 
# 42625 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1ACCU equ 0442h ;# 
# 42707 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1INC equ 0443h ;# 
# 42714 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1INCL equ 0443h ;# 
# 42842 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1INCH equ 0444h ;# 
# 42970 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1INCU equ 0445h ;# 
# 43050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1CON equ 0446h ;# 
# 43118 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1CLK equ 0447h ;# 
# 43260 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2ACC equ 0448h ;# 
# 43267 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2ACCL equ 0448h ;# 
# 43395 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2ACCH equ 0449h ;# 
# 43523 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2ACCU equ 044Ah ;# 
# 43605 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2INC equ 044Bh ;# 
# 43612 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2INCL equ 044Bh ;# 
# 43740 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2INCH equ 044Ch ;# 
# 43868 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2INCU equ 044Dh ;# 
# 43948 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2CON equ 044Eh ;# 
# 44016 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2CLK equ 044Fh ;# 
# 44158 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3ACC equ 0450h ;# 
# 44165 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3ACCL equ 0450h ;# 
# 44293 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3ACCH equ 0451h ;# 
# 44421 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3ACCU equ 0452h ;# 
# 44503 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3INC equ 0453h ;# 
# 44510 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3INCL equ 0453h ;# 
# 44638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3INCH equ 0454h ;# 
# 44766 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3INCU equ 0455h ;# 
# 44846 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3CON equ 0456h ;# 
# 44914 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3CLK equ 0457h ;# 
# 45054 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTLOCK equ 0459h ;# 
# 45076 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTAD equ 045Ah ;# 
# 45083 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTADL equ 045Ah ;# 
# 45145 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTADH equ 045Bh ;# 
# 45207 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTADU equ 045Ch ;# 
# 45253 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTBASE equ 045Dh ;# 
# 45260 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTBASEL equ 045Dh ;# 
# 45322 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTBASEH equ 045Eh ;# 
# 45384 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTBASEU equ 045Fh ;# 
# 45428 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1ERS equ 0460h ;# 
# 45498 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1CLK equ 0461h ;# 
# 45568 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1LDS equ 0462h ;# 
# 45638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1PR equ 0463h ;# 
# 45645 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1PRL equ 0463h ;# 
# 45665 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1PRH equ 0464h ;# 
# 45685 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1CPRE equ 0465h ;# 
# 45705 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1PIPOS equ 0466h ;# 
# 45725 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1GIR equ 0467h ;# 
# 45751 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1GIE equ 0468h ;# 
# 45777 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1CON equ 0469h ;# 
# 45816 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1CFG equ 046Ah ;# 
# 45875 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P1 equ 046Bh ;# 
# 45882 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P1L equ 046Bh ;# 
# 45902 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P1H equ 046Ch ;# 
# 45922 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P2 equ 046Dh ;# 
# 45929 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P2L equ 046Dh ;# 
# 45949 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P2H equ 046Eh ;# 
# 45969 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2ERS equ 046Fh ;# 
# 46039 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2CLK equ 0470h ;# 
# 46109 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2LDS equ 0471h ;# 
# 46179 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2PR equ 0472h ;# 
# 46186 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2PRL equ 0472h ;# 
# 46206 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2PRH equ 0473h ;# 
# 46226 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2CPRE equ 0474h ;# 
# 46246 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2PIPOS equ 0475h ;# 
# 46266 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2GIR equ 0476h ;# 
# 46292 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2GIE equ 0477h ;# 
# 46318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2CON equ 0478h ;# 
# 46357 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1CFG equ 0479h ;# 
# 46416 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P1 equ 047Ah ;# 
# 46423 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P1L equ 047Ah ;# 
# 46443 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P1H equ 047Bh ;# 
# 46463 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P2 equ 047Ch ;# 
# 46470 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P2L equ 047Ch ;# 
# 46490 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P2H equ 047Dh ;# 
# 46510 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3ERS equ 047Eh ;# 
# 46580 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3CLK equ 047Fh ;# 
# 46650 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3LDS equ 0480h ;# 
# 46720 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3PR equ 0481h ;# 
# 46727 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3PRL equ 0481h ;# 
# 46747 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3PRH equ 0482h ;# 
# 46767 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3CPRE equ 0483h ;# 
# 46787 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3PIPOS equ 0484h ;# 
# 46807 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3GIR equ 0485h ;# 
# 46833 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3GIE equ 0486h ;# 
# 46859 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3CON equ 0487h ;# 
# 46898 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1CFG equ 0488h ;# 
# 46957 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P1 equ 0489h ;# 
# 46964 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P1L equ 0489h ;# 
# 46984 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P1H equ 048Ah ;# 
# 47004 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P2 equ 048Bh ;# 
# 47011 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P2L equ 048Bh ;# 
# 47031 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P2H equ 048Ch ;# 
# 47051 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWMLOAD equ 049Ch ;# 
# 47083 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWMEN equ 049Dh ;# 
# 47115 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE0 equ 049Eh ;# 
# 47167 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE1 equ 049Fh ;# 
# 47229 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE2 equ 04A0h ;# 
# 47274 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE3 equ 04A1h ;# 
# 47336 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE4 equ 04A2h ;# 
# 47387 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE5 equ 04A3h ;# 
# 47444 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE6 equ 04A4h ;# 
# 47506 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE7 equ 04A5h ;# 
# 47563 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE8 equ 04A6h ;# 
# 47625 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE9 equ 04A7h ;# 
# 47670 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE10 equ 04A8h ;# 
# 47732 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE11 equ 04A9h ;# 
# 47794 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE12 equ 04AAh ;# 
# 47856 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE13 equ 04ABh ;# 
# 47918 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE14 equ 04ACh ;# 
# 47951 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE15 equ 04ADh ;# 
# 47989 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR0 equ 04AEh ;# 
# 48041 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR1 equ 04AFh ;# 
# 48103 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR2 equ 04B0h ;# 
# 48148 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR3 equ 04B1h ;# 
# 48210 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR4 equ 04B2h ;# 
# 48261 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR5 equ 04B3h ;# 
# 48318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR6 equ 04B4h ;# 
# 48380 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR7 equ 04B5h ;# 
# 48437 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR8 equ 04B6h ;# 
# 48499 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR9 equ 04B7h ;# 
# 48544 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR10 equ 04B8h ;# 
# 48606 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR11 equ 04B9h ;# 
# 48668 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR12 equ 04BAh ;# 
# 48730 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR13 equ 04BBh ;# 
# 48792 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR14 equ 04BCh ;# 
# 48825 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR15 equ 04BDh ;# 
# 48863 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATA equ 04BEh ;# 
# 48925 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATB equ 04BFh ;# 
# 48987 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATC equ 04C0h ;# 
# 49049 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATD equ 04C1h ;# 
# 49111 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATE equ 04C2h ;# 
# 49143 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATF equ 04C3h ;# 
# 49205 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISA equ 04C6h ;# 
# 49267 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISB equ 04C7h ;# 
# 49329 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISC equ 04C8h ;# 
# 49391 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISD equ 04C9h ;# 
# 49453 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISE equ 04CAh ;# 
# 49485 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISF equ 04CBh ;# 
# 49547 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTA equ 04CEh ;# 
# 49609 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTB equ 04CFh ;# 
# 49671 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTC equ 04D0h ;# 
# 49733 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTD equ 04D1h ;# 
# 49795 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTE equ 04D2h ;# 
# 49833 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTF equ 04D3h ;# 
# 49895 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INTCON0 equ 04D6h ;# 
# 49955 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INTCON1 equ 04D7h ;# 
# 49991 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
STATUS equ 04D8h ;# 
# 50080 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2 equ 04D9h ;# 
# 50087 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2L equ 04D9h ;# 
# 50107 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2H equ 04DAh ;# 
# 50114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PLUSW2 equ 04DBh ;# 
# 50134 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PREINC2 equ 04DCh ;# 
# 50154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTDEC2 equ 04DDh ;# 
# 50174 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTINC2 equ 04DEh ;# 
# 50194 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INDF2 equ 04DFh ;# 
# 50214 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
BSR equ 04E0h ;# 
# 50221 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1 equ 04E1h ;# 
# 50228 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1L equ 04E1h ;# 
# 50248 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1H equ 04E2h ;# 
# 50255 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PLUSW1 equ 04E3h ;# 
# 50275 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PREINC1 equ 04E4h ;# 
# 50295 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTDEC1 equ 04E5h ;# 
# 50315 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTINC1 equ 04E6h ;# 
# 50335 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INDF1 equ 04E7h ;# 
# 50355 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WREG equ 04E8h ;# 
# 50393 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0 equ 04E9h ;# 
# 50400 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0L equ 04E9h ;# 
# 50420 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0H equ 04EAh ;# 
# 50427 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PLUSW0 equ 04EBh ;# 
# 50447 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PREINC0 equ 04ECh ;# 
# 50467 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTDEC0 equ 04EDh ;# 
# 50487 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTINC0 equ 04EEh ;# 
# 50507 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INDF0 equ 04EFh ;# 
# 50527 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCON0 equ 04F0h ;# 
# 50680 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCON1 equ 04F1h ;# 
# 50747 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CPUDOZE equ 04F2h ;# 
# 50812 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PROD equ 04F3h ;# 
# 50819 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODL equ 04F3h ;# 
# 50839 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODH equ 04F4h ;# 
# 50859 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TABLAT equ 04F5h ;# 
# 50881 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TBLPTR equ 04F6h ;# 
# 50888 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TBLPTRL equ 04F6h ;# 
# 50908 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TBLPTRH equ 04F7h ;# 
# 50928 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TBLPTRU equ 04F8h ;# 
# 50959 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLAT equ 04F9h ;# 
# 50966 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCL equ 04F9h ;# 
# 50986 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLATH equ 04FAh ;# 
# 51006 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLATU equ 04FBh ;# 
# 51026 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
STKPTR equ 04FCh ;# 
# 51124 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TOS equ 04FDh ;# 
# 51131 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TOSL equ 04FDh ;# 
# 51151 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TOSH equ 04FEh ;# 
# 51171 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TOSU equ 04FFh ;# 
# 328 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLKRCON equ 039h ;# 
# 432 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLKRCLK equ 03Ah ;# 
# 516 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMCON0 equ 040h ;# 
# 560 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMCON1 equ 041h ;# 
# 595 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMLOCK equ 042h ;# 
# 617 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMADR equ 043h ;# 
# 624 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMADRL equ 043h ;# 
# 694 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMADRH equ 044h ;# 
# 764 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMADRU equ 045h ;# 
# 822 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMDAT equ 046h ;# 
# 829 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMDATL equ 046h ;# 
# 899 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMDATH equ 047h ;# 
# 969 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
VREGCON equ 048h ;# 
# 1023 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
BORCON equ 049h ;# 
# 1050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
HLVDCON0 equ 04Ah ;# 
# 1130 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
HLVDCON1 equ 04Bh ;# 
# 1202 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ZCDCON equ 04Ch ;# 
# 1282 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD0 equ 060h ;# 
# 1339 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD1 equ 061h ;# 
# 1401 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD3 equ 063h ;# 
# 1452 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD4 equ 064h ;# 
# 1508 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD5 equ 065h ;# 
# 1559 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD6 equ 066h ;# 
# 1621 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD7 equ 067h ;# 
# 1683 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD8 equ 068h ;# 
# 1733 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CON0 equ 06Ah ;# 
# 1801 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CON1 equ 06Bh ;# 
# 1867 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1SRC equ 06Ch ;# 
# 1971 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CARL equ 06Dh ;# 
# 2063 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CARH equ 06Eh ;# 
# 2155 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CMOUT equ 06Fh ;# 
# 2181 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM1CON0 equ 070h ;# 
# 2261 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM1CON1 equ 071h ;# 
# 2301 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM1NCH equ 072h ;# 
# 2361 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM1PCH equ 073h ;# 
# 2421 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM2CON0 equ 074h ;# 
# 2501 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM2CON1 equ 075h ;# 
# 2541 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM2NCH equ 076h ;# 
# 2601 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM2PCH equ 077h ;# 
# 2661 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTCON0 equ 078h ;# 
# 2772 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTCON1 equ 079h ;# 
# 2892 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTPS equ 07Ah ;# 
# 2899 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTPSL equ 07Ah ;# 
# 2977 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTPSH equ 07Bh ;# 
# 3055 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTTMR equ 07Ch ;# 
# 3152 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DAC1DAT equ 07Dh ;# 
# 3159 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DAC1DATL equ 07Dh ;# 
# 3237 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DAC1CON equ 07Fh ;# 
# 3340 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1RXB equ 080h ;# 
# 3410 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TXB equ 081h ;# 
# 3480 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TCNT equ 082h ;# 
# 3487 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TCNTL equ 082h ;# 
# 3507 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TCNTH equ 083h ;# 
# 3527 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1CON0 equ 084h ;# 
# 3593 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1CON1 equ 085h ;# 
# 3695 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1CON2 equ 086h ;# 
# 3773 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1STATUS equ 087h ;# 
# 3855 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TWIDTH equ 088h ;# 
# 3895 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1BAUD equ 089h ;# 
# 3965 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1INTF equ 08Ah ;# 
# 4057 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1INTE equ 08Bh ;# 
# 4149 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1CLK equ 08Ch ;# 
# 4241 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2RXB equ 08Dh ;# 
# 4311 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TXB equ 08Eh ;# 
# 4381 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TCNT equ 08Fh ;# 
# 4388 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TCNTL equ 08Fh ;# 
# 4408 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TCNTH equ 090h ;# 
# 4428 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2CON0 equ 091h ;# 
# 4494 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2CON1 equ 092h ;# 
# 4596 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2CON2 equ 093h ;# 
# 4674 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2STATUS equ 094h ;# 
# 4756 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TWIDTH equ 095h ;# 
# 4796 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2BAUD equ 096h ;# 
# 4866 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2INTF equ 097h ;# 
# 4958 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2INTE equ 098h ;# 
# 5050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2CLK equ 099h ;# 
# 5142 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ACTCON equ 0ACh ;# 
# 5212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCCON1 equ 0ADh ;# 
# 5282 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCCON2 equ 0AEh ;# 
# 5352 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCCON3 equ 0AFh ;# 
# 5392 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCTUNE equ 0B0h ;# 
# 5450 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCFRQ equ 0B1h ;# 
# 5455 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCFREQ equ 0B1h ;# 
# 5540 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCSTAT equ 0B2h ;# 
# 5545 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCSTAT1 equ 0B2h ;# 
# 5652 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCEN equ 0B3h ;# 
# 5709 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRLOCK equ 0B4h ;# 
# 5729 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANPR equ 0B5h ;# 
# 5797 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA1PR equ 0B6h ;# 
# 5865 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA2PR equ 0B7h ;# 
# 5933 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA3PR equ 0B8h ;# 
# 6001 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA4PR equ 0B9h ;# 
# 6069 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA5PR equ 0BAh ;# 
# 6137 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA6PR equ 0BBh ;# 
# 6205 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MAINPR equ 0BEh ;# 
# 6273 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ISRPR equ 0BFh ;# 
# 6341 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCDATA equ 0D4h ;# 
# 6403 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCSELECT equ 0D5h ;# 
# 6443 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnCON equ 0D6h ;# 
# 6513 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnPOL equ 0D7h ;# 
# 6558 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnSEL0 equ 0D8h ;# 
# 6628 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnSEL1 equ 0D9h ;# 
# 6698 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnSEL2 equ 0DAh ;# 
# 6768 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnSEL3 equ 0DBh ;# 
# 6838 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnGLS0 equ 0DCh ;# 
# 6900 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnGLS1 equ 0DDh ;# 
# 6962 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnGLS2 equ 0DEh ;# 
# 7024 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnGLS3 equ 0DFh ;# 
# 7086 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMASELECT equ 0E8h ;# 
# 7126 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnBUF equ 0E9h ;# 
# 7196 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDCNT equ 0EAh ;# 
# 7203 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDCNTL equ 0EAh ;# 
# 7273 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDCNTH equ 0EBh ;# 
# 7319 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDPTR equ 0ECh ;# 
# 7326 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDPTRL equ 0ECh ;# 
# 7396 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDPTRH equ 0EDh ;# 
# 7466 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSZ equ 0EEh ;# 
# 7473 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSZL equ 0EEh ;# 
# 7543 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSZH equ 0EFh ;# 
# 7589 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSA equ 0F0h ;# 
# 7596 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSAL equ 0F0h ;# 
# 7666 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSAH equ 0F1h ;# 
# 7736 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSCNT equ 0F2h ;# 
# 7743 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSCNTL equ 0F2h ;# 
# 7813 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSCNTH equ 0F3h ;# 
# 7861 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSPTR equ 0F4h ;# 
# 7868 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSPTRL equ 0F4h ;# 
# 7938 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSPTRH equ 0F5h ;# 
# 8008 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSPTRU equ 0F6h ;# 
# 8066 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSZ equ 0F7h ;# 
# 8073 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSZL equ 0F7h ;# 
# 8143 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSZH equ 0F8h ;# 
# 8191 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSA equ 0F9h ;# 
# 8198 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSAL equ 0F9h ;# 
# 8268 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSAH equ 0FAh ;# 
# 8338 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSAU equ 0FBh ;# 
# 8396 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnCON0 equ 0FCh ;# 
# 8442 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnCON1 equ 0FDh ;# 
# 8486 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnAIRQ equ 0FEh ;# 
# 8556 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSIRQ equ 0FFh ;# 
# 8626 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PPSLOCK equ 0200h ;# 
# 8646 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA0PPS equ 0201h ;# 
# 8702 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA1PPS equ 0202h ;# 
# 8758 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA2PPS equ 0203h ;# 
# 8814 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA3PPS equ 0204h ;# 
# 8870 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA4PPS equ 0205h ;# 
# 8926 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA5PPS equ 0206h ;# 
# 8982 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA6PPS equ 0207h ;# 
# 9038 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA7PPS equ 0208h ;# 
# 9094 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB0PPS equ 0209h ;# 
# 9150 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB1PPS equ 020Ah ;# 
# 9206 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB2PPS equ 020Bh ;# 
# 9262 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB3PPS equ 020Ch ;# 
# 9318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB4PPS equ 020Dh ;# 
# 9374 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB5PPS equ 020Eh ;# 
# 9430 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB6PPS equ 020Fh ;# 
# 9486 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB7PPS equ 0210h ;# 
# 9542 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC0PPS equ 0211h ;# 
# 9598 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC1PPS equ 0212h ;# 
# 9654 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC2PPS equ 0213h ;# 
# 9710 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC3PPS equ 0214h ;# 
# 9766 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC4PPS equ 0215h ;# 
# 9822 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC5PPS equ 0216h ;# 
# 9878 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC6PPS equ 0217h ;# 
# 9934 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC7PPS equ 0218h ;# 
# 9990 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD0PPS equ 0219h ;# 
# 10046 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD1PPS equ 021Ah ;# 
# 10102 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD2PPS equ 021Bh ;# 
# 10158 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD3PPS equ 021Ch ;# 
# 10214 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD4PPS equ 021Dh ;# 
# 10270 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD5PPS equ 021Eh ;# 
# 10326 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD6PPS equ 021Fh ;# 
# 10382 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD7PPS equ 0220h ;# 
# 10438 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RE0PPS equ 0221h ;# 
# 10494 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RE1PPS equ 0222h ;# 
# 10550 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RE2PPS equ 0223h ;# 
# 10606 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF0PPS equ 0229h ;# 
# 10662 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF1PPS equ 022Ah ;# 
# 10718 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF2PPS equ 022Bh ;# 
# 10774 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF3PPS equ 022Ch ;# 
# 10830 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF4PPS equ 022Dh ;# 
# 10886 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF5PPS equ 022Eh ;# 
# 10942 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF6PPS equ 022Fh ;# 
# 10998 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF7PPS equ 0230h ;# 
# 11054 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INT0PPS equ 023Eh ;# 
# 11114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INT1PPS equ 023Fh ;# 
# 11180 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INT2PPS equ 0240h ;# 
# 11252 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T0CKIPPS equ 0241h ;# 
# 11324 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1CKIPPS equ 0242h ;# 
# 11396 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1GPPS equ 0243h ;# 
# 11462 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3CKIPPS equ 0244h ;# 
# 11534 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3GPPS equ 0245h ;# 
# 11600 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5CKIPPS equ 0246h ;# 
# 11672 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5GPPS equ 0247h ;# 
# 11738 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2INPPS equ 0248h ;# 
# 11804 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4INPPS equ 0249h ;# 
# 11870 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6INPPS equ 024Ah ;# 
# 11936 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP1PPS equ 024Fh ;# 
# 12008 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP2PPS equ 0250h ;# 
# 12080 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP3PPS equ 0251h ;# 
# 12146 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1ERSPPS equ 0253h ;# 
# 12212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2ERSPPS equ 0254h ;# 
# 12284 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3ERSPPS equ 0255h ;# 
# 12350 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWMIN0PPS equ 0257h ;# 
# 12422 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWMIN1PPS equ 0258h ;# 
# 12494 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1WINPPS equ 0259h ;# 
# 12566 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1SIGPPS equ 025Ah ;# 
# 12638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1PPS equ 025Bh ;# 
# 12643 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1INPPS equ 025Bh ;# 
# 12848 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2PPS equ 025Ch ;# 
# 12853 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2INPPS equ 025Ch ;# 
# 13058 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3PPS equ 025Dh ;# 
# 13063 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3INPPS equ 025Dh ;# 
# 13268 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CARLPPS equ 025Eh ;# 
# 13273 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MDCARLPPS equ 025Eh ;# 
# 13398 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CARHPPS equ 025Fh ;# 
# 13403 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MDCARHPPS equ 025Fh ;# 
# 13528 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1SRCPPS equ 0260h ;# 
# 13533 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MDSRCPPS equ 0260h ;# 
# 13658 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN0PPS equ 0261h ;# 
# 13724 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN1PPS equ 0262h ;# 
# 13790 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN2PPS equ 0263h ;# 
# 13856 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN3PPS equ 0264h ;# 
# 13922 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN4PPS equ 0265h ;# 
# 13988 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN5PPS equ 0266h ;# 
# 14054 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN6PPS equ 0267h ;# 
# 14120 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN7PPS equ 0268h ;# 
# 14186 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACTPPS equ 0269h ;# 
# 14252 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1SCKPPS equ 026Ah ;# 
# 14318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1SDIPPS equ 026Bh ;# 
# 14384 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1SSPPS equ 026Ch ;# 
# 14450 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2SCKPPS equ 026Dh ;# 
# 14516 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2SDIPPS equ 026Eh ;# 
# 14582 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2SSPPS equ 026Fh ;# 
# 14648 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1SDAPPS equ 0270h ;# 
# 14714 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1SCLPPS equ 0271h ;# 
# 14780 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1RXPPS equ 0272h ;# 
# 14852 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1CTSPPS equ 0273h ;# 
# 14924 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2RXPPS equ 0274h ;# 
# 14990 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2CTSPPS equ 0275h ;# 
# 15056 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3RXPPS equ 0276h ;# 
# 15128 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3CTSPPS equ 0277h ;# 
# 15200 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4RXPPS equ 0278h ;# 
# 15266 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4CTSPPS equ 0279h ;# 
# 15332 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5RXPPS equ 027Ah ;# 
# 15404 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5CTSPPS equ 027Bh ;# 
# 15476 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC4I2C equ 0286h ;# 
# 15608 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC3I2C equ 0287h ;# 
# 15740 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB2I2C equ 0288h ;# 
# 15872 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB1I2C equ 0289h ;# 
# 16004 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1RXB equ 028Bh ;# 
# 16024 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1TXB equ 028Ch ;# 
# 16044 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CNT equ 028Dh ;# 
# 16114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADB0 equ 028Eh ;# 
# 16134 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADB1 equ 028Fh ;# 
# 16154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADR0 equ 0290h ;# 
# 16174 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADR1 equ 0291h ;# 
# 16195 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADR2 equ 0292h ;# 
# 16215 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADR3 equ 0293h ;# 
# 16236 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CON0 equ 0294h ;# 
# 16313 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CON1 equ 0295h ;# 
# 16370 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CON2 equ 0296h ;# 
# 16446 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ERR equ 0297h ;# 
# 16536 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1STAT0 equ 0298h ;# 
# 16626 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1STAT1 equ 0299h ;# 
# 16673 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1PIR equ 029Ah ;# 
# 16775 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1PIE equ 029Bh ;# 
# 16877 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CLK equ 029Ch ;# 
# 16969 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1BTO equ 029Dh ;# 
# 17049 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1RXB equ 02A1h ;# 
# 17054 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1RXBL equ 02A1h ;# 
# 17087 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1RXCHK equ 02A2h ;# 
# 17107 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1TXB equ 02A3h ;# 
# 17112 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1TXBL equ 02A3h ;# 
# 17145 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1TXCHK equ 02A4h ;# 
# 17165 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P1 equ 02A5h ;# 
# 17172 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P1L equ 02A5h ;# 
# 17192 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P1H equ 02A6h ;# 
# 17212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P2 equ 02A7h ;# 
# 17219 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P2L equ 02A7h ;# 
# 17239 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P2H equ 02A8h ;# 
# 17259 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P3 equ 02A9h ;# 
# 17266 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P3L equ 02A9h ;# 
# 17286 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P3H equ 02AAh ;# 
# 17306 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1CON0 equ 02ABh ;# 
# 17434 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1CON1 equ 02ACh ;# 
# 17514 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1CON2 equ 02ADh ;# 
# 17656 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1BRG equ 02AEh ;# 
# 17663 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1BRGL equ 02AEh ;# 
# 17683 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1BRGH equ 02AFh ;# 
# 17703 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1FIFO equ 02B0h ;# 
# 17833 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1UIR equ 02B1h ;# 
# 17889 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1ERRIR equ 02B2h ;# 
# 18001 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1ERRIE equ 02B3h ;# 
# 18113 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2RXB equ 02B4h ;# 
# 18118 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2RXBL equ 02B4h ;# 
# 18151 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2TXB equ 02B6h ;# 
# 18156 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2TXBL equ 02B6h ;# 
# 18189 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P1 equ 02B8h ;# 
# 18196 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P1L equ 02B8h ;# 
# 18216 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P2 equ 02BAh ;# 
# 18223 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P2L equ 02BAh ;# 
# 18243 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P3 equ 02BCh ;# 
# 18250 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P3L equ 02BCh ;# 
# 18270 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2CON0 equ 02BEh ;# 
# 18386 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2CON1 equ 02BFh ;# 
# 18466 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2CON2 equ 02C0h ;# 
# 18598 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2BRG equ 02C1h ;# 
# 18605 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2BRGL equ 02C1h ;# 
# 18625 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2BRGH equ 02C2h ;# 
# 18645 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2FIFO equ 02C3h ;# 
# 18775 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2UIR equ 02C4h ;# 
# 18831 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2ERRIR equ 02C5h ;# 
# 18943 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2ERRIE equ 02C6h ;# 
# 19055 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3RXB equ 02C7h ;# 
# 19060 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3RXBL equ 02C7h ;# 
# 19093 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3TXB equ 02C9h ;# 
# 19098 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3TXBL equ 02C9h ;# 
# 19131 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P1 equ 02CBh ;# 
# 19138 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P1L equ 02CBh ;# 
# 19158 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P2 equ 02CDh ;# 
# 19165 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P2L equ 02CDh ;# 
# 19185 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P3 equ 02CFh ;# 
# 19192 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P3L equ 02CFh ;# 
# 19212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3CON0 equ 02D1h ;# 
# 19328 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3CON1 equ 02D2h ;# 
# 19408 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3CON2 equ 02D3h ;# 
# 19540 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3BRG equ 02D4h ;# 
# 19547 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3BRGL equ 02D4h ;# 
# 19567 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3BRGH equ 02D5h ;# 
# 19587 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3FIFO equ 02D6h ;# 
# 19717 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3UIR equ 02D7h ;# 
# 19773 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3ERRIR equ 02D8h ;# 
# 19885 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3ERRIE equ 02D9h ;# 
# 19997 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4RXB equ 02DAh ;# 
# 20002 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4RXBL equ 02DAh ;# 
# 20035 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4TXB equ 02DCh ;# 
# 20040 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4TXBL equ 02DCh ;# 
# 20073 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P1 equ 02DEh ;# 
# 20080 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P1L equ 02DEh ;# 
# 20100 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P2 equ 02E0h ;# 
# 20107 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P2L equ 02E0h ;# 
# 20127 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P3 equ 02E2h ;# 
# 20134 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P3L equ 02E2h ;# 
# 20154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4CON0 equ 02E4h ;# 
# 20270 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4CON1 equ 02E5h ;# 
# 20350 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4CON2 equ 02E6h ;# 
# 20482 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4BRG equ 02E7h ;# 
# 20489 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4BRGL equ 02E7h ;# 
# 20509 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4BRGH equ 02E8h ;# 
# 20529 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4FIFO equ 02E9h ;# 
# 20659 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4UIR equ 02EAh ;# 
# 20715 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4ERRIR equ 02EBh ;# 
# 20827 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4ERRIE equ 02ECh ;# 
# 20939 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5RXB equ 02EDh ;# 
# 20944 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5RXBL equ 02EDh ;# 
# 20977 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5TXB equ 02EFh ;# 
# 20982 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5TXBL equ 02EFh ;# 
# 21015 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P1 equ 02F1h ;# 
# 21022 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P1L equ 02F1h ;# 
# 21042 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P2 equ 02F3h ;# 
# 21049 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P2L equ 02F3h ;# 
# 21069 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P3 equ 02F5h ;# 
# 21076 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P3L equ 02F5h ;# 
# 21096 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5CON0 equ 02F7h ;# 
# 21212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5CON1 equ 02F8h ;# 
# 21292 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5CON2 equ 02F9h ;# 
# 21424 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5BRG equ 02FAh ;# 
# 21431 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5BRGL equ 02FAh ;# 
# 21451 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5BRGH equ 02FBh ;# 
# 21471 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5FIFO equ 02FCh ;# 
# 21601 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5UIR equ 02FDh ;# 
# 21657 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5ERRIR equ 02FEh ;# 
# 21769 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5ERRIE equ 02FFh ;# 
# 21883 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1TMR equ 0300h ;# 
# 21890 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1TMRL equ 0300h ;# 
# 21960 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1TMRH equ 0301h ;# 
# 22030 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1TMRU equ 0302h ;# 
# 22102 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPR equ 0303h ;# 
# 22109 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPRL equ 0303h ;# 
# 22179 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPRH equ 0304h ;# 
# 22249 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPRU equ 0305h ;# 
# 22321 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPW equ 0306h ;# 
# 22328 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPWL equ 0306h ;# 
# 22398 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPWH equ 0307h ;# 
# 22468 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPWU equ 0308h ;# 
# 22540 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1PR equ 0309h ;# 
# 22547 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1PRL equ 0309h ;# 
# 22617 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1PRH equ 030Ah ;# 
# 22687 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1PRU equ 030Bh ;# 
# 22757 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CON0 equ 030Ch ;# 
# 22822 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CON1 equ 030Dh ;# 
# 22922 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1STAT equ 030Eh ;# 
# 23012 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CLK equ 030Fh ;# 
# 23092 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1SIG equ 0310h ;# 
# 23196 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1WIN equ 0311h ;# 
# 23300 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR0L equ 0318h ;# 
# 23305 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR0 equ 0318h ;# 
# 23438 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR0H equ 0319h ;# 
# 23443 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR0 equ 0319h ;# 
# 23692 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T0CON0 equ 031Ah ;# 
# 23816 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T0CON1 equ 031Bh ;# 
# 23958 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1 equ 031Ch ;# 
# 23965 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1L equ 031Ch ;# 
# 24085 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1H equ 031Dh ;# 
# 24205 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1CON equ 031Eh ;# 
# 24210 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1CON equ 031Eh ;# 
# 24427 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1GCON equ 031Fh ;# 
# 24432 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1GCON equ 031Fh ;# 
# 24713 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1GATE equ 0320h ;# 
# 24718 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1GATE equ 0320h ;# 
# 24903 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1CLK equ 0321h ;# 
# 24908 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1CLK equ 0321h ;# 
# 24912 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR1 equ 0321h ;# 
# 25149 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2TMR equ 0322h ;# 
# 25154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR2 equ 0322h ;# 
# 25187 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2PR equ 0323h ;# 
# 25192 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR2 equ 0323h ;# 
# 25225 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2CON equ 0324h ;# 
# 25371 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2HLT equ 0325h ;# 
# 25499 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2CLKCON equ 0326h ;# 
# 25504 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2CLK equ 0326h ;# 
# 25705 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2RST equ 0327h ;# 
# 25821 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3 equ 0328h ;# 
# 25828 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3L equ 0328h ;# 
# 25948 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3H equ 0329h ;# 
# 26068 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3CON equ 032Ah ;# 
# 26073 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3CON equ 032Ah ;# 
# 26290 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3GCON equ 032Bh ;# 
# 26295 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3GCON equ 032Bh ;# 
# 26576 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3GATE equ 032Ch ;# 
# 26581 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3GATE equ 032Ch ;# 
# 26766 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3CLK equ 032Dh ;# 
# 26771 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3CLK equ 032Dh ;# 
# 26775 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR3 equ 032Dh ;# 
# 27012 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4TMR equ 032Eh ;# 
# 27017 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR4 equ 032Eh ;# 
# 27050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4PR equ 032Fh ;# 
# 27055 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR4 equ 032Fh ;# 
# 27088 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4CON equ 0330h ;# 
# 27234 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4HLT equ 0331h ;# 
# 27362 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4CLKCON equ 0332h ;# 
# 27367 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4CLK equ 0332h ;# 
# 27568 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4RST equ 0333h ;# 
# 27684 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5 equ 0334h ;# 
# 27691 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5L equ 0334h ;# 
# 27811 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5H equ 0335h ;# 
# 27931 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5CON equ 0336h ;# 
# 27936 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5CON equ 0336h ;# 
# 28153 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5GCON equ 0337h ;# 
# 28158 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5GCON equ 0337h ;# 
# 28439 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5GATE equ 0338h ;# 
# 28444 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5GATE equ 0338h ;# 
# 28629 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5CLK equ 0339h ;# 
# 28634 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5CLK equ 0339h ;# 
# 28638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR5 equ 0339h ;# 
# 28875 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6TMR equ 033Ah ;# 
# 28880 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR6 equ 033Ah ;# 
# 28913 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6PR equ 033Bh ;# 
# 28918 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR6 equ 033Bh ;# 
# 28951 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6CON equ 033Ch ;# 
# 29097 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6HLT equ 033Dh ;# 
# 29225 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6CLKCON equ 033Eh ;# 
# 29230 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6CLK equ 033Eh ;# 
# 29431 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6RST equ 033Fh ;# 
# 29547 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR1 equ 0340h ;# 
# 29554 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR1L equ 0340h ;# 
# 29574 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR1H equ 0341h ;# 
# 29594 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP1CON equ 0342h ;# 
# 29712 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP1CAP equ 0343h ;# 
# 29792 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR2 equ 0344h ;# 
# 29799 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR2L equ 0344h ;# 
# 29819 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR2H equ 0345h ;# 
# 29839 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP2CON equ 0346h ;# 
# 29957 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP2CAP equ 0347h ;# 
# 30037 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR3 equ 0348h ;# 
# 30044 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR3L equ 0348h ;# 
# 30064 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR3H equ 0349h ;# 
# 30084 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP3CON equ 034Ah ;# 
# 30202 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP3CAP equ 034Bh ;# 
# 30282 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPTMRS0 equ 034Ch ;# 
# 30352 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCDATA equ 034Fh ;# 
# 30359 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCDATL equ 034Fh ;# 
# 30421 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCDATH equ 0350h ;# 
# 30483 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCACC equ 0351h ;# 
# 30490 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCACCL equ 0351h ;# 
# 30552 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCACCH equ 0352h ;# 
# 30614 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCSHFT equ 0353h ;# 
# 30621 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCSHIFTL equ 0353h ;# 
# 30683 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCSHIFTH equ 0354h ;# 
# 30745 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCXOR equ 0355h ;# 
# 30752 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCXORL equ 0355h ;# 
# 30809 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCXORH equ 0356h ;# 
# 30871 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCCON0 equ 0357h ;# 
# 30931 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCCON1 equ 0358h ;# 
# 31009 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANLADR equ 035Ah ;# 
# 31016 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANLADRL equ 035Ah ;# 
# 31144 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANLADRH equ 035Bh ;# 
# 31272 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANLADRU equ 035Ch ;# 
# 31378 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANHADR equ 035Dh ;# 
# 31385 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANHADRL equ 035Dh ;# 
# 31513 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANHADRH equ 035Eh ;# 
# 31641 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANHADRU equ 035Fh ;# 
# 31745 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANCON0 equ 0360h ;# 
# 31805 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANTRIG equ 0361h ;# 
# 31865 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR0 equ 0362h ;# 
# 31917 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR1 equ 0363h ;# 
# 31979 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR2 equ 0364h ;# 
# 32024 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR3 equ 0365h ;# 
# 32086 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR4 equ 0366h ;# 
# 32137 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR5 equ 0367h ;# 
# 32194 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR6 equ 0368h ;# 
# 32256 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR7 equ 0369h ;# 
# 32313 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR8 equ 036Ah ;# 
# 32375 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR9 equ 036Bh ;# 
# 32420 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR10 equ 036Ch ;# 
# 32482 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR11 equ 036Dh ;# 
# 32544 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR12 equ 036Eh ;# 
# 32606 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR13 equ 036Fh ;# 
# 32668 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR14 equ 0370h ;# 
# 32701 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR15 equ 0371h ;# 
# 32739 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
STATUS_CSHAD equ 0373h ;# 
# 32828 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WREG_CSHAD equ 0374h ;# 
# 32848 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
BSR_CSHAD equ 0375h ;# 
# 32855 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SHADCON equ 0376h ;# 
# 32875 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
STATUS_SHAD equ 0377h ;# 
# 32964 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WREG_SHAD equ 0378h ;# 
# 32984 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
BSR_SHAD equ 0379h ;# 
# 32991 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLATH_SHAD equ 037Ah ;# 
# 33011 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLATU_SHAD equ 037Bh ;# 
# 33031 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0SH equ 037Ch ;# 
# 33038 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0L_SHAD equ 037Ch ;# 
# 33058 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0H_SHAD equ 037Dh ;# 
# 33078 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1SH equ 037Eh ;# 
# 33085 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1L_SHAD equ 037Eh ;# 
# 33105 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1H_SHAD equ 037Fh ;# 
# 33125 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2SH equ 0380h ;# 
# 33132 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2L_SHAD equ 0380h ;# 
# 33152 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2H_SHAD equ 0381h ;# 
# 33172 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODSH equ 0382h ;# 
# 33179 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODL_SHAD equ 0382h ;# 
# 33199 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODH_SHAD equ 0383h ;# 
# 33219 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1CLK equ 03BCh ;# 
# 33224 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1CLKCON equ 03BCh ;# 
# 33273 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1ISM equ 03BDh ;# 
# 33278 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1DAT equ 03BDh ;# 
# 33391 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1DBR equ 03BEh ;# 
# 33495 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1DBF equ 03BFh ;# 
# 33599 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1CON0 equ 03C0h ;# 
# 33700 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1CON1 equ 03C1h ;# 
# 33778 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1AS0 equ 03C2h ;# 
# 33940 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1AS1 equ 03C3h ;# 
# 34002 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1STR equ 03C4h ;# 
# 34114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2CLK equ 03C5h ;# 
# 34119 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2CLKCON equ 03C5h ;# 
# 34168 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2ISM equ 03C6h ;# 
# 34173 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2DAT equ 03C6h ;# 
# 34286 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2DBR equ 03C7h ;# 
# 34390 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2DBF equ 03C8h ;# 
# 34494 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2CON0 equ 03C9h ;# 
# 34595 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2CON1 equ 03CAh ;# 
# 34673 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2AS0 equ 03CBh ;# 
# 34835 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2AS1 equ 03CCh ;# 
# 34897 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2STR equ 03CDh ;# 
# 35009 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3CLK equ 03CEh ;# 
# 35014 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3CLKCON equ 03CEh ;# 
# 35063 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3ISM equ 03CFh ;# 
# 35068 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3DAT equ 03CFh ;# 
# 35181 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3DBR equ 03D0h ;# 
# 35285 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3DBF equ 03D1h ;# 
# 35389 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3CON0 equ 03D2h ;# 
# 35490 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3CON1 equ 03D3h ;# 
# 35568 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3AS0 equ 03D4h ;# 
# 35730 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3AS1 equ 03D5h ;# 
# 35792 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3STR equ 03D6h ;# 
# 35904 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FVRCON equ 03D7h ;# 
# 35993 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCPCON equ 03D8h ;# 
# 35998 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCP equ 03D8h ;# 
# 36093 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADLTH equ 03D9h ;# 
# 36100 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADLTHL equ 03D9h ;# 
# 36228 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADLTHH equ 03DAh ;# 
# 36356 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADUTH equ 03DBh ;# 
# 36363 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADUTHL equ 03DBh ;# 
# 36491 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADUTHH equ 03DCh ;# 
# 36619 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADERR equ 03DDh ;# 
# 36626 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADERRL equ 03DDh ;# 
# 36754 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADERRH equ 03DEh ;# 
# 36882 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADSTPT equ 03DFh ;# 
# 36889 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADSTPTL equ 03DFh ;# 
# 37017 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADSTPTH equ 03E0h ;# 
# 37145 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADFLTR equ 03E1h ;# 
# 37152 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADFLTRL equ 03E1h ;# 
# 37280 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADFLTRH equ 03E2h ;# 
# 37410 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACC equ 03E3h ;# 
# 37417 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACCL equ 03E3h ;# 
# 37545 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACCH equ 03E4h ;# 
# 37673 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACCU equ 03E5h ;# 
# 37801 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCNT equ 03E6h ;# 
# 37929 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADRPT equ 03E7h ;# 
# 38057 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREV equ 03E8h ;# 
# 38064 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREVL equ 03E8h ;# 
# 38192 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREVH equ 03E9h ;# 
# 38320 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADRES equ 03EAh ;# 
# 38327 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADRESL equ 03EAh ;# 
# 38455 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADRESH equ 03EBh ;# 
# 38575 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPCH equ 03ECh ;# 
# 38633 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACQ equ 03EEh ;# 
# 38640 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACQL equ 03EEh ;# 
# 38768 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACQH equ 03EFh ;# 
# 38860 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCAP equ 03F0h ;# 
# 38912 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPRE equ 03F1h ;# 
# 38919 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREL equ 03F1h ;# 
# 39047 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREH equ 03F2h ;# 
# 39139 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCON0 equ 03F3h ;# 
# 39257 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCON1 equ 03F4h ;# 
# 39323 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCON2 equ 03F5h ;# 
# 39465 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCON3 equ 03F6h ;# 
# 39595 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADSTAT equ 03F7h ;# 
# 39727 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADREF equ 03F8h ;# 
# 39809 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACT equ 03F9h ;# 
# 39913 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCLK equ 03FAh ;# 
# 40017 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELA equ 0400h ;# 
# 40079 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUA equ 0401h ;# 
# 40141 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONA equ 0402h ;# 
# 40203 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONA equ 0403h ;# 
# 40265 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLA equ 0404h ;# 
# 40327 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCAP equ 0405h ;# 
# 40389 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCAN equ 0406h ;# 
# 40451 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCAF equ 0407h ;# 
# 40513 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELB equ 0408h ;# 
# 40575 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUB equ 0409h ;# 
# 40637 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONB equ 040Ah ;# 
# 40699 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONB equ 040Bh ;# 
# 40761 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLB equ 040Ch ;# 
# 40823 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCBP equ 040Dh ;# 
# 40885 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCBN equ 040Eh ;# 
# 40947 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCBF equ 040Fh ;# 
# 41009 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELC equ 0410h ;# 
# 41071 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUC equ 0411h ;# 
# 41133 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONC equ 0412h ;# 
# 41195 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONC equ 0413h ;# 
# 41257 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLC equ 0414h ;# 
# 41319 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCCP equ 0415h ;# 
# 41381 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCCN equ 0416h ;# 
# 41443 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCCF equ 0417h ;# 
# 41505 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELD equ 0418h ;# 
# 41567 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUD equ 0419h ;# 
# 41629 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCOND equ 041Ah ;# 
# 41691 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCOND equ 041Bh ;# 
# 41753 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLD equ 041Ch ;# 
# 41815 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELE equ 0420h ;# 
# 41847 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUE equ 0421h ;# 
# 41885 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONE equ 0422h ;# 
# 41917 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONE equ 0423h ;# 
# 41949 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLE equ 0424h ;# 
# 41987 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCEP equ 0425h ;# 
# 42008 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCEN equ 0426h ;# 
# 42029 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCEF equ 0427h ;# 
# 42050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELF equ 0428h ;# 
# 42112 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUF equ 0429h ;# 
# 42174 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONF equ 042Ah ;# 
# 42236 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONF equ 042Bh ;# 
# 42298 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLF equ 042Ch ;# 
# 42362 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1ACC equ 0440h ;# 
# 42369 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1ACCL equ 0440h ;# 
# 42497 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1ACCH equ 0441h ;# 
# 42625 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1ACCU equ 0442h ;# 
# 42707 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1INC equ 0443h ;# 
# 42714 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1INCL equ 0443h ;# 
# 42842 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1INCH equ 0444h ;# 
# 42970 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1INCU equ 0445h ;# 
# 43050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1CON equ 0446h ;# 
# 43118 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1CLK equ 0447h ;# 
# 43260 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2ACC equ 0448h ;# 
# 43267 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2ACCL equ 0448h ;# 
# 43395 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2ACCH equ 0449h ;# 
# 43523 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2ACCU equ 044Ah ;# 
# 43605 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2INC equ 044Bh ;# 
# 43612 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2INCL equ 044Bh ;# 
# 43740 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2INCH equ 044Ch ;# 
# 43868 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2INCU equ 044Dh ;# 
# 43948 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2CON equ 044Eh ;# 
# 44016 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2CLK equ 044Fh ;# 
# 44158 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3ACC equ 0450h ;# 
# 44165 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3ACCL equ 0450h ;# 
# 44293 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3ACCH equ 0451h ;# 
# 44421 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3ACCU equ 0452h ;# 
# 44503 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3INC equ 0453h ;# 
# 44510 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3INCL equ 0453h ;# 
# 44638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3INCH equ 0454h ;# 
# 44766 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3INCU equ 0455h ;# 
# 44846 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3CON equ 0456h ;# 
# 44914 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3CLK equ 0457h ;# 
# 45054 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTLOCK equ 0459h ;# 
# 45076 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTAD equ 045Ah ;# 
# 45083 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTADL equ 045Ah ;# 
# 45145 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTADH equ 045Bh ;# 
# 45207 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTADU equ 045Ch ;# 
# 45253 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTBASE equ 045Dh ;# 
# 45260 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTBASEL equ 045Dh ;# 
# 45322 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTBASEH equ 045Eh ;# 
# 45384 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTBASEU equ 045Fh ;# 
# 45428 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1ERS equ 0460h ;# 
# 45498 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1CLK equ 0461h ;# 
# 45568 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1LDS equ 0462h ;# 
# 45638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1PR equ 0463h ;# 
# 45645 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1PRL equ 0463h ;# 
# 45665 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1PRH equ 0464h ;# 
# 45685 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1CPRE equ 0465h ;# 
# 45705 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1PIPOS equ 0466h ;# 
# 45725 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1GIR equ 0467h ;# 
# 45751 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1GIE equ 0468h ;# 
# 45777 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1CON equ 0469h ;# 
# 45816 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1CFG equ 046Ah ;# 
# 45875 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P1 equ 046Bh ;# 
# 45882 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P1L equ 046Bh ;# 
# 45902 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P1H equ 046Ch ;# 
# 45922 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P2 equ 046Dh ;# 
# 45929 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P2L equ 046Dh ;# 
# 45949 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P2H equ 046Eh ;# 
# 45969 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2ERS equ 046Fh ;# 
# 46039 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2CLK equ 0470h ;# 
# 46109 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2LDS equ 0471h ;# 
# 46179 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2PR equ 0472h ;# 
# 46186 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2PRL equ 0472h ;# 
# 46206 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2PRH equ 0473h ;# 
# 46226 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2CPRE equ 0474h ;# 
# 46246 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2PIPOS equ 0475h ;# 
# 46266 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2GIR equ 0476h ;# 
# 46292 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2GIE equ 0477h ;# 
# 46318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2CON equ 0478h ;# 
# 46357 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1CFG equ 0479h ;# 
# 46416 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P1 equ 047Ah ;# 
# 46423 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P1L equ 047Ah ;# 
# 46443 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P1H equ 047Bh ;# 
# 46463 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P2 equ 047Ch ;# 
# 46470 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P2L equ 047Ch ;# 
# 46490 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P2H equ 047Dh ;# 
# 46510 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3ERS equ 047Eh ;# 
# 46580 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3CLK equ 047Fh ;# 
# 46650 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3LDS equ 0480h ;# 
# 46720 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3PR equ 0481h ;# 
# 46727 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3PRL equ 0481h ;# 
# 46747 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3PRH equ 0482h ;# 
# 46767 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3CPRE equ 0483h ;# 
# 46787 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3PIPOS equ 0484h ;# 
# 46807 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3GIR equ 0485h ;# 
# 46833 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3GIE equ 0486h ;# 
# 46859 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3CON equ 0487h ;# 
# 46898 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1CFG equ 0488h ;# 
# 46957 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P1 equ 0489h ;# 
# 46964 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P1L equ 0489h ;# 
# 46984 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P1H equ 048Ah ;# 
# 47004 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P2 equ 048Bh ;# 
# 47011 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P2L equ 048Bh ;# 
# 47031 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P2H equ 048Ch ;# 
# 47051 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWMLOAD equ 049Ch ;# 
# 47083 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWMEN equ 049Dh ;# 
# 47115 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE0 equ 049Eh ;# 
# 47167 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE1 equ 049Fh ;# 
# 47229 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE2 equ 04A0h ;# 
# 47274 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE3 equ 04A1h ;# 
# 47336 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE4 equ 04A2h ;# 
# 47387 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE5 equ 04A3h ;# 
# 47444 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE6 equ 04A4h ;# 
# 47506 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE7 equ 04A5h ;# 
# 47563 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE8 equ 04A6h ;# 
# 47625 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE9 equ 04A7h ;# 
# 47670 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE10 equ 04A8h ;# 
# 47732 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE11 equ 04A9h ;# 
# 47794 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE12 equ 04AAh ;# 
# 47856 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE13 equ 04ABh ;# 
# 47918 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE14 equ 04ACh ;# 
# 47951 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE15 equ 04ADh ;# 
# 47989 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR0 equ 04AEh ;# 
# 48041 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR1 equ 04AFh ;# 
# 48103 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR2 equ 04B0h ;# 
# 48148 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR3 equ 04B1h ;# 
# 48210 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR4 equ 04B2h ;# 
# 48261 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR5 equ 04B3h ;# 
# 48318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR6 equ 04B4h ;# 
# 48380 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR7 equ 04B5h ;# 
# 48437 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR8 equ 04B6h ;# 
# 48499 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR9 equ 04B7h ;# 
# 48544 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR10 equ 04B8h ;# 
# 48606 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR11 equ 04B9h ;# 
# 48668 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR12 equ 04BAh ;# 
# 48730 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR13 equ 04BBh ;# 
# 48792 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR14 equ 04BCh ;# 
# 48825 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR15 equ 04BDh ;# 
# 48863 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATA equ 04BEh ;# 
# 48925 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATB equ 04BFh ;# 
# 48987 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATC equ 04C0h ;# 
# 49049 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATD equ 04C1h ;# 
# 49111 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATE equ 04C2h ;# 
# 49143 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATF equ 04C3h ;# 
# 49205 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISA equ 04C6h ;# 
# 49267 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISB equ 04C7h ;# 
# 49329 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISC equ 04C8h ;# 
# 49391 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISD equ 04C9h ;# 
# 49453 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISE equ 04CAh ;# 
# 49485 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISF equ 04CBh ;# 
# 49547 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTA equ 04CEh ;# 
# 49609 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTB equ 04CFh ;# 
# 49671 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTC equ 04D0h ;# 
# 49733 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTD equ 04D1h ;# 
# 49795 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTE equ 04D2h ;# 
# 49833 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTF equ 04D3h ;# 
# 49895 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INTCON0 equ 04D6h ;# 
# 49955 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INTCON1 equ 04D7h ;# 
# 49991 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
STATUS equ 04D8h ;# 
# 50080 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2 equ 04D9h ;# 
# 50087 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2L equ 04D9h ;# 
# 50107 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2H equ 04DAh ;# 
# 50114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PLUSW2 equ 04DBh ;# 
# 50134 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PREINC2 equ 04DCh ;# 
# 50154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTDEC2 equ 04DDh ;# 
# 50174 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTINC2 equ 04DEh ;# 
# 50194 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INDF2 equ 04DFh ;# 
# 50214 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
BSR equ 04E0h ;# 
# 50221 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1 equ 04E1h ;# 
# 50228 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1L equ 04E1h ;# 
# 50248 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1H equ 04E2h ;# 
# 50255 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PLUSW1 equ 04E3h ;# 
# 50275 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PREINC1 equ 04E4h ;# 
# 50295 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTDEC1 equ 04E5h ;# 
# 50315 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTINC1 equ 04E6h ;# 
# 50335 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INDF1 equ 04E7h ;# 
# 50355 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WREG equ 04E8h ;# 
# 50393 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0 equ 04E9h ;# 
# 50400 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0L equ 04E9h ;# 
# 50420 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0H equ 04EAh ;# 
# 50427 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PLUSW0 equ 04EBh ;# 
# 50447 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PREINC0 equ 04ECh ;# 
# 50467 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTDEC0 equ 04EDh ;# 
# 50487 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTINC0 equ 04EEh ;# 
# 50507 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INDF0 equ 04EFh ;# 
# 50527 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCON0 equ 04F0h ;# 
# 50680 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCON1 equ 04F1h ;# 
# 50747 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CPUDOZE equ 04F2h ;# 
# 50812 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PROD equ 04F3h ;# 
# 50819 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODL equ 04F3h ;# 
# 50839 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODH equ 04F4h ;# 
# 50859 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TABLAT equ 04F5h ;# 
# 50881 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TBLPTR equ 04F6h ;# 
# 50888 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TBLPTRL equ 04F6h ;# 
# 50908 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TBLPTRH equ 04F7h ;# 
# 50928 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TBLPTRU equ 04F8h ;# 
# 50959 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLAT equ 04F9h ;# 
# 50966 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCL equ 04F9h ;# 
# 50986 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLATH equ 04FAh ;# 
# 51006 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLATU equ 04FBh ;# 
# 51026 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
STKPTR equ 04FCh ;# 
# 51124 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TOS equ 04FDh ;# 
# 51131 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TOSL equ 04FDh ;# 
# 51151 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TOSH equ 04FEh ;# 
# 51171 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TOSU equ 04FFh ;# 
# 328 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLKRCON equ 039h ;# 
# 432 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLKRCLK equ 03Ah ;# 
# 516 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMCON0 equ 040h ;# 
# 560 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMCON1 equ 041h ;# 
# 595 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMLOCK equ 042h ;# 
# 617 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMADR equ 043h ;# 
# 624 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMADRL equ 043h ;# 
# 694 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMADRH equ 044h ;# 
# 764 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMADRU equ 045h ;# 
# 822 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMDAT equ 046h ;# 
# 829 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMDATL equ 046h ;# 
# 899 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMDATH equ 047h ;# 
# 969 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
VREGCON equ 048h ;# 
# 1023 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
BORCON equ 049h ;# 
# 1050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
HLVDCON0 equ 04Ah ;# 
# 1130 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
HLVDCON1 equ 04Bh ;# 
# 1202 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ZCDCON equ 04Ch ;# 
# 1282 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD0 equ 060h ;# 
# 1339 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD1 equ 061h ;# 
# 1401 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD3 equ 063h ;# 
# 1452 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD4 equ 064h ;# 
# 1508 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD5 equ 065h ;# 
# 1559 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD6 equ 066h ;# 
# 1621 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD7 equ 067h ;# 
# 1683 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD8 equ 068h ;# 
# 1733 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CON0 equ 06Ah ;# 
# 1801 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CON1 equ 06Bh ;# 
# 1867 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1SRC equ 06Ch ;# 
# 1971 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CARL equ 06Dh ;# 
# 2063 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CARH equ 06Eh ;# 
# 2155 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CMOUT equ 06Fh ;# 
# 2181 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM1CON0 equ 070h ;# 
# 2261 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM1CON1 equ 071h ;# 
# 2301 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM1NCH equ 072h ;# 
# 2361 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM1PCH equ 073h ;# 
# 2421 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM2CON0 equ 074h ;# 
# 2501 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM2CON1 equ 075h ;# 
# 2541 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM2NCH equ 076h ;# 
# 2601 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM2PCH equ 077h ;# 
# 2661 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTCON0 equ 078h ;# 
# 2772 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTCON1 equ 079h ;# 
# 2892 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTPS equ 07Ah ;# 
# 2899 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTPSL equ 07Ah ;# 
# 2977 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTPSH equ 07Bh ;# 
# 3055 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTTMR equ 07Ch ;# 
# 3152 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DAC1DAT equ 07Dh ;# 
# 3159 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DAC1DATL equ 07Dh ;# 
# 3237 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DAC1CON equ 07Fh ;# 
# 3340 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1RXB equ 080h ;# 
# 3410 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TXB equ 081h ;# 
# 3480 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TCNT equ 082h ;# 
# 3487 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TCNTL equ 082h ;# 
# 3507 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TCNTH equ 083h ;# 
# 3527 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1CON0 equ 084h ;# 
# 3593 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1CON1 equ 085h ;# 
# 3695 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1CON2 equ 086h ;# 
# 3773 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1STATUS equ 087h ;# 
# 3855 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TWIDTH equ 088h ;# 
# 3895 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1BAUD equ 089h ;# 
# 3965 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1INTF equ 08Ah ;# 
# 4057 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1INTE equ 08Bh ;# 
# 4149 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1CLK equ 08Ch ;# 
# 4241 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2RXB equ 08Dh ;# 
# 4311 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TXB equ 08Eh ;# 
# 4381 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TCNT equ 08Fh ;# 
# 4388 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TCNTL equ 08Fh ;# 
# 4408 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TCNTH equ 090h ;# 
# 4428 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2CON0 equ 091h ;# 
# 4494 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2CON1 equ 092h ;# 
# 4596 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2CON2 equ 093h ;# 
# 4674 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2STATUS equ 094h ;# 
# 4756 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TWIDTH equ 095h ;# 
# 4796 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2BAUD equ 096h ;# 
# 4866 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2INTF equ 097h ;# 
# 4958 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2INTE equ 098h ;# 
# 5050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2CLK equ 099h ;# 
# 5142 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ACTCON equ 0ACh ;# 
# 5212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCCON1 equ 0ADh ;# 
# 5282 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCCON2 equ 0AEh ;# 
# 5352 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCCON3 equ 0AFh ;# 
# 5392 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCTUNE equ 0B0h ;# 
# 5450 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCFRQ equ 0B1h ;# 
# 5455 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCFREQ equ 0B1h ;# 
# 5540 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCSTAT equ 0B2h ;# 
# 5545 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCSTAT1 equ 0B2h ;# 
# 5652 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCEN equ 0B3h ;# 
# 5709 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRLOCK equ 0B4h ;# 
# 5729 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANPR equ 0B5h ;# 
# 5797 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA1PR equ 0B6h ;# 
# 5865 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA2PR equ 0B7h ;# 
# 5933 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA3PR equ 0B8h ;# 
# 6001 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA4PR equ 0B9h ;# 
# 6069 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA5PR equ 0BAh ;# 
# 6137 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA6PR equ 0BBh ;# 
# 6205 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MAINPR equ 0BEh ;# 
# 6273 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ISRPR equ 0BFh ;# 
# 6341 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCDATA equ 0D4h ;# 
# 6403 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCSELECT equ 0D5h ;# 
# 6443 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnCON equ 0D6h ;# 
# 6513 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnPOL equ 0D7h ;# 
# 6558 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnSEL0 equ 0D8h ;# 
# 6628 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnSEL1 equ 0D9h ;# 
# 6698 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnSEL2 equ 0DAh ;# 
# 6768 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnSEL3 equ 0DBh ;# 
# 6838 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnGLS0 equ 0DCh ;# 
# 6900 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnGLS1 equ 0DDh ;# 
# 6962 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnGLS2 equ 0DEh ;# 
# 7024 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnGLS3 equ 0DFh ;# 
# 7086 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMASELECT equ 0E8h ;# 
# 7126 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnBUF equ 0E9h ;# 
# 7196 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDCNT equ 0EAh ;# 
# 7203 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDCNTL equ 0EAh ;# 
# 7273 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDCNTH equ 0EBh ;# 
# 7319 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDPTR equ 0ECh ;# 
# 7326 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDPTRL equ 0ECh ;# 
# 7396 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDPTRH equ 0EDh ;# 
# 7466 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSZ equ 0EEh ;# 
# 7473 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSZL equ 0EEh ;# 
# 7543 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSZH equ 0EFh ;# 
# 7589 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSA equ 0F0h ;# 
# 7596 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSAL equ 0F0h ;# 
# 7666 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSAH equ 0F1h ;# 
# 7736 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSCNT equ 0F2h ;# 
# 7743 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSCNTL equ 0F2h ;# 
# 7813 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSCNTH equ 0F3h ;# 
# 7861 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSPTR equ 0F4h ;# 
# 7868 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSPTRL equ 0F4h ;# 
# 7938 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSPTRH equ 0F5h ;# 
# 8008 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSPTRU equ 0F6h ;# 
# 8066 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSZ equ 0F7h ;# 
# 8073 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSZL equ 0F7h ;# 
# 8143 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSZH equ 0F8h ;# 
# 8191 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSA equ 0F9h ;# 
# 8198 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSAL equ 0F9h ;# 
# 8268 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSAH equ 0FAh ;# 
# 8338 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSAU equ 0FBh ;# 
# 8396 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnCON0 equ 0FCh ;# 
# 8442 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnCON1 equ 0FDh ;# 
# 8486 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnAIRQ equ 0FEh ;# 
# 8556 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSIRQ equ 0FFh ;# 
# 8626 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PPSLOCK equ 0200h ;# 
# 8646 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA0PPS equ 0201h ;# 
# 8702 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA1PPS equ 0202h ;# 
# 8758 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA2PPS equ 0203h ;# 
# 8814 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA3PPS equ 0204h ;# 
# 8870 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA4PPS equ 0205h ;# 
# 8926 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA5PPS equ 0206h ;# 
# 8982 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA6PPS equ 0207h ;# 
# 9038 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA7PPS equ 0208h ;# 
# 9094 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB0PPS equ 0209h ;# 
# 9150 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB1PPS equ 020Ah ;# 
# 9206 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB2PPS equ 020Bh ;# 
# 9262 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB3PPS equ 020Ch ;# 
# 9318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB4PPS equ 020Dh ;# 
# 9374 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB5PPS equ 020Eh ;# 
# 9430 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB6PPS equ 020Fh ;# 
# 9486 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB7PPS equ 0210h ;# 
# 9542 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC0PPS equ 0211h ;# 
# 9598 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC1PPS equ 0212h ;# 
# 9654 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC2PPS equ 0213h ;# 
# 9710 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC3PPS equ 0214h ;# 
# 9766 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC4PPS equ 0215h ;# 
# 9822 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC5PPS equ 0216h ;# 
# 9878 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC6PPS equ 0217h ;# 
# 9934 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC7PPS equ 0218h ;# 
# 9990 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD0PPS equ 0219h ;# 
# 10046 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD1PPS equ 021Ah ;# 
# 10102 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD2PPS equ 021Bh ;# 
# 10158 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD3PPS equ 021Ch ;# 
# 10214 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD4PPS equ 021Dh ;# 
# 10270 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD5PPS equ 021Eh ;# 
# 10326 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD6PPS equ 021Fh ;# 
# 10382 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD7PPS equ 0220h ;# 
# 10438 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RE0PPS equ 0221h ;# 
# 10494 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RE1PPS equ 0222h ;# 
# 10550 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RE2PPS equ 0223h ;# 
# 10606 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF0PPS equ 0229h ;# 
# 10662 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF1PPS equ 022Ah ;# 
# 10718 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF2PPS equ 022Bh ;# 
# 10774 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF3PPS equ 022Ch ;# 
# 10830 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF4PPS equ 022Dh ;# 
# 10886 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF5PPS equ 022Eh ;# 
# 10942 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF6PPS equ 022Fh ;# 
# 10998 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF7PPS equ 0230h ;# 
# 11054 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INT0PPS equ 023Eh ;# 
# 11114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INT1PPS equ 023Fh ;# 
# 11180 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INT2PPS equ 0240h ;# 
# 11252 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T0CKIPPS equ 0241h ;# 
# 11324 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1CKIPPS equ 0242h ;# 
# 11396 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1GPPS equ 0243h ;# 
# 11462 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3CKIPPS equ 0244h ;# 
# 11534 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3GPPS equ 0245h ;# 
# 11600 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5CKIPPS equ 0246h ;# 
# 11672 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5GPPS equ 0247h ;# 
# 11738 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2INPPS equ 0248h ;# 
# 11804 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4INPPS equ 0249h ;# 
# 11870 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6INPPS equ 024Ah ;# 
# 11936 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP1PPS equ 024Fh ;# 
# 12008 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP2PPS equ 0250h ;# 
# 12080 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP3PPS equ 0251h ;# 
# 12146 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1ERSPPS equ 0253h ;# 
# 12212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2ERSPPS equ 0254h ;# 
# 12284 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3ERSPPS equ 0255h ;# 
# 12350 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWMIN0PPS equ 0257h ;# 
# 12422 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWMIN1PPS equ 0258h ;# 
# 12494 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1WINPPS equ 0259h ;# 
# 12566 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1SIGPPS equ 025Ah ;# 
# 12638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1PPS equ 025Bh ;# 
# 12643 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1INPPS equ 025Bh ;# 
# 12848 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2PPS equ 025Ch ;# 
# 12853 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2INPPS equ 025Ch ;# 
# 13058 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3PPS equ 025Dh ;# 
# 13063 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3INPPS equ 025Dh ;# 
# 13268 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CARLPPS equ 025Eh ;# 
# 13273 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MDCARLPPS equ 025Eh ;# 
# 13398 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CARHPPS equ 025Fh ;# 
# 13403 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MDCARHPPS equ 025Fh ;# 
# 13528 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1SRCPPS equ 0260h ;# 
# 13533 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MDSRCPPS equ 0260h ;# 
# 13658 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN0PPS equ 0261h ;# 
# 13724 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN1PPS equ 0262h ;# 
# 13790 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN2PPS equ 0263h ;# 
# 13856 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN3PPS equ 0264h ;# 
# 13922 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN4PPS equ 0265h ;# 
# 13988 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN5PPS equ 0266h ;# 
# 14054 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN6PPS equ 0267h ;# 
# 14120 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN7PPS equ 0268h ;# 
# 14186 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACTPPS equ 0269h ;# 
# 14252 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1SCKPPS equ 026Ah ;# 
# 14318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1SDIPPS equ 026Bh ;# 
# 14384 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1SSPPS equ 026Ch ;# 
# 14450 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2SCKPPS equ 026Dh ;# 
# 14516 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2SDIPPS equ 026Eh ;# 
# 14582 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2SSPPS equ 026Fh ;# 
# 14648 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1SDAPPS equ 0270h ;# 
# 14714 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1SCLPPS equ 0271h ;# 
# 14780 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1RXPPS equ 0272h ;# 
# 14852 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1CTSPPS equ 0273h ;# 
# 14924 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2RXPPS equ 0274h ;# 
# 14990 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2CTSPPS equ 0275h ;# 
# 15056 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3RXPPS equ 0276h ;# 
# 15128 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3CTSPPS equ 0277h ;# 
# 15200 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4RXPPS equ 0278h ;# 
# 15266 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4CTSPPS equ 0279h ;# 
# 15332 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5RXPPS equ 027Ah ;# 
# 15404 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5CTSPPS equ 027Bh ;# 
# 15476 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC4I2C equ 0286h ;# 
# 15608 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC3I2C equ 0287h ;# 
# 15740 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB2I2C equ 0288h ;# 
# 15872 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB1I2C equ 0289h ;# 
# 16004 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1RXB equ 028Bh ;# 
# 16024 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1TXB equ 028Ch ;# 
# 16044 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CNT equ 028Dh ;# 
# 16114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADB0 equ 028Eh ;# 
# 16134 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADB1 equ 028Fh ;# 
# 16154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADR0 equ 0290h ;# 
# 16174 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADR1 equ 0291h ;# 
# 16195 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADR2 equ 0292h ;# 
# 16215 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADR3 equ 0293h ;# 
# 16236 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CON0 equ 0294h ;# 
# 16313 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CON1 equ 0295h ;# 
# 16370 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CON2 equ 0296h ;# 
# 16446 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ERR equ 0297h ;# 
# 16536 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1STAT0 equ 0298h ;# 
# 16626 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1STAT1 equ 0299h ;# 
# 16673 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1PIR equ 029Ah ;# 
# 16775 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1PIE equ 029Bh ;# 
# 16877 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CLK equ 029Ch ;# 
# 16969 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1BTO equ 029Dh ;# 
# 17049 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1RXB equ 02A1h ;# 
# 17054 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1RXBL equ 02A1h ;# 
# 17087 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1RXCHK equ 02A2h ;# 
# 17107 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1TXB equ 02A3h ;# 
# 17112 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1TXBL equ 02A3h ;# 
# 17145 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1TXCHK equ 02A4h ;# 
# 17165 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P1 equ 02A5h ;# 
# 17172 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P1L equ 02A5h ;# 
# 17192 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P1H equ 02A6h ;# 
# 17212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P2 equ 02A7h ;# 
# 17219 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P2L equ 02A7h ;# 
# 17239 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P2H equ 02A8h ;# 
# 17259 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P3 equ 02A9h ;# 
# 17266 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P3L equ 02A9h ;# 
# 17286 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P3H equ 02AAh ;# 
# 17306 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1CON0 equ 02ABh ;# 
# 17434 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1CON1 equ 02ACh ;# 
# 17514 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1CON2 equ 02ADh ;# 
# 17656 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1BRG equ 02AEh ;# 
# 17663 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1BRGL equ 02AEh ;# 
# 17683 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1BRGH equ 02AFh ;# 
# 17703 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1FIFO equ 02B0h ;# 
# 17833 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1UIR equ 02B1h ;# 
# 17889 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1ERRIR equ 02B2h ;# 
# 18001 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1ERRIE equ 02B3h ;# 
# 18113 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2RXB equ 02B4h ;# 
# 18118 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2RXBL equ 02B4h ;# 
# 18151 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2TXB equ 02B6h ;# 
# 18156 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2TXBL equ 02B6h ;# 
# 18189 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P1 equ 02B8h ;# 
# 18196 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P1L equ 02B8h ;# 
# 18216 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P2 equ 02BAh ;# 
# 18223 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P2L equ 02BAh ;# 
# 18243 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P3 equ 02BCh ;# 
# 18250 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P3L equ 02BCh ;# 
# 18270 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2CON0 equ 02BEh ;# 
# 18386 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2CON1 equ 02BFh ;# 
# 18466 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2CON2 equ 02C0h ;# 
# 18598 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2BRG equ 02C1h ;# 
# 18605 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2BRGL equ 02C1h ;# 
# 18625 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2BRGH equ 02C2h ;# 
# 18645 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2FIFO equ 02C3h ;# 
# 18775 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2UIR equ 02C4h ;# 
# 18831 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2ERRIR equ 02C5h ;# 
# 18943 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2ERRIE equ 02C6h ;# 
# 19055 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3RXB equ 02C7h ;# 
# 19060 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3RXBL equ 02C7h ;# 
# 19093 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3TXB equ 02C9h ;# 
# 19098 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3TXBL equ 02C9h ;# 
# 19131 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P1 equ 02CBh ;# 
# 19138 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P1L equ 02CBh ;# 
# 19158 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P2 equ 02CDh ;# 
# 19165 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P2L equ 02CDh ;# 
# 19185 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P3 equ 02CFh ;# 
# 19192 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P3L equ 02CFh ;# 
# 19212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3CON0 equ 02D1h ;# 
# 19328 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3CON1 equ 02D2h ;# 
# 19408 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3CON2 equ 02D3h ;# 
# 19540 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3BRG equ 02D4h ;# 
# 19547 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3BRGL equ 02D4h ;# 
# 19567 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3BRGH equ 02D5h ;# 
# 19587 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3FIFO equ 02D6h ;# 
# 19717 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3UIR equ 02D7h ;# 
# 19773 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3ERRIR equ 02D8h ;# 
# 19885 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3ERRIE equ 02D9h ;# 
# 19997 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4RXB equ 02DAh ;# 
# 20002 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4RXBL equ 02DAh ;# 
# 20035 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4TXB equ 02DCh ;# 
# 20040 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4TXBL equ 02DCh ;# 
# 20073 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P1 equ 02DEh ;# 
# 20080 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P1L equ 02DEh ;# 
# 20100 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P2 equ 02E0h ;# 
# 20107 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P2L equ 02E0h ;# 
# 20127 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P3 equ 02E2h ;# 
# 20134 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P3L equ 02E2h ;# 
# 20154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4CON0 equ 02E4h ;# 
# 20270 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4CON1 equ 02E5h ;# 
# 20350 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4CON2 equ 02E6h ;# 
# 20482 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4BRG equ 02E7h ;# 
# 20489 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4BRGL equ 02E7h ;# 
# 20509 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4BRGH equ 02E8h ;# 
# 20529 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4FIFO equ 02E9h ;# 
# 20659 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4UIR equ 02EAh ;# 
# 20715 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4ERRIR equ 02EBh ;# 
# 20827 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4ERRIE equ 02ECh ;# 
# 20939 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5RXB equ 02EDh ;# 
# 20944 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5RXBL equ 02EDh ;# 
# 20977 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5TXB equ 02EFh ;# 
# 20982 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5TXBL equ 02EFh ;# 
# 21015 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P1 equ 02F1h ;# 
# 21022 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P1L equ 02F1h ;# 
# 21042 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P2 equ 02F3h ;# 
# 21049 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P2L equ 02F3h ;# 
# 21069 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P3 equ 02F5h ;# 
# 21076 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P3L equ 02F5h ;# 
# 21096 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5CON0 equ 02F7h ;# 
# 21212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5CON1 equ 02F8h ;# 
# 21292 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5CON2 equ 02F9h ;# 
# 21424 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5BRG equ 02FAh ;# 
# 21431 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5BRGL equ 02FAh ;# 
# 21451 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5BRGH equ 02FBh ;# 
# 21471 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5FIFO equ 02FCh ;# 
# 21601 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5UIR equ 02FDh ;# 
# 21657 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5ERRIR equ 02FEh ;# 
# 21769 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5ERRIE equ 02FFh ;# 
# 21883 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1TMR equ 0300h ;# 
# 21890 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1TMRL equ 0300h ;# 
# 21960 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1TMRH equ 0301h ;# 
# 22030 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1TMRU equ 0302h ;# 
# 22102 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPR equ 0303h ;# 
# 22109 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPRL equ 0303h ;# 
# 22179 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPRH equ 0304h ;# 
# 22249 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPRU equ 0305h ;# 
# 22321 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPW equ 0306h ;# 
# 22328 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPWL equ 0306h ;# 
# 22398 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPWH equ 0307h ;# 
# 22468 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPWU equ 0308h ;# 
# 22540 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1PR equ 0309h ;# 
# 22547 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1PRL equ 0309h ;# 
# 22617 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1PRH equ 030Ah ;# 
# 22687 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1PRU equ 030Bh ;# 
# 22757 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CON0 equ 030Ch ;# 
# 22822 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CON1 equ 030Dh ;# 
# 22922 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1STAT equ 030Eh ;# 
# 23012 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CLK equ 030Fh ;# 
# 23092 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1SIG equ 0310h ;# 
# 23196 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1WIN equ 0311h ;# 
# 23300 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR0L equ 0318h ;# 
# 23305 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR0 equ 0318h ;# 
# 23438 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR0H equ 0319h ;# 
# 23443 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR0 equ 0319h ;# 
# 23692 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T0CON0 equ 031Ah ;# 
# 23816 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T0CON1 equ 031Bh ;# 
# 23958 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1 equ 031Ch ;# 
# 23965 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1L equ 031Ch ;# 
# 24085 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1H equ 031Dh ;# 
# 24205 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1CON equ 031Eh ;# 
# 24210 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1CON equ 031Eh ;# 
# 24427 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1GCON equ 031Fh ;# 
# 24432 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1GCON equ 031Fh ;# 
# 24713 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1GATE equ 0320h ;# 
# 24718 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1GATE equ 0320h ;# 
# 24903 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1CLK equ 0321h ;# 
# 24908 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1CLK equ 0321h ;# 
# 24912 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR1 equ 0321h ;# 
# 25149 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2TMR equ 0322h ;# 
# 25154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR2 equ 0322h ;# 
# 25187 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2PR equ 0323h ;# 
# 25192 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR2 equ 0323h ;# 
# 25225 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2CON equ 0324h ;# 
# 25371 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2HLT equ 0325h ;# 
# 25499 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2CLKCON equ 0326h ;# 
# 25504 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2CLK equ 0326h ;# 
# 25705 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2RST equ 0327h ;# 
# 25821 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3 equ 0328h ;# 
# 25828 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3L equ 0328h ;# 
# 25948 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3H equ 0329h ;# 
# 26068 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3CON equ 032Ah ;# 
# 26073 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3CON equ 032Ah ;# 
# 26290 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3GCON equ 032Bh ;# 
# 26295 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3GCON equ 032Bh ;# 
# 26576 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3GATE equ 032Ch ;# 
# 26581 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3GATE equ 032Ch ;# 
# 26766 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3CLK equ 032Dh ;# 
# 26771 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3CLK equ 032Dh ;# 
# 26775 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR3 equ 032Dh ;# 
# 27012 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4TMR equ 032Eh ;# 
# 27017 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR4 equ 032Eh ;# 
# 27050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4PR equ 032Fh ;# 
# 27055 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR4 equ 032Fh ;# 
# 27088 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4CON equ 0330h ;# 
# 27234 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4HLT equ 0331h ;# 
# 27362 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4CLKCON equ 0332h ;# 
# 27367 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4CLK equ 0332h ;# 
# 27568 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4RST equ 0333h ;# 
# 27684 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5 equ 0334h ;# 
# 27691 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5L equ 0334h ;# 
# 27811 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5H equ 0335h ;# 
# 27931 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5CON equ 0336h ;# 
# 27936 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5CON equ 0336h ;# 
# 28153 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5GCON equ 0337h ;# 
# 28158 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5GCON equ 0337h ;# 
# 28439 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5GATE equ 0338h ;# 
# 28444 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5GATE equ 0338h ;# 
# 28629 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5CLK equ 0339h ;# 
# 28634 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5CLK equ 0339h ;# 
# 28638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR5 equ 0339h ;# 
# 28875 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6TMR equ 033Ah ;# 
# 28880 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR6 equ 033Ah ;# 
# 28913 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6PR equ 033Bh ;# 
# 28918 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR6 equ 033Bh ;# 
# 28951 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6CON equ 033Ch ;# 
# 29097 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6HLT equ 033Dh ;# 
# 29225 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6CLKCON equ 033Eh ;# 
# 29230 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6CLK equ 033Eh ;# 
# 29431 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6RST equ 033Fh ;# 
# 29547 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR1 equ 0340h ;# 
# 29554 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR1L equ 0340h ;# 
# 29574 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR1H equ 0341h ;# 
# 29594 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP1CON equ 0342h ;# 
# 29712 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP1CAP equ 0343h ;# 
# 29792 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR2 equ 0344h ;# 
# 29799 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR2L equ 0344h ;# 
# 29819 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR2H equ 0345h ;# 
# 29839 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP2CON equ 0346h ;# 
# 29957 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP2CAP equ 0347h ;# 
# 30037 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR3 equ 0348h ;# 
# 30044 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR3L equ 0348h ;# 
# 30064 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR3H equ 0349h ;# 
# 30084 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP3CON equ 034Ah ;# 
# 30202 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP3CAP equ 034Bh ;# 
# 30282 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPTMRS0 equ 034Ch ;# 
# 30352 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCDATA equ 034Fh ;# 
# 30359 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCDATL equ 034Fh ;# 
# 30421 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCDATH equ 0350h ;# 
# 30483 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCACC equ 0351h ;# 
# 30490 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCACCL equ 0351h ;# 
# 30552 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCACCH equ 0352h ;# 
# 30614 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCSHFT equ 0353h ;# 
# 30621 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCSHIFTL equ 0353h ;# 
# 30683 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCSHIFTH equ 0354h ;# 
# 30745 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCXOR equ 0355h ;# 
# 30752 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCXORL equ 0355h ;# 
# 30809 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCXORH equ 0356h ;# 
# 30871 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCCON0 equ 0357h ;# 
# 30931 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCCON1 equ 0358h ;# 
# 31009 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANLADR equ 035Ah ;# 
# 31016 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANLADRL equ 035Ah ;# 
# 31144 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANLADRH equ 035Bh ;# 
# 31272 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANLADRU equ 035Ch ;# 
# 31378 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANHADR equ 035Dh ;# 
# 31385 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANHADRL equ 035Dh ;# 
# 31513 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANHADRH equ 035Eh ;# 
# 31641 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANHADRU equ 035Fh ;# 
# 31745 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANCON0 equ 0360h ;# 
# 31805 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANTRIG equ 0361h ;# 
# 31865 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR0 equ 0362h ;# 
# 31917 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR1 equ 0363h ;# 
# 31979 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR2 equ 0364h ;# 
# 32024 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR3 equ 0365h ;# 
# 32086 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR4 equ 0366h ;# 
# 32137 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR5 equ 0367h ;# 
# 32194 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR6 equ 0368h ;# 
# 32256 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR7 equ 0369h ;# 
# 32313 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR8 equ 036Ah ;# 
# 32375 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR9 equ 036Bh ;# 
# 32420 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR10 equ 036Ch ;# 
# 32482 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR11 equ 036Dh ;# 
# 32544 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR12 equ 036Eh ;# 
# 32606 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR13 equ 036Fh ;# 
# 32668 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR14 equ 0370h ;# 
# 32701 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR15 equ 0371h ;# 
# 32739 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
STATUS_CSHAD equ 0373h ;# 
# 32828 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WREG_CSHAD equ 0374h ;# 
# 32848 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
BSR_CSHAD equ 0375h ;# 
# 32855 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SHADCON equ 0376h ;# 
# 32875 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
STATUS_SHAD equ 0377h ;# 
# 32964 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WREG_SHAD equ 0378h ;# 
# 32984 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
BSR_SHAD equ 0379h ;# 
# 32991 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLATH_SHAD equ 037Ah ;# 
# 33011 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLATU_SHAD equ 037Bh ;# 
# 33031 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0SH equ 037Ch ;# 
# 33038 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0L_SHAD equ 037Ch ;# 
# 33058 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0H_SHAD equ 037Dh ;# 
# 33078 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1SH equ 037Eh ;# 
# 33085 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1L_SHAD equ 037Eh ;# 
# 33105 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1H_SHAD equ 037Fh ;# 
# 33125 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2SH equ 0380h ;# 
# 33132 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2L_SHAD equ 0380h ;# 
# 33152 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2H_SHAD equ 0381h ;# 
# 33172 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODSH equ 0382h ;# 
# 33179 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODL_SHAD equ 0382h ;# 
# 33199 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODH_SHAD equ 0383h ;# 
# 33219 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1CLK equ 03BCh ;# 
# 33224 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1CLKCON equ 03BCh ;# 
# 33273 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1ISM equ 03BDh ;# 
# 33278 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1DAT equ 03BDh ;# 
# 33391 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1DBR equ 03BEh ;# 
# 33495 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1DBF equ 03BFh ;# 
# 33599 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1CON0 equ 03C0h ;# 
# 33700 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1CON1 equ 03C1h ;# 
# 33778 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1AS0 equ 03C2h ;# 
# 33940 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1AS1 equ 03C3h ;# 
# 34002 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1STR equ 03C4h ;# 
# 34114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2CLK equ 03C5h ;# 
# 34119 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2CLKCON equ 03C5h ;# 
# 34168 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2ISM equ 03C6h ;# 
# 34173 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2DAT equ 03C6h ;# 
# 34286 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2DBR equ 03C7h ;# 
# 34390 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2DBF equ 03C8h ;# 
# 34494 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2CON0 equ 03C9h ;# 
# 34595 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2CON1 equ 03CAh ;# 
# 34673 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2AS0 equ 03CBh ;# 
# 34835 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2AS1 equ 03CCh ;# 
# 34897 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2STR equ 03CDh ;# 
# 35009 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3CLK equ 03CEh ;# 
# 35014 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3CLKCON equ 03CEh ;# 
# 35063 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3ISM equ 03CFh ;# 
# 35068 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3DAT equ 03CFh ;# 
# 35181 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3DBR equ 03D0h ;# 
# 35285 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3DBF equ 03D1h ;# 
# 35389 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3CON0 equ 03D2h ;# 
# 35490 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3CON1 equ 03D3h ;# 
# 35568 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3AS0 equ 03D4h ;# 
# 35730 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3AS1 equ 03D5h ;# 
# 35792 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3STR equ 03D6h ;# 
# 35904 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FVRCON equ 03D7h ;# 
# 35993 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCPCON equ 03D8h ;# 
# 35998 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCP equ 03D8h ;# 
# 36093 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADLTH equ 03D9h ;# 
# 36100 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADLTHL equ 03D9h ;# 
# 36228 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADLTHH equ 03DAh ;# 
# 36356 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADUTH equ 03DBh ;# 
# 36363 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADUTHL equ 03DBh ;# 
# 36491 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADUTHH equ 03DCh ;# 
# 36619 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADERR equ 03DDh ;# 
# 36626 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADERRL equ 03DDh ;# 
# 36754 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADERRH equ 03DEh ;# 
# 36882 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADSTPT equ 03DFh ;# 
# 36889 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADSTPTL equ 03DFh ;# 
# 37017 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADSTPTH equ 03E0h ;# 
# 37145 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADFLTR equ 03E1h ;# 
# 37152 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADFLTRL equ 03E1h ;# 
# 37280 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADFLTRH equ 03E2h ;# 
# 37410 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACC equ 03E3h ;# 
# 37417 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACCL equ 03E3h ;# 
# 37545 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACCH equ 03E4h ;# 
# 37673 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACCU equ 03E5h ;# 
# 37801 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCNT equ 03E6h ;# 
# 37929 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADRPT equ 03E7h ;# 
# 38057 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREV equ 03E8h ;# 
# 38064 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREVL equ 03E8h ;# 
# 38192 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREVH equ 03E9h ;# 
# 38320 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADRES equ 03EAh ;# 
# 38327 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADRESL equ 03EAh ;# 
# 38455 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADRESH equ 03EBh ;# 
# 38575 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPCH equ 03ECh ;# 
# 38633 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACQ equ 03EEh ;# 
# 38640 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACQL equ 03EEh ;# 
# 38768 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACQH equ 03EFh ;# 
# 38860 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCAP equ 03F0h ;# 
# 38912 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPRE equ 03F1h ;# 
# 38919 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREL equ 03F1h ;# 
# 39047 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREH equ 03F2h ;# 
# 39139 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCON0 equ 03F3h ;# 
# 39257 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCON1 equ 03F4h ;# 
# 39323 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCON2 equ 03F5h ;# 
# 39465 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCON3 equ 03F6h ;# 
# 39595 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADSTAT equ 03F7h ;# 
# 39727 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADREF equ 03F8h ;# 
# 39809 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACT equ 03F9h ;# 
# 39913 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCLK equ 03FAh ;# 
# 40017 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELA equ 0400h ;# 
# 40079 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUA equ 0401h ;# 
# 40141 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONA equ 0402h ;# 
# 40203 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONA equ 0403h ;# 
# 40265 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLA equ 0404h ;# 
# 40327 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCAP equ 0405h ;# 
# 40389 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCAN equ 0406h ;# 
# 40451 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCAF equ 0407h ;# 
# 40513 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELB equ 0408h ;# 
# 40575 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUB equ 0409h ;# 
# 40637 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONB equ 040Ah ;# 
# 40699 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONB equ 040Bh ;# 
# 40761 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLB equ 040Ch ;# 
# 40823 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCBP equ 040Dh ;# 
# 40885 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCBN equ 040Eh ;# 
# 40947 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCBF equ 040Fh ;# 
# 41009 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELC equ 0410h ;# 
# 41071 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUC equ 0411h ;# 
# 41133 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONC equ 0412h ;# 
# 41195 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONC equ 0413h ;# 
# 41257 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLC equ 0414h ;# 
# 41319 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCCP equ 0415h ;# 
# 41381 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCCN equ 0416h ;# 
# 41443 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCCF equ 0417h ;# 
# 41505 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELD equ 0418h ;# 
# 41567 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUD equ 0419h ;# 
# 41629 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCOND equ 041Ah ;# 
# 41691 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCOND equ 041Bh ;# 
# 41753 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLD equ 041Ch ;# 
# 41815 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELE equ 0420h ;# 
# 41847 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUE equ 0421h ;# 
# 41885 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONE equ 0422h ;# 
# 41917 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONE equ 0423h ;# 
# 41949 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLE equ 0424h ;# 
# 41987 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCEP equ 0425h ;# 
# 42008 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCEN equ 0426h ;# 
# 42029 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCEF equ 0427h ;# 
# 42050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELF equ 0428h ;# 
# 42112 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUF equ 0429h ;# 
# 42174 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONF equ 042Ah ;# 
# 42236 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONF equ 042Bh ;# 
# 42298 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLF equ 042Ch ;# 
# 42362 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1ACC equ 0440h ;# 
# 42369 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1ACCL equ 0440h ;# 
# 42497 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1ACCH equ 0441h ;# 
# 42625 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1ACCU equ 0442h ;# 
# 42707 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1INC equ 0443h ;# 
# 42714 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1INCL equ 0443h ;# 
# 42842 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1INCH equ 0444h ;# 
# 42970 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1INCU equ 0445h ;# 
# 43050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1CON equ 0446h ;# 
# 43118 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1CLK equ 0447h ;# 
# 43260 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2ACC equ 0448h ;# 
# 43267 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2ACCL equ 0448h ;# 
# 43395 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2ACCH equ 0449h ;# 
# 43523 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2ACCU equ 044Ah ;# 
# 43605 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2INC equ 044Bh ;# 
# 43612 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2INCL equ 044Bh ;# 
# 43740 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2INCH equ 044Ch ;# 
# 43868 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2INCU equ 044Dh ;# 
# 43948 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2CON equ 044Eh ;# 
# 44016 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2CLK equ 044Fh ;# 
# 44158 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3ACC equ 0450h ;# 
# 44165 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3ACCL equ 0450h ;# 
# 44293 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3ACCH equ 0451h ;# 
# 44421 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3ACCU equ 0452h ;# 
# 44503 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3INC equ 0453h ;# 
# 44510 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3INCL equ 0453h ;# 
# 44638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3INCH equ 0454h ;# 
# 44766 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3INCU equ 0455h ;# 
# 44846 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3CON equ 0456h ;# 
# 44914 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3CLK equ 0457h ;# 
# 45054 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTLOCK equ 0459h ;# 
# 45076 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTAD equ 045Ah ;# 
# 45083 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTADL equ 045Ah ;# 
# 45145 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTADH equ 045Bh ;# 
# 45207 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTADU equ 045Ch ;# 
# 45253 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTBASE equ 045Dh ;# 
# 45260 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTBASEL equ 045Dh ;# 
# 45322 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTBASEH equ 045Eh ;# 
# 45384 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTBASEU equ 045Fh ;# 
# 45428 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1ERS equ 0460h ;# 
# 45498 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1CLK equ 0461h ;# 
# 45568 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1LDS equ 0462h ;# 
# 45638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1PR equ 0463h ;# 
# 45645 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1PRL equ 0463h ;# 
# 45665 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1PRH equ 0464h ;# 
# 45685 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1CPRE equ 0465h ;# 
# 45705 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1PIPOS equ 0466h ;# 
# 45725 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1GIR equ 0467h ;# 
# 45751 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1GIE equ 0468h ;# 
# 45777 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1CON equ 0469h ;# 
# 45816 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1CFG equ 046Ah ;# 
# 45875 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P1 equ 046Bh ;# 
# 45882 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P1L equ 046Bh ;# 
# 45902 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P1H equ 046Ch ;# 
# 45922 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P2 equ 046Dh ;# 
# 45929 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P2L equ 046Dh ;# 
# 45949 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P2H equ 046Eh ;# 
# 45969 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2ERS equ 046Fh ;# 
# 46039 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2CLK equ 0470h ;# 
# 46109 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2LDS equ 0471h ;# 
# 46179 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2PR equ 0472h ;# 
# 46186 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2PRL equ 0472h ;# 
# 46206 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2PRH equ 0473h ;# 
# 46226 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2CPRE equ 0474h ;# 
# 46246 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2PIPOS equ 0475h ;# 
# 46266 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2GIR equ 0476h ;# 
# 46292 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2GIE equ 0477h ;# 
# 46318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2CON equ 0478h ;# 
# 46357 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1CFG equ 0479h ;# 
# 46416 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P1 equ 047Ah ;# 
# 46423 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P1L equ 047Ah ;# 
# 46443 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P1H equ 047Bh ;# 
# 46463 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P2 equ 047Ch ;# 
# 46470 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P2L equ 047Ch ;# 
# 46490 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P2H equ 047Dh ;# 
# 46510 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3ERS equ 047Eh ;# 
# 46580 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3CLK equ 047Fh ;# 
# 46650 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3LDS equ 0480h ;# 
# 46720 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3PR equ 0481h ;# 
# 46727 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3PRL equ 0481h ;# 
# 46747 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3PRH equ 0482h ;# 
# 46767 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3CPRE equ 0483h ;# 
# 46787 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3PIPOS equ 0484h ;# 
# 46807 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3GIR equ 0485h ;# 
# 46833 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3GIE equ 0486h ;# 
# 46859 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3CON equ 0487h ;# 
# 46898 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1CFG equ 0488h ;# 
# 46957 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P1 equ 0489h ;# 
# 46964 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P1L equ 0489h ;# 
# 46984 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P1H equ 048Ah ;# 
# 47004 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P2 equ 048Bh ;# 
# 47011 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P2L equ 048Bh ;# 
# 47031 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P2H equ 048Ch ;# 
# 47051 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWMLOAD equ 049Ch ;# 
# 47083 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWMEN equ 049Dh ;# 
# 47115 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE0 equ 049Eh ;# 
# 47167 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE1 equ 049Fh ;# 
# 47229 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE2 equ 04A0h ;# 
# 47274 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE3 equ 04A1h ;# 
# 47336 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE4 equ 04A2h ;# 
# 47387 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE5 equ 04A3h ;# 
# 47444 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE6 equ 04A4h ;# 
# 47506 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE7 equ 04A5h ;# 
# 47563 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE8 equ 04A6h ;# 
# 47625 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE9 equ 04A7h ;# 
# 47670 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE10 equ 04A8h ;# 
# 47732 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE11 equ 04A9h ;# 
# 47794 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE12 equ 04AAh ;# 
# 47856 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE13 equ 04ABh ;# 
# 47918 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE14 equ 04ACh ;# 
# 47951 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE15 equ 04ADh ;# 
# 47989 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR0 equ 04AEh ;# 
# 48041 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR1 equ 04AFh ;# 
# 48103 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR2 equ 04B0h ;# 
# 48148 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR3 equ 04B1h ;# 
# 48210 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR4 equ 04B2h ;# 
# 48261 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR5 equ 04B3h ;# 
# 48318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR6 equ 04B4h ;# 
# 48380 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR7 equ 04B5h ;# 
# 48437 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR8 equ 04B6h ;# 
# 48499 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR9 equ 04B7h ;# 
# 48544 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR10 equ 04B8h ;# 
# 48606 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR11 equ 04B9h ;# 
# 48668 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR12 equ 04BAh ;# 
# 48730 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR13 equ 04BBh ;# 
# 48792 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR14 equ 04BCh ;# 
# 48825 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR15 equ 04BDh ;# 
# 48863 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATA equ 04BEh ;# 
# 48925 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATB equ 04BFh ;# 
# 48987 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATC equ 04C0h ;# 
# 49049 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATD equ 04C1h ;# 
# 49111 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATE equ 04C2h ;# 
# 49143 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATF equ 04C3h ;# 
# 49205 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISA equ 04C6h ;# 
# 49267 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISB equ 04C7h ;# 
# 49329 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISC equ 04C8h ;# 
# 49391 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISD equ 04C9h ;# 
# 49453 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISE equ 04CAh ;# 
# 49485 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISF equ 04CBh ;# 
# 49547 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTA equ 04CEh ;# 
# 49609 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTB equ 04CFh ;# 
# 49671 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTC equ 04D0h ;# 
# 49733 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTD equ 04D1h ;# 
# 49795 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTE equ 04D2h ;# 
# 49833 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTF equ 04D3h ;# 
# 49895 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INTCON0 equ 04D6h ;# 
# 49955 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INTCON1 equ 04D7h ;# 
# 49991 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
STATUS equ 04D8h ;# 
# 50080 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2 equ 04D9h ;# 
# 50087 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2L equ 04D9h ;# 
# 50107 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2H equ 04DAh ;# 
# 50114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PLUSW2 equ 04DBh ;# 
# 50134 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PREINC2 equ 04DCh ;# 
# 50154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTDEC2 equ 04DDh ;# 
# 50174 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTINC2 equ 04DEh ;# 
# 50194 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INDF2 equ 04DFh ;# 
# 50214 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
BSR equ 04E0h ;# 
# 50221 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1 equ 04E1h ;# 
# 50228 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1L equ 04E1h ;# 
# 50248 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1H equ 04E2h ;# 
# 50255 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PLUSW1 equ 04E3h ;# 
# 50275 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PREINC1 equ 04E4h ;# 
# 50295 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTDEC1 equ 04E5h ;# 
# 50315 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTINC1 equ 04E6h ;# 
# 50335 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INDF1 equ 04E7h ;# 
# 50355 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WREG equ 04E8h ;# 
# 50393 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0 equ 04E9h ;# 
# 50400 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0L equ 04E9h ;# 
# 50420 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0H equ 04EAh ;# 
# 50427 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PLUSW0 equ 04EBh ;# 
# 50447 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PREINC0 equ 04ECh ;# 
# 50467 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTDEC0 equ 04EDh ;# 
# 50487 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTINC0 equ 04EEh ;# 
# 50507 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INDF0 equ 04EFh ;# 
# 50527 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCON0 equ 04F0h ;# 
# 50680 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCON1 equ 04F1h ;# 
# 50747 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CPUDOZE equ 04F2h ;# 
# 50812 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PROD equ 04F3h ;# 
# 50819 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODL equ 04F3h ;# 
# 50839 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODH equ 04F4h ;# 
# 50859 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TABLAT equ 04F5h ;# 
# 50881 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TBLPTR equ 04F6h ;# 
# 50888 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TBLPTRL equ 04F6h ;# 
# 50908 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TBLPTRH equ 04F7h ;# 
# 50928 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TBLPTRU equ 04F8h ;# 
# 50959 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLAT equ 04F9h ;# 
# 50966 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCL equ 04F9h ;# 
# 50986 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLATH equ 04FAh ;# 
# 51006 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLATU equ 04FBh ;# 
# 51026 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
STKPTR equ 04FCh ;# 
# 51124 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TOS equ 04FDh ;# 
# 51131 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TOSL equ 04FDh ;# 
# 51151 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TOSH equ 04FEh ;# 
# 51171 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TOSU equ 04FFh ;# 
# 328 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLKRCON equ 039h ;# 
# 432 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLKRCLK equ 03Ah ;# 
# 516 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMCON0 equ 040h ;# 
# 560 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMCON1 equ 041h ;# 
# 595 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMLOCK equ 042h ;# 
# 617 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMADR equ 043h ;# 
# 624 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMADRL equ 043h ;# 
# 694 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMADRH equ 044h ;# 
# 764 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMADRU equ 045h ;# 
# 822 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMDAT equ 046h ;# 
# 829 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMDATL equ 046h ;# 
# 899 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMDATH equ 047h ;# 
# 969 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
VREGCON equ 048h ;# 
# 1023 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
BORCON equ 049h ;# 
# 1050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
HLVDCON0 equ 04Ah ;# 
# 1130 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
HLVDCON1 equ 04Bh ;# 
# 1202 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ZCDCON equ 04Ch ;# 
# 1282 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD0 equ 060h ;# 
# 1339 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD1 equ 061h ;# 
# 1401 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD3 equ 063h ;# 
# 1452 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD4 equ 064h ;# 
# 1508 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD5 equ 065h ;# 
# 1559 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD6 equ 066h ;# 
# 1621 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD7 equ 067h ;# 
# 1683 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD8 equ 068h ;# 
# 1733 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CON0 equ 06Ah ;# 
# 1801 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CON1 equ 06Bh ;# 
# 1867 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1SRC equ 06Ch ;# 
# 1971 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CARL equ 06Dh ;# 
# 2063 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CARH equ 06Eh ;# 
# 2155 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CMOUT equ 06Fh ;# 
# 2181 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM1CON0 equ 070h ;# 
# 2261 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM1CON1 equ 071h ;# 
# 2301 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM1NCH equ 072h ;# 
# 2361 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM1PCH equ 073h ;# 
# 2421 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM2CON0 equ 074h ;# 
# 2501 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM2CON1 equ 075h ;# 
# 2541 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM2NCH equ 076h ;# 
# 2601 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM2PCH equ 077h ;# 
# 2661 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTCON0 equ 078h ;# 
# 2772 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTCON1 equ 079h ;# 
# 2892 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTPS equ 07Ah ;# 
# 2899 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTPSL equ 07Ah ;# 
# 2977 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTPSH equ 07Bh ;# 
# 3055 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTTMR equ 07Ch ;# 
# 3152 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DAC1DAT equ 07Dh ;# 
# 3159 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DAC1DATL equ 07Dh ;# 
# 3237 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DAC1CON equ 07Fh ;# 
# 3340 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1RXB equ 080h ;# 
# 3410 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TXB equ 081h ;# 
# 3480 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TCNT equ 082h ;# 
# 3487 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TCNTL equ 082h ;# 
# 3507 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TCNTH equ 083h ;# 
# 3527 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1CON0 equ 084h ;# 
# 3593 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1CON1 equ 085h ;# 
# 3695 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1CON2 equ 086h ;# 
# 3773 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1STATUS equ 087h ;# 
# 3855 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TWIDTH equ 088h ;# 
# 3895 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1BAUD equ 089h ;# 
# 3965 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1INTF equ 08Ah ;# 
# 4057 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1INTE equ 08Bh ;# 
# 4149 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1CLK equ 08Ch ;# 
# 4241 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2RXB equ 08Dh ;# 
# 4311 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TXB equ 08Eh ;# 
# 4381 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TCNT equ 08Fh ;# 
# 4388 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TCNTL equ 08Fh ;# 
# 4408 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TCNTH equ 090h ;# 
# 4428 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2CON0 equ 091h ;# 
# 4494 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2CON1 equ 092h ;# 
# 4596 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2CON2 equ 093h ;# 
# 4674 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2STATUS equ 094h ;# 
# 4756 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TWIDTH equ 095h ;# 
# 4796 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2BAUD equ 096h ;# 
# 4866 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2INTF equ 097h ;# 
# 4958 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2INTE equ 098h ;# 
# 5050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2CLK equ 099h ;# 
# 5142 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ACTCON equ 0ACh ;# 
# 5212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCCON1 equ 0ADh ;# 
# 5282 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCCON2 equ 0AEh ;# 
# 5352 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCCON3 equ 0AFh ;# 
# 5392 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCTUNE equ 0B0h ;# 
# 5450 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCFRQ equ 0B1h ;# 
# 5455 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCFREQ equ 0B1h ;# 
# 5540 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCSTAT equ 0B2h ;# 
# 5545 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCSTAT1 equ 0B2h ;# 
# 5652 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCEN equ 0B3h ;# 
# 5709 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRLOCK equ 0B4h ;# 
# 5729 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANPR equ 0B5h ;# 
# 5797 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA1PR equ 0B6h ;# 
# 5865 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA2PR equ 0B7h ;# 
# 5933 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA3PR equ 0B8h ;# 
# 6001 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA4PR equ 0B9h ;# 
# 6069 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA5PR equ 0BAh ;# 
# 6137 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA6PR equ 0BBh ;# 
# 6205 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MAINPR equ 0BEh ;# 
# 6273 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ISRPR equ 0BFh ;# 
# 6341 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCDATA equ 0D4h ;# 
# 6403 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCSELECT equ 0D5h ;# 
# 6443 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnCON equ 0D6h ;# 
# 6513 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnPOL equ 0D7h ;# 
# 6558 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnSEL0 equ 0D8h ;# 
# 6628 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnSEL1 equ 0D9h ;# 
# 6698 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnSEL2 equ 0DAh ;# 
# 6768 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnSEL3 equ 0DBh ;# 
# 6838 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnGLS0 equ 0DCh ;# 
# 6900 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnGLS1 equ 0DDh ;# 
# 6962 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnGLS2 equ 0DEh ;# 
# 7024 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnGLS3 equ 0DFh ;# 
# 7086 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMASELECT equ 0E8h ;# 
# 7126 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnBUF equ 0E9h ;# 
# 7196 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDCNT equ 0EAh ;# 
# 7203 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDCNTL equ 0EAh ;# 
# 7273 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDCNTH equ 0EBh ;# 
# 7319 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDPTR equ 0ECh ;# 
# 7326 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDPTRL equ 0ECh ;# 
# 7396 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDPTRH equ 0EDh ;# 
# 7466 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSZ equ 0EEh ;# 
# 7473 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSZL equ 0EEh ;# 
# 7543 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSZH equ 0EFh ;# 
# 7589 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSA equ 0F0h ;# 
# 7596 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSAL equ 0F0h ;# 
# 7666 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSAH equ 0F1h ;# 
# 7736 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSCNT equ 0F2h ;# 
# 7743 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSCNTL equ 0F2h ;# 
# 7813 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSCNTH equ 0F3h ;# 
# 7861 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSPTR equ 0F4h ;# 
# 7868 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSPTRL equ 0F4h ;# 
# 7938 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSPTRH equ 0F5h ;# 
# 8008 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSPTRU equ 0F6h ;# 
# 8066 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSZ equ 0F7h ;# 
# 8073 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSZL equ 0F7h ;# 
# 8143 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSZH equ 0F8h ;# 
# 8191 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSA equ 0F9h ;# 
# 8198 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSAL equ 0F9h ;# 
# 8268 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSAH equ 0FAh ;# 
# 8338 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSAU equ 0FBh ;# 
# 8396 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnCON0 equ 0FCh ;# 
# 8442 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnCON1 equ 0FDh ;# 
# 8486 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnAIRQ equ 0FEh ;# 
# 8556 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSIRQ equ 0FFh ;# 
# 8626 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PPSLOCK equ 0200h ;# 
# 8646 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA0PPS equ 0201h ;# 
# 8702 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA1PPS equ 0202h ;# 
# 8758 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA2PPS equ 0203h ;# 
# 8814 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA3PPS equ 0204h ;# 
# 8870 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA4PPS equ 0205h ;# 
# 8926 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA5PPS equ 0206h ;# 
# 8982 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA6PPS equ 0207h ;# 
# 9038 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA7PPS equ 0208h ;# 
# 9094 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB0PPS equ 0209h ;# 
# 9150 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB1PPS equ 020Ah ;# 
# 9206 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB2PPS equ 020Bh ;# 
# 9262 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB3PPS equ 020Ch ;# 
# 9318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB4PPS equ 020Dh ;# 
# 9374 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB5PPS equ 020Eh ;# 
# 9430 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB6PPS equ 020Fh ;# 
# 9486 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB7PPS equ 0210h ;# 
# 9542 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC0PPS equ 0211h ;# 
# 9598 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC1PPS equ 0212h ;# 
# 9654 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC2PPS equ 0213h ;# 
# 9710 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC3PPS equ 0214h ;# 
# 9766 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC4PPS equ 0215h ;# 
# 9822 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC5PPS equ 0216h ;# 
# 9878 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC6PPS equ 0217h ;# 
# 9934 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC7PPS equ 0218h ;# 
# 9990 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD0PPS equ 0219h ;# 
# 10046 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD1PPS equ 021Ah ;# 
# 10102 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD2PPS equ 021Bh ;# 
# 10158 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD3PPS equ 021Ch ;# 
# 10214 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD4PPS equ 021Dh ;# 
# 10270 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD5PPS equ 021Eh ;# 
# 10326 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD6PPS equ 021Fh ;# 
# 10382 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD7PPS equ 0220h ;# 
# 10438 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RE0PPS equ 0221h ;# 
# 10494 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RE1PPS equ 0222h ;# 
# 10550 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RE2PPS equ 0223h ;# 
# 10606 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF0PPS equ 0229h ;# 
# 10662 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF1PPS equ 022Ah ;# 
# 10718 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF2PPS equ 022Bh ;# 
# 10774 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF3PPS equ 022Ch ;# 
# 10830 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF4PPS equ 022Dh ;# 
# 10886 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF5PPS equ 022Eh ;# 
# 10942 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF6PPS equ 022Fh ;# 
# 10998 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF7PPS equ 0230h ;# 
# 11054 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INT0PPS equ 023Eh ;# 
# 11114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INT1PPS equ 023Fh ;# 
# 11180 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INT2PPS equ 0240h ;# 
# 11252 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T0CKIPPS equ 0241h ;# 
# 11324 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1CKIPPS equ 0242h ;# 
# 11396 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1GPPS equ 0243h ;# 
# 11462 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3CKIPPS equ 0244h ;# 
# 11534 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3GPPS equ 0245h ;# 
# 11600 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5CKIPPS equ 0246h ;# 
# 11672 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5GPPS equ 0247h ;# 
# 11738 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2INPPS equ 0248h ;# 
# 11804 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4INPPS equ 0249h ;# 
# 11870 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6INPPS equ 024Ah ;# 
# 11936 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP1PPS equ 024Fh ;# 
# 12008 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP2PPS equ 0250h ;# 
# 12080 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP3PPS equ 0251h ;# 
# 12146 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1ERSPPS equ 0253h ;# 
# 12212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2ERSPPS equ 0254h ;# 
# 12284 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3ERSPPS equ 0255h ;# 
# 12350 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWMIN0PPS equ 0257h ;# 
# 12422 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWMIN1PPS equ 0258h ;# 
# 12494 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1WINPPS equ 0259h ;# 
# 12566 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1SIGPPS equ 025Ah ;# 
# 12638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1PPS equ 025Bh ;# 
# 12643 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1INPPS equ 025Bh ;# 
# 12848 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2PPS equ 025Ch ;# 
# 12853 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2INPPS equ 025Ch ;# 
# 13058 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3PPS equ 025Dh ;# 
# 13063 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3INPPS equ 025Dh ;# 
# 13268 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CARLPPS equ 025Eh ;# 
# 13273 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MDCARLPPS equ 025Eh ;# 
# 13398 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CARHPPS equ 025Fh ;# 
# 13403 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MDCARHPPS equ 025Fh ;# 
# 13528 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1SRCPPS equ 0260h ;# 
# 13533 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MDSRCPPS equ 0260h ;# 
# 13658 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN0PPS equ 0261h ;# 
# 13724 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN1PPS equ 0262h ;# 
# 13790 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN2PPS equ 0263h ;# 
# 13856 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN3PPS equ 0264h ;# 
# 13922 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN4PPS equ 0265h ;# 
# 13988 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN5PPS equ 0266h ;# 
# 14054 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN6PPS equ 0267h ;# 
# 14120 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN7PPS equ 0268h ;# 
# 14186 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACTPPS equ 0269h ;# 
# 14252 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1SCKPPS equ 026Ah ;# 
# 14318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1SDIPPS equ 026Bh ;# 
# 14384 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1SSPPS equ 026Ch ;# 
# 14450 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2SCKPPS equ 026Dh ;# 
# 14516 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2SDIPPS equ 026Eh ;# 
# 14582 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2SSPPS equ 026Fh ;# 
# 14648 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1SDAPPS equ 0270h ;# 
# 14714 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1SCLPPS equ 0271h ;# 
# 14780 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1RXPPS equ 0272h ;# 
# 14852 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1CTSPPS equ 0273h ;# 
# 14924 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2RXPPS equ 0274h ;# 
# 14990 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2CTSPPS equ 0275h ;# 
# 15056 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3RXPPS equ 0276h ;# 
# 15128 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3CTSPPS equ 0277h ;# 
# 15200 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4RXPPS equ 0278h ;# 
# 15266 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4CTSPPS equ 0279h ;# 
# 15332 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5RXPPS equ 027Ah ;# 
# 15404 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5CTSPPS equ 027Bh ;# 
# 15476 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC4I2C equ 0286h ;# 
# 15608 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC3I2C equ 0287h ;# 
# 15740 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB2I2C equ 0288h ;# 
# 15872 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB1I2C equ 0289h ;# 
# 16004 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1RXB equ 028Bh ;# 
# 16024 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1TXB equ 028Ch ;# 
# 16044 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CNT equ 028Dh ;# 
# 16114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADB0 equ 028Eh ;# 
# 16134 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADB1 equ 028Fh ;# 
# 16154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADR0 equ 0290h ;# 
# 16174 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADR1 equ 0291h ;# 
# 16195 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADR2 equ 0292h ;# 
# 16215 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADR3 equ 0293h ;# 
# 16236 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CON0 equ 0294h ;# 
# 16313 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CON1 equ 0295h ;# 
# 16370 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CON2 equ 0296h ;# 
# 16446 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ERR equ 0297h ;# 
# 16536 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1STAT0 equ 0298h ;# 
# 16626 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1STAT1 equ 0299h ;# 
# 16673 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1PIR equ 029Ah ;# 
# 16775 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1PIE equ 029Bh ;# 
# 16877 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CLK equ 029Ch ;# 
# 16969 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1BTO equ 029Dh ;# 
# 17049 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1RXB equ 02A1h ;# 
# 17054 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1RXBL equ 02A1h ;# 
# 17087 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1RXCHK equ 02A2h ;# 
# 17107 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1TXB equ 02A3h ;# 
# 17112 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1TXBL equ 02A3h ;# 
# 17145 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1TXCHK equ 02A4h ;# 
# 17165 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P1 equ 02A5h ;# 
# 17172 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P1L equ 02A5h ;# 
# 17192 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P1H equ 02A6h ;# 
# 17212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P2 equ 02A7h ;# 
# 17219 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P2L equ 02A7h ;# 
# 17239 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P2H equ 02A8h ;# 
# 17259 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P3 equ 02A9h ;# 
# 17266 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P3L equ 02A9h ;# 
# 17286 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P3H equ 02AAh ;# 
# 17306 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1CON0 equ 02ABh ;# 
# 17434 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1CON1 equ 02ACh ;# 
# 17514 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1CON2 equ 02ADh ;# 
# 17656 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1BRG equ 02AEh ;# 
# 17663 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1BRGL equ 02AEh ;# 
# 17683 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1BRGH equ 02AFh ;# 
# 17703 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1FIFO equ 02B0h ;# 
# 17833 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1UIR equ 02B1h ;# 
# 17889 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1ERRIR equ 02B2h ;# 
# 18001 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1ERRIE equ 02B3h ;# 
# 18113 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2RXB equ 02B4h ;# 
# 18118 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2RXBL equ 02B4h ;# 
# 18151 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2TXB equ 02B6h ;# 
# 18156 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2TXBL equ 02B6h ;# 
# 18189 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P1 equ 02B8h ;# 
# 18196 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P1L equ 02B8h ;# 
# 18216 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P2 equ 02BAh ;# 
# 18223 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P2L equ 02BAh ;# 
# 18243 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P3 equ 02BCh ;# 
# 18250 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P3L equ 02BCh ;# 
# 18270 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2CON0 equ 02BEh ;# 
# 18386 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2CON1 equ 02BFh ;# 
# 18466 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2CON2 equ 02C0h ;# 
# 18598 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2BRG equ 02C1h ;# 
# 18605 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2BRGL equ 02C1h ;# 
# 18625 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2BRGH equ 02C2h ;# 
# 18645 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2FIFO equ 02C3h ;# 
# 18775 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2UIR equ 02C4h ;# 
# 18831 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2ERRIR equ 02C5h ;# 
# 18943 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2ERRIE equ 02C6h ;# 
# 19055 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3RXB equ 02C7h ;# 
# 19060 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3RXBL equ 02C7h ;# 
# 19093 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3TXB equ 02C9h ;# 
# 19098 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3TXBL equ 02C9h ;# 
# 19131 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P1 equ 02CBh ;# 
# 19138 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P1L equ 02CBh ;# 
# 19158 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P2 equ 02CDh ;# 
# 19165 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P2L equ 02CDh ;# 
# 19185 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P3 equ 02CFh ;# 
# 19192 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P3L equ 02CFh ;# 
# 19212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3CON0 equ 02D1h ;# 
# 19328 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3CON1 equ 02D2h ;# 
# 19408 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3CON2 equ 02D3h ;# 
# 19540 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3BRG equ 02D4h ;# 
# 19547 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3BRGL equ 02D4h ;# 
# 19567 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3BRGH equ 02D5h ;# 
# 19587 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3FIFO equ 02D6h ;# 
# 19717 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3UIR equ 02D7h ;# 
# 19773 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3ERRIR equ 02D8h ;# 
# 19885 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3ERRIE equ 02D9h ;# 
# 19997 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4RXB equ 02DAh ;# 
# 20002 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4RXBL equ 02DAh ;# 
# 20035 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4TXB equ 02DCh ;# 
# 20040 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4TXBL equ 02DCh ;# 
# 20073 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P1 equ 02DEh ;# 
# 20080 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P1L equ 02DEh ;# 
# 20100 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P2 equ 02E0h ;# 
# 20107 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P2L equ 02E0h ;# 
# 20127 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P3 equ 02E2h ;# 
# 20134 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P3L equ 02E2h ;# 
# 20154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4CON0 equ 02E4h ;# 
# 20270 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4CON1 equ 02E5h ;# 
# 20350 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4CON2 equ 02E6h ;# 
# 20482 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4BRG equ 02E7h ;# 
# 20489 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4BRGL equ 02E7h ;# 
# 20509 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4BRGH equ 02E8h ;# 
# 20529 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4FIFO equ 02E9h ;# 
# 20659 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4UIR equ 02EAh ;# 
# 20715 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4ERRIR equ 02EBh ;# 
# 20827 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4ERRIE equ 02ECh ;# 
# 20939 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5RXB equ 02EDh ;# 
# 20944 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5RXBL equ 02EDh ;# 
# 20977 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5TXB equ 02EFh ;# 
# 20982 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5TXBL equ 02EFh ;# 
# 21015 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P1 equ 02F1h ;# 
# 21022 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P1L equ 02F1h ;# 
# 21042 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P2 equ 02F3h ;# 
# 21049 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P2L equ 02F3h ;# 
# 21069 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P3 equ 02F5h ;# 
# 21076 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P3L equ 02F5h ;# 
# 21096 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5CON0 equ 02F7h ;# 
# 21212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5CON1 equ 02F8h ;# 
# 21292 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5CON2 equ 02F9h ;# 
# 21424 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5BRG equ 02FAh ;# 
# 21431 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5BRGL equ 02FAh ;# 
# 21451 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5BRGH equ 02FBh ;# 
# 21471 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5FIFO equ 02FCh ;# 
# 21601 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5UIR equ 02FDh ;# 
# 21657 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5ERRIR equ 02FEh ;# 
# 21769 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5ERRIE equ 02FFh ;# 
# 21883 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1TMR equ 0300h ;# 
# 21890 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1TMRL equ 0300h ;# 
# 21960 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1TMRH equ 0301h ;# 
# 22030 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1TMRU equ 0302h ;# 
# 22102 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPR equ 0303h ;# 
# 22109 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPRL equ 0303h ;# 
# 22179 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPRH equ 0304h ;# 
# 22249 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPRU equ 0305h ;# 
# 22321 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPW equ 0306h ;# 
# 22328 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPWL equ 0306h ;# 
# 22398 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPWH equ 0307h ;# 
# 22468 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPWU equ 0308h ;# 
# 22540 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1PR equ 0309h ;# 
# 22547 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1PRL equ 0309h ;# 
# 22617 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1PRH equ 030Ah ;# 
# 22687 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1PRU equ 030Bh ;# 
# 22757 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CON0 equ 030Ch ;# 
# 22822 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CON1 equ 030Dh ;# 
# 22922 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1STAT equ 030Eh ;# 
# 23012 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CLK equ 030Fh ;# 
# 23092 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1SIG equ 0310h ;# 
# 23196 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1WIN equ 0311h ;# 
# 23300 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR0L equ 0318h ;# 
# 23305 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR0 equ 0318h ;# 
# 23438 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR0H equ 0319h ;# 
# 23443 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR0 equ 0319h ;# 
# 23692 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T0CON0 equ 031Ah ;# 
# 23816 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T0CON1 equ 031Bh ;# 
# 23958 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1 equ 031Ch ;# 
# 23965 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1L equ 031Ch ;# 
# 24085 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1H equ 031Dh ;# 
# 24205 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1CON equ 031Eh ;# 
# 24210 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1CON equ 031Eh ;# 
# 24427 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1GCON equ 031Fh ;# 
# 24432 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1GCON equ 031Fh ;# 
# 24713 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1GATE equ 0320h ;# 
# 24718 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1GATE equ 0320h ;# 
# 24903 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1CLK equ 0321h ;# 
# 24908 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1CLK equ 0321h ;# 
# 24912 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR1 equ 0321h ;# 
# 25149 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2TMR equ 0322h ;# 
# 25154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR2 equ 0322h ;# 
# 25187 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2PR equ 0323h ;# 
# 25192 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR2 equ 0323h ;# 
# 25225 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2CON equ 0324h ;# 
# 25371 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2HLT equ 0325h ;# 
# 25499 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2CLKCON equ 0326h ;# 
# 25504 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2CLK equ 0326h ;# 
# 25705 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2RST equ 0327h ;# 
# 25821 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3 equ 0328h ;# 
# 25828 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3L equ 0328h ;# 
# 25948 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3H equ 0329h ;# 
# 26068 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3CON equ 032Ah ;# 
# 26073 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3CON equ 032Ah ;# 
# 26290 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3GCON equ 032Bh ;# 
# 26295 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3GCON equ 032Bh ;# 
# 26576 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3GATE equ 032Ch ;# 
# 26581 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3GATE equ 032Ch ;# 
# 26766 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3CLK equ 032Dh ;# 
# 26771 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3CLK equ 032Dh ;# 
# 26775 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR3 equ 032Dh ;# 
# 27012 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4TMR equ 032Eh ;# 
# 27017 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR4 equ 032Eh ;# 
# 27050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4PR equ 032Fh ;# 
# 27055 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR4 equ 032Fh ;# 
# 27088 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4CON equ 0330h ;# 
# 27234 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4HLT equ 0331h ;# 
# 27362 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4CLKCON equ 0332h ;# 
# 27367 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4CLK equ 0332h ;# 
# 27568 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4RST equ 0333h ;# 
# 27684 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5 equ 0334h ;# 
# 27691 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5L equ 0334h ;# 
# 27811 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5H equ 0335h ;# 
# 27931 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5CON equ 0336h ;# 
# 27936 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5CON equ 0336h ;# 
# 28153 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5GCON equ 0337h ;# 
# 28158 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5GCON equ 0337h ;# 
# 28439 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5GATE equ 0338h ;# 
# 28444 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5GATE equ 0338h ;# 
# 28629 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5CLK equ 0339h ;# 
# 28634 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5CLK equ 0339h ;# 
# 28638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR5 equ 0339h ;# 
# 28875 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6TMR equ 033Ah ;# 
# 28880 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR6 equ 033Ah ;# 
# 28913 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6PR equ 033Bh ;# 
# 28918 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR6 equ 033Bh ;# 
# 28951 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6CON equ 033Ch ;# 
# 29097 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6HLT equ 033Dh ;# 
# 29225 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6CLKCON equ 033Eh ;# 
# 29230 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6CLK equ 033Eh ;# 
# 29431 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6RST equ 033Fh ;# 
# 29547 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR1 equ 0340h ;# 
# 29554 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR1L equ 0340h ;# 
# 29574 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR1H equ 0341h ;# 
# 29594 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP1CON equ 0342h ;# 
# 29712 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP1CAP equ 0343h ;# 
# 29792 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR2 equ 0344h ;# 
# 29799 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR2L equ 0344h ;# 
# 29819 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR2H equ 0345h ;# 
# 29839 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP2CON equ 0346h ;# 
# 29957 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP2CAP equ 0347h ;# 
# 30037 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR3 equ 0348h ;# 
# 30044 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR3L equ 0348h ;# 
# 30064 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR3H equ 0349h ;# 
# 30084 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP3CON equ 034Ah ;# 
# 30202 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP3CAP equ 034Bh ;# 
# 30282 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPTMRS0 equ 034Ch ;# 
# 30352 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCDATA equ 034Fh ;# 
# 30359 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCDATL equ 034Fh ;# 
# 30421 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCDATH equ 0350h ;# 
# 30483 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCACC equ 0351h ;# 
# 30490 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCACCL equ 0351h ;# 
# 30552 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCACCH equ 0352h ;# 
# 30614 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCSHFT equ 0353h ;# 
# 30621 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCSHIFTL equ 0353h ;# 
# 30683 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCSHIFTH equ 0354h ;# 
# 30745 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCXOR equ 0355h ;# 
# 30752 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCXORL equ 0355h ;# 
# 30809 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCXORH equ 0356h ;# 
# 30871 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCCON0 equ 0357h ;# 
# 30931 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCCON1 equ 0358h ;# 
# 31009 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANLADR equ 035Ah ;# 
# 31016 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANLADRL equ 035Ah ;# 
# 31144 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANLADRH equ 035Bh ;# 
# 31272 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANLADRU equ 035Ch ;# 
# 31378 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANHADR equ 035Dh ;# 
# 31385 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANHADRL equ 035Dh ;# 
# 31513 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANHADRH equ 035Eh ;# 
# 31641 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANHADRU equ 035Fh ;# 
# 31745 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANCON0 equ 0360h ;# 
# 31805 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANTRIG equ 0361h ;# 
# 31865 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR0 equ 0362h ;# 
# 31917 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR1 equ 0363h ;# 
# 31979 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR2 equ 0364h ;# 
# 32024 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR3 equ 0365h ;# 
# 32086 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR4 equ 0366h ;# 
# 32137 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR5 equ 0367h ;# 
# 32194 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR6 equ 0368h ;# 
# 32256 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR7 equ 0369h ;# 
# 32313 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR8 equ 036Ah ;# 
# 32375 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR9 equ 036Bh ;# 
# 32420 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR10 equ 036Ch ;# 
# 32482 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR11 equ 036Dh ;# 
# 32544 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR12 equ 036Eh ;# 
# 32606 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR13 equ 036Fh ;# 
# 32668 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR14 equ 0370h ;# 
# 32701 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR15 equ 0371h ;# 
# 32739 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
STATUS_CSHAD equ 0373h ;# 
# 32828 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WREG_CSHAD equ 0374h ;# 
# 32848 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
BSR_CSHAD equ 0375h ;# 
# 32855 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SHADCON equ 0376h ;# 
# 32875 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
STATUS_SHAD equ 0377h ;# 
# 32964 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WREG_SHAD equ 0378h ;# 
# 32984 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
BSR_SHAD equ 0379h ;# 
# 32991 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLATH_SHAD equ 037Ah ;# 
# 33011 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLATU_SHAD equ 037Bh ;# 
# 33031 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0SH equ 037Ch ;# 
# 33038 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0L_SHAD equ 037Ch ;# 
# 33058 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0H_SHAD equ 037Dh ;# 
# 33078 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1SH equ 037Eh ;# 
# 33085 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1L_SHAD equ 037Eh ;# 
# 33105 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1H_SHAD equ 037Fh ;# 
# 33125 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2SH equ 0380h ;# 
# 33132 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2L_SHAD equ 0380h ;# 
# 33152 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2H_SHAD equ 0381h ;# 
# 33172 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODSH equ 0382h ;# 
# 33179 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODL_SHAD equ 0382h ;# 
# 33199 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODH_SHAD equ 0383h ;# 
# 33219 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1CLK equ 03BCh ;# 
# 33224 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1CLKCON equ 03BCh ;# 
# 33273 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1ISM equ 03BDh ;# 
# 33278 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1DAT equ 03BDh ;# 
# 33391 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1DBR equ 03BEh ;# 
# 33495 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1DBF equ 03BFh ;# 
# 33599 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1CON0 equ 03C0h ;# 
# 33700 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1CON1 equ 03C1h ;# 
# 33778 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1AS0 equ 03C2h ;# 
# 33940 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1AS1 equ 03C3h ;# 
# 34002 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1STR equ 03C4h ;# 
# 34114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2CLK equ 03C5h ;# 
# 34119 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2CLKCON equ 03C5h ;# 
# 34168 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2ISM equ 03C6h ;# 
# 34173 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2DAT equ 03C6h ;# 
# 34286 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2DBR equ 03C7h ;# 
# 34390 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2DBF equ 03C8h ;# 
# 34494 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2CON0 equ 03C9h ;# 
# 34595 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2CON1 equ 03CAh ;# 
# 34673 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2AS0 equ 03CBh ;# 
# 34835 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2AS1 equ 03CCh ;# 
# 34897 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2STR equ 03CDh ;# 
# 35009 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3CLK equ 03CEh ;# 
# 35014 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3CLKCON equ 03CEh ;# 
# 35063 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3ISM equ 03CFh ;# 
# 35068 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3DAT equ 03CFh ;# 
# 35181 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3DBR equ 03D0h ;# 
# 35285 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3DBF equ 03D1h ;# 
# 35389 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3CON0 equ 03D2h ;# 
# 35490 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3CON1 equ 03D3h ;# 
# 35568 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3AS0 equ 03D4h ;# 
# 35730 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3AS1 equ 03D5h ;# 
# 35792 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3STR equ 03D6h ;# 
# 35904 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FVRCON equ 03D7h ;# 
# 35993 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCPCON equ 03D8h ;# 
# 35998 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCP equ 03D8h ;# 
# 36093 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADLTH equ 03D9h ;# 
# 36100 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADLTHL equ 03D9h ;# 
# 36228 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADLTHH equ 03DAh ;# 
# 36356 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADUTH equ 03DBh ;# 
# 36363 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADUTHL equ 03DBh ;# 
# 36491 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADUTHH equ 03DCh ;# 
# 36619 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADERR equ 03DDh ;# 
# 36626 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADERRL equ 03DDh ;# 
# 36754 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADERRH equ 03DEh ;# 
# 36882 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADSTPT equ 03DFh ;# 
# 36889 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADSTPTL equ 03DFh ;# 
# 37017 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADSTPTH equ 03E0h ;# 
# 37145 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADFLTR equ 03E1h ;# 
# 37152 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADFLTRL equ 03E1h ;# 
# 37280 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADFLTRH equ 03E2h ;# 
# 37410 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACC equ 03E3h ;# 
# 37417 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACCL equ 03E3h ;# 
# 37545 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACCH equ 03E4h ;# 
# 37673 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACCU equ 03E5h ;# 
# 37801 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCNT equ 03E6h ;# 
# 37929 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADRPT equ 03E7h ;# 
# 38057 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREV equ 03E8h ;# 
# 38064 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREVL equ 03E8h ;# 
# 38192 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREVH equ 03E9h ;# 
# 38320 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADRES equ 03EAh ;# 
# 38327 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADRESL equ 03EAh ;# 
# 38455 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADRESH equ 03EBh ;# 
# 38575 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPCH equ 03ECh ;# 
# 38633 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACQ equ 03EEh ;# 
# 38640 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACQL equ 03EEh ;# 
# 38768 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACQH equ 03EFh ;# 
# 38860 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCAP equ 03F0h ;# 
# 38912 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPRE equ 03F1h ;# 
# 38919 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREL equ 03F1h ;# 
# 39047 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREH equ 03F2h ;# 
# 39139 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCON0 equ 03F3h ;# 
# 39257 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCON1 equ 03F4h ;# 
# 39323 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCON2 equ 03F5h ;# 
# 39465 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCON3 equ 03F6h ;# 
# 39595 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADSTAT equ 03F7h ;# 
# 39727 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADREF equ 03F8h ;# 
# 39809 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACT equ 03F9h ;# 
# 39913 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCLK equ 03FAh ;# 
# 40017 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELA equ 0400h ;# 
# 40079 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUA equ 0401h ;# 
# 40141 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONA equ 0402h ;# 
# 40203 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONA equ 0403h ;# 
# 40265 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLA equ 0404h ;# 
# 40327 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCAP equ 0405h ;# 
# 40389 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCAN equ 0406h ;# 
# 40451 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCAF equ 0407h ;# 
# 40513 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELB equ 0408h ;# 
# 40575 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUB equ 0409h ;# 
# 40637 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONB equ 040Ah ;# 
# 40699 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONB equ 040Bh ;# 
# 40761 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLB equ 040Ch ;# 
# 40823 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCBP equ 040Dh ;# 
# 40885 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCBN equ 040Eh ;# 
# 40947 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCBF equ 040Fh ;# 
# 41009 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELC equ 0410h ;# 
# 41071 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUC equ 0411h ;# 
# 41133 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONC equ 0412h ;# 
# 41195 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONC equ 0413h ;# 
# 41257 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLC equ 0414h ;# 
# 41319 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCCP equ 0415h ;# 
# 41381 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCCN equ 0416h ;# 
# 41443 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCCF equ 0417h ;# 
# 41505 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELD equ 0418h ;# 
# 41567 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUD equ 0419h ;# 
# 41629 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCOND equ 041Ah ;# 
# 41691 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCOND equ 041Bh ;# 
# 41753 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLD equ 041Ch ;# 
# 41815 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELE equ 0420h ;# 
# 41847 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUE equ 0421h ;# 
# 41885 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONE equ 0422h ;# 
# 41917 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONE equ 0423h ;# 
# 41949 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLE equ 0424h ;# 
# 41987 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCEP equ 0425h ;# 
# 42008 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCEN equ 0426h ;# 
# 42029 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCEF equ 0427h ;# 
# 42050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELF equ 0428h ;# 
# 42112 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUF equ 0429h ;# 
# 42174 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONF equ 042Ah ;# 
# 42236 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONF equ 042Bh ;# 
# 42298 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLF equ 042Ch ;# 
# 42362 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1ACC equ 0440h ;# 
# 42369 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1ACCL equ 0440h ;# 
# 42497 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1ACCH equ 0441h ;# 
# 42625 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1ACCU equ 0442h ;# 
# 42707 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1INC equ 0443h ;# 
# 42714 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1INCL equ 0443h ;# 
# 42842 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1INCH equ 0444h ;# 
# 42970 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1INCU equ 0445h ;# 
# 43050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1CON equ 0446h ;# 
# 43118 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1CLK equ 0447h ;# 
# 43260 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2ACC equ 0448h ;# 
# 43267 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2ACCL equ 0448h ;# 
# 43395 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2ACCH equ 0449h ;# 
# 43523 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2ACCU equ 044Ah ;# 
# 43605 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2INC equ 044Bh ;# 
# 43612 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2INCL equ 044Bh ;# 
# 43740 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2INCH equ 044Ch ;# 
# 43868 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2INCU equ 044Dh ;# 
# 43948 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2CON equ 044Eh ;# 
# 44016 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2CLK equ 044Fh ;# 
# 44158 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3ACC equ 0450h ;# 
# 44165 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3ACCL equ 0450h ;# 
# 44293 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3ACCH equ 0451h ;# 
# 44421 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3ACCU equ 0452h ;# 
# 44503 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3INC equ 0453h ;# 
# 44510 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3INCL equ 0453h ;# 
# 44638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3INCH equ 0454h ;# 
# 44766 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3INCU equ 0455h ;# 
# 44846 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3CON equ 0456h ;# 
# 44914 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3CLK equ 0457h ;# 
# 45054 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTLOCK equ 0459h ;# 
# 45076 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTAD equ 045Ah ;# 
# 45083 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTADL equ 045Ah ;# 
# 45145 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTADH equ 045Bh ;# 
# 45207 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTADU equ 045Ch ;# 
# 45253 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTBASE equ 045Dh ;# 
# 45260 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTBASEL equ 045Dh ;# 
# 45322 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTBASEH equ 045Eh ;# 
# 45384 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTBASEU equ 045Fh ;# 
# 45428 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1ERS equ 0460h ;# 
# 45498 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1CLK equ 0461h ;# 
# 45568 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1LDS equ 0462h ;# 
# 45638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1PR equ 0463h ;# 
# 45645 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1PRL equ 0463h ;# 
# 45665 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1PRH equ 0464h ;# 
# 45685 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1CPRE equ 0465h ;# 
# 45705 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1PIPOS equ 0466h ;# 
# 45725 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1GIR equ 0467h ;# 
# 45751 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1GIE equ 0468h ;# 
# 45777 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1CON equ 0469h ;# 
# 45816 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1CFG equ 046Ah ;# 
# 45875 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P1 equ 046Bh ;# 
# 45882 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P1L equ 046Bh ;# 
# 45902 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P1H equ 046Ch ;# 
# 45922 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P2 equ 046Dh ;# 
# 45929 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P2L equ 046Dh ;# 
# 45949 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P2H equ 046Eh ;# 
# 45969 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2ERS equ 046Fh ;# 
# 46039 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2CLK equ 0470h ;# 
# 46109 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2LDS equ 0471h ;# 
# 46179 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2PR equ 0472h ;# 
# 46186 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2PRL equ 0472h ;# 
# 46206 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2PRH equ 0473h ;# 
# 46226 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2CPRE equ 0474h ;# 
# 46246 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2PIPOS equ 0475h ;# 
# 46266 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2GIR equ 0476h ;# 
# 46292 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2GIE equ 0477h ;# 
# 46318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2CON equ 0478h ;# 
# 46357 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1CFG equ 0479h ;# 
# 46416 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P1 equ 047Ah ;# 
# 46423 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P1L equ 047Ah ;# 
# 46443 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P1H equ 047Bh ;# 
# 46463 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P2 equ 047Ch ;# 
# 46470 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P2L equ 047Ch ;# 
# 46490 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P2H equ 047Dh ;# 
# 46510 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3ERS equ 047Eh ;# 
# 46580 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3CLK equ 047Fh ;# 
# 46650 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3LDS equ 0480h ;# 
# 46720 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3PR equ 0481h ;# 
# 46727 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3PRL equ 0481h ;# 
# 46747 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3PRH equ 0482h ;# 
# 46767 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3CPRE equ 0483h ;# 
# 46787 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3PIPOS equ 0484h ;# 
# 46807 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3GIR equ 0485h ;# 
# 46833 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3GIE equ 0486h ;# 
# 46859 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3CON equ 0487h ;# 
# 46898 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1CFG equ 0488h ;# 
# 46957 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P1 equ 0489h ;# 
# 46964 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P1L equ 0489h ;# 
# 46984 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P1H equ 048Ah ;# 
# 47004 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P2 equ 048Bh ;# 
# 47011 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P2L equ 048Bh ;# 
# 47031 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P2H equ 048Ch ;# 
# 47051 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWMLOAD equ 049Ch ;# 
# 47083 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWMEN equ 049Dh ;# 
# 47115 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE0 equ 049Eh ;# 
# 47167 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE1 equ 049Fh ;# 
# 47229 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE2 equ 04A0h ;# 
# 47274 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE3 equ 04A1h ;# 
# 47336 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE4 equ 04A2h ;# 
# 47387 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE5 equ 04A3h ;# 
# 47444 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE6 equ 04A4h ;# 
# 47506 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE7 equ 04A5h ;# 
# 47563 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE8 equ 04A6h ;# 
# 47625 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE9 equ 04A7h ;# 
# 47670 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE10 equ 04A8h ;# 
# 47732 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE11 equ 04A9h ;# 
# 47794 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE12 equ 04AAh ;# 
# 47856 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE13 equ 04ABh ;# 
# 47918 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE14 equ 04ACh ;# 
# 47951 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE15 equ 04ADh ;# 
# 47989 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR0 equ 04AEh ;# 
# 48041 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR1 equ 04AFh ;# 
# 48103 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR2 equ 04B0h ;# 
# 48148 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR3 equ 04B1h ;# 
# 48210 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR4 equ 04B2h ;# 
# 48261 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR5 equ 04B3h ;# 
# 48318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR6 equ 04B4h ;# 
# 48380 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR7 equ 04B5h ;# 
# 48437 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR8 equ 04B6h ;# 
# 48499 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR9 equ 04B7h ;# 
# 48544 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR10 equ 04B8h ;# 
# 48606 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR11 equ 04B9h ;# 
# 48668 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR12 equ 04BAh ;# 
# 48730 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR13 equ 04BBh ;# 
# 48792 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR14 equ 04BCh ;# 
# 48825 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR15 equ 04BDh ;# 
# 48863 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATA equ 04BEh ;# 
# 48925 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATB equ 04BFh ;# 
# 48987 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATC equ 04C0h ;# 
# 49049 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATD equ 04C1h ;# 
# 49111 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATE equ 04C2h ;# 
# 49143 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATF equ 04C3h ;# 
# 49205 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISA equ 04C6h ;# 
# 49267 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISB equ 04C7h ;# 
# 49329 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISC equ 04C8h ;# 
# 49391 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISD equ 04C9h ;# 
# 49453 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISE equ 04CAh ;# 
# 49485 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISF equ 04CBh ;# 
# 49547 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTA equ 04CEh ;# 
# 49609 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTB equ 04CFh ;# 
# 49671 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTC equ 04D0h ;# 
# 49733 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTD equ 04D1h ;# 
# 49795 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTE equ 04D2h ;# 
# 49833 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTF equ 04D3h ;# 
# 49895 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INTCON0 equ 04D6h ;# 
# 49955 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INTCON1 equ 04D7h ;# 
# 49991 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
STATUS equ 04D8h ;# 
# 50080 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2 equ 04D9h ;# 
# 50087 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2L equ 04D9h ;# 
# 50107 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2H equ 04DAh ;# 
# 50114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PLUSW2 equ 04DBh ;# 
# 50134 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PREINC2 equ 04DCh ;# 
# 50154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTDEC2 equ 04DDh ;# 
# 50174 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTINC2 equ 04DEh ;# 
# 50194 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INDF2 equ 04DFh ;# 
# 50214 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
BSR equ 04E0h ;# 
# 50221 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1 equ 04E1h ;# 
# 50228 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1L equ 04E1h ;# 
# 50248 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1H equ 04E2h ;# 
# 50255 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PLUSW1 equ 04E3h ;# 
# 50275 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PREINC1 equ 04E4h ;# 
# 50295 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTDEC1 equ 04E5h ;# 
# 50315 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTINC1 equ 04E6h ;# 
# 50335 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INDF1 equ 04E7h ;# 
# 50355 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WREG equ 04E8h ;# 
# 50393 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0 equ 04E9h ;# 
# 50400 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0L equ 04E9h ;# 
# 50420 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0H equ 04EAh ;# 
# 50427 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PLUSW0 equ 04EBh ;# 
# 50447 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PREINC0 equ 04ECh ;# 
# 50467 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTDEC0 equ 04EDh ;# 
# 50487 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTINC0 equ 04EEh ;# 
# 50507 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INDF0 equ 04EFh ;# 
# 50527 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCON0 equ 04F0h ;# 
# 50680 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCON1 equ 04F1h ;# 
# 50747 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CPUDOZE equ 04F2h ;# 
# 50812 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PROD equ 04F3h ;# 
# 50819 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODL equ 04F3h ;# 
# 50839 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODH equ 04F4h ;# 
# 50859 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TABLAT equ 04F5h ;# 
# 50881 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TBLPTR equ 04F6h ;# 
# 50888 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TBLPTRL equ 04F6h ;# 
# 50908 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TBLPTRH equ 04F7h ;# 
# 50928 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TBLPTRU equ 04F8h ;# 
# 50959 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLAT equ 04F9h ;# 
# 50966 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCL equ 04F9h ;# 
# 50986 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLATH equ 04FAh ;# 
# 51006 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLATU equ 04FBh ;# 
# 51026 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
STKPTR equ 04FCh ;# 
# 51124 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TOS equ 04FDh ;# 
# 51131 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TOSL equ 04FDh ;# 
# 51151 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TOSH equ 04FEh ;# 
# 51171 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TOSU equ 04FFh ;# 
# 328 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLKRCON equ 039h ;# 
# 432 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLKRCLK equ 03Ah ;# 
# 516 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMCON0 equ 040h ;# 
# 560 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMCON1 equ 041h ;# 
# 595 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMLOCK equ 042h ;# 
# 617 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMADR equ 043h ;# 
# 624 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMADRL equ 043h ;# 
# 694 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMADRH equ 044h ;# 
# 764 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMADRU equ 045h ;# 
# 822 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMDAT equ 046h ;# 
# 829 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMDATL equ 046h ;# 
# 899 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMDATH equ 047h ;# 
# 969 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
VREGCON equ 048h ;# 
# 1023 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
BORCON equ 049h ;# 
# 1050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
HLVDCON0 equ 04Ah ;# 
# 1130 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
HLVDCON1 equ 04Bh ;# 
# 1202 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ZCDCON equ 04Ch ;# 
# 1282 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD0 equ 060h ;# 
# 1339 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD1 equ 061h ;# 
# 1401 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD3 equ 063h ;# 
# 1452 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD4 equ 064h ;# 
# 1508 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD5 equ 065h ;# 
# 1559 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD6 equ 066h ;# 
# 1621 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD7 equ 067h ;# 
# 1683 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD8 equ 068h ;# 
# 1733 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CON0 equ 06Ah ;# 
# 1801 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CON1 equ 06Bh ;# 
# 1867 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1SRC equ 06Ch ;# 
# 1971 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CARL equ 06Dh ;# 
# 2063 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CARH equ 06Eh ;# 
# 2155 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CMOUT equ 06Fh ;# 
# 2181 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM1CON0 equ 070h ;# 
# 2261 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM1CON1 equ 071h ;# 
# 2301 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM1NCH equ 072h ;# 
# 2361 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM1PCH equ 073h ;# 
# 2421 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM2CON0 equ 074h ;# 
# 2501 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM2CON1 equ 075h ;# 
# 2541 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM2NCH equ 076h ;# 
# 2601 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM2PCH equ 077h ;# 
# 2661 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTCON0 equ 078h ;# 
# 2772 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTCON1 equ 079h ;# 
# 2892 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTPS equ 07Ah ;# 
# 2899 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTPSL equ 07Ah ;# 
# 2977 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTPSH equ 07Bh ;# 
# 3055 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTTMR equ 07Ch ;# 
# 3152 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DAC1DAT equ 07Dh ;# 
# 3159 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DAC1DATL equ 07Dh ;# 
# 3237 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DAC1CON equ 07Fh ;# 
# 3340 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1RXB equ 080h ;# 
# 3410 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TXB equ 081h ;# 
# 3480 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TCNT equ 082h ;# 
# 3487 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TCNTL equ 082h ;# 
# 3507 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TCNTH equ 083h ;# 
# 3527 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1CON0 equ 084h ;# 
# 3593 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1CON1 equ 085h ;# 
# 3695 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1CON2 equ 086h ;# 
# 3773 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1STATUS equ 087h ;# 
# 3855 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TWIDTH equ 088h ;# 
# 3895 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1BAUD equ 089h ;# 
# 3965 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1INTF equ 08Ah ;# 
# 4057 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1INTE equ 08Bh ;# 
# 4149 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1CLK equ 08Ch ;# 
# 4241 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2RXB equ 08Dh ;# 
# 4311 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TXB equ 08Eh ;# 
# 4381 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TCNT equ 08Fh ;# 
# 4388 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TCNTL equ 08Fh ;# 
# 4408 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TCNTH equ 090h ;# 
# 4428 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2CON0 equ 091h ;# 
# 4494 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2CON1 equ 092h ;# 
# 4596 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2CON2 equ 093h ;# 
# 4674 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2STATUS equ 094h ;# 
# 4756 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TWIDTH equ 095h ;# 
# 4796 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2BAUD equ 096h ;# 
# 4866 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2INTF equ 097h ;# 
# 4958 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2INTE equ 098h ;# 
# 5050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2CLK equ 099h ;# 
# 5142 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ACTCON equ 0ACh ;# 
# 5212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCCON1 equ 0ADh ;# 
# 5282 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCCON2 equ 0AEh ;# 
# 5352 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCCON3 equ 0AFh ;# 
# 5392 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCTUNE equ 0B0h ;# 
# 5450 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCFRQ equ 0B1h ;# 
# 5455 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCFREQ equ 0B1h ;# 
# 5540 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCSTAT equ 0B2h ;# 
# 5545 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCSTAT1 equ 0B2h ;# 
# 5652 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCEN equ 0B3h ;# 
# 5709 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRLOCK equ 0B4h ;# 
# 5729 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANPR equ 0B5h ;# 
# 5797 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA1PR equ 0B6h ;# 
# 5865 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA2PR equ 0B7h ;# 
# 5933 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA3PR equ 0B8h ;# 
# 6001 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA4PR equ 0B9h ;# 
# 6069 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA5PR equ 0BAh ;# 
# 6137 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA6PR equ 0BBh ;# 
# 6205 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MAINPR equ 0BEh ;# 
# 6273 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ISRPR equ 0BFh ;# 
# 6341 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCDATA equ 0D4h ;# 
# 6403 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCSELECT equ 0D5h ;# 
# 6443 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnCON equ 0D6h ;# 
# 6513 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnPOL equ 0D7h ;# 
# 6558 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnSEL0 equ 0D8h ;# 
# 6628 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnSEL1 equ 0D9h ;# 
# 6698 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnSEL2 equ 0DAh ;# 
# 6768 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnSEL3 equ 0DBh ;# 
# 6838 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnGLS0 equ 0DCh ;# 
# 6900 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnGLS1 equ 0DDh ;# 
# 6962 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnGLS2 equ 0DEh ;# 
# 7024 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnGLS3 equ 0DFh ;# 
# 7086 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMASELECT equ 0E8h ;# 
# 7126 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnBUF equ 0E9h ;# 
# 7196 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDCNT equ 0EAh ;# 
# 7203 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDCNTL equ 0EAh ;# 
# 7273 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDCNTH equ 0EBh ;# 
# 7319 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDPTR equ 0ECh ;# 
# 7326 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDPTRL equ 0ECh ;# 
# 7396 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDPTRH equ 0EDh ;# 
# 7466 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSZ equ 0EEh ;# 
# 7473 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSZL equ 0EEh ;# 
# 7543 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSZH equ 0EFh ;# 
# 7589 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSA equ 0F0h ;# 
# 7596 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSAL equ 0F0h ;# 
# 7666 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSAH equ 0F1h ;# 
# 7736 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSCNT equ 0F2h ;# 
# 7743 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSCNTL equ 0F2h ;# 
# 7813 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSCNTH equ 0F3h ;# 
# 7861 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSPTR equ 0F4h ;# 
# 7868 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSPTRL equ 0F4h ;# 
# 7938 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSPTRH equ 0F5h ;# 
# 8008 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSPTRU equ 0F6h ;# 
# 8066 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSZ equ 0F7h ;# 
# 8073 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSZL equ 0F7h ;# 
# 8143 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSZH equ 0F8h ;# 
# 8191 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSA equ 0F9h ;# 
# 8198 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSAL equ 0F9h ;# 
# 8268 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSAH equ 0FAh ;# 
# 8338 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSAU equ 0FBh ;# 
# 8396 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnCON0 equ 0FCh ;# 
# 8442 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnCON1 equ 0FDh ;# 
# 8486 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnAIRQ equ 0FEh ;# 
# 8556 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSIRQ equ 0FFh ;# 
# 8626 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PPSLOCK equ 0200h ;# 
# 8646 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA0PPS equ 0201h ;# 
# 8702 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA1PPS equ 0202h ;# 
# 8758 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA2PPS equ 0203h ;# 
# 8814 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA3PPS equ 0204h ;# 
# 8870 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA4PPS equ 0205h ;# 
# 8926 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA5PPS equ 0206h ;# 
# 8982 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA6PPS equ 0207h ;# 
# 9038 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA7PPS equ 0208h ;# 
# 9094 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB0PPS equ 0209h ;# 
# 9150 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB1PPS equ 020Ah ;# 
# 9206 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB2PPS equ 020Bh ;# 
# 9262 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB3PPS equ 020Ch ;# 
# 9318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB4PPS equ 020Dh ;# 
# 9374 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB5PPS equ 020Eh ;# 
# 9430 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB6PPS equ 020Fh ;# 
# 9486 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB7PPS equ 0210h ;# 
# 9542 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC0PPS equ 0211h ;# 
# 9598 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC1PPS equ 0212h ;# 
# 9654 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC2PPS equ 0213h ;# 
# 9710 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC3PPS equ 0214h ;# 
# 9766 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC4PPS equ 0215h ;# 
# 9822 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC5PPS equ 0216h ;# 
# 9878 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC6PPS equ 0217h ;# 
# 9934 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC7PPS equ 0218h ;# 
# 9990 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD0PPS equ 0219h ;# 
# 10046 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD1PPS equ 021Ah ;# 
# 10102 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD2PPS equ 021Bh ;# 
# 10158 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD3PPS equ 021Ch ;# 
# 10214 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD4PPS equ 021Dh ;# 
# 10270 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD5PPS equ 021Eh ;# 
# 10326 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD6PPS equ 021Fh ;# 
# 10382 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD7PPS equ 0220h ;# 
# 10438 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RE0PPS equ 0221h ;# 
# 10494 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RE1PPS equ 0222h ;# 
# 10550 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RE2PPS equ 0223h ;# 
# 10606 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF0PPS equ 0229h ;# 
# 10662 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF1PPS equ 022Ah ;# 
# 10718 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF2PPS equ 022Bh ;# 
# 10774 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF3PPS equ 022Ch ;# 
# 10830 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF4PPS equ 022Dh ;# 
# 10886 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF5PPS equ 022Eh ;# 
# 10942 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF6PPS equ 022Fh ;# 
# 10998 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF7PPS equ 0230h ;# 
# 11054 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INT0PPS equ 023Eh ;# 
# 11114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INT1PPS equ 023Fh ;# 
# 11180 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INT2PPS equ 0240h ;# 
# 11252 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T0CKIPPS equ 0241h ;# 
# 11324 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1CKIPPS equ 0242h ;# 
# 11396 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1GPPS equ 0243h ;# 
# 11462 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3CKIPPS equ 0244h ;# 
# 11534 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3GPPS equ 0245h ;# 
# 11600 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5CKIPPS equ 0246h ;# 
# 11672 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5GPPS equ 0247h ;# 
# 11738 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2INPPS equ 0248h ;# 
# 11804 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4INPPS equ 0249h ;# 
# 11870 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6INPPS equ 024Ah ;# 
# 11936 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP1PPS equ 024Fh ;# 
# 12008 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP2PPS equ 0250h ;# 
# 12080 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP3PPS equ 0251h ;# 
# 12146 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1ERSPPS equ 0253h ;# 
# 12212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2ERSPPS equ 0254h ;# 
# 12284 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3ERSPPS equ 0255h ;# 
# 12350 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWMIN0PPS equ 0257h ;# 
# 12422 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWMIN1PPS equ 0258h ;# 
# 12494 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1WINPPS equ 0259h ;# 
# 12566 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1SIGPPS equ 025Ah ;# 
# 12638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1PPS equ 025Bh ;# 
# 12643 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1INPPS equ 025Bh ;# 
# 12848 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2PPS equ 025Ch ;# 
# 12853 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2INPPS equ 025Ch ;# 
# 13058 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3PPS equ 025Dh ;# 
# 13063 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3INPPS equ 025Dh ;# 
# 13268 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CARLPPS equ 025Eh ;# 
# 13273 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MDCARLPPS equ 025Eh ;# 
# 13398 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CARHPPS equ 025Fh ;# 
# 13403 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MDCARHPPS equ 025Fh ;# 
# 13528 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1SRCPPS equ 0260h ;# 
# 13533 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MDSRCPPS equ 0260h ;# 
# 13658 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN0PPS equ 0261h ;# 
# 13724 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN1PPS equ 0262h ;# 
# 13790 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN2PPS equ 0263h ;# 
# 13856 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN3PPS equ 0264h ;# 
# 13922 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN4PPS equ 0265h ;# 
# 13988 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN5PPS equ 0266h ;# 
# 14054 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN6PPS equ 0267h ;# 
# 14120 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN7PPS equ 0268h ;# 
# 14186 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACTPPS equ 0269h ;# 
# 14252 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1SCKPPS equ 026Ah ;# 
# 14318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1SDIPPS equ 026Bh ;# 
# 14384 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1SSPPS equ 026Ch ;# 
# 14450 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2SCKPPS equ 026Dh ;# 
# 14516 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2SDIPPS equ 026Eh ;# 
# 14582 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2SSPPS equ 026Fh ;# 
# 14648 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1SDAPPS equ 0270h ;# 
# 14714 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1SCLPPS equ 0271h ;# 
# 14780 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1RXPPS equ 0272h ;# 
# 14852 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1CTSPPS equ 0273h ;# 
# 14924 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2RXPPS equ 0274h ;# 
# 14990 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2CTSPPS equ 0275h ;# 
# 15056 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3RXPPS equ 0276h ;# 
# 15128 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3CTSPPS equ 0277h ;# 
# 15200 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4RXPPS equ 0278h ;# 
# 15266 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4CTSPPS equ 0279h ;# 
# 15332 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5RXPPS equ 027Ah ;# 
# 15404 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5CTSPPS equ 027Bh ;# 
# 15476 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC4I2C equ 0286h ;# 
# 15608 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC3I2C equ 0287h ;# 
# 15740 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB2I2C equ 0288h ;# 
# 15872 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB1I2C equ 0289h ;# 
# 16004 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1RXB equ 028Bh ;# 
# 16024 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1TXB equ 028Ch ;# 
# 16044 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CNT equ 028Dh ;# 
# 16114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADB0 equ 028Eh ;# 
# 16134 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADB1 equ 028Fh ;# 
# 16154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADR0 equ 0290h ;# 
# 16174 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADR1 equ 0291h ;# 
# 16195 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADR2 equ 0292h ;# 
# 16215 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADR3 equ 0293h ;# 
# 16236 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CON0 equ 0294h ;# 
# 16313 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CON1 equ 0295h ;# 
# 16370 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CON2 equ 0296h ;# 
# 16446 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ERR equ 0297h ;# 
# 16536 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1STAT0 equ 0298h ;# 
# 16626 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1STAT1 equ 0299h ;# 
# 16673 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1PIR equ 029Ah ;# 
# 16775 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1PIE equ 029Bh ;# 
# 16877 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CLK equ 029Ch ;# 
# 16969 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1BTO equ 029Dh ;# 
# 17049 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1RXB equ 02A1h ;# 
# 17054 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1RXBL equ 02A1h ;# 
# 17087 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1RXCHK equ 02A2h ;# 
# 17107 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1TXB equ 02A3h ;# 
# 17112 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1TXBL equ 02A3h ;# 
# 17145 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1TXCHK equ 02A4h ;# 
# 17165 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P1 equ 02A5h ;# 
# 17172 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P1L equ 02A5h ;# 
# 17192 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P1H equ 02A6h ;# 
# 17212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P2 equ 02A7h ;# 
# 17219 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P2L equ 02A7h ;# 
# 17239 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P2H equ 02A8h ;# 
# 17259 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P3 equ 02A9h ;# 
# 17266 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P3L equ 02A9h ;# 
# 17286 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P3H equ 02AAh ;# 
# 17306 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1CON0 equ 02ABh ;# 
# 17434 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1CON1 equ 02ACh ;# 
# 17514 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1CON2 equ 02ADh ;# 
# 17656 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1BRG equ 02AEh ;# 
# 17663 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1BRGL equ 02AEh ;# 
# 17683 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1BRGH equ 02AFh ;# 
# 17703 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1FIFO equ 02B0h ;# 
# 17833 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1UIR equ 02B1h ;# 
# 17889 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1ERRIR equ 02B2h ;# 
# 18001 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1ERRIE equ 02B3h ;# 
# 18113 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2RXB equ 02B4h ;# 
# 18118 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2RXBL equ 02B4h ;# 
# 18151 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2TXB equ 02B6h ;# 
# 18156 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2TXBL equ 02B6h ;# 
# 18189 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P1 equ 02B8h ;# 
# 18196 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P1L equ 02B8h ;# 
# 18216 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P2 equ 02BAh ;# 
# 18223 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P2L equ 02BAh ;# 
# 18243 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P3 equ 02BCh ;# 
# 18250 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P3L equ 02BCh ;# 
# 18270 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2CON0 equ 02BEh ;# 
# 18386 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2CON1 equ 02BFh ;# 
# 18466 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2CON2 equ 02C0h ;# 
# 18598 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2BRG equ 02C1h ;# 
# 18605 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2BRGL equ 02C1h ;# 
# 18625 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2BRGH equ 02C2h ;# 
# 18645 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2FIFO equ 02C3h ;# 
# 18775 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2UIR equ 02C4h ;# 
# 18831 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2ERRIR equ 02C5h ;# 
# 18943 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2ERRIE equ 02C6h ;# 
# 19055 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3RXB equ 02C7h ;# 
# 19060 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3RXBL equ 02C7h ;# 
# 19093 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3TXB equ 02C9h ;# 
# 19098 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3TXBL equ 02C9h ;# 
# 19131 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P1 equ 02CBh ;# 
# 19138 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P1L equ 02CBh ;# 
# 19158 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P2 equ 02CDh ;# 
# 19165 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P2L equ 02CDh ;# 
# 19185 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P3 equ 02CFh ;# 
# 19192 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P3L equ 02CFh ;# 
# 19212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3CON0 equ 02D1h ;# 
# 19328 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3CON1 equ 02D2h ;# 
# 19408 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3CON2 equ 02D3h ;# 
# 19540 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3BRG equ 02D4h ;# 
# 19547 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3BRGL equ 02D4h ;# 
# 19567 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3BRGH equ 02D5h ;# 
# 19587 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3FIFO equ 02D6h ;# 
# 19717 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3UIR equ 02D7h ;# 
# 19773 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3ERRIR equ 02D8h ;# 
# 19885 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3ERRIE equ 02D9h ;# 
# 19997 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4RXB equ 02DAh ;# 
# 20002 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4RXBL equ 02DAh ;# 
# 20035 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4TXB equ 02DCh ;# 
# 20040 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4TXBL equ 02DCh ;# 
# 20073 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P1 equ 02DEh ;# 
# 20080 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P1L equ 02DEh ;# 
# 20100 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P2 equ 02E0h ;# 
# 20107 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P2L equ 02E0h ;# 
# 20127 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P3 equ 02E2h ;# 
# 20134 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P3L equ 02E2h ;# 
# 20154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4CON0 equ 02E4h ;# 
# 20270 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4CON1 equ 02E5h ;# 
# 20350 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4CON2 equ 02E6h ;# 
# 20482 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4BRG equ 02E7h ;# 
# 20489 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4BRGL equ 02E7h ;# 
# 20509 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4BRGH equ 02E8h ;# 
# 20529 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4FIFO equ 02E9h ;# 
# 20659 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4UIR equ 02EAh ;# 
# 20715 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4ERRIR equ 02EBh ;# 
# 20827 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4ERRIE equ 02ECh ;# 
# 20939 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5RXB equ 02EDh ;# 
# 20944 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5RXBL equ 02EDh ;# 
# 20977 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5TXB equ 02EFh ;# 
# 20982 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5TXBL equ 02EFh ;# 
# 21015 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P1 equ 02F1h ;# 
# 21022 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P1L equ 02F1h ;# 
# 21042 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P2 equ 02F3h ;# 
# 21049 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P2L equ 02F3h ;# 
# 21069 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P3 equ 02F5h ;# 
# 21076 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P3L equ 02F5h ;# 
# 21096 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5CON0 equ 02F7h ;# 
# 21212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5CON1 equ 02F8h ;# 
# 21292 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5CON2 equ 02F9h ;# 
# 21424 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5BRG equ 02FAh ;# 
# 21431 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5BRGL equ 02FAh ;# 
# 21451 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5BRGH equ 02FBh ;# 
# 21471 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5FIFO equ 02FCh ;# 
# 21601 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5UIR equ 02FDh ;# 
# 21657 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5ERRIR equ 02FEh ;# 
# 21769 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5ERRIE equ 02FFh ;# 
# 21883 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1TMR equ 0300h ;# 
# 21890 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1TMRL equ 0300h ;# 
# 21960 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1TMRH equ 0301h ;# 
# 22030 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1TMRU equ 0302h ;# 
# 22102 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPR equ 0303h ;# 
# 22109 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPRL equ 0303h ;# 
# 22179 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPRH equ 0304h ;# 
# 22249 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPRU equ 0305h ;# 
# 22321 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPW equ 0306h ;# 
# 22328 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPWL equ 0306h ;# 
# 22398 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPWH equ 0307h ;# 
# 22468 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPWU equ 0308h ;# 
# 22540 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1PR equ 0309h ;# 
# 22547 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1PRL equ 0309h ;# 
# 22617 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1PRH equ 030Ah ;# 
# 22687 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1PRU equ 030Bh ;# 
# 22757 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CON0 equ 030Ch ;# 
# 22822 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CON1 equ 030Dh ;# 
# 22922 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1STAT equ 030Eh ;# 
# 23012 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CLK equ 030Fh ;# 
# 23092 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1SIG equ 0310h ;# 
# 23196 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1WIN equ 0311h ;# 
# 23300 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR0L equ 0318h ;# 
# 23305 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR0 equ 0318h ;# 
# 23438 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR0H equ 0319h ;# 
# 23443 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR0 equ 0319h ;# 
# 23692 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T0CON0 equ 031Ah ;# 
# 23816 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T0CON1 equ 031Bh ;# 
# 23958 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1 equ 031Ch ;# 
# 23965 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1L equ 031Ch ;# 
# 24085 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1H equ 031Dh ;# 
# 24205 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1CON equ 031Eh ;# 
# 24210 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1CON equ 031Eh ;# 
# 24427 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1GCON equ 031Fh ;# 
# 24432 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1GCON equ 031Fh ;# 
# 24713 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1GATE equ 0320h ;# 
# 24718 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1GATE equ 0320h ;# 
# 24903 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1CLK equ 0321h ;# 
# 24908 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1CLK equ 0321h ;# 
# 24912 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR1 equ 0321h ;# 
# 25149 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2TMR equ 0322h ;# 
# 25154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR2 equ 0322h ;# 
# 25187 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2PR equ 0323h ;# 
# 25192 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR2 equ 0323h ;# 
# 25225 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2CON equ 0324h ;# 
# 25371 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2HLT equ 0325h ;# 
# 25499 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2CLKCON equ 0326h ;# 
# 25504 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2CLK equ 0326h ;# 
# 25705 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2RST equ 0327h ;# 
# 25821 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3 equ 0328h ;# 
# 25828 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3L equ 0328h ;# 
# 25948 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3H equ 0329h ;# 
# 26068 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3CON equ 032Ah ;# 
# 26073 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3CON equ 032Ah ;# 
# 26290 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3GCON equ 032Bh ;# 
# 26295 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3GCON equ 032Bh ;# 
# 26576 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3GATE equ 032Ch ;# 
# 26581 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3GATE equ 032Ch ;# 
# 26766 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3CLK equ 032Dh ;# 
# 26771 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3CLK equ 032Dh ;# 
# 26775 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR3 equ 032Dh ;# 
# 27012 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4TMR equ 032Eh ;# 
# 27017 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR4 equ 032Eh ;# 
# 27050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4PR equ 032Fh ;# 
# 27055 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR4 equ 032Fh ;# 
# 27088 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4CON equ 0330h ;# 
# 27234 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4HLT equ 0331h ;# 
# 27362 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4CLKCON equ 0332h ;# 
# 27367 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4CLK equ 0332h ;# 
# 27568 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4RST equ 0333h ;# 
# 27684 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5 equ 0334h ;# 
# 27691 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5L equ 0334h ;# 
# 27811 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5H equ 0335h ;# 
# 27931 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5CON equ 0336h ;# 
# 27936 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5CON equ 0336h ;# 
# 28153 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5GCON equ 0337h ;# 
# 28158 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5GCON equ 0337h ;# 
# 28439 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5GATE equ 0338h ;# 
# 28444 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5GATE equ 0338h ;# 
# 28629 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5CLK equ 0339h ;# 
# 28634 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5CLK equ 0339h ;# 
# 28638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR5 equ 0339h ;# 
# 28875 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6TMR equ 033Ah ;# 
# 28880 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR6 equ 033Ah ;# 
# 28913 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6PR equ 033Bh ;# 
# 28918 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR6 equ 033Bh ;# 
# 28951 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6CON equ 033Ch ;# 
# 29097 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6HLT equ 033Dh ;# 
# 29225 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6CLKCON equ 033Eh ;# 
# 29230 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6CLK equ 033Eh ;# 
# 29431 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6RST equ 033Fh ;# 
# 29547 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR1 equ 0340h ;# 
# 29554 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR1L equ 0340h ;# 
# 29574 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR1H equ 0341h ;# 
# 29594 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP1CON equ 0342h ;# 
# 29712 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP1CAP equ 0343h ;# 
# 29792 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR2 equ 0344h ;# 
# 29799 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR2L equ 0344h ;# 
# 29819 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR2H equ 0345h ;# 
# 29839 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP2CON equ 0346h ;# 
# 29957 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP2CAP equ 0347h ;# 
# 30037 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR3 equ 0348h ;# 
# 30044 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR3L equ 0348h ;# 
# 30064 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR3H equ 0349h ;# 
# 30084 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP3CON equ 034Ah ;# 
# 30202 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP3CAP equ 034Bh ;# 
# 30282 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPTMRS0 equ 034Ch ;# 
# 30352 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCDATA equ 034Fh ;# 
# 30359 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCDATL equ 034Fh ;# 
# 30421 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCDATH equ 0350h ;# 
# 30483 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCACC equ 0351h ;# 
# 30490 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCACCL equ 0351h ;# 
# 30552 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCACCH equ 0352h ;# 
# 30614 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCSHFT equ 0353h ;# 
# 30621 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCSHIFTL equ 0353h ;# 
# 30683 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCSHIFTH equ 0354h ;# 
# 30745 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCXOR equ 0355h ;# 
# 30752 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCXORL equ 0355h ;# 
# 30809 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCXORH equ 0356h ;# 
# 30871 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCCON0 equ 0357h ;# 
# 30931 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCCON1 equ 0358h ;# 
# 31009 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANLADR equ 035Ah ;# 
# 31016 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANLADRL equ 035Ah ;# 
# 31144 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANLADRH equ 035Bh ;# 
# 31272 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANLADRU equ 035Ch ;# 
# 31378 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANHADR equ 035Dh ;# 
# 31385 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANHADRL equ 035Dh ;# 
# 31513 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANHADRH equ 035Eh ;# 
# 31641 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANHADRU equ 035Fh ;# 
# 31745 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANCON0 equ 0360h ;# 
# 31805 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANTRIG equ 0361h ;# 
# 31865 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR0 equ 0362h ;# 
# 31917 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR1 equ 0363h ;# 
# 31979 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR2 equ 0364h ;# 
# 32024 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR3 equ 0365h ;# 
# 32086 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR4 equ 0366h ;# 
# 32137 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR5 equ 0367h ;# 
# 32194 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR6 equ 0368h ;# 
# 32256 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR7 equ 0369h ;# 
# 32313 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR8 equ 036Ah ;# 
# 32375 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR9 equ 036Bh ;# 
# 32420 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR10 equ 036Ch ;# 
# 32482 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR11 equ 036Dh ;# 
# 32544 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR12 equ 036Eh ;# 
# 32606 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR13 equ 036Fh ;# 
# 32668 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR14 equ 0370h ;# 
# 32701 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR15 equ 0371h ;# 
# 32739 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
STATUS_CSHAD equ 0373h ;# 
# 32828 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WREG_CSHAD equ 0374h ;# 
# 32848 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
BSR_CSHAD equ 0375h ;# 
# 32855 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SHADCON equ 0376h ;# 
# 32875 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
STATUS_SHAD equ 0377h ;# 
# 32964 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WREG_SHAD equ 0378h ;# 
# 32984 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
BSR_SHAD equ 0379h ;# 
# 32991 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLATH_SHAD equ 037Ah ;# 
# 33011 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLATU_SHAD equ 037Bh ;# 
# 33031 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0SH equ 037Ch ;# 
# 33038 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0L_SHAD equ 037Ch ;# 
# 33058 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0H_SHAD equ 037Dh ;# 
# 33078 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1SH equ 037Eh ;# 
# 33085 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1L_SHAD equ 037Eh ;# 
# 33105 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1H_SHAD equ 037Fh ;# 
# 33125 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2SH equ 0380h ;# 
# 33132 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2L_SHAD equ 0380h ;# 
# 33152 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2H_SHAD equ 0381h ;# 
# 33172 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODSH equ 0382h ;# 
# 33179 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODL_SHAD equ 0382h ;# 
# 33199 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODH_SHAD equ 0383h ;# 
# 33219 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1CLK equ 03BCh ;# 
# 33224 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1CLKCON equ 03BCh ;# 
# 33273 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1ISM equ 03BDh ;# 
# 33278 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1DAT equ 03BDh ;# 
# 33391 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1DBR equ 03BEh ;# 
# 33495 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1DBF equ 03BFh ;# 
# 33599 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1CON0 equ 03C0h ;# 
# 33700 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1CON1 equ 03C1h ;# 
# 33778 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1AS0 equ 03C2h ;# 
# 33940 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1AS1 equ 03C3h ;# 
# 34002 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1STR equ 03C4h ;# 
# 34114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2CLK equ 03C5h ;# 
# 34119 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2CLKCON equ 03C5h ;# 
# 34168 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2ISM equ 03C6h ;# 
# 34173 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2DAT equ 03C6h ;# 
# 34286 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2DBR equ 03C7h ;# 
# 34390 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2DBF equ 03C8h ;# 
# 34494 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2CON0 equ 03C9h ;# 
# 34595 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2CON1 equ 03CAh ;# 
# 34673 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2AS0 equ 03CBh ;# 
# 34835 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2AS1 equ 03CCh ;# 
# 34897 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2STR equ 03CDh ;# 
# 35009 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3CLK equ 03CEh ;# 
# 35014 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3CLKCON equ 03CEh ;# 
# 35063 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3ISM equ 03CFh ;# 
# 35068 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3DAT equ 03CFh ;# 
# 35181 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3DBR equ 03D0h ;# 
# 35285 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3DBF equ 03D1h ;# 
# 35389 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3CON0 equ 03D2h ;# 
# 35490 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3CON1 equ 03D3h ;# 
# 35568 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3AS0 equ 03D4h ;# 
# 35730 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3AS1 equ 03D5h ;# 
# 35792 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3STR equ 03D6h ;# 
# 35904 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FVRCON equ 03D7h ;# 
# 35993 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCPCON equ 03D8h ;# 
# 35998 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCP equ 03D8h ;# 
# 36093 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADLTH equ 03D9h ;# 
# 36100 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADLTHL equ 03D9h ;# 
# 36228 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADLTHH equ 03DAh ;# 
# 36356 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADUTH equ 03DBh ;# 
# 36363 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADUTHL equ 03DBh ;# 
# 36491 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADUTHH equ 03DCh ;# 
# 36619 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADERR equ 03DDh ;# 
# 36626 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADERRL equ 03DDh ;# 
# 36754 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADERRH equ 03DEh ;# 
# 36882 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADSTPT equ 03DFh ;# 
# 36889 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADSTPTL equ 03DFh ;# 
# 37017 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADSTPTH equ 03E0h ;# 
# 37145 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADFLTR equ 03E1h ;# 
# 37152 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADFLTRL equ 03E1h ;# 
# 37280 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADFLTRH equ 03E2h ;# 
# 37410 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACC equ 03E3h ;# 
# 37417 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACCL equ 03E3h ;# 
# 37545 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACCH equ 03E4h ;# 
# 37673 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACCU equ 03E5h ;# 
# 37801 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCNT equ 03E6h ;# 
# 37929 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADRPT equ 03E7h ;# 
# 38057 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREV equ 03E8h ;# 
# 38064 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREVL equ 03E8h ;# 
# 38192 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREVH equ 03E9h ;# 
# 38320 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADRES equ 03EAh ;# 
# 38327 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADRESL equ 03EAh ;# 
# 38455 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADRESH equ 03EBh ;# 
# 38575 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPCH equ 03ECh ;# 
# 38633 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACQ equ 03EEh ;# 
# 38640 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACQL equ 03EEh ;# 
# 38768 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACQH equ 03EFh ;# 
# 38860 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCAP equ 03F0h ;# 
# 38912 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPRE equ 03F1h ;# 
# 38919 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREL equ 03F1h ;# 
# 39047 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREH equ 03F2h ;# 
# 39139 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCON0 equ 03F3h ;# 
# 39257 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCON1 equ 03F4h ;# 
# 39323 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCON2 equ 03F5h ;# 
# 39465 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCON3 equ 03F6h ;# 
# 39595 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADSTAT equ 03F7h ;# 
# 39727 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADREF equ 03F8h ;# 
# 39809 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACT equ 03F9h ;# 
# 39913 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCLK equ 03FAh ;# 
# 40017 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELA equ 0400h ;# 
# 40079 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUA equ 0401h ;# 
# 40141 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONA equ 0402h ;# 
# 40203 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONA equ 0403h ;# 
# 40265 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLA equ 0404h ;# 
# 40327 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCAP equ 0405h ;# 
# 40389 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCAN equ 0406h ;# 
# 40451 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCAF equ 0407h ;# 
# 40513 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELB equ 0408h ;# 
# 40575 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUB equ 0409h ;# 
# 40637 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONB equ 040Ah ;# 
# 40699 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONB equ 040Bh ;# 
# 40761 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLB equ 040Ch ;# 
# 40823 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCBP equ 040Dh ;# 
# 40885 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCBN equ 040Eh ;# 
# 40947 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCBF equ 040Fh ;# 
# 41009 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELC equ 0410h ;# 
# 41071 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUC equ 0411h ;# 
# 41133 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONC equ 0412h ;# 
# 41195 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONC equ 0413h ;# 
# 41257 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLC equ 0414h ;# 
# 41319 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCCP equ 0415h ;# 
# 41381 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCCN equ 0416h ;# 
# 41443 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCCF equ 0417h ;# 
# 41505 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELD equ 0418h ;# 
# 41567 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUD equ 0419h ;# 
# 41629 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCOND equ 041Ah ;# 
# 41691 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCOND equ 041Bh ;# 
# 41753 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLD equ 041Ch ;# 
# 41815 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELE equ 0420h ;# 
# 41847 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUE equ 0421h ;# 
# 41885 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONE equ 0422h ;# 
# 41917 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONE equ 0423h ;# 
# 41949 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLE equ 0424h ;# 
# 41987 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCEP equ 0425h ;# 
# 42008 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCEN equ 0426h ;# 
# 42029 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCEF equ 0427h ;# 
# 42050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELF equ 0428h ;# 
# 42112 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUF equ 0429h ;# 
# 42174 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONF equ 042Ah ;# 
# 42236 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONF equ 042Bh ;# 
# 42298 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLF equ 042Ch ;# 
# 42362 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1ACC equ 0440h ;# 
# 42369 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1ACCL equ 0440h ;# 
# 42497 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1ACCH equ 0441h ;# 
# 42625 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1ACCU equ 0442h ;# 
# 42707 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1INC equ 0443h ;# 
# 42714 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1INCL equ 0443h ;# 
# 42842 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1INCH equ 0444h ;# 
# 42970 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1INCU equ 0445h ;# 
# 43050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1CON equ 0446h ;# 
# 43118 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1CLK equ 0447h ;# 
# 43260 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2ACC equ 0448h ;# 
# 43267 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2ACCL equ 0448h ;# 
# 43395 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2ACCH equ 0449h ;# 
# 43523 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2ACCU equ 044Ah ;# 
# 43605 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2INC equ 044Bh ;# 
# 43612 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2INCL equ 044Bh ;# 
# 43740 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2INCH equ 044Ch ;# 
# 43868 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2INCU equ 044Dh ;# 
# 43948 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2CON equ 044Eh ;# 
# 44016 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2CLK equ 044Fh ;# 
# 44158 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3ACC equ 0450h ;# 
# 44165 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3ACCL equ 0450h ;# 
# 44293 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3ACCH equ 0451h ;# 
# 44421 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3ACCU equ 0452h ;# 
# 44503 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3INC equ 0453h ;# 
# 44510 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3INCL equ 0453h ;# 
# 44638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3INCH equ 0454h ;# 
# 44766 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3INCU equ 0455h ;# 
# 44846 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3CON equ 0456h ;# 
# 44914 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3CLK equ 0457h ;# 
# 45054 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTLOCK equ 0459h ;# 
# 45076 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTAD equ 045Ah ;# 
# 45083 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTADL equ 045Ah ;# 
# 45145 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTADH equ 045Bh ;# 
# 45207 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTADU equ 045Ch ;# 
# 45253 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTBASE equ 045Dh ;# 
# 45260 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTBASEL equ 045Dh ;# 
# 45322 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTBASEH equ 045Eh ;# 
# 45384 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTBASEU equ 045Fh ;# 
# 45428 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1ERS equ 0460h ;# 
# 45498 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1CLK equ 0461h ;# 
# 45568 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1LDS equ 0462h ;# 
# 45638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1PR equ 0463h ;# 
# 45645 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1PRL equ 0463h ;# 
# 45665 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1PRH equ 0464h ;# 
# 45685 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1CPRE equ 0465h ;# 
# 45705 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1PIPOS equ 0466h ;# 
# 45725 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1GIR equ 0467h ;# 
# 45751 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1GIE equ 0468h ;# 
# 45777 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1CON equ 0469h ;# 
# 45816 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1CFG equ 046Ah ;# 
# 45875 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P1 equ 046Bh ;# 
# 45882 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P1L equ 046Bh ;# 
# 45902 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P1H equ 046Ch ;# 
# 45922 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P2 equ 046Dh ;# 
# 45929 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P2L equ 046Dh ;# 
# 45949 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P2H equ 046Eh ;# 
# 45969 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2ERS equ 046Fh ;# 
# 46039 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2CLK equ 0470h ;# 
# 46109 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2LDS equ 0471h ;# 
# 46179 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2PR equ 0472h ;# 
# 46186 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2PRL equ 0472h ;# 
# 46206 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2PRH equ 0473h ;# 
# 46226 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2CPRE equ 0474h ;# 
# 46246 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2PIPOS equ 0475h ;# 
# 46266 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2GIR equ 0476h ;# 
# 46292 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2GIE equ 0477h ;# 
# 46318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2CON equ 0478h ;# 
# 46357 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1CFG equ 0479h ;# 
# 46416 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P1 equ 047Ah ;# 
# 46423 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P1L equ 047Ah ;# 
# 46443 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P1H equ 047Bh ;# 
# 46463 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P2 equ 047Ch ;# 
# 46470 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P2L equ 047Ch ;# 
# 46490 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P2H equ 047Dh ;# 
# 46510 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3ERS equ 047Eh ;# 
# 46580 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3CLK equ 047Fh ;# 
# 46650 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3LDS equ 0480h ;# 
# 46720 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3PR equ 0481h ;# 
# 46727 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3PRL equ 0481h ;# 
# 46747 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3PRH equ 0482h ;# 
# 46767 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3CPRE equ 0483h ;# 
# 46787 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3PIPOS equ 0484h ;# 
# 46807 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3GIR equ 0485h ;# 
# 46833 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3GIE equ 0486h ;# 
# 46859 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3CON equ 0487h ;# 
# 46898 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1CFG equ 0488h ;# 
# 46957 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P1 equ 0489h ;# 
# 46964 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P1L equ 0489h ;# 
# 46984 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P1H equ 048Ah ;# 
# 47004 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P2 equ 048Bh ;# 
# 47011 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P2L equ 048Bh ;# 
# 47031 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P2H equ 048Ch ;# 
# 47051 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWMLOAD equ 049Ch ;# 
# 47083 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWMEN equ 049Dh ;# 
# 47115 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE0 equ 049Eh ;# 
# 47167 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE1 equ 049Fh ;# 
# 47229 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE2 equ 04A0h ;# 
# 47274 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE3 equ 04A1h ;# 
# 47336 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE4 equ 04A2h ;# 
# 47387 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE5 equ 04A3h ;# 
# 47444 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE6 equ 04A4h ;# 
# 47506 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE7 equ 04A5h ;# 
# 47563 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE8 equ 04A6h ;# 
# 47625 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE9 equ 04A7h ;# 
# 47670 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE10 equ 04A8h ;# 
# 47732 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE11 equ 04A9h ;# 
# 47794 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE12 equ 04AAh ;# 
# 47856 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE13 equ 04ABh ;# 
# 47918 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE14 equ 04ACh ;# 
# 47951 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE15 equ 04ADh ;# 
# 47989 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR0 equ 04AEh ;# 
# 48041 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR1 equ 04AFh ;# 
# 48103 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR2 equ 04B0h ;# 
# 48148 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR3 equ 04B1h ;# 
# 48210 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR4 equ 04B2h ;# 
# 48261 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR5 equ 04B3h ;# 
# 48318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR6 equ 04B4h ;# 
# 48380 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR7 equ 04B5h ;# 
# 48437 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR8 equ 04B6h ;# 
# 48499 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR9 equ 04B7h ;# 
# 48544 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR10 equ 04B8h ;# 
# 48606 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR11 equ 04B9h ;# 
# 48668 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR12 equ 04BAh ;# 
# 48730 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR13 equ 04BBh ;# 
# 48792 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR14 equ 04BCh ;# 
# 48825 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR15 equ 04BDh ;# 
# 48863 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATA equ 04BEh ;# 
# 48925 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATB equ 04BFh ;# 
# 48987 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATC equ 04C0h ;# 
# 49049 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATD equ 04C1h ;# 
# 49111 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATE equ 04C2h ;# 
# 49143 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATF equ 04C3h ;# 
# 49205 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISA equ 04C6h ;# 
# 49267 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISB equ 04C7h ;# 
# 49329 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISC equ 04C8h ;# 
# 49391 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISD equ 04C9h ;# 
# 49453 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISE equ 04CAh ;# 
# 49485 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISF equ 04CBh ;# 
# 49547 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTA equ 04CEh ;# 
# 49609 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTB equ 04CFh ;# 
# 49671 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTC equ 04D0h ;# 
# 49733 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTD equ 04D1h ;# 
# 49795 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTE equ 04D2h ;# 
# 49833 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTF equ 04D3h ;# 
# 49895 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INTCON0 equ 04D6h ;# 
# 49955 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INTCON1 equ 04D7h ;# 
# 49991 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
STATUS equ 04D8h ;# 
# 50080 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2 equ 04D9h ;# 
# 50087 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2L equ 04D9h ;# 
# 50107 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2H equ 04DAh ;# 
# 50114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PLUSW2 equ 04DBh ;# 
# 50134 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PREINC2 equ 04DCh ;# 
# 50154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTDEC2 equ 04DDh ;# 
# 50174 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTINC2 equ 04DEh ;# 
# 50194 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INDF2 equ 04DFh ;# 
# 50214 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
BSR equ 04E0h ;# 
# 50221 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1 equ 04E1h ;# 
# 50228 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1L equ 04E1h ;# 
# 50248 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1H equ 04E2h ;# 
# 50255 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PLUSW1 equ 04E3h ;# 
# 50275 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PREINC1 equ 04E4h ;# 
# 50295 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTDEC1 equ 04E5h ;# 
# 50315 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTINC1 equ 04E6h ;# 
# 50335 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INDF1 equ 04E7h ;# 
# 50355 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WREG equ 04E8h ;# 
# 50393 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0 equ 04E9h ;# 
# 50400 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0L equ 04E9h ;# 
# 50420 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0H equ 04EAh ;# 
# 50427 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PLUSW0 equ 04EBh ;# 
# 50447 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PREINC0 equ 04ECh ;# 
# 50467 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTDEC0 equ 04EDh ;# 
# 50487 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTINC0 equ 04EEh ;# 
# 50507 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INDF0 equ 04EFh ;# 
# 50527 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCON0 equ 04F0h ;# 
# 50680 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCON1 equ 04F1h ;# 
# 50747 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CPUDOZE equ 04F2h ;# 
# 50812 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PROD equ 04F3h ;# 
# 50819 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODL equ 04F3h ;# 
# 50839 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODH equ 04F4h ;# 
# 50859 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TABLAT equ 04F5h ;# 
# 50881 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TBLPTR equ 04F6h ;# 
# 50888 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TBLPTRL equ 04F6h ;# 
# 50908 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TBLPTRH equ 04F7h ;# 
# 50928 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TBLPTRU equ 04F8h ;# 
# 50959 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLAT equ 04F9h ;# 
# 50966 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCL equ 04F9h ;# 
# 50986 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLATH equ 04FAh ;# 
# 51006 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLATU equ 04FBh ;# 
# 51026 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
STKPTR equ 04FCh ;# 
# 51124 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TOS equ 04FDh ;# 
# 51131 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TOSL equ 04FDh ;# 
# 51151 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TOSH equ 04FEh ;# 
# 51171 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TOSU equ 04FFh ;# 
# 328 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLKRCON equ 039h ;# 
# 432 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLKRCLK equ 03Ah ;# 
# 516 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMCON0 equ 040h ;# 
# 560 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMCON1 equ 041h ;# 
# 595 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMLOCK equ 042h ;# 
# 617 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMADR equ 043h ;# 
# 624 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMADRL equ 043h ;# 
# 694 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMADRH equ 044h ;# 
# 764 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMADRU equ 045h ;# 
# 822 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMDAT equ 046h ;# 
# 829 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMDATL equ 046h ;# 
# 899 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMDATH equ 047h ;# 
# 969 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
VREGCON equ 048h ;# 
# 1023 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
BORCON equ 049h ;# 
# 1050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
HLVDCON0 equ 04Ah ;# 
# 1130 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
HLVDCON1 equ 04Bh ;# 
# 1202 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ZCDCON equ 04Ch ;# 
# 1282 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD0 equ 060h ;# 
# 1339 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD1 equ 061h ;# 
# 1401 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD3 equ 063h ;# 
# 1452 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD4 equ 064h ;# 
# 1508 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD5 equ 065h ;# 
# 1559 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD6 equ 066h ;# 
# 1621 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD7 equ 067h ;# 
# 1683 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD8 equ 068h ;# 
# 1733 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CON0 equ 06Ah ;# 
# 1801 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CON1 equ 06Bh ;# 
# 1867 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1SRC equ 06Ch ;# 
# 1971 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CARL equ 06Dh ;# 
# 2063 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CARH equ 06Eh ;# 
# 2155 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CMOUT equ 06Fh ;# 
# 2181 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM1CON0 equ 070h ;# 
# 2261 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM1CON1 equ 071h ;# 
# 2301 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM1NCH equ 072h ;# 
# 2361 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM1PCH equ 073h ;# 
# 2421 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM2CON0 equ 074h ;# 
# 2501 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM2CON1 equ 075h ;# 
# 2541 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM2NCH equ 076h ;# 
# 2601 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM2PCH equ 077h ;# 
# 2661 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTCON0 equ 078h ;# 
# 2772 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTCON1 equ 079h ;# 
# 2892 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTPS equ 07Ah ;# 
# 2899 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTPSL equ 07Ah ;# 
# 2977 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTPSH equ 07Bh ;# 
# 3055 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTTMR equ 07Ch ;# 
# 3152 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DAC1DAT equ 07Dh ;# 
# 3159 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DAC1DATL equ 07Dh ;# 
# 3237 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DAC1CON equ 07Fh ;# 
# 3340 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1RXB equ 080h ;# 
# 3410 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TXB equ 081h ;# 
# 3480 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TCNT equ 082h ;# 
# 3487 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TCNTL equ 082h ;# 
# 3507 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TCNTH equ 083h ;# 
# 3527 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1CON0 equ 084h ;# 
# 3593 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1CON1 equ 085h ;# 
# 3695 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1CON2 equ 086h ;# 
# 3773 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1STATUS equ 087h ;# 
# 3855 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TWIDTH equ 088h ;# 
# 3895 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1BAUD equ 089h ;# 
# 3965 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1INTF equ 08Ah ;# 
# 4057 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1INTE equ 08Bh ;# 
# 4149 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1CLK equ 08Ch ;# 
# 4241 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2RXB equ 08Dh ;# 
# 4311 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TXB equ 08Eh ;# 
# 4381 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TCNT equ 08Fh ;# 
# 4388 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TCNTL equ 08Fh ;# 
# 4408 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TCNTH equ 090h ;# 
# 4428 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2CON0 equ 091h ;# 
# 4494 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2CON1 equ 092h ;# 
# 4596 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2CON2 equ 093h ;# 
# 4674 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2STATUS equ 094h ;# 
# 4756 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TWIDTH equ 095h ;# 
# 4796 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2BAUD equ 096h ;# 
# 4866 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2INTF equ 097h ;# 
# 4958 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2INTE equ 098h ;# 
# 5050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2CLK equ 099h ;# 
# 5142 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ACTCON equ 0ACh ;# 
# 5212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCCON1 equ 0ADh ;# 
# 5282 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCCON2 equ 0AEh ;# 
# 5352 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCCON3 equ 0AFh ;# 
# 5392 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCTUNE equ 0B0h ;# 
# 5450 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCFRQ equ 0B1h ;# 
# 5455 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCFREQ equ 0B1h ;# 
# 5540 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCSTAT equ 0B2h ;# 
# 5545 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCSTAT1 equ 0B2h ;# 
# 5652 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCEN equ 0B3h ;# 
# 5709 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRLOCK equ 0B4h ;# 
# 5729 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANPR equ 0B5h ;# 
# 5797 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA1PR equ 0B6h ;# 
# 5865 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA2PR equ 0B7h ;# 
# 5933 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA3PR equ 0B8h ;# 
# 6001 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA4PR equ 0B9h ;# 
# 6069 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA5PR equ 0BAh ;# 
# 6137 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA6PR equ 0BBh ;# 
# 6205 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MAINPR equ 0BEh ;# 
# 6273 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ISRPR equ 0BFh ;# 
# 6341 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCDATA equ 0D4h ;# 
# 6403 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCSELECT equ 0D5h ;# 
# 6443 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnCON equ 0D6h ;# 
# 6513 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnPOL equ 0D7h ;# 
# 6558 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnSEL0 equ 0D8h ;# 
# 6628 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnSEL1 equ 0D9h ;# 
# 6698 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnSEL2 equ 0DAh ;# 
# 6768 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnSEL3 equ 0DBh ;# 
# 6838 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnGLS0 equ 0DCh ;# 
# 6900 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnGLS1 equ 0DDh ;# 
# 6962 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnGLS2 equ 0DEh ;# 
# 7024 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnGLS3 equ 0DFh ;# 
# 7086 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMASELECT equ 0E8h ;# 
# 7126 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnBUF equ 0E9h ;# 
# 7196 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDCNT equ 0EAh ;# 
# 7203 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDCNTL equ 0EAh ;# 
# 7273 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDCNTH equ 0EBh ;# 
# 7319 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDPTR equ 0ECh ;# 
# 7326 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDPTRL equ 0ECh ;# 
# 7396 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDPTRH equ 0EDh ;# 
# 7466 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSZ equ 0EEh ;# 
# 7473 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSZL equ 0EEh ;# 
# 7543 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSZH equ 0EFh ;# 
# 7589 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSA equ 0F0h ;# 
# 7596 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSAL equ 0F0h ;# 
# 7666 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSAH equ 0F1h ;# 
# 7736 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSCNT equ 0F2h ;# 
# 7743 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSCNTL equ 0F2h ;# 
# 7813 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSCNTH equ 0F3h ;# 
# 7861 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSPTR equ 0F4h ;# 
# 7868 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSPTRL equ 0F4h ;# 
# 7938 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSPTRH equ 0F5h ;# 
# 8008 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSPTRU equ 0F6h ;# 
# 8066 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSZ equ 0F7h ;# 
# 8073 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSZL equ 0F7h ;# 
# 8143 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSZH equ 0F8h ;# 
# 8191 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSA equ 0F9h ;# 
# 8198 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSAL equ 0F9h ;# 
# 8268 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSAH equ 0FAh ;# 
# 8338 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSAU equ 0FBh ;# 
# 8396 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnCON0 equ 0FCh ;# 
# 8442 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnCON1 equ 0FDh ;# 
# 8486 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnAIRQ equ 0FEh ;# 
# 8556 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSIRQ equ 0FFh ;# 
# 8626 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PPSLOCK equ 0200h ;# 
# 8646 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA0PPS equ 0201h ;# 
# 8702 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA1PPS equ 0202h ;# 
# 8758 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA2PPS equ 0203h ;# 
# 8814 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA3PPS equ 0204h ;# 
# 8870 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA4PPS equ 0205h ;# 
# 8926 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA5PPS equ 0206h ;# 
# 8982 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA6PPS equ 0207h ;# 
# 9038 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA7PPS equ 0208h ;# 
# 9094 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB0PPS equ 0209h ;# 
# 9150 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB1PPS equ 020Ah ;# 
# 9206 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB2PPS equ 020Bh ;# 
# 9262 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB3PPS equ 020Ch ;# 
# 9318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB4PPS equ 020Dh ;# 
# 9374 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB5PPS equ 020Eh ;# 
# 9430 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB6PPS equ 020Fh ;# 
# 9486 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB7PPS equ 0210h ;# 
# 9542 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC0PPS equ 0211h ;# 
# 9598 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC1PPS equ 0212h ;# 
# 9654 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC2PPS equ 0213h ;# 
# 9710 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC3PPS equ 0214h ;# 
# 9766 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC4PPS equ 0215h ;# 
# 9822 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC5PPS equ 0216h ;# 
# 9878 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC6PPS equ 0217h ;# 
# 9934 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC7PPS equ 0218h ;# 
# 9990 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD0PPS equ 0219h ;# 
# 10046 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD1PPS equ 021Ah ;# 
# 10102 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD2PPS equ 021Bh ;# 
# 10158 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD3PPS equ 021Ch ;# 
# 10214 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD4PPS equ 021Dh ;# 
# 10270 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD5PPS equ 021Eh ;# 
# 10326 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD6PPS equ 021Fh ;# 
# 10382 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD7PPS equ 0220h ;# 
# 10438 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RE0PPS equ 0221h ;# 
# 10494 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RE1PPS equ 0222h ;# 
# 10550 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RE2PPS equ 0223h ;# 
# 10606 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF0PPS equ 0229h ;# 
# 10662 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF1PPS equ 022Ah ;# 
# 10718 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF2PPS equ 022Bh ;# 
# 10774 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF3PPS equ 022Ch ;# 
# 10830 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF4PPS equ 022Dh ;# 
# 10886 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF5PPS equ 022Eh ;# 
# 10942 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF6PPS equ 022Fh ;# 
# 10998 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF7PPS equ 0230h ;# 
# 11054 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INT0PPS equ 023Eh ;# 
# 11114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INT1PPS equ 023Fh ;# 
# 11180 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INT2PPS equ 0240h ;# 
# 11252 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T0CKIPPS equ 0241h ;# 
# 11324 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1CKIPPS equ 0242h ;# 
# 11396 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1GPPS equ 0243h ;# 
# 11462 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3CKIPPS equ 0244h ;# 
# 11534 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3GPPS equ 0245h ;# 
# 11600 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5CKIPPS equ 0246h ;# 
# 11672 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5GPPS equ 0247h ;# 
# 11738 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2INPPS equ 0248h ;# 
# 11804 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4INPPS equ 0249h ;# 
# 11870 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6INPPS equ 024Ah ;# 
# 11936 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP1PPS equ 024Fh ;# 
# 12008 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP2PPS equ 0250h ;# 
# 12080 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP3PPS equ 0251h ;# 
# 12146 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1ERSPPS equ 0253h ;# 
# 12212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2ERSPPS equ 0254h ;# 
# 12284 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3ERSPPS equ 0255h ;# 
# 12350 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWMIN0PPS equ 0257h ;# 
# 12422 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWMIN1PPS equ 0258h ;# 
# 12494 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1WINPPS equ 0259h ;# 
# 12566 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1SIGPPS equ 025Ah ;# 
# 12638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1PPS equ 025Bh ;# 
# 12643 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1INPPS equ 025Bh ;# 
# 12848 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2PPS equ 025Ch ;# 
# 12853 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2INPPS equ 025Ch ;# 
# 13058 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3PPS equ 025Dh ;# 
# 13063 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3INPPS equ 025Dh ;# 
# 13268 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CARLPPS equ 025Eh ;# 
# 13273 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MDCARLPPS equ 025Eh ;# 
# 13398 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CARHPPS equ 025Fh ;# 
# 13403 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MDCARHPPS equ 025Fh ;# 
# 13528 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1SRCPPS equ 0260h ;# 
# 13533 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MDSRCPPS equ 0260h ;# 
# 13658 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN0PPS equ 0261h ;# 
# 13724 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN1PPS equ 0262h ;# 
# 13790 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN2PPS equ 0263h ;# 
# 13856 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN3PPS equ 0264h ;# 
# 13922 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN4PPS equ 0265h ;# 
# 13988 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN5PPS equ 0266h ;# 
# 14054 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN6PPS equ 0267h ;# 
# 14120 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN7PPS equ 0268h ;# 
# 14186 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACTPPS equ 0269h ;# 
# 14252 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1SCKPPS equ 026Ah ;# 
# 14318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1SDIPPS equ 026Bh ;# 
# 14384 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1SSPPS equ 026Ch ;# 
# 14450 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2SCKPPS equ 026Dh ;# 
# 14516 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2SDIPPS equ 026Eh ;# 
# 14582 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2SSPPS equ 026Fh ;# 
# 14648 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1SDAPPS equ 0270h ;# 
# 14714 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1SCLPPS equ 0271h ;# 
# 14780 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1RXPPS equ 0272h ;# 
# 14852 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1CTSPPS equ 0273h ;# 
# 14924 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2RXPPS equ 0274h ;# 
# 14990 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2CTSPPS equ 0275h ;# 
# 15056 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3RXPPS equ 0276h ;# 
# 15128 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3CTSPPS equ 0277h ;# 
# 15200 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4RXPPS equ 0278h ;# 
# 15266 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4CTSPPS equ 0279h ;# 
# 15332 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5RXPPS equ 027Ah ;# 
# 15404 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5CTSPPS equ 027Bh ;# 
# 15476 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC4I2C equ 0286h ;# 
# 15608 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC3I2C equ 0287h ;# 
# 15740 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB2I2C equ 0288h ;# 
# 15872 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB1I2C equ 0289h ;# 
# 16004 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1RXB equ 028Bh ;# 
# 16024 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1TXB equ 028Ch ;# 
# 16044 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CNT equ 028Dh ;# 
# 16114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADB0 equ 028Eh ;# 
# 16134 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADB1 equ 028Fh ;# 
# 16154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADR0 equ 0290h ;# 
# 16174 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADR1 equ 0291h ;# 
# 16195 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADR2 equ 0292h ;# 
# 16215 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADR3 equ 0293h ;# 
# 16236 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CON0 equ 0294h ;# 
# 16313 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CON1 equ 0295h ;# 
# 16370 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CON2 equ 0296h ;# 
# 16446 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ERR equ 0297h ;# 
# 16536 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1STAT0 equ 0298h ;# 
# 16626 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1STAT1 equ 0299h ;# 
# 16673 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1PIR equ 029Ah ;# 
# 16775 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1PIE equ 029Bh ;# 
# 16877 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CLK equ 029Ch ;# 
# 16969 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1BTO equ 029Dh ;# 
# 17049 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1RXB equ 02A1h ;# 
# 17054 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1RXBL equ 02A1h ;# 
# 17087 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1RXCHK equ 02A2h ;# 
# 17107 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1TXB equ 02A3h ;# 
# 17112 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1TXBL equ 02A3h ;# 
# 17145 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1TXCHK equ 02A4h ;# 
# 17165 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P1 equ 02A5h ;# 
# 17172 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P1L equ 02A5h ;# 
# 17192 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P1H equ 02A6h ;# 
# 17212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P2 equ 02A7h ;# 
# 17219 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P2L equ 02A7h ;# 
# 17239 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P2H equ 02A8h ;# 
# 17259 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P3 equ 02A9h ;# 
# 17266 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P3L equ 02A9h ;# 
# 17286 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P3H equ 02AAh ;# 
# 17306 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1CON0 equ 02ABh ;# 
# 17434 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1CON1 equ 02ACh ;# 
# 17514 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1CON2 equ 02ADh ;# 
# 17656 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1BRG equ 02AEh ;# 
# 17663 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1BRGL equ 02AEh ;# 
# 17683 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1BRGH equ 02AFh ;# 
# 17703 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1FIFO equ 02B0h ;# 
# 17833 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1UIR equ 02B1h ;# 
# 17889 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1ERRIR equ 02B2h ;# 
# 18001 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1ERRIE equ 02B3h ;# 
# 18113 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2RXB equ 02B4h ;# 
# 18118 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2RXBL equ 02B4h ;# 
# 18151 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2TXB equ 02B6h ;# 
# 18156 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2TXBL equ 02B6h ;# 
# 18189 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P1 equ 02B8h ;# 
# 18196 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P1L equ 02B8h ;# 
# 18216 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P2 equ 02BAh ;# 
# 18223 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P2L equ 02BAh ;# 
# 18243 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P3 equ 02BCh ;# 
# 18250 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P3L equ 02BCh ;# 
# 18270 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2CON0 equ 02BEh ;# 
# 18386 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2CON1 equ 02BFh ;# 
# 18466 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2CON2 equ 02C0h ;# 
# 18598 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2BRG equ 02C1h ;# 
# 18605 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2BRGL equ 02C1h ;# 
# 18625 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2BRGH equ 02C2h ;# 
# 18645 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2FIFO equ 02C3h ;# 
# 18775 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2UIR equ 02C4h ;# 
# 18831 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2ERRIR equ 02C5h ;# 
# 18943 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2ERRIE equ 02C6h ;# 
# 19055 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3RXB equ 02C7h ;# 
# 19060 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3RXBL equ 02C7h ;# 
# 19093 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3TXB equ 02C9h ;# 
# 19098 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3TXBL equ 02C9h ;# 
# 19131 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P1 equ 02CBh ;# 
# 19138 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P1L equ 02CBh ;# 
# 19158 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P2 equ 02CDh ;# 
# 19165 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P2L equ 02CDh ;# 
# 19185 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P3 equ 02CFh ;# 
# 19192 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P3L equ 02CFh ;# 
# 19212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3CON0 equ 02D1h ;# 
# 19328 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3CON1 equ 02D2h ;# 
# 19408 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3CON2 equ 02D3h ;# 
# 19540 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3BRG equ 02D4h ;# 
# 19547 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3BRGL equ 02D4h ;# 
# 19567 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3BRGH equ 02D5h ;# 
# 19587 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3FIFO equ 02D6h ;# 
# 19717 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3UIR equ 02D7h ;# 
# 19773 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3ERRIR equ 02D8h ;# 
# 19885 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3ERRIE equ 02D9h ;# 
# 19997 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4RXB equ 02DAh ;# 
# 20002 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4RXBL equ 02DAh ;# 
# 20035 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4TXB equ 02DCh ;# 
# 20040 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4TXBL equ 02DCh ;# 
# 20073 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P1 equ 02DEh ;# 
# 20080 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P1L equ 02DEh ;# 
# 20100 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P2 equ 02E0h ;# 
# 20107 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P2L equ 02E0h ;# 
# 20127 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P3 equ 02E2h ;# 
# 20134 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P3L equ 02E2h ;# 
# 20154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4CON0 equ 02E4h ;# 
# 20270 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4CON1 equ 02E5h ;# 
# 20350 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4CON2 equ 02E6h ;# 
# 20482 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4BRG equ 02E7h ;# 
# 20489 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4BRGL equ 02E7h ;# 
# 20509 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4BRGH equ 02E8h ;# 
# 20529 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4FIFO equ 02E9h ;# 
# 20659 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4UIR equ 02EAh ;# 
# 20715 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4ERRIR equ 02EBh ;# 
# 20827 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4ERRIE equ 02ECh ;# 
# 20939 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5RXB equ 02EDh ;# 
# 20944 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5RXBL equ 02EDh ;# 
# 20977 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5TXB equ 02EFh ;# 
# 20982 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5TXBL equ 02EFh ;# 
# 21015 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P1 equ 02F1h ;# 
# 21022 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P1L equ 02F1h ;# 
# 21042 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P2 equ 02F3h ;# 
# 21049 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P2L equ 02F3h ;# 
# 21069 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P3 equ 02F5h ;# 
# 21076 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P3L equ 02F5h ;# 
# 21096 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5CON0 equ 02F7h ;# 
# 21212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5CON1 equ 02F8h ;# 
# 21292 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5CON2 equ 02F9h ;# 
# 21424 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5BRG equ 02FAh ;# 
# 21431 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5BRGL equ 02FAh ;# 
# 21451 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5BRGH equ 02FBh ;# 
# 21471 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5FIFO equ 02FCh ;# 
# 21601 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5UIR equ 02FDh ;# 
# 21657 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5ERRIR equ 02FEh ;# 
# 21769 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5ERRIE equ 02FFh ;# 
# 21883 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1TMR equ 0300h ;# 
# 21890 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1TMRL equ 0300h ;# 
# 21960 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1TMRH equ 0301h ;# 
# 22030 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1TMRU equ 0302h ;# 
# 22102 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPR equ 0303h ;# 
# 22109 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPRL equ 0303h ;# 
# 22179 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPRH equ 0304h ;# 
# 22249 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPRU equ 0305h ;# 
# 22321 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPW equ 0306h ;# 
# 22328 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPWL equ 0306h ;# 
# 22398 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPWH equ 0307h ;# 
# 22468 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPWU equ 0308h ;# 
# 22540 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1PR equ 0309h ;# 
# 22547 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1PRL equ 0309h ;# 
# 22617 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1PRH equ 030Ah ;# 
# 22687 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1PRU equ 030Bh ;# 
# 22757 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CON0 equ 030Ch ;# 
# 22822 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CON1 equ 030Dh ;# 
# 22922 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1STAT equ 030Eh ;# 
# 23012 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CLK equ 030Fh ;# 
# 23092 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1SIG equ 0310h ;# 
# 23196 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1WIN equ 0311h ;# 
# 23300 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR0L equ 0318h ;# 
# 23305 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR0 equ 0318h ;# 
# 23438 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR0H equ 0319h ;# 
# 23443 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR0 equ 0319h ;# 
# 23692 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T0CON0 equ 031Ah ;# 
# 23816 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T0CON1 equ 031Bh ;# 
# 23958 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1 equ 031Ch ;# 
# 23965 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1L equ 031Ch ;# 
# 24085 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1H equ 031Dh ;# 
# 24205 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1CON equ 031Eh ;# 
# 24210 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1CON equ 031Eh ;# 
# 24427 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1GCON equ 031Fh ;# 
# 24432 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1GCON equ 031Fh ;# 
# 24713 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1GATE equ 0320h ;# 
# 24718 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1GATE equ 0320h ;# 
# 24903 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1CLK equ 0321h ;# 
# 24908 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1CLK equ 0321h ;# 
# 24912 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR1 equ 0321h ;# 
# 25149 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2TMR equ 0322h ;# 
# 25154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR2 equ 0322h ;# 
# 25187 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2PR equ 0323h ;# 
# 25192 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR2 equ 0323h ;# 
# 25225 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2CON equ 0324h ;# 
# 25371 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2HLT equ 0325h ;# 
# 25499 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2CLKCON equ 0326h ;# 
# 25504 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2CLK equ 0326h ;# 
# 25705 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2RST equ 0327h ;# 
# 25821 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3 equ 0328h ;# 
# 25828 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3L equ 0328h ;# 
# 25948 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3H equ 0329h ;# 
# 26068 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3CON equ 032Ah ;# 
# 26073 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3CON equ 032Ah ;# 
# 26290 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3GCON equ 032Bh ;# 
# 26295 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3GCON equ 032Bh ;# 
# 26576 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3GATE equ 032Ch ;# 
# 26581 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3GATE equ 032Ch ;# 
# 26766 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3CLK equ 032Dh ;# 
# 26771 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3CLK equ 032Dh ;# 
# 26775 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR3 equ 032Dh ;# 
# 27012 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4TMR equ 032Eh ;# 
# 27017 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR4 equ 032Eh ;# 
# 27050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4PR equ 032Fh ;# 
# 27055 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR4 equ 032Fh ;# 
# 27088 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4CON equ 0330h ;# 
# 27234 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4HLT equ 0331h ;# 
# 27362 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4CLKCON equ 0332h ;# 
# 27367 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4CLK equ 0332h ;# 
# 27568 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4RST equ 0333h ;# 
# 27684 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5 equ 0334h ;# 
# 27691 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5L equ 0334h ;# 
# 27811 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5H equ 0335h ;# 
# 27931 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5CON equ 0336h ;# 
# 27936 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5CON equ 0336h ;# 
# 28153 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5GCON equ 0337h ;# 
# 28158 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5GCON equ 0337h ;# 
# 28439 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5GATE equ 0338h ;# 
# 28444 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5GATE equ 0338h ;# 
# 28629 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5CLK equ 0339h ;# 
# 28634 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5CLK equ 0339h ;# 
# 28638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR5 equ 0339h ;# 
# 28875 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6TMR equ 033Ah ;# 
# 28880 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR6 equ 033Ah ;# 
# 28913 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6PR equ 033Bh ;# 
# 28918 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR6 equ 033Bh ;# 
# 28951 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6CON equ 033Ch ;# 
# 29097 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6HLT equ 033Dh ;# 
# 29225 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6CLKCON equ 033Eh ;# 
# 29230 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6CLK equ 033Eh ;# 
# 29431 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6RST equ 033Fh ;# 
# 29547 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR1 equ 0340h ;# 
# 29554 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR1L equ 0340h ;# 
# 29574 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR1H equ 0341h ;# 
# 29594 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP1CON equ 0342h ;# 
# 29712 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP1CAP equ 0343h ;# 
# 29792 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR2 equ 0344h ;# 
# 29799 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR2L equ 0344h ;# 
# 29819 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR2H equ 0345h ;# 
# 29839 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP2CON equ 0346h ;# 
# 29957 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP2CAP equ 0347h ;# 
# 30037 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR3 equ 0348h ;# 
# 30044 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR3L equ 0348h ;# 
# 30064 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR3H equ 0349h ;# 
# 30084 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP3CON equ 034Ah ;# 
# 30202 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP3CAP equ 034Bh ;# 
# 30282 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPTMRS0 equ 034Ch ;# 
# 30352 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCDATA equ 034Fh ;# 
# 30359 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCDATL equ 034Fh ;# 
# 30421 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCDATH equ 0350h ;# 
# 30483 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCACC equ 0351h ;# 
# 30490 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCACCL equ 0351h ;# 
# 30552 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCACCH equ 0352h ;# 
# 30614 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCSHFT equ 0353h ;# 
# 30621 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCSHIFTL equ 0353h ;# 
# 30683 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCSHIFTH equ 0354h ;# 
# 30745 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCXOR equ 0355h ;# 
# 30752 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCXORL equ 0355h ;# 
# 30809 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCXORH equ 0356h ;# 
# 30871 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCCON0 equ 0357h ;# 
# 30931 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCCON1 equ 0358h ;# 
# 31009 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANLADR equ 035Ah ;# 
# 31016 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANLADRL equ 035Ah ;# 
# 31144 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANLADRH equ 035Bh ;# 
# 31272 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANLADRU equ 035Ch ;# 
# 31378 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANHADR equ 035Dh ;# 
# 31385 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANHADRL equ 035Dh ;# 
# 31513 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANHADRH equ 035Eh ;# 
# 31641 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANHADRU equ 035Fh ;# 
# 31745 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANCON0 equ 0360h ;# 
# 31805 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANTRIG equ 0361h ;# 
# 31865 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR0 equ 0362h ;# 
# 31917 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR1 equ 0363h ;# 
# 31979 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR2 equ 0364h ;# 
# 32024 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR3 equ 0365h ;# 
# 32086 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR4 equ 0366h ;# 
# 32137 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR5 equ 0367h ;# 
# 32194 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR6 equ 0368h ;# 
# 32256 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR7 equ 0369h ;# 
# 32313 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR8 equ 036Ah ;# 
# 32375 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR9 equ 036Bh ;# 
# 32420 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR10 equ 036Ch ;# 
# 32482 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR11 equ 036Dh ;# 
# 32544 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR12 equ 036Eh ;# 
# 32606 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR13 equ 036Fh ;# 
# 32668 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR14 equ 0370h ;# 
# 32701 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR15 equ 0371h ;# 
# 32739 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
STATUS_CSHAD equ 0373h ;# 
# 32828 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WREG_CSHAD equ 0374h ;# 
# 32848 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
BSR_CSHAD equ 0375h ;# 
# 32855 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SHADCON equ 0376h ;# 
# 32875 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
STATUS_SHAD equ 0377h ;# 
# 32964 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WREG_SHAD equ 0378h ;# 
# 32984 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
BSR_SHAD equ 0379h ;# 
# 32991 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLATH_SHAD equ 037Ah ;# 
# 33011 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLATU_SHAD equ 037Bh ;# 
# 33031 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0SH equ 037Ch ;# 
# 33038 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0L_SHAD equ 037Ch ;# 
# 33058 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0H_SHAD equ 037Dh ;# 
# 33078 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1SH equ 037Eh ;# 
# 33085 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1L_SHAD equ 037Eh ;# 
# 33105 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1H_SHAD equ 037Fh ;# 
# 33125 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2SH equ 0380h ;# 
# 33132 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2L_SHAD equ 0380h ;# 
# 33152 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2H_SHAD equ 0381h ;# 
# 33172 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODSH equ 0382h ;# 
# 33179 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODL_SHAD equ 0382h ;# 
# 33199 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODH_SHAD equ 0383h ;# 
# 33219 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1CLK equ 03BCh ;# 
# 33224 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1CLKCON equ 03BCh ;# 
# 33273 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1ISM equ 03BDh ;# 
# 33278 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1DAT equ 03BDh ;# 
# 33391 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1DBR equ 03BEh ;# 
# 33495 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1DBF equ 03BFh ;# 
# 33599 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1CON0 equ 03C0h ;# 
# 33700 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1CON1 equ 03C1h ;# 
# 33778 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1AS0 equ 03C2h ;# 
# 33940 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1AS1 equ 03C3h ;# 
# 34002 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1STR equ 03C4h ;# 
# 34114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2CLK equ 03C5h ;# 
# 34119 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2CLKCON equ 03C5h ;# 
# 34168 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2ISM equ 03C6h ;# 
# 34173 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2DAT equ 03C6h ;# 
# 34286 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2DBR equ 03C7h ;# 
# 34390 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2DBF equ 03C8h ;# 
# 34494 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2CON0 equ 03C9h ;# 
# 34595 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2CON1 equ 03CAh ;# 
# 34673 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2AS0 equ 03CBh ;# 
# 34835 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2AS1 equ 03CCh ;# 
# 34897 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2STR equ 03CDh ;# 
# 35009 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3CLK equ 03CEh ;# 
# 35014 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3CLKCON equ 03CEh ;# 
# 35063 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3ISM equ 03CFh ;# 
# 35068 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3DAT equ 03CFh ;# 
# 35181 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3DBR equ 03D0h ;# 
# 35285 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3DBF equ 03D1h ;# 
# 35389 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3CON0 equ 03D2h ;# 
# 35490 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3CON1 equ 03D3h ;# 
# 35568 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3AS0 equ 03D4h ;# 
# 35730 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3AS1 equ 03D5h ;# 
# 35792 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3STR equ 03D6h ;# 
# 35904 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FVRCON equ 03D7h ;# 
# 35993 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCPCON equ 03D8h ;# 
# 35998 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCP equ 03D8h ;# 
# 36093 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADLTH equ 03D9h ;# 
# 36100 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADLTHL equ 03D9h ;# 
# 36228 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADLTHH equ 03DAh ;# 
# 36356 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADUTH equ 03DBh ;# 
# 36363 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADUTHL equ 03DBh ;# 
# 36491 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADUTHH equ 03DCh ;# 
# 36619 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADERR equ 03DDh ;# 
# 36626 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADERRL equ 03DDh ;# 
# 36754 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADERRH equ 03DEh ;# 
# 36882 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADSTPT equ 03DFh ;# 
# 36889 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADSTPTL equ 03DFh ;# 
# 37017 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADSTPTH equ 03E0h ;# 
# 37145 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADFLTR equ 03E1h ;# 
# 37152 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADFLTRL equ 03E1h ;# 
# 37280 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADFLTRH equ 03E2h ;# 
# 37410 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACC equ 03E3h ;# 
# 37417 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACCL equ 03E3h ;# 
# 37545 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACCH equ 03E4h ;# 
# 37673 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACCU equ 03E5h ;# 
# 37801 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCNT equ 03E6h ;# 
# 37929 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADRPT equ 03E7h ;# 
# 38057 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREV equ 03E8h ;# 
# 38064 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREVL equ 03E8h ;# 
# 38192 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREVH equ 03E9h ;# 
# 38320 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADRES equ 03EAh ;# 
# 38327 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADRESL equ 03EAh ;# 
# 38455 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADRESH equ 03EBh ;# 
# 38575 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPCH equ 03ECh ;# 
# 38633 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACQ equ 03EEh ;# 
# 38640 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACQL equ 03EEh ;# 
# 38768 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACQH equ 03EFh ;# 
# 38860 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCAP equ 03F0h ;# 
# 38912 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPRE equ 03F1h ;# 
# 38919 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREL equ 03F1h ;# 
# 39047 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREH equ 03F2h ;# 
# 39139 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCON0 equ 03F3h ;# 
# 39257 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCON1 equ 03F4h ;# 
# 39323 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCON2 equ 03F5h ;# 
# 39465 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCON3 equ 03F6h ;# 
# 39595 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADSTAT equ 03F7h ;# 
# 39727 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADREF equ 03F8h ;# 
# 39809 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACT equ 03F9h ;# 
# 39913 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCLK equ 03FAh ;# 
# 40017 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELA equ 0400h ;# 
# 40079 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUA equ 0401h ;# 
# 40141 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONA equ 0402h ;# 
# 40203 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONA equ 0403h ;# 
# 40265 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLA equ 0404h ;# 
# 40327 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCAP equ 0405h ;# 
# 40389 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCAN equ 0406h ;# 
# 40451 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCAF equ 0407h ;# 
# 40513 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELB equ 0408h ;# 
# 40575 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUB equ 0409h ;# 
# 40637 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONB equ 040Ah ;# 
# 40699 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONB equ 040Bh ;# 
# 40761 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLB equ 040Ch ;# 
# 40823 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCBP equ 040Dh ;# 
# 40885 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCBN equ 040Eh ;# 
# 40947 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCBF equ 040Fh ;# 
# 41009 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELC equ 0410h ;# 
# 41071 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUC equ 0411h ;# 
# 41133 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONC equ 0412h ;# 
# 41195 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONC equ 0413h ;# 
# 41257 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLC equ 0414h ;# 
# 41319 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCCP equ 0415h ;# 
# 41381 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCCN equ 0416h ;# 
# 41443 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCCF equ 0417h ;# 
# 41505 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELD equ 0418h ;# 
# 41567 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUD equ 0419h ;# 
# 41629 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCOND equ 041Ah ;# 
# 41691 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCOND equ 041Bh ;# 
# 41753 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLD equ 041Ch ;# 
# 41815 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELE equ 0420h ;# 
# 41847 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUE equ 0421h ;# 
# 41885 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONE equ 0422h ;# 
# 41917 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONE equ 0423h ;# 
# 41949 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLE equ 0424h ;# 
# 41987 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCEP equ 0425h ;# 
# 42008 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCEN equ 0426h ;# 
# 42029 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCEF equ 0427h ;# 
# 42050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELF equ 0428h ;# 
# 42112 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUF equ 0429h ;# 
# 42174 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONF equ 042Ah ;# 
# 42236 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONF equ 042Bh ;# 
# 42298 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLF equ 042Ch ;# 
# 42362 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1ACC equ 0440h ;# 
# 42369 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1ACCL equ 0440h ;# 
# 42497 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1ACCH equ 0441h ;# 
# 42625 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1ACCU equ 0442h ;# 
# 42707 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1INC equ 0443h ;# 
# 42714 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1INCL equ 0443h ;# 
# 42842 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1INCH equ 0444h ;# 
# 42970 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1INCU equ 0445h ;# 
# 43050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1CON equ 0446h ;# 
# 43118 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1CLK equ 0447h ;# 
# 43260 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2ACC equ 0448h ;# 
# 43267 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2ACCL equ 0448h ;# 
# 43395 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2ACCH equ 0449h ;# 
# 43523 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2ACCU equ 044Ah ;# 
# 43605 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2INC equ 044Bh ;# 
# 43612 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2INCL equ 044Bh ;# 
# 43740 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2INCH equ 044Ch ;# 
# 43868 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2INCU equ 044Dh ;# 
# 43948 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2CON equ 044Eh ;# 
# 44016 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2CLK equ 044Fh ;# 
# 44158 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3ACC equ 0450h ;# 
# 44165 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3ACCL equ 0450h ;# 
# 44293 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3ACCH equ 0451h ;# 
# 44421 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3ACCU equ 0452h ;# 
# 44503 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3INC equ 0453h ;# 
# 44510 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3INCL equ 0453h ;# 
# 44638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3INCH equ 0454h ;# 
# 44766 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3INCU equ 0455h ;# 
# 44846 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3CON equ 0456h ;# 
# 44914 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3CLK equ 0457h ;# 
# 45054 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTLOCK equ 0459h ;# 
# 45076 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTAD equ 045Ah ;# 
# 45083 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTADL equ 045Ah ;# 
# 45145 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTADH equ 045Bh ;# 
# 45207 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTADU equ 045Ch ;# 
# 45253 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTBASE equ 045Dh ;# 
# 45260 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTBASEL equ 045Dh ;# 
# 45322 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTBASEH equ 045Eh ;# 
# 45384 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTBASEU equ 045Fh ;# 
# 45428 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1ERS equ 0460h ;# 
# 45498 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1CLK equ 0461h ;# 
# 45568 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1LDS equ 0462h ;# 
# 45638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1PR equ 0463h ;# 
# 45645 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1PRL equ 0463h ;# 
# 45665 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1PRH equ 0464h ;# 
# 45685 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1CPRE equ 0465h ;# 
# 45705 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1PIPOS equ 0466h ;# 
# 45725 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1GIR equ 0467h ;# 
# 45751 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1GIE equ 0468h ;# 
# 45777 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1CON equ 0469h ;# 
# 45816 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1CFG equ 046Ah ;# 
# 45875 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P1 equ 046Bh ;# 
# 45882 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P1L equ 046Bh ;# 
# 45902 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P1H equ 046Ch ;# 
# 45922 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P2 equ 046Dh ;# 
# 45929 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P2L equ 046Dh ;# 
# 45949 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P2H equ 046Eh ;# 
# 45969 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2ERS equ 046Fh ;# 
# 46039 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2CLK equ 0470h ;# 
# 46109 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2LDS equ 0471h ;# 
# 46179 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2PR equ 0472h ;# 
# 46186 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2PRL equ 0472h ;# 
# 46206 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2PRH equ 0473h ;# 
# 46226 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2CPRE equ 0474h ;# 
# 46246 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2PIPOS equ 0475h ;# 
# 46266 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2GIR equ 0476h ;# 
# 46292 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2GIE equ 0477h ;# 
# 46318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2CON equ 0478h ;# 
# 46357 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1CFG equ 0479h ;# 
# 46416 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P1 equ 047Ah ;# 
# 46423 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P1L equ 047Ah ;# 
# 46443 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P1H equ 047Bh ;# 
# 46463 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P2 equ 047Ch ;# 
# 46470 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P2L equ 047Ch ;# 
# 46490 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P2H equ 047Dh ;# 
# 46510 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3ERS equ 047Eh ;# 
# 46580 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3CLK equ 047Fh ;# 
# 46650 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3LDS equ 0480h ;# 
# 46720 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3PR equ 0481h ;# 
# 46727 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3PRL equ 0481h ;# 
# 46747 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3PRH equ 0482h ;# 
# 46767 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3CPRE equ 0483h ;# 
# 46787 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3PIPOS equ 0484h ;# 
# 46807 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3GIR equ 0485h ;# 
# 46833 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3GIE equ 0486h ;# 
# 46859 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3CON equ 0487h ;# 
# 46898 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1CFG equ 0488h ;# 
# 46957 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P1 equ 0489h ;# 
# 46964 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P1L equ 0489h ;# 
# 46984 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P1H equ 048Ah ;# 
# 47004 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P2 equ 048Bh ;# 
# 47011 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P2L equ 048Bh ;# 
# 47031 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P2H equ 048Ch ;# 
# 47051 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWMLOAD equ 049Ch ;# 
# 47083 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWMEN equ 049Dh ;# 
# 47115 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE0 equ 049Eh ;# 
# 47167 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE1 equ 049Fh ;# 
# 47229 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE2 equ 04A0h ;# 
# 47274 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE3 equ 04A1h ;# 
# 47336 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE4 equ 04A2h ;# 
# 47387 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE5 equ 04A3h ;# 
# 47444 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE6 equ 04A4h ;# 
# 47506 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE7 equ 04A5h ;# 
# 47563 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE8 equ 04A6h ;# 
# 47625 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE9 equ 04A7h ;# 
# 47670 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE10 equ 04A8h ;# 
# 47732 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE11 equ 04A9h ;# 
# 47794 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE12 equ 04AAh ;# 
# 47856 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE13 equ 04ABh ;# 
# 47918 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE14 equ 04ACh ;# 
# 47951 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE15 equ 04ADh ;# 
# 47989 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR0 equ 04AEh ;# 
# 48041 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR1 equ 04AFh ;# 
# 48103 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR2 equ 04B0h ;# 
# 48148 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR3 equ 04B1h ;# 
# 48210 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR4 equ 04B2h ;# 
# 48261 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR5 equ 04B3h ;# 
# 48318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR6 equ 04B4h ;# 
# 48380 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR7 equ 04B5h ;# 
# 48437 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR8 equ 04B6h ;# 
# 48499 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR9 equ 04B7h ;# 
# 48544 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR10 equ 04B8h ;# 
# 48606 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR11 equ 04B9h ;# 
# 48668 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR12 equ 04BAh ;# 
# 48730 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR13 equ 04BBh ;# 
# 48792 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR14 equ 04BCh ;# 
# 48825 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR15 equ 04BDh ;# 
# 48863 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATA equ 04BEh ;# 
# 48925 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATB equ 04BFh ;# 
# 48987 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATC equ 04C0h ;# 
# 49049 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATD equ 04C1h ;# 
# 49111 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATE equ 04C2h ;# 
# 49143 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATF equ 04C3h ;# 
# 49205 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISA equ 04C6h ;# 
# 49267 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISB equ 04C7h ;# 
# 49329 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISC equ 04C8h ;# 
# 49391 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISD equ 04C9h ;# 
# 49453 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISE equ 04CAh ;# 
# 49485 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISF equ 04CBh ;# 
# 49547 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTA equ 04CEh ;# 
# 49609 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTB equ 04CFh ;# 
# 49671 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTC equ 04D0h ;# 
# 49733 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTD equ 04D1h ;# 
# 49795 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTE equ 04D2h ;# 
# 49833 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTF equ 04D3h ;# 
# 49895 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INTCON0 equ 04D6h ;# 
# 49955 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INTCON1 equ 04D7h ;# 
# 49991 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
STATUS equ 04D8h ;# 
# 50080 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2 equ 04D9h ;# 
# 50087 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2L equ 04D9h ;# 
# 50107 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2H equ 04DAh ;# 
# 50114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PLUSW2 equ 04DBh ;# 
# 50134 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PREINC2 equ 04DCh ;# 
# 50154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTDEC2 equ 04DDh ;# 
# 50174 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTINC2 equ 04DEh ;# 
# 50194 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INDF2 equ 04DFh ;# 
# 50214 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
BSR equ 04E0h ;# 
# 50221 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1 equ 04E1h ;# 
# 50228 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1L equ 04E1h ;# 
# 50248 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1H equ 04E2h ;# 
# 50255 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PLUSW1 equ 04E3h ;# 
# 50275 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PREINC1 equ 04E4h ;# 
# 50295 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTDEC1 equ 04E5h ;# 
# 50315 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTINC1 equ 04E6h ;# 
# 50335 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INDF1 equ 04E7h ;# 
# 50355 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WREG equ 04E8h ;# 
# 50393 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0 equ 04E9h ;# 
# 50400 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0L equ 04E9h ;# 
# 50420 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0H equ 04EAh ;# 
# 50427 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PLUSW0 equ 04EBh ;# 
# 50447 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PREINC0 equ 04ECh ;# 
# 50467 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTDEC0 equ 04EDh ;# 
# 50487 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTINC0 equ 04EEh ;# 
# 50507 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INDF0 equ 04EFh ;# 
# 50527 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCON0 equ 04F0h ;# 
# 50680 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCON1 equ 04F1h ;# 
# 50747 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CPUDOZE equ 04F2h ;# 
# 50812 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PROD equ 04F3h ;# 
# 50819 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODL equ 04F3h ;# 
# 50839 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODH equ 04F4h ;# 
# 50859 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TABLAT equ 04F5h ;# 
# 50881 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TBLPTR equ 04F6h ;# 
# 50888 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TBLPTRL equ 04F6h ;# 
# 50908 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TBLPTRH equ 04F7h ;# 
# 50928 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TBLPTRU equ 04F8h ;# 
# 50959 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLAT equ 04F9h ;# 
# 50966 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCL equ 04F9h ;# 
# 50986 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLATH equ 04FAh ;# 
# 51006 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLATU equ 04FBh ;# 
# 51026 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
STKPTR equ 04FCh ;# 
# 51124 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TOS equ 04FDh ;# 
# 51131 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TOSL equ 04FDh ;# 
# 51151 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TOSH equ 04FEh ;# 
# 51171 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TOSU equ 04FFh ;# 
# 328 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLKRCON equ 039h ;# 
# 432 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLKRCLK equ 03Ah ;# 
# 516 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMCON0 equ 040h ;# 
# 560 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMCON1 equ 041h ;# 
# 595 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMLOCK equ 042h ;# 
# 617 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMADR equ 043h ;# 
# 624 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMADRL equ 043h ;# 
# 694 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMADRH equ 044h ;# 
# 764 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMADRU equ 045h ;# 
# 822 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMDAT equ 046h ;# 
# 829 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMDATL equ 046h ;# 
# 899 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NVMDATH equ 047h ;# 
# 969 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
VREGCON equ 048h ;# 
# 1023 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
BORCON equ 049h ;# 
# 1050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
HLVDCON0 equ 04Ah ;# 
# 1130 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
HLVDCON1 equ 04Bh ;# 
# 1202 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ZCDCON equ 04Ch ;# 
# 1282 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD0 equ 060h ;# 
# 1339 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD1 equ 061h ;# 
# 1401 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD3 equ 063h ;# 
# 1452 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD4 equ 064h ;# 
# 1508 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD5 equ 065h ;# 
# 1559 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD6 equ 066h ;# 
# 1621 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD7 equ 067h ;# 
# 1683 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PMD8 equ 068h ;# 
# 1733 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CON0 equ 06Ah ;# 
# 1801 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CON1 equ 06Bh ;# 
# 1867 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1SRC equ 06Ch ;# 
# 1971 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CARL equ 06Dh ;# 
# 2063 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CARH equ 06Eh ;# 
# 2155 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CMOUT equ 06Fh ;# 
# 2181 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM1CON0 equ 070h ;# 
# 2261 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM1CON1 equ 071h ;# 
# 2301 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM1NCH equ 072h ;# 
# 2361 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM1PCH equ 073h ;# 
# 2421 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM2CON0 equ 074h ;# 
# 2501 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM2CON1 equ 075h ;# 
# 2541 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM2NCH equ 076h ;# 
# 2601 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CM2PCH equ 077h ;# 
# 2661 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTCON0 equ 078h ;# 
# 2772 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTCON1 equ 079h ;# 
# 2892 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTPS equ 07Ah ;# 
# 2899 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTPSL equ 07Ah ;# 
# 2977 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTPSH equ 07Bh ;# 
# 3055 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WDTTMR equ 07Ch ;# 
# 3152 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DAC1DAT equ 07Dh ;# 
# 3159 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DAC1DATL equ 07Dh ;# 
# 3237 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DAC1CON equ 07Fh ;# 
# 3340 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1RXB equ 080h ;# 
# 3410 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TXB equ 081h ;# 
# 3480 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TCNT equ 082h ;# 
# 3487 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TCNTL equ 082h ;# 
# 3507 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TCNTH equ 083h ;# 
# 3527 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1CON0 equ 084h ;# 
# 3593 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1CON1 equ 085h ;# 
# 3695 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1CON2 equ 086h ;# 
# 3773 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1STATUS equ 087h ;# 
# 3855 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1TWIDTH equ 088h ;# 
# 3895 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1BAUD equ 089h ;# 
# 3965 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1INTF equ 08Ah ;# 
# 4057 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1INTE equ 08Bh ;# 
# 4149 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1CLK equ 08Ch ;# 
# 4241 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2RXB equ 08Dh ;# 
# 4311 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TXB equ 08Eh ;# 
# 4381 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TCNT equ 08Fh ;# 
# 4388 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TCNTL equ 08Fh ;# 
# 4408 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TCNTH equ 090h ;# 
# 4428 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2CON0 equ 091h ;# 
# 4494 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2CON1 equ 092h ;# 
# 4596 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2CON2 equ 093h ;# 
# 4674 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2STATUS equ 094h ;# 
# 4756 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2TWIDTH equ 095h ;# 
# 4796 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2BAUD equ 096h ;# 
# 4866 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2INTF equ 097h ;# 
# 4958 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2INTE equ 098h ;# 
# 5050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2CLK equ 099h ;# 
# 5142 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ACTCON equ 0ACh ;# 
# 5212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCCON1 equ 0ADh ;# 
# 5282 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCCON2 equ 0AEh ;# 
# 5352 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCCON3 equ 0AFh ;# 
# 5392 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCTUNE equ 0B0h ;# 
# 5450 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCFRQ equ 0B1h ;# 
# 5455 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCFREQ equ 0B1h ;# 
# 5540 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCSTAT equ 0B2h ;# 
# 5545 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCSTAT1 equ 0B2h ;# 
# 5652 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
OSCEN equ 0B3h ;# 
# 5709 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRLOCK equ 0B4h ;# 
# 5729 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANPR equ 0B5h ;# 
# 5797 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA1PR equ 0B6h ;# 
# 5865 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA2PR equ 0B7h ;# 
# 5933 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA3PR equ 0B8h ;# 
# 6001 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA4PR equ 0B9h ;# 
# 6069 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA5PR equ 0BAh ;# 
# 6137 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMA6PR equ 0BBh ;# 
# 6205 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MAINPR equ 0BEh ;# 
# 6273 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ISRPR equ 0BFh ;# 
# 6341 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCDATA equ 0D4h ;# 
# 6403 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCSELECT equ 0D5h ;# 
# 6443 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnCON equ 0D6h ;# 
# 6513 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnPOL equ 0D7h ;# 
# 6558 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnSEL0 equ 0D8h ;# 
# 6628 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnSEL1 equ 0D9h ;# 
# 6698 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnSEL2 equ 0DAh ;# 
# 6768 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnSEL3 equ 0DBh ;# 
# 6838 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnGLS0 equ 0DCh ;# 
# 6900 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnGLS1 equ 0DDh ;# 
# 6962 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnGLS2 equ 0DEh ;# 
# 7024 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCnGLS3 equ 0DFh ;# 
# 7086 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMASELECT equ 0E8h ;# 
# 7126 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnBUF equ 0E9h ;# 
# 7196 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDCNT equ 0EAh ;# 
# 7203 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDCNTL equ 0EAh ;# 
# 7273 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDCNTH equ 0EBh ;# 
# 7319 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDPTR equ 0ECh ;# 
# 7326 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDPTRL equ 0ECh ;# 
# 7396 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDPTRH equ 0EDh ;# 
# 7466 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSZ equ 0EEh ;# 
# 7473 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSZL equ 0EEh ;# 
# 7543 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSZH equ 0EFh ;# 
# 7589 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSA equ 0F0h ;# 
# 7596 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSAL equ 0F0h ;# 
# 7666 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnDSAH equ 0F1h ;# 
# 7736 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSCNT equ 0F2h ;# 
# 7743 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSCNTL equ 0F2h ;# 
# 7813 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSCNTH equ 0F3h ;# 
# 7861 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSPTR equ 0F4h ;# 
# 7868 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSPTRL equ 0F4h ;# 
# 7938 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSPTRH equ 0F5h ;# 
# 8008 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSPTRU equ 0F6h ;# 
# 8066 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSZ equ 0F7h ;# 
# 8073 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSZL equ 0F7h ;# 
# 8143 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSZH equ 0F8h ;# 
# 8191 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSA equ 0F9h ;# 
# 8198 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSAL equ 0F9h ;# 
# 8268 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSAH equ 0FAh ;# 
# 8338 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSSAU equ 0FBh ;# 
# 8396 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnCON0 equ 0FCh ;# 
# 8442 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnCON1 equ 0FDh ;# 
# 8486 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnAIRQ equ 0FEh ;# 
# 8556 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
DMAnSIRQ equ 0FFh ;# 
# 8626 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PPSLOCK equ 0200h ;# 
# 8646 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA0PPS equ 0201h ;# 
# 8702 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA1PPS equ 0202h ;# 
# 8758 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA2PPS equ 0203h ;# 
# 8814 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA3PPS equ 0204h ;# 
# 8870 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA4PPS equ 0205h ;# 
# 8926 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA5PPS equ 0206h ;# 
# 8982 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA6PPS equ 0207h ;# 
# 9038 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RA7PPS equ 0208h ;# 
# 9094 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB0PPS equ 0209h ;# 
# 9150 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB1PPS equ 020Ah ;# 
# 9206 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB2PPS equ 020Bh ;# 
# 9262 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB3PPS equ 020Ch ;# 
# 9318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB4PPS equ 020Dh ;# 
# 9374 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB5PPS equ 020Eh ;# 
# 9430 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB6PPS equ 020Fh ;# 
# 9486 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB7PPS equ 0210h ;# 
# 9542 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC0PPS equ 0211h ;# 
# 9598 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC1PPS equ 0212h ;# 
# 9654 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC2PPS equ 0213h ;# 
# 9710 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC3PPS equ 0214h ;# 
# 9766 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC4PPS equ 0215h ;# 
# 9822 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC5PPS equ 0216h ;# 
# 9878 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC6PPS equ 0217h ;# 
# 9934 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC7PPS equ 0218h ;# 
# 9990 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD0PPS equ 0219h ;# 
# 10046 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD1PPS equ 021Ah ;# 
# 10102 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD2PPS equ 021Bh ;# 
# 10158 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD3PPS equ 021Ch ;# 
# 10214 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD4PPS equ 021Dh ;# 
# 10270 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD5PPS equ 021Eh ;# 
# 10326 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD6PPS equ 021Fh ;# 
# 10382 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RD7PPS equ 0220h ;# 
# 10438 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RE0PPS equ 0221h ;# 
# 10494 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RE1PPS equ 0222h ;# 
# 10550 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RE2PPS equ 0223h ;# 
# 10606 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF0PPS equ 0229h ;# 
# 10662 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF1PPS equ 022Ah ;# 
# 10718 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF2PPS equ 022Bh ;# 
# 10774 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF3PPS equ 022Ch ;# 
# 10830 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF4PPS equ 022Dh ;# 
# 10886 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF5PPS equ 022Eh ;# 
# 10942 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF6PPS equ 022Fh ;# 
# 10998 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RF7PPS equ 0230h ;# 
# 11054 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INT0PPS equ 023Eh ;# 
# 11114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INT1PPS equ 023Fh ;# 
# 11180 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INT2PPS equ 0240h ;# 
# 11252 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T0CKIPPS equ 0241h ;# 
# 11324 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1CKIPPS equ 0242h ;# 
# 11396 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1GPPS equ 0243h ;# 
# 11462 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3CKIPPS equ 0244h ;# 
# 11534 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3GPPS equ 0245h ;# 
# 11600 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5CKIPPS equ 0246h ;# 
# 11672 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5GPPS equ 0247h ;# 
# 11738 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2INPPS equ 0248h ;# 
# 11804 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4INPPS equ 0249h ;# 
# 11870 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6INPPS equ 024Ah ;# 
# 11936 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP1PPS equ 024Fh ;# 
# 12008 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP2PPS equ 0250h ;# 
# 12080 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP3PPS equ 0251h ;# 
# 12146 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1ERSPPS equ 0253h ;# 
# 12212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2ERSPPS equ 0254h ;# 
# 12284 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3ERSPPS equ 0255h ;# 
# 12350 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWMIN0PPS equ 0257h ;# 
# 12422 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWMIN1PPS equ 0258h ;# 
# 12494 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1WINPPS equ 0259h ;# 
# 12566 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1SIGPPS equ 025Ah ;# 
# 12638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1PPS equ 025Bh ;# 
# 12643 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1INPPS equ 025Bh ;# 
# 12848 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2PPS equ 025Ch ;# 
# 12853 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2INPPS equ 025Ch ;# 
# 13058 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3PPS equ 025Dh ;# 
# 13063 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3INPPS equ 025Dh ;# 
# 13268 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CARLPPS equ 025Eh ;# 
# 13273 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MDCARLPPS equ 025Eh ;# 
# 13398 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1CARHPPS equ 025Fh ;# 
# 13403 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MDCARHPPS equ 025Fh ;# 
# 13528 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MD1SRCPPS equ 0260h ;# 
# 13533 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
MDSRCPPS equ 0260h ;# 
# 13658 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN0PPS equ 0261h ;# 
# 13724 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN1PPS equ 0262h ;# 
# 13790 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN2PPS equ 0263h ;# 
# 13856 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN3PPS equ 0264h ;# 
# 13922 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN4PPS equ 0265h ;# 
# 13988 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN5PPS equ 0266h ;# 
# 14054 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN6PPS equ 0267h ;# 
# 14120 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CLCIN7PPS equ 0268h ;# 
# 14186 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACTPPS equ 0269h ;# 
# 14252 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1SCKPPS equ 026Ah ;# 
# 14318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1SDIPPS equ 026Bh ;# 
# 14384 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI1SSPPS equ 026Ch ;# 
# 14450 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2SCKPPS equ 026Dh ;# 
# 14516 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2SDIPPS equ 026Eh ;# 
# 14582 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SPI2SSPPS equ 026Fh ;# 
# 14648 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1SDAPPS equ 0270h ;# 
# 14714 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1SCLPPS equ 0271h ;# 
# 14780 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1RXPPS equ 0272h ;# 
# 14852 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1CTSPPS equ 0273h ;# 
# 14924 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2RXPPS equ 0274h ;# 
# 14990 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2CTSPPS equ 0275h ;# 
# 15056 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3RXPPS equ 0276h ;# 
# 15128 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3CTSPPS equ 0277h ;# 
# 15200 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4RXPPS equ 0278h ;# 
# 15266 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4CTSPPS equ 0279h ;# 
# 15332 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5RXPPS equ 027Ah ;# 
# 15404 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5CTSPPS equ 027Bh ;# 
# 15476 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC4I2C equ 0286h ;# 
# 15608 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RC3I2C equ 0287h ;# 
# 15740 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB2I2C equ 0288h ;# 
# 15872 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
RB1I2C equ 0289h ;# 
# 16004 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1RXB equ 028Bh ;# 
# 16024 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1TXB equ 028Ch ;# 
# 16044 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CNT equ 028Dh ;# 
# 16114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADB0 equ 028Eh ;# 
# 16134 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADB1 equ 028Fh ;# 
# 16154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADR0 equ 0290h ;# 
# 16174 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADR1 equ 0291h ;# 
# 16195 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADR2 equ 0292h ;# 
# 16215 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ADR3 equ 0293h ;# 
# 16236 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CON0 equ 0294h ;# 
# 16313 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CON1 equ 0295h ;# 
# 16370 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CON2 equ 0296h ;# 
# 16446 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1ERR equ 0297h ;# 
# 16536 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1STAT0 equ 0298h ;# 
# 16626 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1STAT1 equ 0299h ;# 
# 16673 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1PIR equ 029Ah ;# 
# 16775 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1PIE equ 029Bh ;# 
# 16877 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1CLK equ 029Ch ;# 
# 16969 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
I2C1BTO equ 029Dh ;# 
# 17049 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1RXB equ 02A1h ;# 
# 17054 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1RXBL equ 02A1h ;# 
# 17087 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1RXCHK equ 02A2h ;# 
# 17107 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1TXB equ 02A3h ;# 
# 17112 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1TXBL equ 02A3h ;# 
# 17145 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1TXCHK equ 02A4h ;# 
# 17165 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P1 equ 02A5h ;# 
# 17172 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P1L equ 02A5h ;# 
# 17192 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P1H equ 02A6h ;# 
# 17212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P2 equ 02A7h ;# 
# 17219 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P2L equ 02A7h ;# 
# 17239 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P2H equ 02A8h ;# 
# 17259 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P3 equ 02A9h ;# 
# 17266 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P3L equ 02A9h ;# 
# 17286 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1P3H equ 02AAh ;# 
# 17306 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1CON0 equ 02ABh ;# 
# 17434 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1CON1 equ 02ACh ;# 
# 17514 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1CON2 equ 02ADh ;# 
# 17656 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1BRG equ 02AEh ;# 
# 17663 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1BRGL equ 02AEh ;# 
# 17683 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1BRGH equ 02AFh ;# 
# 17703 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1FIFO equ 02B0h ;# 
# 17833 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1UIR equ 02B1h ;# 
# 17889 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1ERRIR equ 02B2h ;# 
# 18001 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U1ERRIE equ 02B3h ;# 
# 18113 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2RXB equ 02B4h ;# 
# 18118 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2RXBL equ 02B4h ;# 
# 18151 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2TXB equ 02B6h ;# 
# 18156 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2TXBL equ 02B6h ;# 
# 18189 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P1 equ 02B8h ;# 
# 18196 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P1L equ 02B8h ;# 
# 18216 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P2 equ 02BAh ;# 
# 18223 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P2L equ 02BAh ;# 
# 18243 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P3 equ 02BCh ;# 
# 18250 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2P3L equ 02BCh ;# 
# 18270 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2CON0 equ 02BEh ;# 
# 18386 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2CON1 equ 02BFh ;# 
# 18466 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2CON2 equ 02C0h ;# 
# 18598 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2BRG equ 02C1h ;# 
# 18605 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2BRGL equ 02C1h ;# 
# 18625 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2BRGH equ 02C2h ;# 
# 18645 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2FIFO equ 02C3h ;# 
# 18775 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2UIR equ 02C4h ;# 
# 18831 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2ERRIR equ 02C5h ;# 
# 18943 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U2ERRIE equ 02C6h ;# 
# 19055 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3RXB equ 02C7h ;# 
# 19060 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3RXBL equ 02C7h ;# 
# 19093 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3TXB equ 02C9h ;# 
# 19098 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3TXBL equ 02C9h ;# 
# 19131 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P1 equ 02CBh ;# 
# 19138 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P1L equ 02CBh ;# 
# 19158 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P2 equ 02CDh ;# 
# 19165 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P2L equ 02CDh ;# 
# 19185 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P3 equ 02CFh ;# 
# 19192 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3P3L equ 02CFh ;# 
# 19212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3CON0 equ 02D1h ;# 
# 19328 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3CON1 equ 02D2h ;# 
# 19408 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3CON2 equ 02D3h ;# 
# 19540 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3BRG equ 02D4h ;# 
# 19547 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3BRGL equ 02D4h ;# 
# 19567 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3BRGH equ 02D5h ;# 
# 19587 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3FIFO equ 02D6h ;# 
# 19717 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3UIR equ 02D7h ;# 
# 19773 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3ERRIR equ 02D8h ;# 
# 19885 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U3ERRIE equ 02D9h ;# 
# 19997 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4RXB equ 02DAh ;# 
# 20002 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4RXBL equ 02DAh ;# 
# 20035 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4TXB equ 02DCh ;# 
# 20040 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4TXBL equ 02DCh ;# 
# 20073 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P1 equ 02DEh ;# 
# 20080 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P1L equ 02DEh ;# 
# 20100 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P2 equ 02E0h ;# 
# 20107 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P2L equ 02E0h ;# 
# 20127 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P3 equ 02E2h ;# 
# 20134 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4P3L equ 02E2h ;# 
# 20154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4CON0 equ 02E4h ;# 
# 20270 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4CON1 equ 02E5h ;# 
# 20350 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4CON2 equ 02E6h ;# 
# 20482 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4BRG equ 02E7h ;# 
# 20489 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4BRGL equ 02E7h ;# 
# 20509 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4BRGH equ 02E8h ;# 
# 20529 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4FIFO equ 02E9h ;# 
# 20659 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4UIR equ 02EAh ;# 
# 20715 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4ERRIR equ 02EBh ;# 
# 20827 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U4ERRIE equ 02ECh ;# 
# 20939 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5RXB equ 02EDh ;# 
# 20944 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5RXBL equ 02EDh ;# 
# 20977 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5TXB equ 02EFh ;# 
# 20982 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5TXBL equ 02EFh ;# 
# 21015 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P1 equ 02F1h ;# 
# 21022 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P1L equ 02F1h ;# 
# 21042 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P2 equ 02F3h ;# 
# 21049 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P2L equ 02F3h ;# 
# 21069 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P3 equ 02F5h ;# 
# 21076 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5P3L equ 02F5h ;# 
# 21096 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5CON0 equ 02F7h ;# 
# 21212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5CON1 equ 02F8h ;# 
# 21292 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5CON2 equ 02F9h ;# 
# 21424 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5BRG equ 02FAh ;# 
# 21431 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5BRGL equ 02FAh ;# 
# 21451 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5BRGH equ 02FBh ;# 
# 21471 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5FIFO equ 02FCh ;# 
# 21601 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5UIR equ 02FDh ;# 
# 21657 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5ERRIR equ 02FEh ;# 
# 21769 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
U5ERRIE equ 02FFh ;# 
# 21883 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1TMR equ 0300h ;# 
# 21890 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1TMRL equ 0300h ;# 
# 21960 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1TMRH equ 0301h ;# 
# 22030 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1TMRU equ 0302h ;# 
# 22102 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPR equ 0303h ;# 
# 22109 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPRL equ 0303h ;# 
# 22179 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPRH equ 0304h ;# 
# 22249 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPRU equ 0305h ;# 
# 22321 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPW equ 0306h ;# 
# 22328 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPWL equ 0306h ;# 
# 22398 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPWH equ 0307h ;# 
# 22468 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CPWU equ 0308h ;# 
# 22540 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1PR equ 0309h ;# 
# 22547 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1PRL equ 0309h ;# 
# 22617 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1PRH equ 030Ah ;# 
# 22687 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1PRU equ 030Bh ;# 
# 22757 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CON0 equ 030Ch ;# 
# 22822 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CON1 equ 030Dh ;# 
# 22922 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1STAT equ 030Eh ;# 
# 23012 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1CLK equ 030Fh ;# 
# 23092 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1SIG equ 0310h ;# 
# 23196 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SMT1WIN equ 0311h ;# 
# 23300 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR0L equ 0318h ;# 
# 23305 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR0 equ 0318h ;# 
# 23438 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR0H equ 0319h ;# 
# 23443 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR0 equ 0319h ;# 
# 23692 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T0CON0 equ 031Ah ;# 
# 23816 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T0CON1 equ 031Bh ;# 
# 23958 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1 equ 031Ch ;# 
# 23965 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1L equ 031Ch ;# 
# 24085 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1H equ 031Dh ;# 
# 24205 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1CON equ 031Eh ;# 
# 24210 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1CON equ 031Eh ;# 
# 24427 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1GCON equ 031Fh ;# 
# 24432 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1GCON equ 031Fh ;# 
# 24713 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1GATE equ 0320h ;# 
# 24718 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1GATE equ 0320h ;# 
# 24903 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T1CLK equ 0321h ;# 
# 24908 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR1CLK equ 0321h ;# 
# 24912 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR1 equ 0321h ;# 
# 25149 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2TMR equ 0322h ;# 
# 25154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR2 equ 0322h ;# 
# 25187 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2PR equ 0323h ;# 
# 25192 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR2 equ 0323h ;# 
# 25225 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2CON equ 0324h ;# 
# 25371 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2HLT equ 0325h ;# 
# 25499 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2CLKCON equ 0326h ;# 
# 25504 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2CLK equ 0326h ;# 
# 25705 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T2RST equ 0327h ;# 
# 25821 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3 equ 0328h ;# 
# 25828 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3L equ 0328h ;# 
# 25948 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3H equ 0329h ;# 
# 26068 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3CON equ 032Ah ;# 
# 26073 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3CON equ 032Ah ;# 
# 26290 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3GCON equ 032Bh ;# 
# 26295 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3GCON equ 032Bh ;# 
# 26576 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3GATE equ 032Ch ;# 
# 26581 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3GATE equ 032Ch ;# 
# 26766 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T3CLK equ 032Dh ;# 
# 26771 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR3CLK equ 032Dh ;# 
# 26775 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR3 equ 032Dh ;# 
# 27012 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4TMR equ 032Eh ;# 
# 27017 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR4 equ 032Eh ;# 
# 27050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4PR equ 032Fh ;# 
# 27055 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR4 equ 032Fh ;# 
# 27088 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4CON equ 0330h ;# 
# 27234 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4HLT equ 0331h ;# 
# 27362 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4CLKCON equ 0332h ;# 
# 27367 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4CLK equ 0332h ;# 
# 27568 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T4RST equ 0333h ;# 
# 27684 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5 equ 0334h ;# 
# 27691 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5L equ 0334h ;# 
# 27811 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5H equ 0335h ;# 
# 27931 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5CON equ 0336h ;# 
# 27936 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5CON equ 0336h ;# 
# 28153 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5GCON equ 0337h ;# 
# 28158 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5GCON equ 0337h ;# 
# 28439 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5GATE equ 0338h ;# 
# 28444 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5GATE equ 0338h ;# 
# 28629 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T5CLK equ 0339h ;# 
# 28634 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR5CLK equ 0339h ;# 
# 28638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR5 equ 0339h ;# 
# 28875 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6TMR equ 033Ah ;# 
# 28880 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TMR6 equ 033Ah ;# 
# 28913 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6PR equ 033Bh ;# 
# 28918 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PR6 equ 033Bh ;# 
# 28951 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6CON equ 033Ch ;# 
# 29097 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6HLT equ 033Dh ;# 
# 29225 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6CLKCON equ 033Eh ;# 
# 29230 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6CLK equ 033Eh ;# 
# 29431 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
T6RST equ 033Fh ;# 
# 29547 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR1 equ 0340h ;# 
# 29554 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR1L equ 0340h ;# 
# 29574 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR1H equ 0341h ;# 
# 29594 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP1CON equ 0342h ;# 
# 29712 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP1CAP equ 0343h ;# 
# 29792 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR2 equ 0344h ;# 
# 29799 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR2L equ 0344h ;# 
# 29819 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR2H equ 0345h ;# 
# 29839 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP2CON equ 0346h ;# 
# 29957 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP2CAP equ 0347h ;# 
# 30037 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR3 equ 0348h ;# 
# 30044 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR3L equ 0348h ;# 
# 30064 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPR3H equ 0349h ;# 
# 30084 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP3CON equ 034Ah ;# 
# 30202 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCP3CAP equ 034Bh ;# 
# 30282 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CCPTMRS0 equ 034Ch ;# 
# 30352 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCDATA equ 034Fh ;# 
# 30359 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCDATL equ 034Fh ;# 
# 30421 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCDATH equ 0350h ;# 
# 30483 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCACC equ 0351h ;# 
# 30490 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCACCL equ 0351h ;# 
# 30552 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCACCH equ 0352h ;# 
# 30614 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCSHFT equ 0353h ;# 
# 30621 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCSHIFTL equ 0353h ;# 
# 30683 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCSHIFTH equ 0354h ;# 
# 30745 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCXOR equ 0355h ;# 
# 30752 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCXORL equ 0355h ;# 
# 30809 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCXORH equ 0356h ;# 
# 30871 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCCON0 equ 0357h ;# 
# 30931 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CRCCON1 equ 0358h ;# 
# 31009 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANLADR equ 035Ah ;# 
# 31016 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANLADRL equ 035Ah ;# 
# 31144 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANLADRH equ 035Bh ;# 
# 31272 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANLADRU equ 035Ch ;# 
# 31378 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANHADR equ 035Dh ;# 
# 31385 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANHADRL equ 035Dh ;# 
# 31513 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANHADRH equ 035Eh ;# 
# 31641 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANHADRU equ 035Fh ;# 
# 31745 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANCON0 equ 0360h ;# 
# 31805 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SCANTRIG equ 0361h ;# 
# 31865 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR0 equ 0362h ;# 
# 31917 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR1 equ 0363h ;# 
# 31979 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR2 equ 0364h ;# 
# 32024 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR3 equ 0365h ;# 
# 32086 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR4 equ 0366h ;# 
# 32137 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR5 equ 0367h ;# 
# 32194 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR6 equ 0368h ;# 
# 32256 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR7 equ 0369h ;# 
# 32313 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR8 equ 036Ah ;# 
# 32375 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR9 equ 036Bh ;# 
# 32420 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR10 equ 036Ch ;# 
# 32482 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR11 equ 036Dh ;# 
# 32544 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR12 equ 036Eh ;# 
# 32606 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR13 equ 036Fh ;# 
# 32668 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR14 equ 0370h ;# 
# 32701 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IPR15 equ 0371h ;# 
# 32739 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
STATUS_CSHAD equ 0373h ;# 
# 32828 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WREG_CSHAD equ 0374h ;# 
# 32848 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
BSR_CSHAD equ 0375h ;# 
# 32855 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SHADCON equ 0376h ;# 
# 32875 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
STATUS_SHAD equ 0377h ;# 
# 32964 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WREG_SHAD equ 0378h ;# 
# 32984 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
BSR_SHAD equ 0379h ;# 
# 32991 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLATH_SHAD equ 037Ah ;# 
# 33011 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLATU_SHAD equ 037Bh ;# 
# 33031 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0SH equ 037Ch ;# 
# 33038 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0L_SHAD equ 037Ch ;# 
# 33058 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0H_SHAD equ 037Dh ;# 
# 33078 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1SH equ 037Eh ;# 
# 33085 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1L_SHAD equ 037Eh ;# 
# 33105 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1H_SHAD equ 037Fh ;# 
# 33125 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2SH equ 0380h ;# 
# 33132 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2L_SHAD equ 0380h ;# 
# 33152 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2H_SHAD equ 0381h ;# 
# 33172 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODSH equ 0382h ;# 
# 33179 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODL_SHAD equ 0382h ;# 
# 33199 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODH_SHAD equ 0383h ;# 
# 33219 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1CLK equ 03BCh ;# 
# 33224 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1CLKCON equ 03BCh ;# 
# 33273 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1ISM equ 03BDh ;# 
# 33278 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1DAT equ 03BDh ;# 
# 33391 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1DBR equ 03BEh ;# 
# 33495 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1DBF equ 03BFh ;# 
# 33599 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1CON0 equ 03C0h ;# 
# 33700 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1CON1 equ 03C1h ;# 
# 33778 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1AS0 equ 03C2h ;# 
# 33940 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1AS1 equ 03C3h ;# 
# 34002 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG1STR equ 03C4h ;# 
# 34114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2CLK equ 03C5h ;# 
# 34119 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2CLKCON equ 03C5h ;# 
# 34168 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2ISM equ 03C6h ;# 
# 34173 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2DAT equ 03C6h ;# 
# 34286 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2DBR equ 03C7h ;# 
# 34390 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2DBF equ 03C8h ;# 
# 34494 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2CON0 equ 03C9h ;# 
# 34595 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2CON1 equ 03CAh ;# 
# 34673 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2AS0 equ 03CBh ;# 
# 34835 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2AS1 equ 03CCh ;# 
# 34897 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG2STR equ 03CDh ;# 
# 35009 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3CLK equ 03CEh ;# 
# 35014 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3CLKCON equ 03CEh ;# 
# 35063 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3ISM equ 03CFh ;# 
# 35068 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3DAT equ 03CFh ;# 
# 35181 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3DBR equ 03D0h ;# 
# 35285 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3DBF equ 03D1h ;# 
# 35389 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3CON0 equ 03D2h ;# 
# 35490 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3CON1 equ 03D3h ;# 
# 35568 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3AS0 equ 03D4h ;# 
# 35730 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3AS1 equ 03D5h ;# 
# 35792 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CWG3STR equ 03D6h ;# 
# 35904 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FVRCON equ 03D7h ;# 
# 35993 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCPCON equ 03D8h ;# 
# 35998 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCP equ 03D8h ;# 
# 36093 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADLTH equ 03D9h ;# 
# 36100 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADLTHL equ 03D9h ;# 
# 36228 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADLTHH equ 03DAh ;# 
# 36356 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADUTH equ 03DBh ;# 
# 36363 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADUTHL equ 03DBh ;# 
# 36491 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADUTHH equ 03DCh ;# 
# 36619 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADERR equ 03DDh ;# 
# 36626 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADERRL equ 03DDh ;# 
# 36754 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADERRH equ 03DEh ;# 
# 36882 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADSTPT equ 03DFh ;# 
# 36889 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADSTPTL equ 03DFh ;# 
# 37017 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADSTPTH equ 03E0h ;# 
# 37145 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADFLTR equ 03E1h ;# 
# 37152 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADFLTRL equ 03E1h ;# 
# 37280 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADFLTRH equ 03E2h ;# 
# 37410 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACC equ 03E3h ;# 
# 37417 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACCL equ 03E3h ;# 
# 37545 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACCH equ 03E4h ;# 
# 37673 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACCU equ 03E5h ;# 
# 37801 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCNT equ 03E6h ;# 
# 37929 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADRPT equ 03E7h ;# 
# 38057 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREV equ 03E8h ;# 
# 38064 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREVL equ 03E8h ;# 
# 38192 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREVH equ 03E9h ;# 
# 38320 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADRES equ 03EAh ;# 
# 38327 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADRESL equ 03EAh ;# 
# 38455 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADRESH equ 03EBh ;# 
# 38575 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPCH equ 03ECh ;# 
# 38633 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACQ equ 03EEh ;# 
# 38640 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACQL equ 03EEh ;# 
# 38768 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACQH equ 03EFh ;# 
# 38860 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCAP equ 03F0h ;# 
# 38912 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPRE equ 03F1h ;# 
# 38919 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREL equ 03F1h ;# 
# 39047 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADPREH equ 03F2h ;# 
# 39139 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCON0 equ 03F3h ;# 
# 39257 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCON1 equ 03F4h ;# 
# 39323 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCON2 equ 03F5h ;# 
# 39465 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCON3 equ 03F6h ;# 
# 39595 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADSTAT equ 03F7h ;# 
# 39727 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADREF equ 03F8h ;# 
# 39809 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADACT equ 03F9h ;# 
# 39913 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ADCLK equ 03FAh ;# 
# 40017 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELA equ 0400h ;# 
# 40079 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUA equ 0401h ;# 
# 40141 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONA equ 0402h ;# 
# 40203 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONA equ 0403h ;# 
# 40265 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLA equ 0404h ;# 
# 40327 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCAP equ 0405h ;# 
# 40389 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCAN equ 0406h ;# 
# 40451 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCAF equ 0407h ;# 
# 40513 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELB equ 0408h ;# 
# 40575 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUB equ 0409h ;# 
# 40637 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONB equ 040Ah ;# 
# 40699 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONB equ 040Bh ;# 
# 40761 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLB equ 040Ch ;# 
# 40823 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCBP equ 040Dh ;# 
# 40885 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCBN equ 040Eh ;# 
# 40947 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCBF equ 040Fh ;# 
# 41009 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELC equ 0410h ;# 
# 41071 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUC equ 0411h ;# 
# 41133 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONC equ 0412h ;# 
# 41195 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONC equ 0413h ;# 
# 41257 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLC equ 0414h ;# 
# 41319 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCCP equ 0415h ;# 
# 41381 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCCN equ 0416h ;# 
# 41443 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCCF equ 0417h ;# 
# 41505 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELD equ 0418h ;# 
# 41567 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUD equ 0419h ;# 
# 41629 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCOND equ 041Ah ;# 
# 41691 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCOND equ 041Bh ;# 
# 41753 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLD equ 041Ch ;# 
# 41815 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELE equ 0420h ;# 
# 41847 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUE equ 0421h ;# 
# 41885 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONE equ 0422h ;# 
# 41917 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONE equ 0423h ;# 
# 41949 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLE equ 0424h ;# 
# 41987 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCEP equ 0425h ;# 
# 42008 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCEN equ 0426h ;# 
# 42029 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IOCEF equ 0427h ;# 
# 42050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ANSELF equ 0428h ;# 
# 42112 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WPUF equ 0429h ;# 
# 42174 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
ODCONF equ 042Ah ;# 
# 42236 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
SLRCONF equ 042Bh ;# 
# 42298 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INLVLF equ 042Ch ;# 
# 42362 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1ACC equ 0440h ;# 
# 42369 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1ACCL equ 0440h ;# 
# 42497 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1ACCH equ 0441h ;# 
# 42625 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1ACCU equ 0442h ;# 
# 42707 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1INC equ 0443h ;# 
# 42714 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1INCL equ 0443h ;# 
# 42842 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1INCH equ 0444h ;# 
# 42970 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1INCU equ 0445h ;# 
# 43050 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1CON equ 0446h ;# 
# 43118 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO1CLK equ 0447h ;# 
# 43260 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2ACC equ 0448h ;# 
# 43267 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2ACCL equ 0448h ;# 
# 43395 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2ACCH equ 0449h ;# 
# 43523 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2ACCU equ 044Ah ;# 
# 43605 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2INC equ 044Bh ;# 
# 43612 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2INCL equ 044Bh ;# 
# 43740 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2INCH equ 044Ch ;# 
# 43868 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2INCU equ 044Dh ;# 
# 43948 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2CON equ 044Eh ;# 
# 44016 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO2CLK equ 044Fh ;# 
# 44158 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3ACC equ 0450h ;# 
# 44165 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3ACCL equ 0450h ;# 
# 44293 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3ACCH equ 0451h ;# 
# 44421 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3ACCU equ 0452h ;# 
# 44503 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3INC equ 0453h ;# 
# 44510 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3INCL equ 0453h ;# 
# 44638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3INCH equ 0454h ;# 
# 44766 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3INCU equ 0455h ;# 
# 44846 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3CON equ 0456h ;# 
# 44914 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
NCO3CLK equ 0457h ;# 
# 45054 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTLOCK equ 0459h ;# 
# 45076 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTAD equ 045Ah ;# 
# 45083 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTADL equ 045Ah ;# 
# 45145 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTADH equ 045Bh ;# 
# 45207 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTADU equ 045Ch ;# 
# 45253 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTBASE equ 045Dh ;# 
# 45260 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTBASEL equ 045Dh ;# 
# 45322 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTBASEH equ 045Eh ;# 
# 45384 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
IVTBASEU equ 045Fh ;# 
# 45428 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1ERS equ 0460h ;# 
# 45498 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1CLK equ 0461h ;# 
# 45568 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1LDS equ 0462h ;# 
# 45638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1PR equ 0463h ;# 
# 45645 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1PRL equ 0463h ;# 
# 45665 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1PRH equ 0464h ;# 
# 45685 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1CPRE equ 0465h ;# 
# 45705 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1PIPOS equ 0466h ;# 
# 45725 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1GIR equ 0467h ;# 
# 45751 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1GIE equ 0468h ;# 
# 45777 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1CON equ 0469h ;# 
# 45816 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1CFG equ 046Ah ;# 
# 45875 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P1 equ 046Bh ;# 
# 45882 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P1L equ 046Bh ;# 
# 45902 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P1H equ 046Ch ;# 
# 45922 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P2 equ 046Dh ;# 
# 45929 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P2L equ 046Dh ;# 
# 45949 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM1S1P2H equ 046Eh ;# 
# 45969 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2ERS equ 046Fh ;# 
# 46039 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2CLK equ 0470h ;# 
# 46109 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2LDS equ 0471h ;# 
# 46179 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2PR equ 0472h ;# 
# 46186 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2PRL equ 0472h ;# 
# 46206 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2PRH equ 0473h ;# 
# 46226 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2CPRE equ 0474h ;# 
# 46246 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2PIPOS equ 0475h ;# 
# 46266 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2GIR equ 0476h ;# 
# 46292 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2GIE equ 0477h ;# 
# 46318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2CON equ 0478h ;# 
# 46357 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1CFG equ 0479h ;# 
# 46416 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P1 equ 047Ah ;# 
# 46423 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P1L equ 047Ah ;# 
# 46443 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P1H equ 047Bh ;# 
# 46463 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P2 equ 047Ch ;# 
# 46470 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P2L equ 047Ch ;# 
# 46490 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM2S1P2H equ 047Dh ;# 
# 46510 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3ERS equ 047Eh ;# 
# 46580 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3CLK equ 047Fh ;# 
# 46650 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3LDS equ 0480h ;# 
# 46720 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3PR equ 0481h ;# 
# 46727 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3PRL equ 0481h ;# 
# 46747 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3PRH equ 0482h ;# 
# 46767 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3CPRE equ 0483h ;# 
# 46787 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3PIPOS equ 0484h ;# 
# 46807 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3GIR equ 0485h ;# 
# 46833 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3GIE equ 0486h ;# 
# 46859 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3CON equ 0487h ;# 
# 46898 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1CFG equ 0488h ;# 
# 46957 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P1 equ 0489h ;# 
# 46964 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P1L equ 0489h ;# 
# 46984 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P1H equ 048Ah ;# 
# 47004 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P2 equ 048Bh ;# 
# 47011 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P2L equ 048Bh ;# 
# 47031 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWM3S1P2H equ 048Ch ;# 
# 47051 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWMLOAD equ 049Ch ;# 
# 47083 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PWMEN equ 049Dh ;# 
# 47115 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE0 equ 049Eh ;# 
# 47167 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE1 equ 049Fh ;# 
# 47229 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE2 equ 04A0h ;# 
# 47274 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE3 equ 04A1h ;# 
# 47336 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE4 equ 04A2h ;# 
# 47387 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE5 equ 04A3h ;# 
# 47444 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE6 equ 04A4h ;# 
# 47506 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE7 equ 04A5h ;# 
# 47563 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE8 equ 04A6h ;# 
# 47625 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE9 equ 04A7h ;# 
# 47670 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE10 equ 04A8h ;# 
# 47732 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE11 equ 04A9h ;# 
# 47794 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE12 equ 04AAh ;# 
# 47856 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE13 equ 04ABh ;# 
# 47918 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE14 equ 04ACh ;# 
# 47951 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIE15 equ 04ADh ;# 
# 47989 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR0 equ 04AEh ;# 
# 48041 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR1 equ 04AFh ;# 
# 48103 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR2 equ 04B0h ;# 
# 48148 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR3 equ 04B1h ;# 
# 48210 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR4 equ 04B2h ;# 
# 48261 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR5 equ 04B3h ;# 
# 48318 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR6 equ 04B4h ;# 
# 48380 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR7 equ 04B5h ;# 
# 48437 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR8 equ 04B6h ;# 
# 48499 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR9 equ 04B7h ;# 
# 48544 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR10 equ 04B8h ;# 
# 48606 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR11 equ 04B9h ;# 
# 48668 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR12 equ 04BAh ;# 
# 48730 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR13 equ 04BBh ;# 
# 48792 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR14 equ 04BCh ;# 
# 48825 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PIR15 equ 04BDh ;# 
# 48863 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATA equ 04BEh ;# 
# 48925 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATB equ 04BFh ;# 
# 48987 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATC equ 04C0h ;# 
# 49049 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATD equ 04C1h ;# 
# 49111 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATE equ 04C2h ;# 
# 49143 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
LATF equ 04C3h ;# 
# 49205 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISA equ 04C6h ;# 
# 49267 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISB equ 04C7h ;# 
# 49329 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISC equ 04C8h ;# 
# 49391 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISD equ 04C9h ;# 
# 49453 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISE equ 04CAh ;# 
# 49485 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TRISF equ 04CBh ;# 
# 49547 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTA equ 04CEh ;# 
# 49609 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTB equ 04CFh ;# 
# 49671 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTC equ 04D0h ;# 
# 49733 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTD equ 04D1h ;# 
# 49795 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTE equ 04D2h ;# 
# 49833 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PORTF equ 04D3h ;# 
# 49895 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INTCON0 equ 04D6h ;# 
# 49955 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INTCON1 equ 04D7h ;# 
# 49991 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
STATUS equ 04D8h ;# 
# 50080 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2 equ 04D9h ;# 
# 50087 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2L equ 04D9h ;# 
# 50107 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR2H equ 04DAh ;# 
# 50114 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PLUSW2 equ 04DBh ;# 
# 50134 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PREINC2 equ 04DCh ;# 
# 50154 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTDEC2 equ 04DDh ;# 
# 50174 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTINC2 equ 04DEh ;# 
# 50194 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INDF2 equ 04DFh ;# 
# 50214 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
BSR equ 04E0h ;# 
# 50221 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1 equ 04E1h ;# 
# 50228 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1L equ 04E1h ;# 
# 50248 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR1H equ 04E2h ;# 
# 50255 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PLUSW1 equ 04E3h ;# 
# 50275 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PREINC1 equ 04E4h ;# 
# 50295 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTDEC1 equ 04E5h ;# 
# 50315 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTINC1 equ 04E6h ;# 
# 50335 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INDF1 equ 04E7h ;# 
# 50355 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
WREG equ 04E8h ;# 
# 50393 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0 equ 04E9h ;# 
# 50400 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0L equ 04E9h ;# 
# 50420 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
FSR0H equ 04EAh ;# 
# 50427 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PLUSW0 equ 04EBh ;# 
# 50447 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PREINC0 equ 04ECh ;# 
# 50467 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTDEC0 equ 04EDh ;# 
# 50487 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
POSTINC0 equ 04EEh ;# 
# 50507 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
INDF0 equ 04EFh ;# 
# 50527 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCON0 equ 04F0h ;# 
# 50680 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCON1 equ 04F1h ;# 
# 50747 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
CPUDOZE equ 04F2h ;# 
# 50812 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PROD equ 04F3h ;# 
# 50819 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODL equ 04F3h ;# 
# 50839 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PRODH equ 04F4h ;# 
# 50859 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TABLAT equ 04F5h ;# 
# 50881 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TBLPTR equ 04F6h ;# 
# 50888 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TBLPTRL equ 04F6h ;# 
# 50908 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TBLPTRH equ 04F7h ;# 
# 50928 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TBLPTRU equ 04F8h ;# 
# 50959 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLAT equ 04F9h ;# 
# 50966 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCL equ 04F9h ;# 
# 50986 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLATH equ 04FAh ;# 
# 51006 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
PCLATU equ 04FBh ;# 
# 51026 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
STKPTR equ 04FCh ;# 
# 51124 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TOS equ 04FDh ;# 
# 51131 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TOSL equ 04FDh ;# 
# 51151 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TOSH equ 04FEh ;# 
# 51171 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC18F-Q_DFP/1.24.430/xc8\pic\include\proc\pic18f57q43.h"
TOSU equ 04FFh ;# 
;; Function _PWM1_16BIT_Period_DefaultInterruptHandler is unused but had its address taken
global _PWM1_16BIT_Period_DefaultInterruptHandler
_PWM1_16BIT_Period_DefaultInterruptHandler equ 0
;; Function _INT0_DefaultInterruptHandler is unused but had its address taken
global _INT0_DefaultInterruptHandler
_INT0_DefaultInterruptHandler equ 0
;; Function _INT1_DefaultInterruptHandler is unused but had its address taken
global _INT1_DefaultInterruptHandler
_INT1_DefaultInterruptHandler equ 0
;; Function _INT2_DefaultInterruptHandler is unused but had its address taken
global _INT2_DefaultInterruptHandler
_INT2_DefaultInterruptHandler equ 0
	debug_source C
	FNCALL	_main,_PWM1_16BIT_WritePeriodRegister
	FNCALL	_main,_SYSTEM_Initialize
	FNCALL	_main,_TMR0_PeriodMatchCallbackRegister
	FNCALL	_SYSTEM_Initialize,_CLOCK_Initialize
	FNCALL	_SYSTEM_Initialize,_INTERRUPT_Initialize
	FNCALL	_SYSTEM_Initialize,_PIN_MANAGER_Initialize
	FNCALL	_SYSTEM_Initialize,_PWM1_16BIT_Initialize
	FNCALL	_SYSTEM_Initialize,_TMR0_Initialize
	FNCALL	_PWM1_16BIT_Initialize,_PWM1_16BIT_Period_SetInterruptHandler
	FNCALL	_PWM1_16BIT_Initialize,_PWM1_16BIT_Slice1Output1_SetInterruptHandler
	FNCALL	_PWM1_16BIT_Initialize,_PWM1_16BIT_Slice1Output2_SetInterruptHandler
	FNCALL	_INTERRUPT_Initialize,_INT0_SetInterruptHandler
	FNCALL	_INTERRUPT_Initialize,_INT1_SetInterruptHandler
	FNCALL	_INTERRUPT_Initialize,_INT2_SetInterruptHandler
	FNROOT	_main
	FNCALL	_INTERRUPT_InterruptManager,_PWM1_16BIT_PWMI_ISR
	FNCALL	_INTERRUPT_InterruptManager,_TMR0_ISR
	FNCALL	_TMR0_ISR,_PWM_DutyCycleSetPercentage_Slice1
	FNCALL	_TMR0_ISR,_TMR0_DefaultCallback
	FNCALL	_PWM_DutyCycleSetPercentage_Slice1,_PWM1_16BIT_LoadBufferRegisters
	FNCALL	_PWM_DutyCycleSetPercentage_Slice1,_PWM1_16BIT_SetSlice1Output1DutyCycleRegister
	FNCALL	_PWM1_16BIT_PWMI_ISR,_PWM1_16BIT_Slice1Output1_DefaultInterruptHandler
	FNCALL	_PWM1_16BIT_PWMI_ISR,_PWM1_16BIT_Slice1Output2_DefaultInterruptHandler
	FNCALL	intlevel2,_INTERRUPT_InterruptManager
	global	intlevel2
	FNROOT	intlevel2
	global	_j
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"main.c"
	line	39

;initializer for _periodCountTop
	dw	(046h)&0ffffh
	line	37

;initializer for _j
	dw	(01h)&0ffffh
	global	_k
	global	_TMR0_PeriodMatchCallback
psect	nvCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pnvCOMRAM
__pnvCOMRAM:
_TMR0_PeriodMatchCallback:
       ds      3
	global	_INT2_InterruptHandler
	global	_INT2_InterruptHandler
_INT2_InterruptHandler:
       ds      3
	global	_INT1_InterruptHandler
	global	_INT1_InterruptHandler
_INT1_InterruptHandler:
       ds      3
	global	_INT0_InterruptHandler
	global	_INT0_InterruptHandler
_INT0_InterruptHandler:
       ds      3
	global	_PWM1_16BIT_Period_InterruptHandler
_PWM1_16BIT_Period_InterruptHandler:
       ds      3
	global	_PWM1_16BIT_Slice1Output2_InterruptHandler
_PWM1_16BIT_Slice1Output2_InterruptHandler:
       ds      3
	global	_PWM1_16BIT_Slice1Output1_InterruptHandler
_PWM1_16BIT_Slice1Output1_InterruptHandler:
       ds      3
	global	_ACTCON
_ACTCON	set	0xAC
	global	_OSCTUNE
_OSCTUNE	set	0xB0
	global	_OSCFRQ
_OSCFRQ	set	0xB1
	global	_OSCEN
_OSCEN	set	0xB3
	global	_OSCCON3
_OSCCON3	set	0xAF
	global	_OSCCON1
_OSCCON1	set	0xAD
	global	_RF3PPS
_RF3PPS	set	0x22C
	global	_RC4I2C
_RC4I2C	set	0x286
	global	_RC3I2C
_RC3I2C	set	0x287
	global	_RB2I2C
_RB2I2C	set	0x288
	global	_RB1I2C
_RB1I2C	set	0x289
	global	_T0CON0bits
_T0CON0bits	set	0x31A
	global	_T0CON0
_T0CON0	set	0x31A
	global	_T0CON1
_T0CON1	set	0x31B
	global	_TMR0L
_TMR0L	set	0x318
	global	_TMR0H
_TMR0H	set	0x319
	global	_IOCEF
_IOCEF	set	0x427
	global	_IOCEN
_IOCEN	set	0x426
	global	_IOCEP
_IOCEP	set	0x425
	global	_IOCCF
_IOCCF	set	0x417
	global	_IOCCN
_IOCCN	set	0x416
	global	_IOCCP
_IOCCP	set	0x415
	global	_IOCBF
_IOCBF	set	0x40F
	global	_IOCBN
_IOCBN	set	0x40E
	global	_IOCBP
_IOCBP	set	0x40D
	global	_IOCAF
_IOCAF	set	0x407
	global	_IOCAN
_IOCAN	set	0x406
	global	_IOCAP
_IOCAP	set	0x405
	global	_INLVLF
_INLVLF	set	0x42C
	global	_INLVLE
_INLVLE	set	0x424
	global	_INLVLD
_INLVLD	set	0x41C
	global	_INLVLC
_INLVLC	set	0x414
	global	_INLVLB
_INLVLB	set	0x40C
	global	_INLVLA
_INLVLA	set	0x404
	global	_SLRCONF
_SLRCONF	set	0x42B
	global	_SLRCONE
_SLRCONE	set	0x423
	global	_SLRCOND
_SLRCOND	set	0x41B
	global	_SLRCONC
_SLRCONC	set	0x413
	global	_SLRCONB
_SLRCONB	set	0x40B
	global	_SLRCONA
_SLRCONA	set	0x403
	global	_WPUF
_WPUF	set	0x429
	global	_WPUE
_WPUE	set	0x421
	global	_WPUD
_WPUD	set	0x419
	global	_WPUC
_WPUC	set	0x411
	global	_WPUB
_WPUB	set	0x409
	global	_WPUA
_WPUA	set	0x401
	global	_ANSELF
_ANSELF	set	0x428
	global	_ANSELE
_ANSELE	set	0x420
	global	_ANSELD
_ANSELD	set	0x418
	global	_ANSELC
_ANSELC	set	0x410
	global	_ANSELB
_ANSELB	set	0x408
	global	_ANSELA
_ANSELA	set	0x400
	global	_ODCONF
_ODCONF	set	0x42A
	global	_ODCONE
_ODCONE	set	0x422
	global	_ODCOND
_ODCOND	set	0x41A
	global	_ODCONC
_ODCONC	set	0x412
	global	_ODCONB
_ODCONB	set	0x40A
	global	_ODCONA
_ODCONA	set	0x402
	global	_PIR3bits
_PIR3bits	set	0x4B1
	global	_PIE3bits
_PIE3bits	set	0x4A1
	global	_PIR10bits
_PIR10bits	set	0x4B8
	global	_PIR6bits
_PIR6bits	set	0x4B4
	global	_PIR1bits
_PIR1bits	set	0x4AF
	global	_INTCON0bits
_INTCON0bits	set	0x4D6
	global	_TRISF
_TRISF	set	0x4CB
	global	_TRISE
_TRISE	set	0x4CA
	global	_TRISD
_TRISD	set	0x4C9
	global	_TRISC
_TRISC	set	0x4C8
	global	_TRISB
_TRISB	set	0x4C7
	global	_TRISA
_TRISA	set	0x4C6
	global	_LATF
_LATF	set	0x4C3
	global	_LATE
_LATE	set	0x4C2
	global	_LATD
_LATD	set	0x4C1
	global	_LATC
_LATC	set	0x4C0
	global	_LATB
_LATB	set	0x4BF
	global	_LATA
_LATA	set	0x4BE
	global	_PWM1GIEbits
_PWM1GIEbits	set	0x468
	global	_PWM1CONbits
_PWM1CONbits	set	0x469
	global	_PWM1CON
_PWM1CON	set	0x469
	global	_PIE4bits
_PIE4bits	set	0x4A2
	global	_PWM1GIRbits
_PWM1GIRbits	set	0x467
	global	_PIR4bits
_PIR4bits	set	0x4B2
	global	_PWM1S1P2H
_PWM1S1P2H	set	0x46E
	global	_PWM1S1P2L
_PWM1S1P2L	set	0x46D
	global	_PWM1S1P1H
_PWM1S1P1H	set	0x46C
	global	_PWM1S1P1L
_PWM1S1P1L	set	0x46B
	global	_PWM1S1CFG
_PWM1S1CFG	set	0x46A
	global	_PWM1GIE
_PWM1GIE	set	0x468
	global	_PWM1GIR
_PWM1GIR	set	0x467
	global	_PWM1PIPOS
_PWM1PIPOS	set	0x466
	global	_PWM1CPRE
_PWM1CPRE	set	0x465
	global	_PWM1PRH
_PWM1PRH	set	0x464
	global	_PWM1PRL
_PWM1PRL	set	0x463
	global	_PWM1LDS
_PWM1LDS	set	0x462
	global	_PWM1CLK
_PWM1CLK	set	0x461
	global	_PWM1ERS
_PWM1ERS	set	0x460
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FEXTOSC = "ECH"
	config RSTOSC = "HFINTOSC_64MHZ"
	config CLKOUTEN = "OFF"
	config PR1WAY = "ON"
	config CSWEN = "ON"
	config FCMEN = "ON"
	config MCLRE = "EXTMCLR"
	config PWRTS = "PWRT_OFF"
	config MVECEN = "OFF"
	config IVT1WAY = "ON"
	config LPBOREN = "OFF"
	config BOREN = "SBORDIS"
	config BORV = "VBOR_1P9"
	config ZCD = "OFF"
	config PPS1WAY = "ON"
	config STVREN = "ON"
	config LVP = "ON"
	config XINST = "OFF"
	config WDTCPS = "WDTCPS_31"
	config WDTE = "OFF"
	config WDTCWS = "WDTCWS_7"
	config WDTCCS = "SC"
	config BBSIZE = "BBSIZE_512"
	config BBEN = "OFF"
	config SAFEN = "OFF"
	config WRTB = "OFF"
	config WRTC = "OFF"
	config WRTD = "OFF"
	config WRTSAF = "OFF"
	config WRTAPP = "OFF"
	config CP = "OFF"
	file	"dist/default/production\pwmblink.X.production.s"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pbssCOMRAM
__pbssCOMRAM:
	global	_k
_k:
       ds      2
psect	dataCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pdataCOMRAM
__pdataCOMRAM:
	file	"main.c"
	line	39
_periodCountTop:
       ds      2
psect	dataCOMRAM
	file	"main.c"
	line	37
	global	_j
_j:
       ds      2
	file	"dist/default/production\pwmblink.X.production.s"
	line	#
psect	cinit
; Initialize objects allocated to COMRAM (4 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	lfsr	0,__pdataCOMRAM
	lfsr	1,4
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
	line	#
; Clear objects allocated to COMRAM (2 bytes)
	global __pbssCOMRAM
clrf	(__pbssCOMRAM+1)&0xffh,c
clrf	(__pbssCOMRAM+0)&0xffh,c
;
; Setup IVTBASE
;
global  IVTBASEL, IVTBASEH, IVTBASEU
IVTBASEL equ 0x45D
IVTBASEH equ 0x45E
IVTBASEU equ 0x45F
	movlb	4
	movlw	(ivt0x8_base >> 0) & 0xff
	movwf	(IVTBASEL & 0xff)
	movlw	(ivt0x8_base >> 8) & 0xff
	movwf	(IVTBASEH & 0xff)
	movlw	(ivt0x8_base >> 16) & 0xff
	movwf	(IVTBASEU & 0xff)
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?_PWM1_16BIT_Slice1Output1_DefaultInterruptHandler:	; 1 bytes @ 0x0
?_PWM1_16BIT_Slice1Output2_DefaultInterruptHandler:	; 1 bytes @ 0x0
?_TMR0_ISR:	; 1 bytes @ 0x0
?_CLOCK_Initialize:	; 1 bytes @ 0x0
?_TMR0_Initialize:	; 1 bytes @ 0x0
?_TMR0_DefaultCallback:	; 1 bytes @ 0x0
?_PWM1_16BIT_Initialize:	; 1 bytes @ 0x0
?_PWM1_16BIT_SetSlice1Output1DutyCycleRegister:	; 1 bytes @ 0x0
?_PWM1_16BIT_LoadBufferRegisters:	; 1 bytes @ 0x0
?_PWM1_16BIT_PWMI_ISR:	; 1 bytes @ 0x0
?_PIN_MANAGER_Initialize:	; 1 bytes @ 0x0
?_INTERRUPT_Initialize:	; 1 bytes @ 0x0
?_INTERRUPT_InterruptManager:	; 1 bytes @ 0x0
?_SYSTEM_Initialize:	; 1 bytes @ 0x0
?_PWM_DutyCycleSetPercentage_Slice1:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	PWM1_16BIT_SetSlice1Output1DutyCycleRegister@registerValue
PWM1_16BIT_SetSlice1Output1DutyCycleRegister@registerValue:	; 2 bytes @ 0x0
??_PWM1_16BIT_Slice1Output1_DefaultInterruptHandler:	; 1 bytes @ 0x0
??_PWM1_16BIT_Slice1Output2_DefaultInterruptHandler:	; 1 bytes @ 0x0
??_TMR0_DefaultCallback:	; 1 bytes @ 0x0
??_PWM1_16BIT_LoadBufferRegisters:	; 1 bytes @ 0x0
??_PWM1_16BIT_PWMI_ISR:	; 1 bytes @ 0x0
	ds   2
	global	PWM_DutyCycleSetPercentage_Slice1@PWM_DytyCyclePercentage
PWM_DutyCycleSetPercentage_Slice1@PWM_DytyCyclePercentage:	; 2 bytes @ 0x2
??_PWM1_16BIT_SetSlice1Output1DutyCycleRegister:	; 1 bytes @ 0x2
??_PWM_DutyCycleSetPercentage_Slice1:	; 1 bytes @ 0x2
	ds   2
??_TMR0_ISR:	; 1 bytes @ 0x4
??_INTERRUPT_InterruptManager:	; 1 bytes @ 0x4
	ds   2
?_PWM1_16BIT_Slice1Output1_SetInterruptHandler:	; 1 bytes @ 0x6
?_PWM1_16BIT_Slice1Output2_SetInterruptHandler:	; 1 bytes @ 0x6
?_PWM1_16BIT_Period_SetInterruptHandler:	; 1 bytes @ 0x6
?_INT0_SetInterruptHandler:	; 1 bytes @ 0x6
?_INT1_SetInterruptHandler:	; 1 bytes @ 0x6
?_INT2_SetInterruptHandler:	; 1 bytes @ 0x6
?_TMR0_PeriodMatchCallbackRegister:	; 1 bytes @ 0x6
?_PWM1_16BIT_WritePeriodRegister:	; 1 bytes @ 0x6
	global	PWM1_16BIT_WritePeriodRegister@periodCount
PWM1_16BIT_WritePeriodRegister@periodCount:	; 2 bytes @ 0x6
	global	PWM1_16BIT_Slice1Output1_SetInterruptHandler@InterruptHandler
PWM1_16BIT_Slice1Output1_SetInterruptHandler@InterruptHandler:	; 3 bytes @ 0x6
	global	PWM1_16BIT_Slice1Output2_SetInterruptHandler@InterruptHandler
PWM1_16BIT_Slice1Output2_SetInterruptHandler@InterruptHandler:	; 3 bytes @ 0x6
	global	PWM1_16BIT_Period_SetInterruptHandler@InterruptHandler
PWM1_16BIT_Period_SetInterruptHandler@InterruptHandler:	; 3 bytes @ 0x6
	global	INT0_SetInterruptHandler@InterruptHandler
INT0_SetInterruptHandler@InterruptHandler:	; 3 bytes @ 0x6
	global	INT1_SetInterruptHandler@InterruptHandler
INT1_SetInterruptHandler@InterruptHandler:	; 3 bytes @ 0x6
	global	INT2_SetInterruptHandler@InterruptHandler
INT2_SetInterruptHandler@InterruptHandler:	; 3 bytes @ 0x6
	global	TMR0_PeriodMatchCallbackRegister@callbackHandler
TMR0_PeriodMatchCallbackRegister@callbackHandler:	; 3 bytes @ 0x6
??_CLOCK_Initialize:	; 1 bytes @ 0x6
??_TMR0_Initialize:	; 1 bytes @ 0x6
??_PIN_MANAGER_Initialize:	; 1 bytes @ 0x6
	ds   2
??_PWM1_16BIT_WritePeriodRegister:	; 1 bytes @ 0x8
	ds   1
??_PWM1_16BIT_Slice1Output1_SetInterruptHandler:	; 1 bytes @ 0x9
??_PWM1_16BIT_Slice1Output2_SetInterruptHandler:	; 1 bytes @ 0x9
??_PWM1_16BIT_Period_SetInterruptHandler:	; 1 bytes @ 0x9
??_INT0_SetInterruptHandler:	; 1 bytes @ 0x9
??_INT1_SetInterruptHandler:	; 1 bytes @ 0x9
??_INT2_SetInterruptHandler:	; 1 bytes @ 0x9
??_TMR0_PeriodMatchCallbackRegister:	; 1 bytes @ 0x9
??_PWM1_16BIT_Initialize:	; 1 bytes @ 0x9
??_INTERRUPT_Initialize:	; 1 bytes @ 0x9
??_SYSTEM_Initialize:	; 1 bytes @ 0x9
??_main:	; 1 bytes @ 0x9
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        4
;!    BSS         2
;!    Persistent  21
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95      9      36
;!    BANK5           160      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0
;!    BANK8           256      0       0
;!    BANK9           256      0       0
;!    BANK10          256      0       0
;!    BANK11          256      0       0
;!    BANK12          256      0       0
;!    BANK13          256      0       0
;!    BANK14          256      0       0
;!    BANK15          256      0       0
;!    BANK16          256      0       0
;!    BANK17          256      0       0
;!    BANK18          256      0       0
;!    BANK19          256      0       0
;!    BANK20          256      0       0
;!    BANK21          256      0       0
;!    BANK22          256      0       0
;!    BANK23          256      0       0
;!    BANK24          256      0       0
;!    BANK25          256      0       0
;!    BANK26          256      0       0
;!    BANK27          256      0       0
;!    BANK28          256      0       0
;!    BANK29          256      0       0
;!    BANK30          256      0       0
;!    BANK31          256      0       0
;!    BANK32          256      0       0
;!    BANK33          256      0       0
;!    BANK34          256      0       0
;!    BANK35          256      0       0
;!    BANK36          256      0       0

;!
;!Pointer List with Targets:
;!
;!    INT0_InterruptHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> INT0_DefaultInterruptHandler(), NULL(), 
;!
;!    INT0_SetInterruptHandler@InterruptHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> INT0_DefaultInterruptHandler(), 
;!
;!    INT1_InterruptHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> INT1_DefaultInterruptHandler(), NULL(), 
;!
;!    INT1_SetInterruptHandler@InterruptHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> INT1_DefaultInterruptHandler(), 
;!
;!    INT2_InterruptHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> INT2_DefaultInterruptHandler(), NULL(), 
;!
;!    INT2_SetInterruptHandler@InterruptHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> INT2_DefaultInterruptHandler(), 
;!
;!    PWM1_16BIT_Period_InterruptHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> PWM1_16BIT_Period_DefaultInterruptHandler(), NULL(), 
;!
;!    PWM1_16BIT_Period_SetInterruptHandler@InterruptHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> PWM1_16BIT_Period_DefaultInterruptHandler(), 
;!
;!    PWM1_16BIT_Slice1Output1_InterruptHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> PWM1_16BIT_Slice1Output1_DefaultInterruptHandler(), NULL(), 
;!
;!    PWM1_16BIT_Slice1Output1_SetInterruptHandler@InterruptHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> PWM1_16BIT_Slice1Output1_DefaultInterruptHandler(), 
;!
;!    PWM1_16BIT_Slice1Output2_InterruptHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> PWM1_16BIT_Slice1Output2_DefaultInterruptHandler(), NULL(), 
;!
;!    PWM1_16BIT_Slice1Output2_SetInterruptHandler@InterruptHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> PWM1_16BIT_Slice1Output2_DefaultInterruptHandler(), 
;!
;!    TMR0_PeriodMatchCallback	PTR FTN()void  size(3) Largest target is 1
;!		 -> PWM_DutyCycleSetPercentage_Slice1(), TMR0_DefaultCallback(), NULL(), 
;!
;!    TMR0_PeriodMatchCallbackRegister@callbackHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> PWM_DutyCycleSetPercentage_Slice1(), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_TMR0_PeriodMatchCallbackRegister
;!    _PWM1_16BIT_Initialize->_PWM1_16BIT_Period_SetInterruptHandler
;!    _PWM1_16BIT_Initialize->_PWM1_16BIT_Slice1Output1_SetInterruptHandler
;!    _PWM1_16BIT_Initialize->_PWM1_16BIT_Slice1Output2_SetInterruptHandler
;!    _INTERRUPT_Initialize->_INT0_SetInterruptHandler
;!    _INTERRUPT_Initialize->_INT1_SetInterruptHandler
;!    _INTERRUPT_Initialize->_INT2_SetInterruptHandler
;!
;!Critical Paths under _INTERRUPT_InterruptManager in COMRAM
;!
;!    _TMR0_ISR->_PWM_DutyCycleSetPercentage_Slice1
;!    _PWM_DutyCycleSetPercentage_Slice1->_PWM1_16BIT_SetSlice1Output1DutyCycleRegister
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK7
;!
;!    None.
;!
;!Critical Paths under _main in BANK8
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK8
;!
;!    None.
;!
;!Critical Paths under _main in BANK9
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK9
;!
;!    None.
;!
;!Critical Paths under _main in BANK10
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK10
;!
;!    None.
;!
;!Critical Paths under _main in BANK11
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK11
;!
;!    None.
;!
;!Critical Paths under _main in BANK12
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK12
;!
;!    None.
;!
;!Critical Paths under _main in BANK13
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK13
;!
;!    None.
;!
;!Critical Paths under _main in BANK14
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK14
;!
;!    None.
;!
;!Critical Paths under _main in BANK15
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK15
;!
;!    None.
;!
;!Critical Paths under _main in BANK16
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK16
;!
;!    None.
;!
;!Critical Paths under _main in BANK17
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK17
;!
;!    None.
;!
;!Critical Paths under _main in BANK18
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK18
;!
;!    None.
;!
;!Critical Paths under _main in BANK19
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK19
;!
;!    None.
;!
;!Critical Paths under _main in BANK20
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK20
;!
;!    None.
;!
;!Critical Paths under _main in BANK21
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK21
;!
;!    None.
;!
;!Critical Paths under _main in BANK22
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK22
;!
;!    None.
;!
;!Critical Paths under _main in BANK23
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK23
;!
;!    None.
;!
;!Critical Paths under _main in BANK24
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK24
;!
;!    None.
;!
;!Critical Paths under _main in BANK25
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK25
;!
;!    None.
;!
;!Critical Paths under _main in BANK26
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK26
;!
;!    None.
;!
;!Critical Paths under _main in BANK27
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK27
;!
;!    None.
;!
;!Critical Paths under _main in BANK28
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK28
;!
;!    None.
;!
;!Critical Paths under _main in BANK29
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK29
;!
;!    None.
;!
;!Critical Paths under _main in BANK30
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK30
;!
;!    None.
;!
;!Critical Paths under _main in BANK31
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK31
;!
;!    None.
;!
;!Critical Paths under _main in BANK32
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK32
;!
;!    None.
;!
;!Critical Paths under _main in BANK33
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK33
;!
;!    None.
;!
;!Critical Paths under _main in BANK34
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK34
;!
;!    None.
;!
;!Critical Paths under _main in BANK35
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK35
;!
;!    None.
;!
;!Critical Paths under _main in BANK36
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK36
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0     206
;!     _PWM1_16BIT_WritePeriodRegister
;!                  _SYSTEM_Initialize
;!   _TMR0_PeriodMatchCallbackRegister
;! ---------------------------------------------------------------------------------
;! (1) _TMR0_PeriodMatchCallbackRegister                     3     0      3      23
;!                                              6 COMRAM     3     0      3
;! ---------------------------------------------------------------------------------
;! (1) _SYSTEM_Initialize                                    0     0      0     138
;!                   _CLOCK_Initialize
;!               _INTERRUPT_Initialize
;!             _PIN_MANAGER_Initialize
;!              _PWM1_16BIT_Initialize
;!                    _TMR0_Initialize
;! ---------------------------------------------------------------------------------
;! (2) _TMR0_Initialize                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _PWM1_16BIT_Initialize                                0     0      0      69
;!_PWM1_16BIT_Period_SetInterruptHandl
;!_PWM1_16BIT_Slice1Output1_SetInterru
;!_PWM1_16BIT_Slice1Output2_SetInterru
;! ---------------------------------------------------------------------------------
;! (3) _PWM1_16BIT_Slice1Output2_SetInterruptHandler         3     0      3      23
;!                                              6 COMRAM     3     0      3
;! ---------------------------------------------------------------------------------
;! (3) _PWM1_16BIT_Slice1Output1_SetInterruptHandler         3     0      3      23
;!                                              6 COMRAM     3     0      3
;! ---------------------------------------------------------------------------------
;! (3) _PWM1_16BIT_Period_SetInterruptHandler                3     0      3      23
;!                                              6 COMRAM     3     0      3
;! ---------------------------------------------------------------------------------
;! (2) _PIN_MANAGER_Initialize                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _INTERRUPT_Initialize                                 0     0      0      69
;!           _INT0_SetInterruptHandler
;!           _INT1_SetInterruptHandler
;!           _INT2_SetInterruptHandler
;! ---------------------------------------------------------------------------------
;! (3) _INT2_SetInterruptHandler                             3     0      3      23
;!                                              6 COMRAM     3     0      3
;! ---------------------------------------------------------------------------------
;! (3) _INT1_SetInterruptHandler                             3     0      3      23
;!                                              6 COMRAM     3     0      3
;! ---------------------------------------------------------------------------------
;! (3) _INT0_SetInterruptHandler                             3     0      3      23
;!                                              6 COMRAM     3     0      3
;! ---------------------------------------------------------------------------------
;! (2) _CLOCK_Initialize                                     0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _PWM1_16BIT_WritePeriodRegister                       2     0      2      45
;!                                              6 COMRAM     2     0      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _INTERRUPT_InterruptManager                           2     2      0      68
;!                                              4 COMRAM     2     2      0
;!                _PWM1_16BIT_PWMI_ISR
;!                           _TMR0_ISR
;! ---------------------------------------------------------------------------------
;! (5) _TMR0_ISR                                             0     0      0      68
;!                                NULL *
;!  _PWM_DutyCycleSetPercentage_Slice1 *
;!               _TMR0_DefaultCallback *
;! ---------------------------------------------------------------------------------
;! (6) _TMR0_DefaultCallback                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _PWM_DutyCycleSetPercentage_Slice1                    2     2      0      68
;!                                              2 COMRAM     2     2      0
;!     _PWM1_16BIT_LoadBufferRegisters
;!_PWM1_16BIT_SetSlice1Output1DutyCycl
;! ---------------------------------------------------------------------------------
;! (7) _PWM1_16BIT_SetSlice1Output1DutyCycleRegister         2     0      2      45
;!                                              0 COMRAM     2     0      2
;! ---------------------------------------------------------------------------------
;! (7) _PWM1_16BIT_LoadBufferRegisters                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (5) _PWM1_16BIT_PWMI_ISR                                  0     0      0       0
;!                                NULL *
;!_PWM1_16BIT_Slice1Output1_DefaultInt *
;!_PWM1_16BIT_Slice1Output2_DefaultInt *
;! ---------------------------------------------------------------------------------
;! (6) _PWM1_16BIT_Slice1Output2_DefaultInterruptHandler     0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _PWM1_16BIT_Slice1Output1_DefaultInterruptHandler     0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) NULL(Fake)                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _PWM1_16BIT_WritePeriodRegister
;!   _SYSTEM_Initialize
;!     _CLOCK_Initialize
;!     _INTERRUPT_Initialize
;!       _INT0_SetInterruptHandler
;!       _INT1_SetInterruptHandler
;!       _INT2_SetInterruptHandler
;!     _PIN_MANAGER_Initialize
;!     _PWM1_16BIT_Initialize
;!       _PWM1_16BIT_Period_SetInterruptHandler
;!       _PWM1_16BIT_Slice1Output1_SetInterruptHandler
;!       _PWM1_16BIT_Slice1Output2_SetInterruptHandler
;!     _TMR0_Initialize
;!   _TMR0_PeriodMatchCallbackRegister
;!
;! _INTERRUPT_InterruptManager (ROOT)
;!   _PWM1_16BIT_PWMI_ISR
;!     NULL(Fake) *
;!     _PWM1_16BIT_Slice1Output1_DefaultInterruptHandler *
;!     _PWM1_16BIT_Slice1Output2_DefaultInterruptHandler *
;!   _TMR0_ISR
;!     NULL(Fake) *
;!     _PWM_DutyCycleSetPercentage_Slice1 *
;!       _PWM1_16BIT_LoadBufferRegisters
;!       _PWM1_16BIT_SetSlice1Output1DutyCycleRegister
;!     _TMR0_DefaultCallback *
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BIGRAM            8191      0       0      0.0%
;!BITBIGSFRllh       614      0       0      0.0%
;!BITBIGSFRlh        332      0       0      0.0%
;!BITBIGSFR_1        256      0       0      0.0%
;!BITBANK36          256      0       0      0.0%
;!BANK36             256      0       0      0.0%
;!BITBANK35          256      0       0      0.0%
;!BANK35             256      0       0      0.0%
;!BITBANK34          256      0       0      0.0%
;!BANK34             256      0       0      0.0%
;!BITBANK33          256      0       0      0.0%
;!BANK33             256      0       0      0.0%
;!BITBANK32          256      0       0      0.0%
;!BANK32             256      0       0      0.0%
;!BITBANK31          256      0       0      0.0%
;!BANK31             256      0       0      0.0%
;!BITBANK30          256      0       0      0.0%
;!BANK30             256      0       0      0.0%
;!BITBANK29          256      0       0      0.0%
;!BANK29             256      0       0      0.0%
;!BITBANK28          256      0       0      0.0%
;!BANK28             256      0       0      0.0%
;!BITBANK27          256      0       0      0.0%
;!BANK27             256      0       0      0.0%
;!BITBANK26          256      0       0      0.0%
;!BANK26             256      0       0      0.0%
;!BITBANK25          256      0       0      0.0%
;!BANK25             256      0       0      0.0%
;!BITBANK24          256      0       0      0.0%
;!BANK24             256      0       0      0.0%
;!BITBANK23          256      0       0      0.0%
;!BANK23             256      0       0      0.0%
;!BITBANK22          256      0       0      0.0%
;!BANK22             256      0       0      0.0%
;!BITBANK21          256      0       0      0.0%
;!BANK21             256      0       0      0.0%
;!BITBANK20          256      0       0      0.0%
;!BANK20             256      0       0      0.0%
;!BITBANK19          256      0       0      0.0%
;!BANK19             256      0       0      0.0%
;!BITBANK18          256      0       0      0.0%
;!BANK18             256      0       0      0.0%
;!BITBANK17          256      0       0      0.0%
;!BANK17             256      0       0      0.0%
;!BITBANK16          256      0       0      0.0%
;!BANK16             256      0       0      0.0%
;!BITBANK15          256      0       0      0.0%
;!BANK15             256      0       0      0.0%
;!BITBANK14          256      0       0      0.0%
;!BANK14             256      0       0      0.0%
;!BITBANK13          256      0       0      0.0%
;!BANK13             256      0       0      0.0%
;!BITBANK12          256      0       0      0.0%
;!BANK12             256      0       0      0.0%
;!BITBANK11          256      0       0      0.0%
;!BANK11             256      0       0      0.0%
;!BITBANK10          256      0       0      0.0%
;!BANK10             256      0       0      0.0%
;!BITBANK9           256      0       0      0.0%
;!BANK9              256      0       0      0.0%
;!BITBANK8           256      0       0      0.0%
;!BANK8              256      0       0      0.0%
;!BITBANK7           256      0       0      0.0%
;!BANK7              256      0       0      0.0%
;!BITBANK6           256      0       0      0.0%
;!BANK6              256      0       0      0.0%
;!BITBIGSFRllll      172      0       0      0.0%
;!BITBANK5           160      0       0      0.0%
;!BANK5              160      0       0      0.0%
;!BITBIGSFRh         152      0       0      0.0%
;!BITCOMRAM           95      0       0      0.0%
;!COMRAM              95      9      36     37.9%
;!BITBIGSFRlllh        5      0       0      0.0%
;!STACK                0      0       0      0.0%
;!DATA                 0      0      36      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 66 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  386[None  ] int 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31  BANK32  BANK33  BANK34  BANK35  BANK36
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called: 7
;; This function calls:
;;		_PWM1_16BIT_WritePeriodRegister
;;		_SYSTEM_Initialize
;;		_TMR0_PeriodMatchCallbackRegister
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	66
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	66
	
_main:
;incstack = 0
	callstack 120
	line	68
	
l1561:
;main.c: 68:     SYSTEM_Initialize();
	call	_SYSTEM_Initialize	;wreg free
	line	69
	
l1563:
;main.c: 69:     PWM1_16BIT_WritePeriodRegister(periodCountTop);
	movlw	high(046h)
	movwf	((c:PWM1_16BIT_WritePeriodRegister@periodCount+1))^0500h,c
	movlw	low(046h)
	movwf	((c:PWM1_16BIT_WritePeriodRegister@periodCount))^0500h,c
	call	_PWM1_16BIT_WritePeriodRegister	;wreg free
	line	70
	
l1565:
;main.c: 70:     TMR0_PeriodMatchCallbackRegister(PWM_DutyCycleSetPercentage_Slice1);
		movlw	low(_PWM_DutyCycleSetPercentage_Slice1)
	movwf	((c:TMR0_PeriodMatchCallbackRegister@callbackHandler))^0500h,c
	movlw	high(_PWM_DutyCycleSetPercentage_Slice1)
	movwf	((c:TMR0_PeriodMatchCallbackRegister@callbackHandler+1))^0500h,c
	movlw	low highword(_PWM_DutyCycleSetPercentage_Slice1)
	movwf	((c:TMR0_PeriodMatchCallbackRegister@callbackHandler+2))^0500h,c

	call	_TMR0_PeriodMatchCallbackRegister	;wreg free
	line	71
	
l1567:
;main.c: 71:     (INTCON0bits.GIE = 1);
	bsf	((c:1238))^0400h,c,7	;volatile
	line	73
;main.c: 73:     while (1)
	
l387:
	line	75
;main.c: 74:     {;main.c: 75:     }
	
l388:
	goto	l387
	global	start
	goto	start
	callstack 0
	line	76
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_TMR0_PeriodMatchCallbackRegister

;; *************** function _TMR0_PeriodMatchCallbackRegister *****************
;; Defined at:
;;		line 135 in file "mcc_generated_files/timer/src/tmr0.c"
;; Parameters:    Size  Location     Type
;;  callbackHand    3    6[COMRAM] PTR FTN()void 
;;		 -> PWM_DutyCycleSetPercentage_Slice1(1), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31  BANK32  BANK33  BANK34  BANK35  BANK36
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/timer/src/tmr0.c"
	line	135
global __ptext1
__ptext1:
psect	text1
	file	"mcc_generated_files/timer/src/tmr0.c"
	line	135
	
_TMR0_PeriodMatchCallbackRegister:
;incstack = 0
	callstack 122
	line	137
	
l1549:
;mcc_generated_files/timer/src/tmr0.c: 135: void TMR0_PeriodMatchCallbackRegister(void (* callbackHandler)(void));mcc_generated_files/timer/src/tmr0.c: 136: {;mcc_generated_files/timer/src/tmr0.c: 137:     TMR0_PeriodMatchCallback = callbackHandler;
		movff	(c:TMR0_PeriodMatchCallbackRegister@callbackHandler),(c:_TMR0_PeriodMatchCallback)
	movff	(c:TMR0_PeriodMatchCallbackRegister@callbackHandler+1),(c:_TMR0_PeriodMatchCallback+1)
	movff	(c:TMR0_PeriodMatchCallbackRegister@callbackHandler+2),(c:_TMR0_PeriodMatchCallback+2)

	line	138
	
l448:
	return	;funcret
	callstack 0
GLOBAL	__end_of_TMR0_PeriodMatchCallbackRegister
	__end_of_TMR0_PeriodMatchCallbackRegister:
	signat	_TMR0_PeriodMatchCallbackRegister,4217
	global	_SYSTEM_Initialize

;; *************** function _SYSTEM_Initialize *****************
;; Defined at:
;;		line 38 in file "mcc_generated_files/system/src/system.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31  BANK32  BANK33  BANK34  BANK35  BANK36
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_CLOCK_Initialize
;;		_INTERRUPT_Initialize
;;		_PIN_MANAGER_Initialize
;;		_PWM1_16BIT_Initialize
;;		_TMR0_Initialize
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/system/src/system.c"
	line	38
global __ptext2
__ptext2:
psect	text2
	file	"mcc_generated_files/system/src/system.c"
	line	38
	
_SYSTEM_Initialize:
;incstack = 0
	callstack 120
	line	40
	
l1541:
;mcc_generated_files/system/src/system.c: 40:     CLOCK_Initialize();
	call	_CLOCK_Initialize	;wreg free
	line	41
;mcc_generated_files/system/src/system.c: 41:     PIN_MANAGER_Initialize();
	call	_PIN_MANAGER_Initialize	;wreg free
	line	42
	
l1543:
;mcc_generated_files/system/src/system.c: 42:     TMR0_Initialize();
	call	_TMR0_Initialize	;wreg free
	line	43
	
l1545:
;mcc_generated_files/system/src/system.c: 43:     PWM1_16BIT_Initialize();
	call	_PWM1_16BIT_Initialize	;wreg free
	line	44
	
l1547:
;mcc_generated_files/system/src/system.c: 44:     INTERRUPT_Initialize();
	call	_INTERRUPT_Initialize	;wreg free
	line	45
	
l342:
	return	;funcret
	callstack 0
GLOBAL	__end_of_SYSTEM_Initialize
	__end_of_SYSTEM_Initialize:
	signat	_SYSTEM_Initialize,89
	global	_TMR0_Initialize

;; *************** function _TMR0_Initialize *****************
;; Defined at:
;;		line 45 in file "mcc_generated_files/timer/src/tmr0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31  BANK32  BANK33  BANK34  BANK35  BANK36
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/timer/src/tmr0.c"
	line	45
global __ptext3
__ptext3:
psect	text3
	file	"mcc_generated_files/timer/src/tmr0.c"
	line	45
	
_TMR0_Initialize:
;incstack = 0
	callstack 121
	line	47
	
l1285:
;mcc_generated_files/timer/src/tmr0.c: 47:     TMR0H = 0x9B;
	movlw	low(09Bh)
	movlb	3	; () banked
	movwf	((793))&0ffh	;volatile
	line	48
	
l1287:; BSR set to: 3

;mcc_generated_files/timer/src/tmr0.c: 48:     TMR0L = 0x0;
	clrf	((792))&0ffh	;volatile
	line	50
;mcc_generated_files/timer/src/tmr0.c: 50:     T0CON1 = (3 << 0x5)
	movlw	low(07Dh)
	movwf	((795))&0ffh	;volatile
	line	54
	
l1289:; BSR set to: 3

;mcc_generated_files/timer/src/tmr0.c: 54:     TMR0_PeriodMatchCallback = TMR0_DefaultCallback;
		movlw	low(_TMR0_DefaultCallback)
	movwf	((c:_TMR0_PeriodMatchCallback))^0500h,c
	movlw	high(_TMR0_DefaultCallback)
	movwf	((c:_TMR0_PeriodMatchCallback+1))^0500h,c
	movlw	low highword(_TMR0_DefaultCallback)
	movwf	((c:_TMR0_PeriodMatchCallback+2))^0500h,c

	line	56
	
l1291:; BSR set to: 3

;mcc_generated_files/timer/src/tmr0.c: 56:     PIR3bits.TMR0IF = 0;
	bcf	((c:1201))^0400h,c,7	;volatile
	line	57
	
l1293:; BSR set to: 3

;mcc_generated_files/timer/src/tmr0.c: 57:     PIE3bits.TMR0IE = 1;
	bsf	((c:1185))^0400h,c,7	;volatile
	line	59
	
l1295:; BSR set to: 3

;mcc_generated_files/timer/src/tmr0.c: 59:     T0CON0 = (0 << 0x0)
	movlw	low(080h)
	movwf	((794))&0ffh	;volatile
	line	62
	
l411:; BSR set to: 3

	return	;funcret
	callstack 0
GLOBAL	__end_of_TMR0_Initialize
	__end_of_TMR0_Initialize:
	signat	_TMR0_Initialize,89
	global	_PWM1_16BIT_Initialize

;; *************** function _PWM1_16BIT_Initialize *****************
;; Defined at:
;;		line 50 in file "mcc_generated_files/pwm/src/pwm1_16bit.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31  BANK32  BANK33  BANK34  BANK35  BANK36
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_PWM1_16BIT_Period_SetInterruptHandler
;;		_PWM1_16BIT_Slice1Output1_SetInterruptHandler
;;		_PWM1_16BIT_Slice1Output2_SetInterruptHandler
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/pwm/src/pwm1_16bit.c"
	line	50
global __ptext4
__ptext4:
psect	text4
	file	"mcc_generated_files/pwm/src/pwm1_16bit.c"
	line	50
	
_PWM1_16BIT_Initialize:; BSR set to: 3

;incstack = 0
	callstack 120
	line	53
	
l1453:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 53:     PWM1ERS = 0x0;
	clrf	((c:1120))^0400h,c	;volatile
	line	56
	
l1455:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 56:     PWM1CLK = 0x2;
	movlw	low(02h)
	movwf	((c:1121))^0400h,c	;volatile
	line	59
	
l1457:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 59:     PWM1LDS = 0x0;
	clrf	((c:1122))^0400h,c	;volatile
	line	62
	
l1459:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 62:     PWM1PRL = 0xFF;
	setf	((c:1123))^0400h,c	;volatile
	line	65
;mcc_generated_files/pwm/src/pwm1_16bit.c: 65:     PWM1PRH = 0xF9;
	movlw	low(0F9h)
	movwf	((c:1124))^0400h,c	;volatile
	line	68
	
l1461:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 68:     PWM1CPRE = 0x0;
	clrf	((c:1125))^0400h,c	;volatile
	line	71
	
l1463:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 71:     PWM1PIPOS = 0x0;
	clrf	((c:1126))^0400h,c	;volatile
	line	74
	
l1465:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 74:     PWM1GIR = 0x0;
	clrf	((c:1127))^0400h,c	;volatile
	line	77
	
l1467:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 77:     PWM1GIE = 0x0;
	clrf	((c:1128))^0400h,c	;volatile
	line	80
	
l1469:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 80:     PWM1S1CFG = 0x0;
	clrf	((c:1130))^0400h,c	;volatile
	line	83
	
l1471:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 83:     PWM1S1P1L = 0x0;
	clrf	((c:1131))^0400h,c	;volatile
	line	86
;mcc_generated_files/pwm/src/pwm1_16bit.c: 86:     PWM1S1P1H = 0x7D;
	movlw	low(07Dh)
	movwf	((c:1132))^0400h,c	;volatile
	line	89
	
l1473:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 89:     PWM1S1P2L = 0x0;
	clrf	((c:1133))^0400h,c	;volatile
	line	92
;mcc_generated_files/pwm/src/pwm1_16bit.c: 92:     PWM1S1P2H = 0x7D;
	movlw	low(07Dh)
	movwf	((c:1134))^0400h,c	;volatile
	line	95
	
l1475:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 95:     PIR4bits.PWM1PIF = 0;
	bcf	((c:1202))^0400h,c,6	;volatile
	line	98
	
l1477:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 98:     PIR4bits.PWM1IF = 0;
	bcf	((c:1202))^0400h,c,7	;volatile
	line	101
	
l1479:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 101:     PWM1GIRbits.S1P1IF = 0;
	bcf	((c:1127))^0400h,c,0	;volatile
	line	104
	
l1481:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 104:     PWM1GIRbits.S1P2IF = 0;
	bcf	((c:1127))^0400h,c,1	;volatile
	line	107
	
l1483:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 107:     PIE4bits.PWM1IE = 1;
	bsf	((c:1186))^0400h,c,7	;volatile
	line	110
	
l1485:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 110:     PIE4bits.PWM1PIE = 0;
	bcf	((c:1186))^0400h,c,6	;volatile
	line	113
	
l1487:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 113:     PWM1_16BIT_Slice1Output1_SetInterruptHandler(PWM1_16BIT_Slice1Output1_DefaultInterruptHandler);
		movlw	low(_PWM1_16BIT_Slice1Output1_DefaultInterruptHandler)
	movwf	((c:PWM1_16BIT_Slice1Output1_SetInterruptHandler@InterruptHandler))^0500h,c
	movlw	high(_PWM1_16BIT_Slice1Output1_DefaultInterruptHandler)
	movwf	((c:PWM1_16BIT_Slice1Output1_SetInterruptHandler@InterruptHandler+1))^0500h,c
	movlw	low highword(_PWM1_16BIT_Slice1Output1_DefaultInterruptHandler)
	movwf	((c:PWM1_16BIT_Slice1Output1_SetInterruptHandler@InterruptHandler+2))^0500h,c

	call	_PWM1_16BIT_Slice1Output1_SetInterruptHandler	;wreg free
	line	114
	
l1489:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 114:     PWM1_16BIT_Slice1Output2_SetInterruptHandler(PWM1_16BIT_Slice1Output2_DefaultInterruptHandler);
		movlw	low(_PWM1_16BIT_Slice1Output2_DefaultInterruptHandler)
	movwf	((c:PWM1_16BIT_Slice1Output2_SetInterruptHandler@InterruptHandler))^0500h,c
	movlw	high(_PWM1_16BIT_Slice1Output2_DefaultInterruptHandler)
	movwf	((c:PWM1_16BIT_Slice1Output2_SetInterruptHandler@InterruptHandler+1))^0500h,c
	movlw	low highword(_PWM1_16BIT_Slice1Output2_DefaultInterruptHandler)
	movwf	((c:PWM1_16BIT_Slice1Output2_SetInterruptHandler@InterruptHandler+2))^0500h,c

	call	_PWM1_16BIT_Slice1Output2_SetInterruptHandler	;wreg free
	line	115
	
l1491:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 115:     PWM1_16BIT_Period_SetInterruptHandler(PWM1_16BIT_Period_DefaultInterruptHandler);
		movlw	low(_PWM1_16BIT_Period_DefaultInterruptHandler)
	movwf	((c:PWM1_16BIT_Period_SetInterruptHandler@InterruptHandler))^0500h,c
	movlw	high(_PWM1_16BIT_Period_DefaultInterruptHandler)
	movwf	((c:PWM1_16BIT_Period_SetInterruptHandler@InterruptHandler+1))^0500h,c
	movlw	low highword(_PWM1_16BIT_Period_DefaultInterruptHandler)
	movwf	((c:PWM1_16BIT_Period_SetInterruptHandler@InterruptHandler+2))^0500h,c

	call	_PWM1_16BIT_Period_SetInterruptHandler	;wreg free
	line	118
	
l1493:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 118:     PWM1CON = 0x80;
	movlw	low(080h)
	movwf	((c:1129))^0400h,c	;volatile
	line	119
	
l61:
	return	;funcret
	callstack 0
GLOBAL	__end_of_PWM1_16BIT_Initialize
	__end_of_PWM1_16BIT_Initialize:
	signat	_PWM1_16BIT_Initialize,89
	global	_PWM1_16BIT_Slice1Output2_SetInterruptHandler

;; *************** function _PWM1_16BIT_Slice1Output2_SetInterruptHandler *****************
;; Defined at:
;;		line 194 in file "mcc_generated_files/pwm/src/pwm1_16bit.c"
;; Parameters:    Size  Location     Type
;;  InterruptHan    3    6[COMRAM] PTR FTN()void 
;;		 -> PWM1_16BIT_Slice1Output2_DefaultInterruptHandler(1), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31  BANK32  BANK33  BANK34  BANK35  BANK36
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PWM1_16BIT_Initialize
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2,group=0
	line	194
global __ptext5
__ptext5:
psect	text5
	file	"mcc_generated_files/pwm/src/pwm1_16bit.c"
	line	194
	
_PWM1_16BIT_Slice1Output2_SetInterruptHandler:
;incstack = 0
	callstack 120
	line	196
	
l1439:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 194: void PWM1_16BIT_Slice1Output2_SetInterruptHandler(void (* InterruptHandler)(void));mcc_generated_files/pwm/src/pwm1_16bit.c: 195: {;mcc_generated_files/pwm/src/pwm1_16bit.c: 196:     PWM1_16BIT_Slice1Output2_InterruptHandler = InterruptHandler;
		movff	(c:PWM1_16BIT_Slice1Output2_SetInterruptHandler@InterruptHandler),(c:_PWM1_16BIT_Slice1Output2_InterruptHandler)
	movff	(c:PWM1_16BIT_Slice1Output2_SetInterruptHandler@InterruptHandler+1),(c:_PWM1_16BIT_Slice1Output2_InterruptHandler+1)
	movff	(c:PWM1_16BIT_Slice1Output2_SetInterruptHandler@InterruptHandler+2),(c:_PWM1_16BIT_Slice1Output2_InterruptHandler+2)

	line	197
	
l98:
	return	;funcret
	callstack 0
GLOBAL	__end_of_PWM1_16BIT_Slice1Output2_SetInterruptHandler
	__end_of_PWM1_16BIT_Slice1Output2_SetInterruptHandler:
	signat	_PWM1_16BIT_Slice1Output2_SetInterruptHandler,4217
	global	_PWM1_16BIT_Slice1Output1_SetInterruptHandler

;; *************** function _PWM1_16BIT_Slice1Output1_SetInterruptHandler *****************
;; Defined at:
;;		line 189 in file "mcc_generated_files/pwm/src/pwm1_16bit.c"
;; Parameters:    Size  Location     Type
;;  InterruptHan    3    6[COMRAM] PTR FTN()void 
;;		 -> PWM1_16BIT_Slice1Output1_DefaultInterruptHandler(1), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31  BANK32  BANK33  BANK34  BANK35  BANK36
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PWM1_16BIT_Initialize
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2,group=0
	line	189
global __ptext6
__ptext6:
psect	text6
	file	"mcc_generated_files/pwm/src/pwm1_16bit.c"
	line	189
	
_PWM1_16BIT_Slice1Output1_SetInterruptHandler:
;incstack = 0
	callstack 120
	line	191
	
l1437:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 189: void PWM1_16BIT_Slice1Output1_SetInterruptHandler(void (* InterruptHandler)(void));mcc_generated_files/pwm/src/pwm1_16bit.c: 190: {;mcc_generated_files/pwm/src/pwm1_16bit.c: 191:     PWM1_16BIT_Slice1Output1_InterruptHandler = InterruptHandler;
		movff	(c:PWM1_16BIT_Slice1Output1_SetInterruptHandler@InterruptHandler),(c:_PWM1_16BIT_Slice1Output1_InterruptHandler)
	movff	(c:PWM1_16BIT_Slice1Output1_SetInterruptHandler@InterruptHandler+1),(c:_PWM1_16BIT_Slice1Output1_InterruptHandler+1)
	movff	(c:PWM1_16BIT_Slice1Output1_SetInterruptHandler@InterruptHandler+2),(c:_PWM1_16BIT_Slice1Output1_InterruptHandler+2)

	line	192
	
l95:
	return	;funcret
	callstack 0
GLOBAL	__end_of_PWM1_16BIT_Slice1Output1_SetInterruptHandler
	__end_of_PWM1_16BIT_Slice1Output1_SetInterruptHandler:
	signat	_PWM1_16BIT_Slice1Output1_SetInterruptHandler,4217
	global	_PWM1_16BIT_Period_SetInterruptHandler

;; *************** function _PWM1_16BIT_Period_SetInterruptHandler *****************
;; Defined at:
;;		line 199 in file "mcc_generated_files/pwm/src/pwm1_16bit.c"
;; Parameters:    Size  Location     Type
;;  InterruptHan    3    6[COMRAM] PTR FTN()void 
;;		 -> PWM1_16BIT_Period_DefaultInterruptHandler(1), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31  BANK32  BANK33  BANK34  BANK35  BANK36
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PWM1_16BIT_Initialize
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2,group=0
	line	199
global __ptext7
__ptext7:
psect	text7
	file	"mcc_generated_files/pwm/src/pwm1_16bit.c"
	line	199
	
_PWM1_16BIT_Period_SetInterruptHandler:
;incstack = 0
	callstack 120
	line	201
	
l1441:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 199: void PWM1_16BIT_Period_SetInterruptHandler(void (* InterruptHandler)(void));mcc_generated_files/pwm/src/pwm1_16bit.c: 200: {;mcc_generated_files/pwm/src/pwm1_16bit.c: 201:     PWM1_16BIT_Period_InterruptHandler = InterruptHandler;
		movff	(c:PWM1_16BIT_Period_SetInterruptHandler@InterruptHandler),(c:_PWM1_16BIT_Period_InterruptHandler)
	movff	(c:PWM1_16BIT_Period_SetInterruptHandler@InterruptHandler+1),(c:_PWM1_16BIT_Period_InterruptHandler+1)
	movff	(c:PWM1_16BIT_Period_SetInterruptHandler@InterruptHandler+2),(c:_PWM1_16BIT_Period_InterruptHandler+2)

	line	202
	
l101:
	return	;funcret
	callstack 0
GLOBAL	__end_of_PWM1_16BIT_Period_SetInterruptHandler
	__end_of_PWM1_16BIT_Period_SetInterruptHandler:
	signat	_PWM1_16BIT_Period_SetInterruptHandler,4217
	global	_PIN_MANAGER_Initialize

;; *************** function _PIN_MANAGER_Initialize *****************
;; Defined at:
;;		line 38 in file "mcc_generated_files/system/src/pins.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31  BANK32  BANK33  BANK34  BANK35  BANK36
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/system/src/pins.c"
	line	38
global __ptext8
__ptext8:
psect	text8
	file	"mcc_generated_files/system/src/pins.c"
	line	38
	
_PIN_MANAGER_Initialize:
;incstack = 0
	callstack 121
	line	43
	
l1187:
;mcc_generated_files/system/src/pins.c: 43:     LATA = 0x0;
	clrf	((c:1214))^0400h,c	;volatile
	line	44
;mcc_generated_files/system/src/pins.c: 44:     LATB = 0x0;
	clrf	((c:1215))^0400h,c	;volatile
	line	45
;mcc_generated_files/system/src/pins.c: 45:     LATC = 0x0;
	clrf	((c:1216))^0400h,c	;volatile
	line	46
;mcc_generated_files/system/src/pins.c: 46:     LATD = 0x0;
	clrf	((c:1217))^0400h,c	;volatile
	line	47
;mcc_generated_files/system/src/pins.c: 47:     LATE = 0x0;
	clrf	((c:1218))^0400h,c	;volatile
	line	48
;mcc_generated_files/system/src/pins.c: 48:     LATF = 0x0;
	clrf	((c:1219))^0400h,c	;volatile
	line	52
;mcc_generated_files/system/src/pins.c: 52:     ODCONA = 0x0;
	movlb	4	; () banked
	clrf	((1026))&0ffh	;volatile
	line	53
;mcc_generated_files/system/src/pins.c: 53:     ODCONB = 0x0;
	clrf	((1034))&0ffh	;volatile
	line	54
;mcc_generated_files/system/src/pins.c: 54:     ODCONC = 0x0;
	clrf	((1042))&0ffh	;volatile
	line	55
;mcc_generated_files/system/src/pins.c: 55:     ODCOND = 0x0;
	clrf	((1050))&0ffh	;volatile
	line	56
;mcc_generated_files/system/src/pins.c: 56:     ODCONE = 0x0;
	clrf	((1058))&0ffh	;volatile
	line	57
;mcc_generated_files/system/src/pins.c: 57:     ODCONF = 0x0;
	clrf	((1066))&0ffh	;volatile
	line	62
;mcc_generated_files/system/src/pins.c: 62:     TRISA = 0xFF;
	setf	((c:1222))^0400h,c	;volatile
	line	63
;mcc_generated_files/system/src/pins.c: 63:     TRISB = 0xFF;
	setf	((c:1223))^0400h,c	;volatile
	line	64
;mcc_generated_files/system/src/pins.c: 64:     TRISC = 0xFF;
	setf	((c:1224))^0400h,c	;volatile
	line	65
;mcc_generated_files/system/src/pins.c: 65:     TRISD = 0xFF;
	setf	((c:1225))^0400h,c	;volatile
	line	66
	
l1189:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 66:     TRISE = 0xF;
	movlw	low(0Fh)
	movwf	((c:1226))^0400h,c	;volatile
	line	67
;mcc_generated_files/system/src/pins.c: 67:     TRISF = 0xF7;
	movlw	low(0F7h)
	movwf	((c:1227))^0400h,c	;volatile
	line	72
	
l1191:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 72:     ANSELA = 0xFF;
	setf	((1024))&0ffh	;volatile
	line	73
	
l1193:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 73:     ANSELB = 0xFF;
	setf	((1032))&0ffh	;volatile
	line	74
	
l1195:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 74:     ANSELC = 0xFF;
	setf	((1040))&0ffh	;volatile
	line	75
	
l1197:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 75:     ANSELD = 0xFF;
	setf	((1048))&0ffh	;volatile
	line	76
;mcc_generated_files/system/src/pins.c: 76:     ANSELE = 0x7;
	movlw	low(07h)
	movwf	((1056))&0ffh	;volatile
	line	77
;mcc_generated_files/system/src/pins.c: 77:     ANSELF = 0xF7;
	movlw	low(0F7h)
	movwf	((1064))&0ffh	;volatile
	line	82
	
l1199:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 82:     WPUA = 0x0;
	clrf	((1025))&0ffh	;volatile
	line	83
	
l1201:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 83:     WPUB = 0x0;
	clrf	((1033))&0ffh	;volatile
	line	84
	
l1203:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 84:     WPUC = 0x0;
	clrf	((1041))&0ffh	;volatile
	line	85
	
l1205:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 85:     WPUD = 0x0;
	clrf	((1049))&0ffh	;volatile
	line	86
	
l1207:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 86:     WPUE = 0x0;
	clrf	((1057))&0ffh	;volatile
	line	87
	
l1209:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 87:     WPUF = 0x0;
	clrf	((1065))&0ffh	;volatile
	line	93
	
l1211:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 93:     SLRCONA = 0xFF;
	setf	((1027))&0ffh	;volatile
	line	94
	
l1213:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 94:     SLRCONB = 0xFF;
	setf	((1035))&0ffh	;volatile
	line	95
	
l1215:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 95:     SLRCONC = 0xFF;
	setf	((1043))&0ffh	;volatile
	line	96
	
l1217:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 96:     SLRCOND = 0xFF;
	setf	((1051))&0ffh	;volatile
	line	97
;mcc_generated_files/system/src/pins.c: 97:     SLRCONE = 0x7;
	movlw	low(07h)
	movwf	((1059))&0ffh	;volatile
	line	98
	
l1219:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 98:     SLRCONF = 0xFF;
	setf	((1067))&0ffh	;volatile
	line	103
	
l1221:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 103:     INLVLA = 0xFF;
	setf	((1028))&0ffh	;volatile
	line	104
	
l1223:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 104:     INLVLB = 0xFF;
	setf	((1036))&0ffh	;volatile
	line	105
	
l1225:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 105:     INLVLC = 0xFF;
	setf	((1044))&0ffh	;volatile
	line	106
	
l1227:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 106:     INLVLD = 0xFF;
	setf	((1052))&0ffh	;volatile
	line	107
;mcc_generated_files/system/src/pins.c: 107:     INLVLE = 0xF;
	movlw	low(0Fh)
	movwf	((1060))&0ffh	;volatile
	line	108
	
l1229:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 108:     INLVLF = 0xFF;
	setf	((1068))&0ffh	;volatile
	line	113
	
l1231:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 113:     RB1I2C = 0x0;
	movlb	2	; () banked
	clrf	((649))&0ffh	;volatile
	line	114
	
l1233:; BSR set to: 2

;mcc_generated_files/system/src/pins.c: 114:     RB2I2C = 0x0;
	clrf	((648))&0ffh	;volatile
	line	115
	
l1235:; BSR set to: 2

;mcc_generated_files/system/src/pins.c: 115:     RC3I2C = 0x0;
	clrf	((647))&0ffh	;volatile
	line	116
	
l1237:; BSR set to: 2

;mcc_generated_files/system/src/pins.c: 116:     RC4I2C = 0x0;
	clrf	((646))&0ffh	;volatile
	line	120
;mcc_generated_files/system/src/pins.c: 120:     RF3PPS = 0x18;
	movlw	low(018h)
	movwf	((556))&0ffh	;volatile
	line	125
	
l1239:; BSR set to: 2

;mcc_generated_files/system/src/pins.c: 125:     IOCAP = 0x0;
	movlb	4	; () banked
	clrf	((1029))&0ffh	;volatile
	line	126
	
l1241:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 126:     IOCAN = 0x0;
	clrf	((1030))&0ffh	;volatile
	line	127
	
l1243:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 127:     IOCAF = 0x0;
	clrf	((1031))&0ffh	;volatile
	line	128
	
l1245:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 128:     IOCBP = 0x0;
	clrf	((1037))&0ffh	;volatile
	line	129
	
l1247:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 129:     IOCBN = 0x0;
	clrf	((1038))&0ffh	;volatile
	line	130
	
l1249:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 130:     IOCBF = 0x0;
	clrf	((1039))&0ffh	;volatile
	line	131
	
l1251:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 131:     IOCCP = 0x0;
	clrf	((1045))&0ffh	;volatile
	line	132
	
l1253:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 132:     IOCCN = 0x0;
	clrf	((1046))&0ffh	;volatile
	line	133
	
l1255:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 133:     IOCCF = 0x0;
	clrf	((1047))&0ffh	;volatile
	line	134
	
l1257:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 134:     IOCEP = 0x0;
	clrf	((1061))&0ffh	;volatile
	line	135
	
l1259:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 135:     IOCEN = 0x0;
	clrf	((1062))&0ffh	;volatile
	line	136
	
l1261:; BSR set to: 4

;mcc_generated_files/system/src/pins.c: 136:     IOCEF = 0x0;
	clrf	((1063))&0ffh	;volatile
	line	139
	
l231:; BSR set to: 4

	return	;funcret
	callstack 0
GLOBAL	__end_of_PIN_MANAGER_Initialize
	__end_of_PIN_MANAGER_Initialize:
	signat	_PIN_MANAGER_Initialize,89
	global	_INTERRUPT_Initialize

;; *************** function _INTERRUPT_Initialize *****************
;; Defined at:
;;		line 42 in file "mcc_generated_files/system/src/interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31  BANK32  BANK33  BANK34  BANK35  BANK36
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_INT0_SetInterruptHandler
;;		_INT1_SetInterruptHandler
;;		_INT2_SetInterruptHandler
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/system/src/interrupt.c"
	line	42
global __ptext9
__ptext9:
psect	text9
	file	"mcc_generated_files/system/src/interrupt.c"
	line	42
	
_INTERRUPT_Initialize:; BSR set to: 4

;incstack = 0
	callstack 120
	line	45
	
l1495:
;mcc_generated_files/system/src/interrupt.c: 45:     INTCON0bits.IPEN = 0;
	bcf	((c:1238))^0400h,c,5	;volatile
	line	49
;mcc_generated_files/system/src/interrupt.c: 49:     (PIR1bits.INT0IF = 0);
	bcf	((c:1199))^0400h,c,0	;volatile
	line	50
;mcc_generated_files/system/src/interrupt.c: 50:     (INTCON0bits.INT0EDG = 1);
	bsf	((c:1238))^0400h,c,0	;volatile
	line	52
	
l1497:
;mcc_generated_files/system/src/interrupt.c: 52:     INT0_SetInterruptHandler(INT0_DefaultInterruptHandler);
		movlw	low(_INT0_DefaultInterruptHandler)
	movwf	((c:INT0_SetInterruptHandler@InterruptHandler))^0500h,c
	movlw	high(_INT0_DefaultInterruptHandler)
	movwf	((c:INT0_SetInterruptHandler@InterruptHandler+1))^0500h,c
	movlw	low highword(_INT0_DefaultInterruptHandler)
	movwf	((c:INT0_SetInterruptHandler@InterruptHandler+2))^0500h,c

	call	_INT0_SetInterruptHandler	;wreg free
	line	57
	
l1499:
;mcc_generated_files/system/src/interrupt.c: 57:     (PIR6bits.INT1IF = 0);
	bcf	((c:1204))^0400h,c,0	;volatile
	line	58
	
l1501:
;mcc_generated_files/system/src/interrupt.c: 58:     (INTCON0bits.INT1EDG = 1);
	bsf	((c:1238))^0400h,c,1	;volatile
	line	60
;mcc_generated_files/system/src/interrupt.c: 60:     INT1_SetInterruptHandler(INT1_DefaultInterruptHandler);
		movlw	low(_INT1_DefaultInterruptHandler)
	movwf	((c:INT1_SetInterruptHandler@InterruptHandler))^0500h,c
	movlw	high(_INT1_DefaultInterruptHandler)
	movwf	((c:INT1_SetInterruptHandler@InterruptHandler+1))^0500h,c
	movlw	low highword(_INT1_DefaultInterruptHandler)
	movwf	((c:INT1_SetInterruptHandler@InterruptHandler+2))^0500h,c

	call	_INT1_SetInterruptHandler	;wreg free
	line	65
	
l1503:
;mcc_generated_files/system/src/interrupt.c: 65:     (PIR10bits.INT2IF = 0);
	bcf	((c:1208))^0400h,c,0	;volatile
	line	66
	
l1505:
;mcc_generated_files/system/src/interrupt.c: 66:     (INTCON0bits.INT2EDG = 1);
	bsf	((c:1238))^0400h,c,2	;volatile
	line	68
;mcc_generated_files/system/src/interrupt.c: 68:     INT2_SetInterruptHandler(INT2_DefaultInterruptHandler);
		movlw	low(_INT2_DefaultInterruptHandler)
	movwf	((c:INT2_SetInterruptHandler@InterruptHandler))^0500h,c
	movlw	high(_INT2_DefaultInterruptHandler)
	movwf	((c:INT2_SetInterruptHandler@InterruptHandler+1))^0500h,c
	movlw	low highword(_INT2_DefaultInterruptHandler)
	movwf	((c:INT2_SetInterruptHandler@InterruptHandler+2))^0500h,c

	call	_INT2_SetInterruptHandler	;wreg free
	line	71
	
l281:
	return	;funcret
	callstack 0
GLOBAL	__end_of_INTERRUPT_Initialize
	__end_of_INTERRUPT_Initialize:
	signat	_INTERRUPT_Initialize,89
	global	_INT2_SetInterruptHandler

;; *************** function _INT2_SetInterruptHandler *****************
;; Defined at:
;;		line 167 in file "mcc_generated_files/system/src/interrupt.c"
;; Parameters:    Size  Location     Type
;;  InterruptHan    3    6[COMRAM] PTR FTN()void 
;;		 -> INT2_DefaultInterruptHandler(1), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31  BANK32  BANK33  BANK34  BANK35  BANK36
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_INTERRUPT_Initialize
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2,group=0
	line	167
global __ptext10
__ptext10:
psect	text10
	file	"mcc_generated_files/system/src/interrupt.c"
	line	167
	
_INT2_SetInterruptHandler:
;incstack = 0
	callstack 120
	line	168
	
l1451:
;mcc_generated_files/system/src/interrupt.c: 168:     INT2_InterruptHandler = InterruptHandler;
		movff	(c:INT2_SetInterruptHandler@InterruptHandler),(c:_INT2_InterruptHandler)
	movff	(c:INT2_SetInterruptHandler@InterruptHandler+1),(c:_INT2_InterruptHandler+1)
	movff	(c:INT2_SetInterruptHandler@InterruptHandler+2),(c:_INT2_InterruptHandler+2)

	line	169
	
l326:
	return	;funcret
	callstack 0
GLOBAL	__end_of_INT2_SetInterruptHandler
	__end_of_INT2_SetInterruptHandler:
	signat	_INT2_SetInterruptHandler,4217
	global	_INT1_SetInterruptHandler

;; *************** function _INT1_SetInterruptHandler *****************
;; Defined at:
;;		line 141 in file "mcc_generated_files/system/src/interrupt.c"
;; Parameters:    Size  Location     Type
;;  InterruptHan    3    6[COMRAM] PTR FTN()void 
;;		 -> INT1_DefaultInterruptHandler(1), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31  BANK32  BANK33  BANK34  BANK35  BANK36
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_INTERRUPT_Initialize
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2,group=0
	line	141
global __ptext11
__ptext11:
psect	text11
	file	"mcc_generated_files/system/src/interrupt.c"
	line	141
	
_INT1_SetInterruptHandler:
;incstack = 0
	callstack 120
	line	142
	
l1449:
;mcc_generated_files/system/src/interrupt.c: 142:     INT1_InterruptHandler = InterruptHandler;
		movff	(c:INT1_SetInterruptHandler@InterruptHandler),(c:_INT1_InterruptHandler)
	movff	(c:INT1_SetInterruptHandler@InterruptHandler+1),(c:_INT1_InterruptHandler+1)
	movff	(c:INT1_SetInterruptHandler@InterruptHandler+2),(c:_INT1_InterruptHandler+2)

	line	143
	
l313:
	return	;funcret
	callstack 0
GLOBAL	__end_of_INT1_SetInterruptHandler
	__end_of_INT1_SetInterruptHandler:
	signat	_INT1_SetInterruptHandler,4217
	global	_INT0_SetInterruptHandler

;; *************** function _INT0_SetInterruptHandler *****************
;; Defined at:
;;		line 115 in file "mcc_generated_files/system/src/interrupt.c"
;; Parameters:    Size  Location     Type
;;  InterruptHan    3    6[COMRAM] PTR FTN()void 
;;		 -> INT0_DefaultInterruptHandler(1), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31  BANK32  BANK33  BANK34  BANK35  BANK36
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_INTERRUPT_Initialize
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2,group=0
	line	115
global __ptext12
__ptext12:
psect	text12
	file	"mcc_generated_files/system/src/interrupt.c"
	line	115
	
_INT0_SetInterruptHandler:
;incstack = 0
	callstack 120
	line	116
	
l1447:
;mcc_generated_files/system/src/interrupt.c: 116:     INT0_InterruptHandler = InterruptHandler;
		movff	(c:INT0_SetInterruptHandler@InterruptHandler),(c:_INT0_InterruptHandler)
	movff	(c:INT0_SetInterruptHandler@InterruptHandler+1),(c:_INT0_InterruptHandler+1)
	movff	(c:INT0_SetInterruptHandler@InterruptHandler+2),(c:_INT0_InterruptHandler+2)

	line	117
	
l300:
	return	;funcret
	callstack 0
GLOBAL	__end_of_INT0_SetInterruptHandler
	__end_of_INT0_SetInterruptHandler:
	signat	_INT0_SetInterruptHandler,4217
	global	_CLOCK_Initialize

;; *************** function _CLOCK_Initialize *****************
;; Defined at:
;;		line 39 in file "mcc_generated_files/system/src/clock.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31  BANK32  BANK33  BANK34  BANK35  BANK36
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/system/src/clock.c"
	line	39
global __ptext13
__ptext13:
psect	text13
	file	"mcc_generated_files/system/src/clock.c"
	line	39
	
_CLOCK_Initialize:
;incstack = 0
	callstack 121
	line	42
	
l1275:
;mcc_generated_files/system/src/clock.c: 42:     OSCCON1 = (0 << 0x0)
	movlw	low(060h)
	movlb	0	; () banked
	movwf	((173))&0ffh	;volatile
	line	44
	
l1277:; BSR set to: 0

;mcc_generated_files/system/src/clock.c: 44:     OSCCON3 = (0 << 0x6)
	clrf	((175))&0ffh	;volatile
	line	46
	
l1279:; BSR set to: 0

;mcc_generated_files/system/src/clock.c: 46:     OSCEN = (0 << 0x7)
	clrf	((179))&0ffh	;volatile
	line	53
;mcc_generated_files/system/src/clock.c: 53:     OSCFRQ = (8 << 0x0);
	movlw	low(08h)
	movwf	((177))&0ffh	;volatile
	line	54
	
l1281:; BSR set to: 0

;mcc_generated_files/system/src/clock.c: 54:     OSCTUNE = (0 << 0x0);
	clrf	((176))&0ffh	;volatile
	line	55
	
l1283:; BSR set to: 0

;mcc_generated_files/system/src/clock.c: 55:     ACTCON = (0 << 0x7)
	clrf	((172))&0ffh	;volatile
	line	58
	
l357:; BSR set to: 0

	return	;funcret
	callstack 0
GLOBAL	__end_of_CLOCK_Initialize
	__end_of_CLOCK_Initialize:
	signat	_CLOCK_Initialize,89
	global	_PWM1_16BIT_WritePeriodRegister

;; *************** function _PWM1_16BIT_WritePeriodRegister *****************
;; Defined at:
;;		line 131 in file "mcc_generated_files/pwm/src/pwm1_16bit.c"
;; Parameters:    Size  Location     Type
;;  periodCount     2    6[COMRAM] unsigned short 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31  BANK32  BANK33  BANK34  BANK35  BANK36
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/pwm/src/pwm1_16bit.c"
	line	131
global __ptext14
__ptext14:
psect	text14
	file	"mcc_generated_files/pwm/src/pwm1_16bit.c"
	line	131
	
_PWM1_16BIT_WritePeriodRegister:; BSR set to: 0

;incstack = 0
	callstack 122
	line	133
	
l1531:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 131: void PWM1_16BIT_WritePeriodRegister(uint16_t periodCount);mcc_generated_files/pwm/src/pwm1_16bit.c: 132: {;mcc_generated_files/pwm/src/pwm1_16bit.c: 133:     PWM1PRL = (uint8_t)periodCount;
	movff	(c:PWM1_16BIT_WritePeriodRegister@periodCount),(c:1123)	;volatile
	line	134
	
l1533:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 134:     PWM1PRH= (uint8_t)(periodCount >> 8);
	movf	((c:PWM1_16BIT_WritePeriodRegister@periodCount+1))^0500h,c,w
	movwf	((c:1124))^0400h,c	;volatile
	line	135
	
l70:
	return	;funcret
	callstack 0
GLOBAL	__end_of_PWM1_16BIT_WritePeriodRegister
	__end_of_PWM1_16BIT_WritePeriodRegister:
	signat	_PWM1_16BIT_WritePeriodRegister,4217
	global	_INTERRUPT_InterruptManager

;; *************** function _INTERRUPT_InterruptManager *****************
;; Defined at:
;;		line 80 in file "mcc_generated_files/system/src/interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pcl, pclath, pclatu, tosl, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31  BANK32  BANK33  BANK34  BANK35  BANK36
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_PWM1_16BIT_PWMI_ISR
;;		_TMR0_ISR
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/system/src/interrupt.c"
	line	80
global __ptext15
__ptext15:
psect	text15
	file	"mcc_generated_files/system/src/interrupt.c"
	line	80
	
_INTERRUPT_InterruptManager:
;incstack = 0
	callstack 120
	movff	pclath+0,??_INTERRUPT_InterruptManager+0
	movff	pclatu+0,??_INTERRUPT_InterruptManager+1
	line	83
	
i2l1551:
;mcc_generated_files/system/src/interrupt.c: 83:     if(PIE4bits.PWM1IE == 1 && PIR4bits.PWM1IF == 1)
	btfss	((c:1186))^0400h,c,7	;volatile
	goto	i2u35_41
	goto	i2u35_40
i2u35_41:
	goto	i2l286
i2u35_40:
	
i2l1553:
	btfss	((c:1202))^0400h,c,7	;volatile
	goto	i2u36_41
	goto	i2u36_40
i2u36_41:
	goto	i2l286
i2u36_40:
	line	85
	
i2l1555:
;mcc_generated_files/system/src/interrupt.c: 84:     {;mcc_generated_files/system/src/interrupt.c: 85:         PWM1_16BIT_PWMI_ISR();
	call	_PWM1_16BIT_PWMI_ISR	;wreg free
	line	86
;mcc_generated_files/system/src/interrupt.c: 86:     }
	goto	i2l290
	line	87
;mcc_generated_files/system/src/interrupt.c: 87:     else if(PIE3bits.TMR0IE == 1 && PIR3bits.TMR0IF == 1)
	
i2l286:
	btfss	((c:1185))^0400h,c,7	;volatile
	goto	i2u37_41
	goto	i2u37_40
i2u37_41:
	goto	i2l290
i2u37_40:
	
i2l1557:
	btfss	((c:1201))^0400h,c,7	;volatile
	goto	i2u38_41
	goto	i2u38_40
i2u38_41:
	goto	i2l290
i2u38_40:
	line	89
	
i2l1559:
;mcc_generated_files/system/src/interrupt.c: 88:     {;mcc_generated_files/system/src/interrupt.c: 89:         TMR0_ISR();
	call	_TMR0_ISR	;wreg free
	line	95
;mcc_generated_files/system/src/interrupt.c: 90:     }
	
i2l290:
	movff	??_INTERRUPT_InterruptManager+1,pclatu+0
	movff	??_INTERRUPT_InterruptManager+0,pclath+0
	retfie f
	callstack 0
GLOBAL	__end_of_INTERRUPT_InterruptManager
	__end_of_INTERRUPT_InterruptManager:
	signat	_INTERRUPT_InterruptManager,89
	global	_TMR0_ISR

;; *************** function _TMR0_ISR *****************
;; Defined at:
;;		line 126 in file "mcc_generated_files/timer/src/tmr0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pcl, pclath, pclatu, tosl, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31  BANK32  BANK33  BANK34  BANK35  BANK36
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		NULL
;;		_PWM_DutyCycleSetPercentage_Slice1
;;		_TMR0_DefaultCallback
;; This function is called by:
;;		_INTERRUPT_InterruptManager
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/timer/src/tmr0.c"
	line	126
global __ptext16
__ptext16:
psect	text16
	file	"mcc_generated_files/timer/src/tmr0.c"
	line	126
	
_TMR0_ISR:
;incstack = 0
	callstack 120
	line	128
	
i2l1535:
;mcc_generated_files/timer/src/tmr0.c: 128:     if(((void*)0) != TMR0_PeriodMatchCallback)
	movf	((c:_TMR0_PeriodMatchCallback))^0500h,c,w
iorwf	((c:_TMR0_PeriodMatchCallback+1))^0500h,c,w
iorwf	((c:_TMR0_PeriodMatchCallback+2))^0500h,c,w
	btfsc	status,2
	goto	i2u33_41
	goto	i2u33_40

i2u33_41:
	goto	i2l1539
i2u33_40:
	line	130
	
i2l1537:
;mcc_generated_files/timer/src/tmr0.c: 129:     {;mcc_generated_files/timer/src/tmr0.c: 130:         TMR0_PeriodMatchCallback();
	call	i2u34_48
	goto	i2u34_49
i2u34_48:
	push
	movwf	pclath
	movf	((c:_TMR0_PeriodMatchCallback))^0500h,c,w
	movwf	tosl
	movf	((c:_TMR0_PeriodMatchCallback+1))^0500h,c,w
	movwf	tosl+1
	movf	((c:_TMR0_PeriodMatchCallback+2))^0500h,c,w
	movwf	tosl+2
	movf	pclath,w
	
	return	;indir
	i2u34_49:
	line	132
	
i2l1539:
;mcc_generated_files/timer/src/tmr0.c: 132:     PIR3bits.TMR0IF = 0;
	bcf	((c:1201))^0400h,c,7	;volatile
	line	133
	
i2l445:
	return	;funcret
	callstack 0
GLOBAL	__end_of_TMR0_ISR
	__end_of_TMR0_ISR:
	signat	_TMR0_ISR,89
	global	_TMR0_DefaultCallback
	global	_PWM_DutyCycleSetPercentage_Slice1

;; *************** function _PWM_DutyCycleSetPercentage_Slice1 *****************
;; Defined at:
;;		line 41 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  PWM_DytyCycl    2    2[COMRAM] unsigned short 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31  BANK32  BANK33  BANK34  BANK35  BANK36
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_PWM1_16BIT_LoadBufferRegisters
;;		_PWM1_16BIT_SetSlice1Output1DutyCycleRegister
;; This function is called by:
;;		_main
;;		_TMR0_ISR
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	41
global __ptext17
__ptext17:
psect	text17
	file	"main.c"
	line	41
	
_PWM_DutyCycleSetPercentage_Slice1:
;incstack = 0
	callstack 120
	line	43
	
i2l1507:
;main.c: 43:     uint16_t PWM_DytyCyclePercentage = j;
	movff	(c:_j),(c:PWM_DutyCycleSetPercentage_Slice1@PWM_DytyCyclePercentage)
	movff	(c:_j+1),(c:PWM_DutyCycleSetPercentage_Slice1@PWM_DytyCyclePercentage+1)
	line	44
	
i2l1509:
;main.c: 44:     PWM1_16BIT_SetSlice1Output1DutyCycleRegister(PWM_DytyCyclePercentage);
	movff	(c:PWM_DutyCycleSetPercentage_Slice1@PWM_DytyCyclePercentage),(c:PWM1_16BIT_SetSlice1Output1DutyCycleRegister@registerValue)
	movff	(c:PWM_DutyCycleSetPercentage_Slice1@PWM_DytyCyclePercentage+1),(c:PWM1_16BIT_SetSlice1Output1DutyCycleRegister@registerValue+1)
	call	_PWM1_16BIT_SetSlice1Output1DutyCycleRegister	;wreg free
	line	45
	
i2l1511:
;main.c: 45:     PWM1_16BIT_LoadBufferRegisters();
	call	_PWM1_16BIT_LoadBufferRegisters	;wreg free
	line	46
	
i2l1513:
;main.c: 46:     if((j>0)&&(k==0))
	btfsc	((c:_j+1))^0500h,c,7
	goto	i2u28_41
	movf	((c:_j+1))^0500h,c,w
	bnz	i2u28_40
	decf	((c:_j))^0500h,c,w
	btfss	status,0
	goto	i2u28_41
	goto	i2u28_40

i2u28_41:
	goto	i2l1523
i2u28_40:
	
i2l1515:
	movf	((c:_k))^0500h,c,w
iorwf	((c:_k+1))^0500h,c,w
	btfss	status,2
	goto	i2u29_41
	goto	i2u29_40

i2u29_41:
	goto	i2l1523
i2u29_40:
	line	48
	
i2l1517:
;main.c: 47:     {;main.c: 48:         j++;
	infsnz	((c:_j))^0500h,c
	incf	((c:_j+1))^0500h,c
	line	49
	
i2l1519:
;main.c: 49:         if(j==80)
		movlw	80
	xorwf	((c:_j))^0500h,c,w
iorwf	((c:_j+1))^0500h,c,w
	btfss	status,2
	goto	i2u30_41
	goto	i2u30_40

i2u30_41:
	goto	i2l1523
i2u30_40:
	line	51
	
i2l1521:
;main.c: 50:         {;main.c: 51:             k=1;
	movlw	high(01h)
	movwf	((c:_k+1))^0500h,c
	movlw	low(01h)
	movwf	((c:_k))^0500h,c
	line	54
	
i2l1523:
;main.c: 54:     if(k==1)
		decf	((c:_k))^0500h,c,w
iorwf	((c:_k+1))^0500h,c,w
	btfss	status,2
	goto	i2u31_41
	goto	i2u31_40

i2u31_41:
	goto	i2l382
i2u31_40:
	line	56
	
i2l1525:
;main.c: 55:     {;main.c: 56:         j--;
	decf	((c:_j))^0500h,c
	btfss	status,0
	decf	((c:_j+1))^0500h,c
	line	57
	
i2l1527:
;main.c: 57:         if(j==1)
		decf	((c:_j))^0500h,c,w
iorwf	((c:_j+1))^0500h,c,w
	btfss	status,2
	goto	i2u32_41
	goto	i2u32_40

i2u32_41:
	goto	i2l382
i2u32_40:
	line	59
	
i2l1529:
;main.c: 58:         {;main.c: 59:             k=0;
	movlw	high(0)
	movwf	((c:_k+1))^0500h,c
	movlw	low(0)
	movwf	((c:_k))^0500h,c
	line	62
	
i2l382:
	return	;funcret
	callstack 0
GLOBAL	__end_of_PWM_DutyCycleSetPercentage_Slice1
	__end_of_PWM_DutyCycleSetPercentage_Slice1:
	signat	_PWM_DutyCycleSetPercentage_Slice1,89

;; *************** function _TMR0_DefaultCallback *****************
;; Defined at:
;;		line 140 in file "mcc_generated_files/timer/src/tmr0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31  BANK32  BANK33  BANK34  BANK35  BANK36
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TMR0_Initialize
;;		_TMR0_ISR
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/timer/src/tmr0.c"
	line	140
global __ptext18
__ptext18:
psect	text18
	file	"mcc_generated_files/timer/src/tmr0.c"
	line	140
	
_TMR0_DefaultCallback:
;incstack = 0
	callstack 121
	line	143
	
i2l451:
	return	;funcret
	callstack 0
GLOBAL	__end_of_TMR0_DefaultCallback
	__end_of_TMR0_DefaultCallback:
	signat	_TMR0_DefaultCallback,89
	global	_PWM1_16BIT_SetSlice1Output1DutyCycleRegister

;; *************** function _PWM1_16BIT_SetSlice1Output1DutyCycleRegister *****************
;; Defined at:
;;		line 137 in file "mcc_generated_files/pwm/src/pwm1_16bit.c"
;; Parameters:    Size  Location     Type
;;  registerValu    2    0[COMRAM] unsigned short 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31  BANK32  BANK33  BANK34  BANK35  BANK36
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PWM_DutyCycleSetPercentage_Slice1
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/pwm/src/pwm1_16bit.c"
	line	137
global __ptext19
__ptext19:
psect	text19
	file	"mcc_generated_files/pwm/src/pwm1_16bit.c"
	line	137
	
_PWM1_16BIT_SetSlice1Output1DutyCycleRegister:
;incstack = 0
	callstack 120
	line	139
	
i2l1443:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 137: void PWM1_16BIT_SetSlice1Output1DutyCycleRegister(uint16_t registerValue);mcc_generated_files/pwm/src/pwm1_16bit.c: 138: {;mcc_generated_files/pwm/src/pwm1_16bit.c: 139:     PWM1S1P1L = (uint8_t)(registerValue);
	movff	(c:PWM1_16BIT_SetSlice1Output1DutyCycleRegister@registerValue),(c:1131)	;volatile
	line	140
	
i2l1445:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 140:     PWM1S1P1H = (uint8_t)(registerValue >> 8);
	movf	((c:PWM1_16BIT_SetSlice1Output1DutyCycleRegister@registerValue+1))^0500h,c,w
	movwf	((c:1132))^0400h,c	;volatile
	line	141
	
i2l73:
	return	;funcret
	callstack 0
GLOBAL	__end_of_PWM1_16BIT_SetSlice1Output1DutyCycleRegister
	__end_of_PWM1_16BIT_SetSlice1Output1DutyCycleRegister:
	signat	_PWM1_16BIT_SetSlice1Output1DutyCycleRegister,4217
	global	_PWM1_16BIT_LoadBufferRegisters

;; *************** function _PWM1_16BIT_LoadBufferRegisters *****************
;; Defined at:
;;		line 149 in file "mcc_generated_files/pwm/src/pwm1_16bit.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31  BANK32  BANK33  BANK34  BANK35  BANK36
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PWM_DutyCycleSetPercentage_Slice1
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2,group=0
	line	149
global __ptext20
__ptext20:
psect	text20
	file	"mcc_generated_files/pwm/src/pwm1_16bit.c"
	line	149
	
_PWM1_16BIT_LoadBufferRegisters:
;incstack = 0
	callstack 120
	line	152
	
i2l1137:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 152:     PWM1CONbits.LD = 1;
	bsf	((c:1129))^0400h,c,2	;volatile
	line	153
	
i2l79:
	return	;funcret
	callstack 0
GLOBAL	__end_of_PWM1_16BIT_LoadBufferRegisters
	__end_of_PWM1_16BIT_LoadBufferRegisters:
	signat	_PWM1_16BIT_LoadBufferRegisters,89
	global	_PWM1_16BIT_PWMI_ISR

;; *************** function _PWM1_16BIT_PWMI_ISR *****************
;; Defined at:
;;		line 155 in file "mcc_generated_files/pwm/src/pwm1_16bit.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pcl, pclath, pclatu, tosl, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31  BANK32  BANK33  BANK34  BANK35  BANK36
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		NULL
;;		_PWM1_16BIT_Slice1Output1_DefaultInterruptHandler
;;		_PWM1_16BIT_Slice1Output2_DefaultInterruptHandler
;; This function is called by:
;;		_INTERRUPT_InterruptManager
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2,group=0
	line	155
global __ptext21
__ptext21:
psect	text21
	file	"mcc_generated_files/pwm/src/pwm1_16bit.c"
	line	155
	
_PWM1_16BIT_PWMI_ISR:
;incstack = 0
	callstack 121
	line	157
	
i2l1325:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 157:     PIR4bits.PWM1IF = 0;
	bcf	((c:1202))^0400h,c,7	;volatile
	line	158
;mcc_generated_files/pwm/src/pwm1_16bit.c: 158:     if((PWM1GIEbits.S1P1IE == 1) && (PWM1GIRbits.S1P1IF == 1))
	btfss	((c:1128))^0400h,c,0	;volatile
	goto	i2u6_41
	goto	i2u6_40
i2u6_41:
	goto	i2l82
i2u6_40:
	
i2l1327:
	btfss	((c:1127))^0400h,c,0	;volatile
	goto	i2u7_41
	goto	i2u7_40
i2u7_41:
	goto	i2l82
i2u7_40:
	line	160
	
i2l1329:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 159:     {;mcc_generated_files/pwm/src/pwm1_16bit.c: 160:         PWM1GIRbits.S1P1IF = 0;
	bcf	((c:1127))^0400h,c,0	;volatile
	line	161
	
i2l1331:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 161:         if(PWM1_16BIT_Slice1Output1_InterruptHandler != ((void*)0))
	movf	((c:_PWM1_16BIT_Slice1Output1_InterruptHandler))^0500h,c,w
iorwf	((c:_PWM1_16BIT_Slice1Output1_InterruptHandler+1))^0500h,c,w
iorwf	((c:_PWM1_16BIT_Slice1Output1_InterruptHandler+2))^0500h,c,w
	btfsc	status,2
	goto	i2u8_41
	goto	i2u8_40

i2u8_41:
	goto	i2l88
i2u8_40:
	line	163
	
i2l1333:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 162:         {;mcc_generated_files/pwm/src/pwm1_16bit.c: 163:             PWM1_16BIT_Slice1Output1_InterruptHandler();
	call	i2u9_48
	goto	i2u9_49
i2u9_48:
	push
	movwf	pclath
	movf	((c:_PWM1_16BIT_Slice1Output1_InterruptHandler))^0500h,c,w
	movwf	tosl
	movf	((c:_PWM1_16BIT_Slice1Output1_InterruptHandler+1))^0500h,c,w
	movwf	tosl+1
	movf	((c:_PWM1_16BIT_Slice1Output1_InterruptHandler+2))^0500h,c,w
	movwf	tosl+2
	movf	pclath,w
	
	return	;indir
	i2u9_49:
	goto	i2l88
	line	166
;mcc_generated_files/pwm/src/pwm1_16bit.c: 166:     else if((PWM1GIEbits.S1P2IE == 1) && (PWM1GIRbits.S1P2IF == 1))
	
i2l82:
	btfss	((c:1128))^0400h,c,1	;volatile
	goto	i2u10_41
	goto	i2u10_40
i2u10_41:
	goto	i2l88
i2u10_40:
	
i2l1335:
	btfss	((c:1127))^0400h,c,1	;volatile
	goto	i2u11_41
	goto	i2u11_40
i2u11_41:
	goto	i2l88
i2u11_40:
	line	168
	
i2l1337:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 167:     {;mcc_generated_files/pwm/src/pwm1_16bit.c: 168:         PWM1GIRbits.S1P2IF = 0;
	bcf	((c:1127))^0400h,c,1	;volatile
	line	169
	
i2l1339:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 169:         if(PWM1_16BIT_Slice1Output2_InterruptHandler != ((void*)0))
	movf	((c:_PWM1_16BIT_Slice1Output2_InterruptHandler))^0500h,c,w
iorwf	((c:_PWM1_16BIT_Slice1Output2_InterruptHandler+1))^0500h,c,w
iorwf	((c:_PWM1_16BIT_Slice1Output2_InterruptHandler+2))^0500h,c,w
	btfsc	status,2
	goto	i2u12_41
	goto	i2u12_40

i2u12_41:
	goto	i2l88
i2u12_40:
	line	171
	
i2l1341:
;mcc_generated_files/pwm/src/pwm1_16bit.c: 170:         {;mcc_generated_files/pwm/src/pwm1_16bit.c: 171:             PWM1_16BIT_Slice1Output2_InterruptHandler();
	call	i2u13_48
	goto	i2u13_49
i2u13_48:
	push
	movwf	pclath
	movf	((c:_PWM1_16BIT_Slice1Output2_InterruptHandler))^0500h,c,w
	movwf	tosl
	movf	((c:_PWM1_16BIT_Slice1Output2_InterruptHandler+1))^0500h,c,w
	movwf	tosl+1
	movf	((c:_PWM1_16BIT_Slice1Output2_InterruptHandler+2))^0500h,c,w
	movwf	tosl+2
	movf	pclath,w
	
	return	;indir
	i2u13_49:
	line	178
	
i2l88:
	return	;funcret
	callstack 0
GLOBAL	__end_of_PWM1_16BIT_PWMI_ISR
	__end_of_PWM1_16BIT_PWMI_ISR:
	signat	_PWM1_16BIT_PWMI_ISR,89
	global	_PWM1_16BIT_Slice1Output2_DefaultInterruptHandler

;; *************** function _PWM1_16BIT_Slice1Output2_DefaultInterruptHandler *****************
;; Defined at:
;;		line 210 in file "mcc_generated_files/pwm/src/pwm1_16bit.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31  BANK32  BANK33  BANK34  BANK35  BANK36
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PWM1_16BIT_Initialize
;;		_PWM1_16BIT_PWMI_ISR
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2,group=0
	line	210
global __ptext22
__ptext22:
psect	text22
	file	"mcc_generated_files/pwm/src/pwm1_16bit.c"
	line	210
	
_PWM1_16BIT_Slice1Output2_DefaultInterruptHandler:
;incstack = 0
	callstack 121
	line	214
	
i2l107:
	return	;funcret
	callstack 0
GLOBAL	__end_of_PWM1_16BIT_Slice1Output2_DefaultInterruptHandler
	__end_of_PWM1_16BIT_Slice1Output2_DefaultInterruptHandler:
	signat	_PWM1_16BIT_Slice1Output2_DefaultInterruptHandler,89
	global	_PWM1_16BIT_Slice1Output1_DefaultInterruptHandler

;; *************** function _PWM1_16BIT_Slice1Output1_DefaultInterruptHandler *****************
;; Defined at:
;;		line 204 in file "mcc_generated_files/pwm/src/pwm1_16bit.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31  BANK32  BANK33  BANK34  BANK35  BANK36
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PWM1_16BIT_Initialize
;;		_PWM1_16BIT_PWMI_ISR
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2,group=0
	line	204
global __ptext23
__ptext23:
psect	text23
	file	"mcc_generated_files/pwm/src/pwm1_16bit.c"
	line	204
	
_PWM1_16BIT_Slice1Output1_DefaultInterruptHandler:
;incstack = 0
	callstack 121
	line	208
	
i2l104:
	return	;funcret
	callstack 0
GLOBAL	__end_of_PWM1_16BIT_Slice1Output1_DefaultInterruptHandler
	__end_of_PWM1_16BIT_Slice1Output1_DefaultInterruptHandler:
	signat	_PWM1_16BIT_Slice1Output1_DefaultInterruptHandler,89
;
; H/W Interrupt Vector Table @ 0x8
;
psect	ivt0x8,class=CODE,space=0,reloc=2,delta=1,noexec,optim=
global __pivt0x8
__pivt0x8:
global	ivt0x8_base
ivt0x8_base:
; high-priority vector
	global	_INTERRUPT_InterruptManager
	goto	_INTERRUPT_InterruptManager
org 0x10
; low-priority vector
	reset
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	3
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
