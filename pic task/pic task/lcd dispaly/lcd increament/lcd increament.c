#include<pic.h>
#define RS RC0
#define RW RC1
#define EN  RC2
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
void lcd_data(unsigned char data)
{
PORTD=data;
RS=1;
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
void main()
{
TRISD=0x00;
PORTD=0x00;

TRISC=0x00;
PORTC=0x00;

lcd_init();
delay(100);

while(1)
{

for(int i=0;i<=999;i++)
{
int a=i/100;
int b=i%100;
int c =b/10;
int d=b%10;
lcd_command(0x80);
lcd_data(a+0x30);
lcd_data(c+0x30);
lcd_data(d+0x30);
delay(50000);
}
}
}
