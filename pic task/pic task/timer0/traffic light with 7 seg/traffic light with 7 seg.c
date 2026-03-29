#include<pic.h>
# define s1 RC6
#define s2 RC7
int seg[]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0X6F};
int a,b,j;
int i;



void delay()
{
T0CS=0;
T0SE=0;
PSA=0;
PS0=1;
PS1=1;
PS2=1;
TMR0=60;
while(T0IF==0);
T0IF=0;
TMR0=0;
}
void delay1()
{
for(int i=0;i<=100;i++)
{
delay();
}
}

void delay2()
{
for(int i=0;i<=500;i++)
{
delay();
}
}

void delay3()
{
for(int i=0;i<=10;i++)
{
delay();
}
}

void main()
{

TRISB=0X00;
PORTB=0X00;
TRISD=0X00;
PORTD=0X00;
TRISC=0X00;
PORTC=0X00;
while(1)
{

for(j=30;j>=0;j--)
{
a=j/10;
b=j%10;
s1=0;
s2=1;
PORTD=seg[a];
delay3();

s1=1;
s2=0;
PORTD=seg[b];
delay3();
}


PORTB=0X14;
PORTC=0X01;
delay2();

PORTB=0X36;
PORTC=0X01;
delay1();


PORTB=0X41;
PORTC=0X01;
delay2();

PORTB=0X61;
PORTC=0X03;
delay1();

PORTB=0X11;
PORTC=0X04;
delay2();

PORTB=0X13;
PORTC=0X06;
delay1();



}
}
