#include<pic.h>
#define sw1 RB0
#define led1 RB1
#define sw2 RB2
#define led2 RB3
void delay(unsigned int x)
{
while(x--);
}
main()
{
TRISB=0X05;
PORTB=0X00;
while(1)
{
if(sw1==1)
{
led1=1;
}
else
{
led1=0;
}
if(sw2==1)
{
led2=1;
}
else
{
led2=0;
}
}
}