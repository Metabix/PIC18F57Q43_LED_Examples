# PIC18F57Q43_LED_Examples

## Project Info
Repo contains projects that utilize PIC18F57Q43 MCU. The application's are pure bare metal. 


## Software
[MPLAB X IDE 6.20](https://www.microchip.com/en-us/tools-resources/develop/mplab-x-ide)

## Hardware
[PIC18F57Q43 CNANO board](https://www.microchip.com/en-us/development-tool/dm164150)

[Schematic](https://ww1.microchip.com/downloads/aemDocuments/documents/MCU08/ProductDocuments/BoardDesignFiles/PIC18F57Q43_Curiosity_Nano_Schematics.pdf)

- Contains PIC18 8-bit CPU based on modified Harvard architecture
## Documents used
[Datasheet PIC18F57Q43](https://ww1.microchip.com/downloads/aemDocuments/documents/MCU08/ProductDocuments/DataSheets/PIC18F27-47-57Q43-Microcontroller-Data-Sheet-XLP-DS40002147.pdf)

## Idea/Thinking

### Init code

Since this is the first project, lets look into all the config registers for this device. 

Section 8.5 Configuration Settings has the init registers information.


| Register | Address | Value |  Info       |
| :-------: | :-----: | :----: | :----: |
|  CONFIG1  | 0x300000  |  0x77 | Setting FEXTOSC to ECH and RSTOSC to EXTOSC |
| CONFIG2   |0X300001   | 0X26  |           |