#include<pic.h>
void delay(unsigned int x)
{
while(x--);
}
int led[]={0x01,0x03,0x07,0x0F,0X1F,0X3F,0X7F,0XFF};
int i;
main()
{
TRISB=0X00;
PORTB=0X00;
while(1)
{
for(i=0;i<9;i++);
{
PORTB=led[i];
delay(5000);
}
}
}