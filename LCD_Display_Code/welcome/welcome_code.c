#include <pic.h>
#define rs RC0
#define rw RC1
#define en RC2

void delay(unsigned int x)
{
while(x--);
}

void lcd_cmd(unsigned char cmd)
{
PORTD = cmd;
rs=0;
rw=0;
en=1;
delay(100);
en=0;
}

void lcd_data(unsigned char data)
{
PORTD = data;
rs=1;
rw=0;
en=1;
delay(100);
en=0;
}

void lcd_init()
{
lcd_cmd(0x38);
lcd_cmd(0x06);
lcd_cmd(0x0c);
lcd_cmd(0x01);
lcd_cmd(0x80);
}

void lcd_display(unsigned char m[])
{
for(int i=0;m[i]!=0;i++)
{
lcd_data(m[i]);
}
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
lcd_cmd(0X80);
lcd_display("WELCOME");
delay(50000);
}
}


