#include<pic.h>
__CONFIG(0X3F72);
#define sw RB0
#define led RC0
void delay(unsigned int x)
{
while(x--);
}
main()
{
TRISB=0X01;
PORTB=0X00;
TRISC=0X00;
PORTC=0X00;
while(1)
{
if(sw==1)
{
led=1;
}
else
{
led=0;
}
}
} 