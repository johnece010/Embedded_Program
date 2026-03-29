 #include<pic.h>
__CONFIG(0X3F72);
#define sw RB0
#define RS RD1
#define RW RD2
#define EN RD3
void delay(unsigned int x)
{
while(x--);
}

void lcd_command(unsigned char com)
{
PORTD=(com&0xf0);
RS=0;
RW=0;
EN=1;
delay(200);
EN=0;
int temp=com<<4;
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
int temp=dat<<4;
PORTD=(temp&0xf0);
RS=1;
RW=0;
EN=1;
delay(200);
EN=0;
}
void lcd_display(const unsigned char *m)
{
for(int i=0;m[i]!=0;i++)
{
lcd_data(m[i]);
}
}
void lcd_init()
{
lcd_command(0x02);
lcd_command(0x2c);
lcd_command(0x06);
lcd_command(0x01);
lcd_command(0x0c);
lcd_command(0x80);
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
TRISD=0X00;
PORTD=0X00;
TXSTA=0X24;
RCSTA=0X90;
SPBRG=25;


lcd_init();
delay(500);
lcd_command(0X80);
lcd_display("WELCOME");
delay(50000);

while(1)
{
if(sw==1)
{
serial("AT");
delay(50000);
TXREG=0X0D;

delay(50000);
serial("AT+CMGF=1");
TXREG=0X0D;
delay(50000);
serial("AT+CMGS=8778753940");
TXREG=0X0D;
delay(50000);
TXREG=0X0D;
serial("SERIAL COMMUNICATION");
delay(50000);
TXREG=0X1A;
delay(50000);

}
}
}