#include<pic.h>
#define RS RC0
#define RW RC1
#define EN  RC2

#define C1  RB0
#define C2  RB1
#define C3  RB2

#define R1  RB3
#define R2  RB4
#define R3  RB5
#define R4  RB6

int i=0;
int a[2];
int b[]={1,2};
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
void lcd_data(unsigned char data)
{
PORTD=data;
RS=1;
RW=0;
EN=1;
delay(100);
EN=0;
}
void lcd_init()
{
lcd_command(0x38);
lcd_command(0x06);
lcd_command(0x0C);
lcd_command(0x01);
}
void lcd_display(unsigned char *m)
{
for(int j=0;m[j]!=0;j++)
{
lcd_data(m[j]);
}
}
void  password()
{

while(1)
{

R1=1;
R2=0;
R3=0;
R4=0;
if(C1==1)
{

lcd_data('1');
a[i]=1;
i=i+1;delay(50000);delay(50000);
}
if(C2==1)
{
lcd_data('2');
a[i]=2;
i=i+1;delay(50000);delay(50000);
}
if(C3==1)
{
lcd_data('3');
a[i]=3;
i=i+1;delay(50000);delay(50000);
}

R1=0;
R2=1;
R3=0;
R4=0;
if(C1==1)
{
lcd_data('4');a[i]=4;
i=i+1;delay(50000);delay(50000);
}
if(C2==1)
{

lcd_data('5');
a[i]=5;
i=i+1;delay(50000);delay(50000);
}
if(C3==1)
{

lcd_data('6');
a[i]=6;
i=i+1;delay(50000);delay(50000);
}

R1=0;
R2=0;
R3=1;
R4=0;
if(C1==1)
{

lcd_data('7');
a[i]=7;
i=i+1;delay(50000);delay(50000);
}
if(C2==1)
{

lcd_data('8');
a[i]=8;
i=i+1;delay(50000);delay(50000);
}
if(C3==1)
{

lcd_data('9');
a[i]=9;
i=i+1;delay(50000);delay(50000);
}


R1=0;
R2=0;
R3=0;
R4=1;
if(C1==1)
{

lcd_data('*');
//a[i]="*";
i=i+1;delay(50000);delay(50000);
}
if(C2==1)
{

lcd_data('0');
a[i]=0;
i=i+1;delay(50000);delay(50000);
}
if(C3==1)
{

lcd_data('#');
//a[i]="#";
i=i+1;delay(50000);delay(50000);
}


if(i>1)
{
break;
}
}

}
void main()
{
TRISD=0x00;
PORTD=0x00;

TRISC=0x00;
PORTC=0x00;

TRISB=0X07;

PORTB=0X00;

lcd_init();
delay(100);

while(1)
{
i=0;
lcd_command(0x80);
lcd_display("Enter the password");
delay(10000);delay(10000);
lcd_command(0x01);lcd_command(0x80);
password();


if((b[0]==a[0])&&(b[1]==a[1]))
{
lcd_display("Password correct");
}
else
{
lcd_display("Incorrect password");
}
delay(10000);delay(10000);delay(10000);delay(10000);
delay(10000);delay(10000);delay(10000);delay(10000);
}
}
