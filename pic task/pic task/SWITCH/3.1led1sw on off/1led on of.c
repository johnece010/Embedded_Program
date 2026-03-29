#include<pic.h>
#define sw RB0
#define led RB1
void delay(unsigned int x)
{
while(x--);
}
main()
{
TRISB=0X01;
PORTB=0X00;
while(1)
{
if(sw==1)
{
while(sw==1);
led=!led;
}
}
}
