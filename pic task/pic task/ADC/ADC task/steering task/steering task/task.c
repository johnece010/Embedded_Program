#include<pic.h>
__CONFIG(0X3F72);
#define RS RC0
#define RW RC1
#define EN RC2
#define led1 RC6
#define led2 RC7

void lcd_command(unsigned char com);
void lcd_data(unsigned char data);
unsigned int temp,temp1,A,A1;

int a,b,c,d,e,f,a1,b1,c1,d1,e1,f1,z=0,z1=0;

void delay(unsigned int x)
{
while(x--);
}

void lcd_init()
{
lcd_command(0X38);
lcd_command(0X06);
lcd_command(0X18);
lcd_command(0X1C);
lcd_command(0X0C);
lcd_command(0X01);
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

void lcd_display(unsigned char *m)
{
for(int a=0;m[a]!=0;a++)
{
lcd_data(m[a]);
}
}

void ply(unsigned int temp1)
{
lcd_command(0Xc0);
lcd_display("Z");
lcd_command(0XCA);
a1=temp1/1000;
b1=temp1%1000;
c1=b1/100;
d1=b1%100;
e1=d1/10;
f1=d1%10;


lcd_data(a1+0x30);
delay(1000);
lcd_data(c1+0x30);
delay(1000);
lcd_data(e1+0x30);
delay(1000);
lcd_data(f1+0x30);
delay(1000);
}

main()
{
TRISD=0X00;
PORTD=0X00;

TRISA=0x03;
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
temp=temp/2.045;

if(temp==249)
{
led1=0;
led2=0;
}

if(temp<249)
{
delay(1000);
if(temp>z1)
{
led1=0;
led2=1;
delay(50000);delay(50000);
}

else
{
led1=1;
led2=0;
delay(600);
}
ply(z1);
delay(600);
}
z1=temp;


if(temp>249)
{
delay(1000);
if(temp<z)
{
led1=1;
led2=0;
delay(50000);delay(50000);
}

else
{
led1=0;
led2=1;
delay(600);
}
ply(z);
delay(600);
}
z=temp;



delay(1000);

lcd_command(0X80);
lcd_display("l or r");
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