 /*
 * MAIN Generated Driver File
 * 
 * @file main.c
 * 
 * @defgroup main MAIN
 * 
 * @brief This is the generated driver implementation file for the MAIN driver.
 *
 * @version MAIN Driver Version 1.0.2
 *
 * @version Package Version: 3.1.2
*/

/*
© [2024] Microchip Technology Inc. and its subsidiaries.

    Subject to your compliance with these terms, you may use Microchip 
    software and any derivatives exclusively with Microchip products. 
    You are responsible for complying with 3rd party license terms  
    applicable to your use of 3rd party software (including open source  
    software) that may accompany Microchip software. SOFTWARE IS ?AS IS.? 
    NO WARRANTIES, WHETHER EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS 
    SOFTWARE, INCLUDING ANY IMPLIED WARRANTIES OF NON-INFRINGEMENT,  
    MERCHANTABILITY, OR FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT 
    WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY 
    KIND WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF 
    MICROCHIP HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE 
    FORESEEABLE. TO THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP?S 
    TOTAL LIABILITY ON ALL CLAIMS RELATED TO THE SOFTWARE WILL NOT 
    EXCEED AMOUNT OF FEES, IF ANY, YOU PAID DIRECTLY TO MICROCHIP FOR 
    THIS SOFTWARE.
*/
#include "mcc_generated_files/system/system.h"

int j=1;
int k=0;
static uint16_t periodCountTop = 70;

void PWM_DutyCycleSetPercentage_Slice1(void)
{
    uint16_t PWM_DytyCyclePercentage = j;
    PWM1_16BIT_SetSlice1Output1DutyCycleRegister(PWM_DytyCyclePercentage);
    PWM1_16BIT_LoadBufferRegisters();
    if((j>0)&&(k==0))
    {
        j++;
        if(j==80)
        {
            k=1;
        }
    }
    if(k==1)
    {
        j--;
        if(j==1)
        {
            k=0;
        }
    }
}



int main(void)
{
    SYSTEM_Initialize();
    PWM1_16BIT_WritePeriodRegister(periodCountTop); //Set number of counts for PWM period, set here to make code more readable.
    TMR0_PeriodMatchCallbackRegister(PWM_DutyCycleSetPercentage_Slice1);
    INTERRUPT_GlobalInterruptEnable();

    while (1)
    {
    }
}