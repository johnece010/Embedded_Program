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
if(RCIF==1)
{
RCIF=0;
b=RCREG;
}
}


void serial(unsigned char *a)
{
for(int j=0;a[j]!=0;j++)
{
TXREG=a[j];
delay(20000);
}
TXREG=0X1D;
}
main()
{
TRISC=0X80;
PORTC=0X00;
TRISD=0X00;
PORTD=0X00;

TXSTA=0X24;
RCSTA=0X90;
SPBRG=25;
PEIE=1;
GIE=1;
INTE=1;
RCIE=1;

lcd_init();
delay(5000);

lcd_cmd(0x01);
lcd_cmd(0x80);
lcd_display("WELCOME");
delay(50000);delay(50000);
delay(50000);delay(50000);

while(1)
{

if(b=='1')
{
led1=1;
delay(5000);
lcd_cmd(0x80);
lcd_display("Light on");
delay(50000);
serial("Light on");
delay(50000);
}

if(b=='2')
{
led2=1;
delay(5000);

lcd_cmd(0x80);
lcd_display("Fan on");
delay(50000);
serial("Fan on");
delay(50000);
}

if(b=='3')
{
led1=0;
delay(5000);
lcd_cmd(0x80);
lcd_display("Light off");
delay(50000);
serial("Light off");
delay(50000);
}

if(b=='4')
{
led2=0;
delay(5000);
lcd_cmd(0x80);
lcd_display("Fan off");
delay(50000);
serial("Fan off");
delay(50000);
}

}
}