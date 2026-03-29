#include<pic.h>
#define SS RC0
void delay (unsigned int x)
{
while(x--);
}
main()
{
TRISC=0X10;
PORTC=0X00;
SSPSTAT=0X00;
SSPCON=0X20;

//WRITE ENABLE SEQUENCE

SS=0;
SSPBUF=0X06;
while(SSPIF==0);
SSPIF=0;
SS=1;
delay(10000);

//WRITE SEQUENCE

SS=0;
SSPBUF=0X02;//WRITE 
delay(1000);
while(SSPIF==0);
SSPIF=0;
delay(1000);
SSPBUF=0XCF;//ADDRESS
delay(1000);
while(SSPIF==0);
SSPIF=0;
delay(1000);
SSPBUF='M';//DATA
while(SSPIF==0);
SSPIF=0;
delay(1000);
SS=1;
delay(10000);

//WRITE DISABLE
SS=0;
SSPBUF=0X04;//WRITE DISABLE
while(SSPIF==0);
SSPIF=0;
delay(1000);
SS=1;
delay(10000);

//READ
SS=0;
SSPBUF=0X03;//READ
delay(1000);
while(SSPIF==0);

SSPIF=0;
SSPBUF=0XCF;// ADDRESS
delay(1000);
while(SSPIF==0);

SSPIF=0;
delay(1000);
SSPBUF=0X00;
delay(1000);
while(BF==0);
BF=0;
delay(1000);
SS=1;
delay(1000);
while(1)
{
}
}
