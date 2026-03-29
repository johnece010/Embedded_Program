#include <pic.h>

// LCD connections
#define RS RC0
#define RW RC1
#define EN RC2

// Keypad connections
#define C1 RB0
#define C2 RB1
#define C3 RB2

#define R1 RB3
#define R2 RB4
#define R3 RB5
#define R4 RB6

int i=0;
int a[9];

void delay(unsigned int x)
{
    while(x--);
}

// LCD Functions
void lcd_cmd(unsigned char cmd)
{
    PORTD = cmd;
    RS = 0;
    RW = 0;
    EN = 1;
    delay(1000);
    EN = 0;
}

void lcd_data(unsigned char data)
{
    PORTD = data;
    RS = 1;
    RW = 0;
    EN = 1;
    delay(1000);
    EN = 0;
}

void lcd_display(unsigned char m[])
{
for(int j=0;m[j]!=0;j++)
{
lcd_data(m[j]);
}
}

void lcd_init()
{
    lcd_cmd(0x38); // 8-bit mode, 2 lines, 5x8 font
    lcd_cmd(0x0C); // Display ON, Cursor OFF
    lcd_cmd(0x06); // Auto increment cursor
    lcd_cmd(0x01); // Clear display
    lcd_cmd(0x80); // Cursor at home
    lcd_cmd(0x0F);//cursor ON/cursor Blinking
}

void main()
{
    TRISB = 0xF8; // Upper nibble input (C1-C3), lower nibble output (R1-R4)
    TRISC = 0x00; // LCD control lines
    TRISD = 0x00; // LCD data lines
    PORTB = PORTC = PORTD = 0x00;

    lcd_init();
    delay(1000);

lcd_display("WELCOME");
delay(5000);
while(1)
{


lcd_cmd(0xC0);
lcd_cmd(0x0F);
lcd_cmd(0x06);
R1=1;
R2=0;
R3=0;
R4=0;
if(C1==1)
{

lcd_data('1');
a[i]=1;
i=i+1;delay(50000);
}
if(C2==1)
{
lcd_data('2');
a[i]=2;
i=i+1;delay(50000);
}
if(C3==1)
{
lcd_data('3');
a[i]=3;
i=i+1;delay(50000);
}

R1=0;
R2=1;
R3=0;
R4=0;
if(C1==1)
{
lcd_data('4');a[i]=4;
i=i+1;delay(50000);
}
if(C2==1)
{

lcd_data('5');
a[i]=5;
i=i+1;delay(50000);
}
if(C3==1)
{

lcd_data('6');
a[i]=6;
i=i+1;delay(50000);
}

R1=0;
R2=0;
R3=1;
R4=0;
if(C1==1)
{

lcd_data('7');
a[i]=7;
i=i+1;delay(50000);
}
if(C2==1)
{

lcd_data('8');
a[i]=8;
i=i+1;delay(50000);
}
if(C3==1)
{

lcd_data('9');
a[i]=9;
i=i+1;delay(50000);
}


R1=0;
R2=0;
R3=0;
R4=1;
if(C1==1)
{

lcd_data('*');
//a[i]="*";
i=i+1;delay(50000);
}
if(C2==1)
{

lcd_data('0');
a[i]=0;
i=i+1;delay(50000);
}
if(C3==1)
{

lcd_data('#');
//a[i]="#";
i=i+1;delay(50000);
}
if(i>9)
{
break;
}
}
}




