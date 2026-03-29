#include <pic.h>
__CONFIG(0X3F72);
#define RS RD1
#define RW RD2
#define EN RD3
#define sw RB0
unsigned int i,j, temp;
unsigned int temp1=0,a,b,c,d,e,f,y=0,z=0;
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



void gsm_command(const unsigned char *da)
{ 
unsigned int s;
for(s=0;da[s]!=0;s++)
{
while(!TXIF)
	{
	}
OERR=0;
TXREG=da[s];
}
}

void txs(unsigned char val)
{
while(!TXIF)
	{
	}
OERR=0;
TXREG=val;
}

void sms1()
	{
   	  txs('A');txs('T');txs('+');txs('C');txs('M');txs('G');
	  txs('S');txs('=');
	  txs('"');	  
	  txs('9');txs('7');txs('5');txs('1');txs('5');
      txs('0');txs('5');txs('7');txs('0');txs('6');	  
	  txs('"');	  
	  txs(13); delay(10000);txs(10);

delay(600);
delay(600);


gsm_command("gps location");
	

lcd_cmd(0x80);
delay(1000);

for(j=16;j<28;j++)
{

ser=(gpsdata[j]);
//lcd_data(ser);
TXREG=ser;

delay(10000);
}
lcd_cmd(0xc0);

for(j=30;j<41;j++)
{
     
ser=(gpsdata[j]);
//lcd_data(ser);
TXREG=ser;	

delay(10000);
}


delay(600);
txs(13);delay(60000);
 txs(10);	 
delay(10000);

	  txs(26);
delay(50000);delay(50000);
delay(50000);delay(50000);
	}
void serial(const unsigned char *a)
{
unsigned char B;
for(B=0;a[B]!=0;B++)
{
TXREG=a[B];
delay(20000);
//TXREG=0X0D;
}
}



//**********
// MAIN 
//**********
void main()
{
ADCON1=0X80;
ADCON0=0X40;

TRISA=0x0F;
PORTA=0x00;

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
//delay(50000);delay(50000);delay(50000);

while(1)
{

CHS2=0;
CHS1=0;
CHS0=0;
ADON=1;
delay(600);
ADCON0=(ADCON0|0X04);
delay(600);
temp1=ADRESH<<8;
delay(600);
temp1=temp1+ADRESL;
delay(600);
delay(600);
a=temp1/1000;
b=temp1%1000;
c=b/100;
d=b%100;
e=d/10;
f=d%10;

lcd_cmd(0x80);
lcd_data(a+0x30);
delay(5000);
lcd_data(c+0x30);
delay(5000);
lcd_data(e+0x30);
delay(5000);
lcd_data(f+0x30);
delay(5000);
if(y==0)
{
if(temp1>=500)
{
y=1;
z=z+1;
lcd_cmd(0xC0);
lcd_data(z+0x30);
delay(50000);delay(50000);delay(50000);
}

}
if(temp1<=500)
{
y=0;
}

if(z>=3)
{
delay(50000);delay(50000);delay(50000);delay(50000);
z=0;
lcd_cmd(0x01);
lcd_cmd(0x80);
lcd_display("Msg sending");
delay(50000);delay(50000);

serial("AT");
txs(13);delay(60000);delay(60000);
 txs(10);	 
delay(10000);
delay(10000);
serial("AT+CMGF=1");
txs(13);delay(60000);delay(60000);
 txs(10);	 
delay(10000);delay(50000);gps_send();
delay(50000);delay(50000);
sms1();
}

}
}
