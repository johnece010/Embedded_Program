#include<pic.h>


void main()
{
unsigned int temp;
ADCON1=0X8E;
ADCON0=0X40;

TRISD=0X00;
PORTD=0X00;
TRISA=0X01;
PORTA=0X00;

while(1)
{
CHS2=0;
CHS1=0;
CHS0=0;
ADON=1;
ADCON0=(ADCON0|0X04);
temp=ADRESH<<8;
temp=temp+ADRESL;
PORTD=temp;
}
}