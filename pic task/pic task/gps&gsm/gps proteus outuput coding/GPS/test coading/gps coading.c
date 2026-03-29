#include <pic.h>
__CONFIG(0X3F72);
#define RS RD1
#define RW RD2
#define EN RD3
#define SW RC0
unsigned int i,j, temp;
unsigned char ser=0x37,st=0x01,data_cap=0x00;
bank1 unsigned char gpsdata[50];
void delay(unsigned int x)
{
while (x--);
}
//***************
//GPS INIT
//***************
void gps_init()
{
TXSTA=0X24;
RCSTA=0X90;
SPBRG=25;
BRGH=1;
GIE=1;
PEIE=1;
RCIE=1;
//INTE=1;
}

//***************
//  LCD
//***************

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

//********

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

//**********

void lcd_display(const unsigned char *m)
{
for(int k=0;m[k]!=0;k++)
{
lcd_data(m[k]);
}
}

//**********

void lcd_init()
{
lcd_cmd(0x02);
lcd_cmd(0x2c);
lcd_cmd(0x06);
lcd_cmd(0x01);
lcd_cmd(0x0c);
lcd_cmd(0x80);
}
//*********************
//  SERIAL INTRRUPT
//*********************
void interrupt rcx(void)
{

if(RCIF==1)
{
//relay=1;
RCIF=0;
ser=RCREG;

if((ser==0x52)&&(st==0x01))
{
data_cap=0x01;
st=0x00;
}
if((data_cap==0x01)&&(i<45))
{
gpsdata[i]=ser;
i=i+1;
}
}
}

void gps_send()
{
lcd_cmd(0x01);
lcd_cmd(0x87);
delay(100);
lcd_display("gps");

delay(50000);delay(50000);
lcd_cmd(0x01);
delay(100);

//lcd_command(0x80);
//lcd_display("N10.36'3.9708",13);

//lcd_command(0xC0);
//lcd_display("E78.32'49,0092",14);

if(i>43)
{	

lcd_cmd(0x80);
delay(1000);
		
for(j=16;j<28;j++)
{

ser=(gpsdata[j]);
lcd_data(ser);

delay(600);
}
lcd_cmd(0xc0);

for(j=30;j<41;j++)
{
     
ser=(gpsdata[j]);
lcd_data(ser);	

delay(600);
}

delay(50000);delay(50000);
delay(50000);delay(50000);

data_cap=0x00;
st=0x01;
i=0x00;

delay(35000);

}
}


//**********
// MAIN 
//**********
void main()
{
TRISB=0x00;
PORTB=0x00;

TRISD=0x00;
PORTD=0x00;

TRISC=0x80;
PORTC=0x00;

lcd_init();
delay(500);

gps_init();	
delay(50000); 
delay(100);
lcd_cmd(0x80);
lcd_cmd(0x01);
lcd_display("WELCOME");
delay(50000);delay(50000);delay(50000);
delay(50000);delay(50000);delay(50000);

while(1)
{
gps_send();
}
}