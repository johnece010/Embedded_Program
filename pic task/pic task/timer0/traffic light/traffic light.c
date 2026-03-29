#include<pic.h>
__CONFIG(0X3F72);
#define rs RD1
#define rw RD2
#define en  RD3

#define C1  RB1
#define C2  RB2
#define C3  RB3

#define R1  RB4
#define R2  RB5
#define R3  RB6
#define R4  RB7
#define lock RC1
#define buzzer RC2



unsigned int temp,T=0;

unsigned char ser1='R',data_cap1=0,st1=1,n,o,x=0,gpsdata[50];

unsigned int Z=0,Y=0,i=0,W=0,W1=0,F=0,p=0;
int a[10];
int b[10]={1,2,3,4};

//**********************************************************************************
// DELAY FUNCTION
//**********************************************************************************
void delay4(unsigned int x)
{
while(x--);
}
void lcd_command(unsigned int COM )
{
unsigned char temp;
PORTD=COM&0Xf0;
rs=0;
rw=0;
en=1;
delay4(200);
en=0;
temp=COM<<4;
PORTD=temp&0Xf0;
rs=0;
rw=0;
en=1;
delay4(200);
en=0;
/*PORTD=COM;
rs=0;
rw=0;
en=1;
delay(1000);
en=0;
*/
}
void lcd_data(unsigned int data)
{
unsigned char val1;
PORTD=data&0xf0;
rs=1;
rw=0;
en=1;
delay4(1000);
en=0;
val1=data<<4;
PORTD=val1&0Xf0;
rs=1;
rw=0;
en=1;
delay4(1000);
en=0;
/*PORTD=data;
rs=1;
rw=0;
en=1;
delay(1000);
en=0;
*/
}

void lcd_init()
{
lcd_command(0X02);
lcd_command(0x2c);
lcd_command(0X06);
lcd_command(0X0c);
lcd_command(0X01);
}

void lcd_display(const unsigned char*m)
{
for(int i=0;m[i]!=0;i++)
{
lcd_data(m[i]);
delay4(1000);
}
}


void delay()
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
void delay1()
{
for(int i=0;i<=100;i++)
{
delay();
}
}

void delay2()
{
for(int i=0;i<=500;i++)
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
lcd_command(0x80);
lcd_display("welcome");
delay4(10000);delay4(10000);
while(1)
{
PORTB=0X14;
PORTC=0X01;
delay2();

PORTB=0X36;
PORTC=0X01;
delay1();


PORTB=0X41;
PORTC=0X01;
delay2();

PORTB=0X61;
PORTC=0X03;
delay1();

PORTB=0X11;
PORTC=0X04;
delay2();

PORTB=0X13;
PORTC=0X06;
delay1();
}
}
