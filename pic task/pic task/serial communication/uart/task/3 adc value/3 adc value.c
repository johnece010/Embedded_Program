#include<pic.h>

#define RS RC0
#define RW RC1
#define EN RC2
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
void serial (unsigned char *a)
{
for(int j=0;a[j]!=0;j++)
{
TXREG=(a[j]);
delay(20000);
}
TXREG=0x1D;
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
int a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,z,y,x,w,v,u;
unsigned int temp,temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8;
int A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,Z,Y,X,W,V,U;
ADCON1=0X80;
ADCON0=0X40;

TRISC=0X00;
PORTC=0X00;

TRISD=0X00;
PORTD=0X00;


TRISA=0X07;
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
//delay(600);
PORTD=temp;
a=temp/1000;
b=temp%1000;
c=b/100;
d=b%100;
e=d/10;
f=d%10;
lcd_command(0x80);
delay(600);
lcd_data(a+0x30);
delay(600);
lcd_data(c+0x30);
delay(600);
lcd_data(e+0x30);
delay(600);
lcd_data(f+0x30);
delay(600);


TXREG='A';
TXREG=(a+0x30);
delay(6000);delay(6000);
TXREG=(c+0x30);
delay(6000);delay(6000);
TXREG=(e+0x30);
delay(6000);delay(6000);
TXREG=(f+0x30);
delay(6000);delay(6000);
//TXREG=' ';



CHS2=0;
CHS1=0;
CHS0=1;
ADON=1;
delay(600);
ADCON0=(ADCON0|0X04);
delay(600);
temp1=ADRESH<<8;
delay(600);
temp1=temp1+ADRESL;
//delay(600);
PORTD=temp1;
z=temp1/1000;
y=temp1%1000;
x=y/100;
w=y%100;
v=w/10;
u=w%10;
lcd_command(0x88);
delay(600);
lcd_data(z+0x30);
delay(600);
lcd_data(x+0x30);
delay(600);
lcd_data(v+0x30);
delay(600);
lcd_data(u+0x30);
delay(600);


TXREG='B';
TXREG=(z+0x30);
delay(6000);delay(6000);
TXREG=(x+0x30);
delay(6000);delay(6000);
TXREG=(v+0x30);
delay(6000);delay(6000);
TXREG=(u+0x30);
delay(6000);delay(6000);
//TXREG=' ';


CHS2=0;
CHS1=1;
CHS0=0;
ADON=1;
delay(600);
ADCON0=(ADCON0|0X04);
delay(600);
temp3=ADRESH<<8;
delay(600);
temp3=temp3+ADRESL;
delay(600);
PORTD=temp3;
g=temp3/1000;
h=temp3%1000;
i=h/100;
j=h%100;
k=j/10;
l=j%10;
lcd_command(0xC0);
delay(600);
lcd_data(g+0x30);
delay(600);
lcd_data(i+0x30);
delay(600);
lcd_data(k+0x30);
delay(600);
lcd_data(l+0x30);
delay(600);


TXREG='C';
TXREG=(g+0x30);
delay(6000);delay(6000);
TXREG=(i+0x30);
delay(6000);delay(6000);
TXREG=(k+0x30);
delay(6000);delay(6000);
TXREG=(l+0x30);
delay(6000);delay(6000);
//TXREG=' ';

}
}




