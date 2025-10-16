#include<pic.h>
#define sw RB0
#define LED RB1

void delay (unsigned int x)
{
while(x--);
}

main()
{
	TRISB=0x01;;
	PORTB=0x00;

while(1)
{
if(sw==1)
{
LED=1;
}
else
{
LED=0;
}
}
}
