#include<pic.h>
__CONFIG(0X3f72);

#define sw RB0 

#define RS RD1
#define RW RD2
#define EN RD3
int a,b,z,d,e,f,temmp;
unsigned int T=0,W=0,w1=0,c=0,i,j,temp,q,r,v=0;

void delay(unsigned int a)
{
while(a--);
}

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
void lcd_display(const unsigned char *m)
{
for(int k=0;m[k]!=0;k++)
{
lcd_data(m[k]);
}
}
void lcd_init()
{
lcd_cmd(0x02);
lcd_cmd(0x2c);
lcd_cmd(0x06);
lcd_cmd(0x01);
lcd_cmd(0x0c);
lcd_cmd(0x80);
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
	  txs('8');txs('7');txs('7');txs('8');txs('7');
      txs('5');txs('3');txs('9');txs('4');txs('0');	  
	  txs('"');	  
	  txs(13); delay(10000);txs(10);

delay(600);
delay(600);

gsm_command("sensor abnormal");
delay(5000);
txs(13); delay(10000);txs(10);

delay(600);
delay(600);

delay(5000);
TXREG=(a+0x30);
delay(1000);
TXREG=(z+0x30);
delay(1000);
TXREG=(e+0x30);
delay(1000);
TXREG=(f+0x30);
delay(1000);



delay(600);
txs(13);delay(60000);
 txs(10);	 
delay(10000);

	  txs(26);
delay(50000);delay(50000);
delay(50000);delay(50000);
	}

void sms2()
	{
   	  txs('A');txs('T');txs('+');txs('C');txs('M');txs('G');
	  txs('S');txs('=');
	  txs('"');	  
	  txs('8');txs('0');txs('9');txs('8');txs('1');
      txs('4');txs('2');txs('0');txs('6');txs('4');	  
	  txs('"');	  
	  txs(13); delay(10000);txs(10);

delay(600);
delay(600);


gsm_command("sensor abnormal");
delay(10000);
txs(13); delay(10000);txs(10);

delay(600);
delay(600);


TXREG=(a+0x30);
delay(100);
TXREG=(z+0x30);
delay(100);
TXREG=(e+0x30);
delay(100);
TXREG=(f+0x30);
delay(100);



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
unsigned char i;
for(i=0;a[i]!=0;i++)
{
TXREG=a[i];
delay(20000);
//TXREG=0X0D;
}
}

void main()
{
ADCON1=0X80;
ADCON0=0X40;

TRISD=0x00;
PORTD=0x00;

TRISA=0x01;
PORTA=0x00;

TRISC=0x00;
PORTC=0x00;

TRISB=0X03;
PORTB=0X00;

lcd_init();
delay(100);

TXSTA=0x24;
RCSTA=0x90;
SPBRG=25;

delay(600);
PEIE=1;
GIE=1;

delay(600);
lcd_cmd(0x80);

lcd_display("WELCOME");
delay(50000);delay(50000);
lcd_cmd(0x01);
while(1)
{
CHS2=0;
CHS1=0;
CHS0=0;
ADON=1;
delay(600);
ADCON0=(ADCON0|0X04);
delay(600);
temmp=ADRESH<<8;
delay(600);
temmp=temmp+ADRESL;
delay(600);
PORTD=temmp;
delay(600);
a=temmp/1000;
b=temmp%1000;
z=b/100;
d=b%100;
e=d/10;
f=d%10;

lcd_cmd(0xC0);
lcd_data(a+0x30);
delay(1000);
lcd_data(z+0x30);
delay(1000);
lcd_data(e+0x30);
delay(1000);
lcd_data(f+0x30);
delay(1000);
delay(50000);delay(50000);
if(temmp>=500)
{

lcd_cmd(0x80);
lcd_display("sensor abnormal");
delay(50000);
serial("AT");
txs(13);delay(60000);delay(60000);
 txs(10);	 
delay(10000);
delay(10000);
serial("AT+CMGF=1");
txs(13);delay(60000);delay(60000);
 txs(10);	 
delay(10000);
delay(10000);

sms1();

}


}
}
