#include<pic.h>
# define s1 RC0
#define s2 RC1
void delay(unsigned int x)
{
while(x--);
}
int seg[]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0X6F};
int a,b,i;
main()
{
TRISB=0X00;
PORTB=0X00;
TRISC=0X00;
PORTC=0X00;
while(1)
{
for(i=0;i<99;i++)
{
a=i/10;
b=i%10;
s1=0;
s2=1;
PORTB=seg[a];
delay(50000);
s1=1;
s2=0;
PORTB=seg[b];
delay(50000);
}
}
}
