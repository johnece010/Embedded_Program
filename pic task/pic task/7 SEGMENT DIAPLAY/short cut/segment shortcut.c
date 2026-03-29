#include<pic.h>
void delay( unsigned int x)
{
while (x--);
}
int seg[]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};
int i;
main()
{ 

TRISB=0X00;
PORTB=0X00;
while(1)
{
for(i=0;i<=9;i++)
{
PORTB=seg[i];
delay(50000);
}
}
}