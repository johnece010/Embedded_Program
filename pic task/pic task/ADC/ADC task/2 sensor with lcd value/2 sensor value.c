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
int a,b,c,d,e,f,z,y,x,w,v,u;
unsigned int temp,temp1;
ADCON1=0X80;
ADCON0=0X40;

TRISC=0X00;
PORTC=0X00;

TRISD=0X00;
PORTD=0X00;


TRISA=0X03;
PORTA=0X00;

lcd_init();
delay(100);




while(1)
{
CHS2=0;
CHS1=0;
CHS0=0;
ADON=1;
delay(600);
ADCON0=(ADCON0|0X04);
delay(600);
temp=ADRESH<<8;
delay(600);
temp=temp+ADRESL;
//delay(600);
PORTD=temp;
a=temp/1000;
b=temp%1000;
c=b/100;
d=b%100;
e=d/10;
f=d%10;
lcd_command(0x80);
delay(600);
lcd_data(a+0x30);
delay(600);
lcd_data(c+0x30);
delay(600);
lcd_data(e+0x30);
delay(600);
lcd_data(f+0x30);
delay(600);



CHS2=0;
CHS1=0;
CHS0=1;
ADON=1;
delay(600);
ADCON0=(ADCON0|0X04);
delay(600);
temp1=ADRESH<<8;
delay(600);
temp1=temp1+ADRESL;
//delay(600);
PORTD=temp1;
z=temp1/1000;
y=temp1%1000;
x=y/100;
w=y%100;
v=w/10;
u=w%10;
lcd_command(0xC0);
delay(600);
lcd_data(z+0x30);
delay(600);
lcd_data(x+0x30);
delay(600);
lcd_data(v+0x30);
delay(600);
lcd_data(u+0x30);
delay(600);



}
}