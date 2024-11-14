/*
 * File:   main.c
 * Author: Mohit
 *
 * Created on November 13, 2024, 7:15 PM
 */


#include <xc.h>
#pragma CONFIG1 = 0x77;
#pragma CONFIG2 = 0x26;
#pragma CONFIG3 = 0xDF;
#pragma CONFIG4 = 0x3D
#pragma CONFIG5 = 0x6B;
#pragma CONFIG6 = 0x3F;
#pragma CONFIG7 = 0x07;
#pragma CONFIG8 = 0x00;
#pragma CONFIG10 = 0x00;

#include <xc.h>
void delay(int x)
{
    for(int i=0;i<=x*1000;i++)
    {}    
}

void main(void) {
    TRISF = 0x00;
    LATF = 0x00;
    while(1)
    {
        LATF = 0x00;
    
        delay(1000);
        
        LATF = 0x08;
        
        delay(1000);
        
    }
    return;
}
