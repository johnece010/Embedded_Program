#include<pic.h>
#define RS RC0
#define RW RC1
#define EN RC2
#define sw1 RB0
#define led1 RB1
#define sw2 RB2
#define led2 RB3
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
void main()
{
TRISD=0x00;
PORTD=0x00;

TRISC=0x00;
PORTC=0x00;

TRISB=0X05;
PORTB=0X00;

lcd_init();
delay(100);

while(1)
{
if(sw1==1)
{
RB1=1;
lcd_command(0X01);
lcd_command(0X80);
lcd_display("led 1 is on");
lcd_command(0XC0);
lcd_display("led 2 is off");
delay(50000);
}

else if(sw2==1)
{
led2=1;
lcd_command(0X01);
lcd_command(0X80);
lcd_display("led 1 is off");
lcd_command(0XC0);
lcd_display("led 2 is on");
delay(50000);
}

else if((sw1==1)&&(sw2==1))
{
led1=1;
led2=1;
lcd_command(0X01);
lcd_command(0X80);
lcd_display("led 1 is on");
lcd_command(0XC0);
lcd_display("led 2 is on");
delay(50000);
}
else
{
led1=0;
led2=0;
lcd_command(0X01);
lcd_command(0X80);
lcd_display("led 1 is off");
lcd_command(0XC0);
lcd_display("led 2 is off");
delay(50000);
}
}
}

