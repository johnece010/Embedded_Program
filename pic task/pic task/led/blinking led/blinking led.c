#include<pic.h>
void delay(unsigned int x)
{
while(x--);
}
main()
{
TRISB=0X00;
PORTB=0X00;
while(1)
{
PORTB=0X01;
delay(50000);
PORTB=0X00;
delay(50000);
}
}