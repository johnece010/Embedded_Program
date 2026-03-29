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
lcd_command(0x0C);
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
int a,b,c,d,temp;
TRISD=0x00;
PORTD=0x00;

TRISC=0x00;
PORTC=0x00;

TRISB=0X10;
PORTB=0X00;
lcd_init();
delay(100);

T0CS=1;
TMR0=0;
lcd_command(0x80);
lcd_display("counter0");

while(1)
{

temp=TMR0;
a=temp/100;
b=temp%100;
c=b/10;
d=b%10;
lcd_command(0xC0);
lcd_data(a+0X30);
lcd_data(c+0X30);
lcd_data(d+0X30);
delay(50000);

}
}
