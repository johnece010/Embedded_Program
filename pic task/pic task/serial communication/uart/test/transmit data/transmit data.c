#include<pic.h>
void delay(unsigned int x)
{
while(x--);
}
void serial(unsigned char *a)
{
for(int i=0;a[i]!=0;i++)
{
TXREG=a[i];
delay(20000);
}
TXREG=0X1D;
}
main()
{
TRISC=0X00;
PORTC=0X00;
TXSTA=0X24;
RCSTA=0X90;
SPBRG=25;
while(1)
{
serial("madhu  ");
delay(50000);
}
}