#include<pic.h>
int i;
void pwm(unsigned int duty)
{
CCP1Y=1&duty;
CCP1X=1&(duty>>1);
CCPR1L=duty>>2;
}
void delay(unsigned int x)
{
while(x--);
}
void main()
{
TRISC=0X00;
T2CON=0X7F;
CCP1CON=0X0C;
PR2=255;
while(1)
{
for(i=0;i<=1023;i++)
{
pwm(i);
delay(1000);
}
for(i=1024;i>0;i--)
{
pwm(i);
delay(1000);
}
}
}

