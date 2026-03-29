#include<pic.h>
#define SW1 RC0
#define SW2 RC1

void delay( unsigned int x)
{
while (x--);
}
int sega[]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};
int segb[]={0X6F,0X7F,0X07,0X7D,0X6D,0X66,0X4F,0X5B,0X06,0X3F};
int i1=0,i2=0;
main()
{ 

TRISB=0X00;
PORTB=0X00;
TRISC=0X03;
PORTC=0X00;
while(1)
{
if(SW1==1)
{

if(i1<9)
{
i1++;
PORTB=sega[i1];
delay(50000);
}
}

if(SW2==1)
{

if(i2<9)
{
 i2++;
PORTB=segb[i2];
delay(50000);
}
}


}
}