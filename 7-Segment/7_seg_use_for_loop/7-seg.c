#include<pic.h>

void delay(unsigned int x)
{
while(x--);
}

int seg[ ]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
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