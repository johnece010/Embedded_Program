#include<pic.h>
__CONFIG(0X3F72);
void delay()
{
T0CS=0;
T0SE=0;
PSA=0;
PS0=1;
PS1=1;
PS2=1;
TMR0=60;
while(T0IF==0);
T0IF=0;
TMR0=0;
}
void delay1()
{
for(int i=0;i<=20;i++)
{
delay();
}
}
void main()
{
TRISB=0X00;
PORTB=0X00;
while(1)
{
PORTB=0X01;
delay1();
PORTB=0X00;
delay1();
}
}
