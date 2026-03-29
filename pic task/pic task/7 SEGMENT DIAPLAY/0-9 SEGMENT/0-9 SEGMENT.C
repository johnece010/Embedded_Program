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
PORTB=0X3F;
delay(50000);
PORTB=0X06;
delay(50000);

PORTB=0X5B;
delay(50000);

PORTB=0X4F;
delay(50000);

PORTB=0X66;
delay(50000);

PORTB=0X6D;
delay(50000);

PORTB=0X7D;
delay(50000);

PORTB=0X07;
delay(50000);

PORTB=0X7F;
delay(50000);

PORTB=0X6F;
delay(50000);
}
}
