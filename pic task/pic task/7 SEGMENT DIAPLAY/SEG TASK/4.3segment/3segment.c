#include<pic.h>
# define s1 RC0
#define s2 RC1
#define s3 RC2
void delay(unsigned int x)
{
while(x--);
}
int seg[]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0X6F};
int a,b,c,d,i;
main()
{
TRISB=0X00;
PORTB=0X00;
TRISC=0X00;
PORTC=0X00;
while(1)
{
for(i=0;i<999;i++)
{
a=i/100;
b=i%100;
c=b/10;
d=b%10;

s1=0;
s2=1;
s3=1;
PORTB=seg[a];
delay(50000);
s1=1;
s2=0;
s3=1;
PORTB=seg[c];
delay(50000);
s1=1;
s2=1;
s3=0;
PORTB=seg[d];
delay(50000);

}
}
}