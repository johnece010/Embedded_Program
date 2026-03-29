#include<pic.h>
__CONFIG(0X3F72);
void delay()
{
T2CON=0X7A;
PR2=255;
TMR2ON=1;
while(TMR2IF==0);
TMR2IF=0;
TMR2ON=0;
}
void delay1()
{
for(int i=0;i<=16;i++)
{
delay();
}
}
void main()
{
TRISB=0x00;
while(1)
{
PORTB=0X01;
delay();
PORTB=0X00;
delay();
}
}