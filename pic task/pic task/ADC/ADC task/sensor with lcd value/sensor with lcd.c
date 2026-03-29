#include<pic.h>

#define RS RC0
#define RW RC1
#define EN RC2
void delay(unsigned int x)
{
while(x--);
}
void lcd_command(unsigned char com)
{
PORTD=com;
RS=0;
RW=0;
EN=1;
delay(100);
EN=0;
}
void lcd_init()
{
lcd_command(0x38);
lcd_command(0x06);
lcd_command(0x0c);
lcd_command(0x01);
}
void lcd_data(unsigned char data)
{
PORTD=data;
RS=1;
RW=0;
EN=1;
delay(100);
EN=0;
}
void lcd_display(unsigned char *m)
{
for(int i=0;m[i]!=0;i++)
{
lcd_data(m[i]);
}
}


void main()
{
int a,b,c,d,e,f;
unsigned int temp;
ADCON1=0X8E;
ADCON0=0X40;

TRISC=0X00;
PORTC=0X00;

TRISD=0X00;
PORTD=0X00;


TRISA=0X01;
PORTA=0X00;

lcd_init();
delay(100);




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
a=temp/1000;
b=temp%1000;
c=b/100;
d=b%100;
e=d/10;
f=d%10;



lcd_command(0x80);
lcd_data(a+0x30);
lcd_data(c+0x30);
lcd_data(e+0x30);
lcd_data(f+0x30);



}
}