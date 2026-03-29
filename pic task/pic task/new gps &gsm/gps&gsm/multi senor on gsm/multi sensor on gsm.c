#include<pic.h>
__CONFIG(0X3f72);

#define RS RD1
#define RW RD2
#define EN RD3


unsigned int a=0,b=0,c=0,d=0,e=0,f=0,a1=0,b1=0,c1=0,d1=0,e1=0,f1=0;
unsigned int a2=0,b2=0,c2=0,d2=0,e2=0,f2=0,a3=0,b3=0,c3=0,d3=0,e3=0,f3=0;
unsigned int T=0,W=0,w1=0,i=0,j=0,temp,q=0,r=0,v=0;
unsigned int temp1=0,temp2=0,temp3=0,temp4=0;

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
	  txs('9');txs('7');txs('5');txs('1');txs('5');
      txs('0');txs('5');txs('7');txs('0');txs('6');	  
	  txs('"');	  
	  txs(13); delay(10000);txs(10);

delay(600);
delay(600);

gsm_command("sensor1 abnormal");
delay(5000);


 txs(13); delay(10000);txs(10);

delay(600);
delay(600);

delay(5000);
TXREG=(a+0x30);
delay(100);
TXREG=(c+0x30);
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
void sms2()
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

gsm_command("sensor2 abnormal");
delay(5000);


 txs(13); delay(10000);txs(10);

delay(600);
delay(600);

delay(5000);
TXREG=(a1+0x30);
delay(100);
TXREG=(c1+0x30);
delay(100);
TXREG=(e1+0x30);
delay(100);
TXREG=(f1+0x30);
delay(100);



delay(600);
txs(13);delay(60000);
 txs(10);	 
delay(10000);

	  txs(26);
delay(50000);delay(50000);
delay(50000);delay(50000);
	}

void sms3()
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

gsm_command("sensor3 abnormal");
delay(5000);


 txs(13); delay(10000);txs(10);

delay(600);
delay(600);

delay(5000);
TXREG=(a2+0x30);
delay(100);
TXREG=(c2+0x30);
delay(100);
TXREG=(e2+0x30);
delay(100);
TXREG=(f2+0x30);
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

TRISA=0x0F;
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

lcd_cmd(0xC0);
lcd_data(a+0x30);
delay(5000);
lcd_data(c+0x30);
delay(5000);
lcd_data(e+0x30);
delay(5000);
lcd_data(f+0x30);
delay(5000);


CHS2=0;
CHS1=0;
CHS0=1;
ADON=1;
delay(600);
ADCON0=(ADCON0|0X04);
delay(600);
temp2=ADRESH<<8;
delay(600);
temp2=temp2+ADRESL;
delay(600);
a1=temp2/1000;
b1=temp2%1000;
c1=b1/100;
d1=b1%100;
e1=d1/10;
f1=d1%10;
lcd_cmd(0xC4);
lcd_data(a1+0x30);
delay(5000);
lcd_data(c1+0x30);
delay(5000);
lcd_data(e1+0x30);
delay(5000);
lcd_data(f1+0x30);
delay(5000);


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
a2=temp3/1000;
b2=temp3%1000;
c2=b2/100;
d2=b2%100;
e2=d2/10;
f2=d2%10;
lcd_cmd(0xC8);
lcd_data(a2+0x30);
delay(5000);
lcd_data(c2+0x30);
delay(5000);
lcd_data(e2+0x30);
delay(5000);
lcd_data(f2+0x30);
delay(5000);


if(temp1>=500)
{
lcd_cmd(0x01);
lcd_cmd(0x80);
lcd_display("sensor1 abnormal");
delay(50000);
serial("AT");
txs(13);delay(60000);delay(60000);
 txs(10);	 
delay(10000);
delay(10000);
serial("AT+CMGF=1");
txs(13);delay(60000);
delay(60000);
 txs(10);	 
delay(10000);
delay(10000);

sms1();

}
if(temp2>=500)
{
lcd_cmd(0x01);
lcd_cmd(0x80);
lcd_display("sensor2 abnormal");
delay(50000);
serial("AT");
txs(13);delay(60000);delay(60000);
 txs(10);	 
delay(10000);
delay(10000);
serial("AT+CMGF=1");
txs(13);delay(60000);
delay(60000);
 txs(10);	 
delay(10000);
delay(10000);

sms2();

}

if(temp3>=500)
{
lcd_cmd(0x01);
lcd_cmd(0x80);
lcd_display("sensor3 abnormal");
delay(50000);
serial("AT");
txs(13);delay(60000);delay(60000);
 txs(10);	 
delay(10000);
delay(10000);
serial("AT+CMGF=1");
txs(13);delay(60000);
delay(60000);
 txs(10);	 
delay(10000);
delay(10000);

sms3();

}

}
}
