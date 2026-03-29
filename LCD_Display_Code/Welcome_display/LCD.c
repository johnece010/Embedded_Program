#include<pic.h>
__CONFIG(0X3F72);
#define RS RD1
#define RW RD2
#define EN RD3

unsigned int temp,temp1,temp2;

int a,b,c,d,e,f,i;

void delay(unsigned int x)
{
while(x--);
}

void lcd_command(unsigned char com)
{
PORTD=com&0XF0;
RS=0;
RW=0;
EN=1;
delay(100);
EN=0;
temp2=com<<4;
PORTD=temp2&0XF0;
RS=0;
RW=0;
EN=1;
delay(100);
EN=0;
}

void lcd_init()
{
lcd_command(0X02);
lcd_command(0X2C);
lcd_command(0X06);
lcd_command(0X0C);
lcd_command(0X01);
}


void lcd_data(unsigned char data)
{
PORTD=data&0XF0;
RS=1;
RW=0;
EN=1;
delay(100);
EN=0;
temp1=data<<4;
PORTD=temp1&0XF0;
RS=1;
RW=0;
EN=1;
delay(100);
EN=0;
}

void lcd_display(unsigned char *m)
{
for(i=0;m[i]!=0;i++)
{
lcd_data(m[i]);
}
}



main()
{
TRISD=0X00;
PORTD=0X00;

TRISA=0x01;
PORTA=0x00;


TRISC=0X00;
PORTC=0X00;


ADCON1=0X80;
ADCON0=0X40;

lcd_init();
delay(100);

lcd_command(0X84);
lcd_display("WELCOME");
delay(50000);delay(50000);
delay(50000);
lcd_command(0X01);




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
temp=(temp+ADRESL);
delay(600);
temp;
delay(600);

lcd_command(0X80);
//lcd_display("sensor 1:");
lcd_command(0X8A);
a=temp/1000;
b=temp%1000;
c=b/100;
d=b%100;
e=d/10;
f=d%10;


lcd_data(a+0x30);
delay(1000);
lcd_data(c+0x30);
delay(1000);
lcd_data(e+0x30);
delay(1000);
lcd_data(f+0x30);
delay(1000);


}
}
