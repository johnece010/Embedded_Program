#include<pic.h>
__CONFIG(0X3F72);
#define RS RD1
#define RW RD2
#define EN RD3
#define led1 RC0
#define led2 RC1

unsigned int i, temp,b;

void delay(unsigned int x)
{
while(x--);
}
void lcd_cmd(unsigned char com)
{
PORTD=(com&0xf0);
RS=0;
RW=0;
EN=1;
delay(200);
EN=0;
temp=com<<4;
PORTD=(temp&0xf0);
RS=0;
RW=0;
EN=1;
delay(200);
EN=0;
}
void lcd_init()
{
lcd_cmd(0x02);
lcd_cmd(0x2c);
lcd_cmd(0x06);
lcd_cmd(0x01);
lcd_cmd(0x0c);
lcd_cmd(0x80);
}
void lcd_data(unsigned char dat)
{
PORTD=(dat&0xf0);
RS=1;
RW=0;
EN=1;
delay(200);
EN=0;
temp=dat<<4;
PORTD=(temp&0xf0);
RS=1;
RW=0;
EN=1;
delay(200);
EN=0;
}
void lcd_display(unsigned char *m)
{
for(int i=0;m[i]!=0;i++)
{
lcd_data(m[i]);
}
}

void interrupt rcx()
{
if(INTF==1)
{
INTF=0;
b=1;
}
}



main()
{
TRISB=0X01;
PORTB=0X00;
TRISD=0X00;
PORTD=0X00;

TRISC=0X00;
PORTC=0X00;
PEIE=1;
GIE=1;
INTE=1;


lcd_init();
delay(5000);

lcd_cmd(0x01);
lcd_cmd(0x80);
lcd_display("WELCOME");
delay(50000);delay(50000);
delay(50000);delay(50000);

while(1)
{

if(b==1)
{
led1=1;
delay(5000);
lcd_cmd(0x80);
lcd_display("led 1 is on");
delay(50000);

}






}
}