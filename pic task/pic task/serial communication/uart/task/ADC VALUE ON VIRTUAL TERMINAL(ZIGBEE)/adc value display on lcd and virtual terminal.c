#include<pic.h>
__CONFIG(0X3F72);
#define RS RD1
#define RW RD2
#define EN RD3
int temp;
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

void serial (unsigned char *a)
{
for(int j=0;a[j]!=0;j++)
{
TXREG=(a[j]);
delay(20000);
}
TXREG=0x1D;
}


void main()
{
int a,b,c,d,e,f;
unsigned int temp;
ADCON1=0X8E;
ADCON0=0X40;

TRISC=0X00;
PORTC=0X00;

TRISD=0X00;
PORTD=0X00;


TRISA=0X01;
PORTA=0X00;

TXSTA=0X24;
RCSTA=0X90;
SPBRG=25;

lcd_init();
delay(100);




while(1)
{
CHS2=0;
CHS1=0;
CHS0=0;
ADON=1;
delay(600);
ADCON0=(ADCON0|0X04);
delay(600);
temp=ADRESH<<8;
delay(600);
temp=temp+ADRESL;
delay(600);

a=temp/1000;
b=temp%1000;
c=b/100;
d=b%100;
e=d/10;
f=d%10;



lcd_cmd(0x80);
delay(1000);
lcd_data(a+0x30);
delay(1000);
lcd_data(c+0x30);
delay(1000);
lcd_data(e+0x30);
delay(1000);
lcd_data(f+0x30);
delay(1000);
delay(50000);delay(50000);

TXREG=(a+0x30);
delay(1000);
TXREG=(c+0x30);
delay(1000);
TXREG=(e+0x30);
delay(1000);
TXREG=(f+0x30);
delay(1000);
delay(50000);delay(50000);

}
}




