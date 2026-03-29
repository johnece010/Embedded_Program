#include<pic.h>
#define RS RB0
#define RW RB1
#define EN RB2
void delay(unsigned int x)
{
while(x--);
}
void lcd_command (unsigned char com)
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
void lcd_data (unsigned char data)
{
PORTD=data;
RS=1;
RW=0;
EN=1;
delay(100);
EN=0;
}
void lcd_display (unsigned char *m)
{
for (int i=0;m[i]!=0;i++)
{
lcd_data(m[i]);
}
}
void main()
{
TRISD=0x00;
PORTD=0x00;
TRISB=0x00;
PORTB=0x00;
TRISC=0x01;
PORTC=0x00;
T1CON=0x0B;
TMR1H=0x00;
TMR1L=0x00;

lcd_init();
delay(100);

while(1)
{
int a,b,c,d,e,f,g,h,temp=0;
temp=TMR1H<<8;
temp=temp+TMR1L;
a=temp/10000;
b=temp%10000;
c=b/1000;
d=b%1000;
e=d/100;
f=d%100;
g=f/10;
h=f%10;

lcd_command(0x80);
lcd_display("counter");

lcd_command(0xC0);
lcd_data(a+0x30);
lcd_data(c+0x30);
lcd_data(e+0x30);
lcd_data(g+0x30);
lcd_data(h+0x30);
delay(10000);
}
}