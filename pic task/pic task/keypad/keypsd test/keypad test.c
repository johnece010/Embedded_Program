#include<pic.h>
#define RS RC0
#define RW RC1
#define EN  RC2
#define C1  RB0
#define C2  RB1
#define C3  RB2
#define R1  RB3
#define R2  RB4
#define R3  RB5
#define R4  RB6

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

TRISB=0XF8;
PORTB=0X00;

lcd_init();
delay(100);

while(1)
{
lcd_command(0x80);
C1=1;
C2=0;
C3=0;
if(R1==1)
{
//while(R1==1);
lcd_data('1');
}
if(R2==1)
{
//while(R2==1);
lcd_data('4');
}
if(R3==1)
{
//while(R3==1);
lcd_data('7');
}
if(R4==1)
{
lcd_data('*');
}
C1=0;
C2=1;
C3=0;
if(R1==1)
{
//while(R1==1);
lcd_data('2');
}
if(R2==1)
{
//while(R2==1);
lcd_data('5');
}
if(R3==1)
{
//while(R3==1);
lcd_data('8');
}
if(R4==1)
{
lcd_data('0');
}

C1=0;
C2=0;
C3=1;
if(R1==1)
{
//while(R1==1);
lcd_data('3');
}
if(R2==1)
{
//while(R2==1);
lcd_data('6');
}
if(R3==1)
{
//while(R3==1);
lcd_data('9');
}
if(R4==1)
{
lcd_data('#');
}
}
}