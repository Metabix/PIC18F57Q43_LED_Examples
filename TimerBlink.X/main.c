/*
 * File:   main.c
 * Author: Mo
 *
 * Created on November 16, 2024, 6:01 PM
 */
#include <xc.h>

// Configuration bits
#pragma CONFIG1 = 0x77
#pragma CONFIG2 = 0x26
#pragma CONFIG3 = 0xDF
#pragma CONFIG4 = 0x3D
#pragma CONFIG5 = 0x6B
#pragma CONFIG6 = 0x3F
#pragma CONFIG7 = 0x07
#pragma CONFIG8 = 0x00
#pragma CONFIG10 = 0x00




void clock_init(void)
{
    OSCCON1 = 0x60;                                 // NOSC = HFINTOSC 
    OSCFRQ = 0x08;                                  // HFFRQ 64_MHz
}

void timer0_init(void)
{   
    T0CON0 = 0x10;                                  // 16bit timer
                                                    //T0CON1, TMR0H and TMR0L are taken to provide a 1 second timer.
    T0CON1 = 0x59;
    TMR0H = 0x85;
    TMR0L = 0xEE;
    
    PIR3bits.TMR0IF = 0;                            // Clear interrupt flag   
    PIE3bits.TMR0IE = 1;                            // Enable Timer0 interrupt
    IPR3bits.TMR0IP = 1;                            // Set as high priority
}

void timer0_start(void)
{
    T0CON0bits.T0EN = 1;
}

void timer0_stop(void)
{
    T0CON0bits.T0EN = 0;
}

void timer0_ISR(void)
{
    LATFbits.LATF3 = ~LATFbits.LATF3;
    TMR0H = 0x85;
    TMR0L = 0xEE;
    PIR3bits.TMR0IF = 0;
}

void __interrupt(irq(default)) DEFAULT_ISR(void)
{
    if(PIE3bits.TMR0IE == 1 && PIR3bits.TMR0IF == 1)
    {
        timer0_ISR();
    }
}

static void interrupt_init(void)
{
    
    INTCON0bits.GIEH = 1;                           // Enable high priority interrupts
    INTCON0bits.GIEL = 1;                           // Enable low priority interrupts
    INTCON0bits.IPEN = 1;                           // Enable interrupt priority
}

void main(void) {
    clock_init();
    interrupt_init();
    
    
    TRISFbits.TRISF3 = 0;                           // Set RF3 as output
    ANSELFbits.ANSELF3 = 0;                         // Set as digital pin
    LATFbits.LATF3 = 0;                             // Initialize to 0
    
    timer0_init();
    timer0_start();
    
    
    while(1)
    {       
    }
    return;
}