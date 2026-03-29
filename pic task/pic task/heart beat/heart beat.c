#include<pic.h>
#define RS RB0
#define RW RB1
#define EN RB2
int i;
void delay()
{
TMR1H=0xCF;
TMR1L=0x2B;
T1CON=0x39;
while(TMR1IF==0);
T1CON=0x38;
TMR1IF=0;
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

void lcd_display(unsigned char m[])
{
for(int i=0;m[i]!=0;i++)
{
lcd_data(m[i]);
}
}

void lcd_init()
{
lcd_command(0x38);
lcd_command(0x0C);
lcd_command(0x01);
lcd_command(0x06);
}
main()
{
TRISB=0X00;
PORTB=0X00;
TRISC=0X00;
PORTC=0X00;
TRISD=0X00;
PORTD=0X00;
lcd_init();
T0CS=1;
TMR0=0;
while(1)
{
lcd_command(0x80);
lcd_display("heart beat");
for(i=0;i<=100;i++)
{
delay();
}

int a,b,c,d,temp;
temp=TMR0;
a=temp/100;
b=temp%100;
c=b/10;
d=b%10;


lcd_command(0xc0);
lcd_data(a+0x30);
lcd_data(c+0x30);
lcd_data(d+0x30);
}
}