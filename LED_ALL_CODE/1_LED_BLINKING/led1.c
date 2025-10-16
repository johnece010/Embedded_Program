#include<pic.h>
void delay (unsigned int x)
{
while(x--);
}
main()
{
	TRISB=0x00;;
	PORTB=0x00;
while(1)
{
	PORTB=0x01;
	delay(1000);
	PORTB=0x00;
	delay(1000);
}
}