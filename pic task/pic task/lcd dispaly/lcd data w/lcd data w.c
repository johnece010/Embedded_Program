#include<pic.h>
__CONFIG(0X3F72);
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
lcd_command(0x38);//8bit 2 line
lcd_command(0x06);//entry mode
lcd_command(0x0C);//disply on cursor off
//lcd_command(0x01);
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
void main()
{
TRISD=0x00;
PORTD=0x00;

TRISC=0x00;
PORTC=0x00;

lcd_init();
delay(100);

lcd_command(0X81);
lcd_data('W');
//delay(10000);delay(10000);delay(10000);
}
