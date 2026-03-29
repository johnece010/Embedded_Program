#include <pic.h>

// Configuration bits (adjust if needed)
__CONFIG(0x3F72);  // For PIC16F877A

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
    rs = 0;
    rw = 0;
    en = 1;
    delay(10000);
    en = 0;
}

void lcd_data(unsigned char data)
{
    PORTD = data;
    rs = 1;
    rw = 0;
    en = 1;
    delay(10000);
    en = 0;
}

void lcd_init()
{
    lcd_cmd(0x38); // 8-bit, 2 line, 5x7 font
    lcd_cmd(0x0C); // Display ON, Cursor OFF
    lcd_cmd(0x06); // Auto increment cursor
    lcd_cmd(0x01); // Clear display
    lcd_cmd(0x80); // Cursor at line 1
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
lcd_cmd(0x80);
lcd_data(a+0x30);
lcd_data(c+0x30);
lcd_data(d+0x30);
delay(50000);
}
}
}