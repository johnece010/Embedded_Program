#include<pic.h>

#define sw1 RB0
#define sw2 RB1
#define LED1 RB2
#define LED2 RB3

void delay (unsigned int x)
{
while(x--);
}

main()
{
	TRISB=0x05;
	PORTB=0x00;

while(1)
{
if (sw1==1)
{
LED1=1;
}
else
{
LED1=0;
}
if(sw2==1)
{
LED2=1;
}
else
{
LED2=0;
}
}
}
