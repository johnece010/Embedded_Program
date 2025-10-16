#include <pic.h>
#define rs RC0
#define rw RC1
#define en RC2

void delay(unsigned int x)
{
    while(x--);
}

int i,a,b,c,d;
int da[] = {999};

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
    lcd_cmd(0x38); // 2 lines, 5x7 matrix
    lcd_cmd(0x06); // increment cursor
    lcd_cmd(0x0C); // display ON, cursor OFF
    lcd_cmd(0x01); // clear display
    lcd_cmd(0x80); // move cursor to first line
}

void main()
{
    TRISC = 0x00;
    PORTC = 0x00;
    TRISD = 0x00;
    PORTD = 0x00;

    lcd_init();  // ? Initialize LCD

    while(1)
    {
        lcd_cmd(0x80); // set cursor to beginning
        for(i = 0; i < ; i++)
        {
            lcd_data(da[i]); // ? display each character
            delay(50000);
        }
        while(1); // stop after displaying once
    }
}
