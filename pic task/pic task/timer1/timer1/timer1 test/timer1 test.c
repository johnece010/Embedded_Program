#include<pic.h>
void delay()
{
TMR1H=0XE7;
TMR1L=0X96;
T1CON=0X39;
while(TMR1IF==0);
T1CON=0X38;
TMR1IF=0;
}
void main()
{
TRISB=0X00;
while(1)
{
PORTB=0x01;
delay();
PORTB=0X00;
delay();
}
}