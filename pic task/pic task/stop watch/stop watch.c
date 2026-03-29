#include<pic.h>
__CONFIG(0X3F72);

#define RS RB0
#define RW RB1
#define EN RB2
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
void lcd_display(unsigned char *m)
{
for(int i=0;m[i]!=0;i++)
{
lcd_data(m[i]);
}
}

void delay1()
{
T0CS=0;
T0SE=0;
PSA=0;
PS0=1;
PS1=1;
PS2=1;
TMR0=60;
while(T0IF==0);
T0IF=0;
TMR0=0;
}
void delay2()
{
for(int i=0;i<=20;i++)
{
delay();
}
}
void main()
{
TRISB=0X00;
PORTB=0X00;
TRISC=0X00;
PORTC=0X00;

while(1)
{
lcd_command(0xC0);
lcd_data('0');
}
}
