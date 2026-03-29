#include<pic.h>
# define s1 RC0
#define s2 RC1
#define s3 RC2
#define s4 RC3
void delay(unsigned int x)
{
while(x--);
}
int seg[]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0X6F};
int a,b,c,d,e,f,i;
main()
{
TRISB=0X00;
PORTB=0X00;
TRISC=0X00;
PORTC=0X00;
while(1)
{
for(i=0;i<9999;i++)
{
a=i/1000;
b=i%1000;
c=b/100;
d=b%100;
e=d/10;
f=d%10;




s1=0;
s2=1;
s3=1;
s4=1;
PORTB=seg[a];
delay(5000);
s1=1;
s2=0;
s3=1;
s4=1;
PORTB=seg[c];
delay(5000);
s1=1;
s2=1;
s3=0;
s4=1;
PORTB=seg[e];
delay(5000);
s1=1;
s2=1;
s3=1;
s4=0;
PORTB=seg[f];
delay(5000);

}
}
}