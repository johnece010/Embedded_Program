#include<pic.h>
#define RS RC0
#define RW RC1
#define EN RC2
void delay(unsigned int x)
{
while(x--);
}
char byte,m;
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
void write(unsigned char addr,unsigned char data)
{
EEADR=addr;
EEDATA=data;
EEPGD=0;
WREN=1;
EECON2=0X55;
EECON2=0XAA;
WR=1;
while(EEIF==0);
EEIF=0;
}
void read(unsigned char addr)
{
EEADR=addr;
EEPGD=0;
RD=1;
byte=EEDATA;
}
void main()
{
TRISD=0X00;
PORTD=0X00;
TRISC=0X00;
PORTC=0X00;
lcd_init();
delay(100);
lcd_command(0x80);
lcd_data('a');
delay(500000);
while(1)
{
write(0x07,'M');
read(0x07);
lcd_command(0xC0);
lcd_data(byte);
delay(1000);
}
}
