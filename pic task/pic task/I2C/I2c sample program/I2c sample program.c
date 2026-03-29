 #include<pic.h>
#define rs RD0
#define rw RD1
#define en RD2

#define DS1307_ADD 0xD0
#define second 0x00
#define minute 0x01
#define hour 0x02
#define day 0x03
#define date 0x04
#define month 0x05
#define year 0x06

char decimal_to_bcd(unsigned char value);
void bcd_to_ascii(unsigned char value);
void DS1307_READ(char slave_add,char reg_add);
void DS1307_WRITE(char _sec,char _min,char _hr,char _day,char _date,char _mon,char _yr);
char sec1,min1,hr1,day1,date1,mon1,yr1,con1;

void delay(unsigned int x)
{
while(x--);
}
void lcd_command(unsigned int COM )
{
unsigned char temp;
PORTD=COM&0Xf0;
rs=0;
rw=0;
en=1;
delay(200);
en=0;
temp=COM<<4;
PORTD=temp&0Xf0;
rs=0;
rw=0;
en=1;
delay(200);
en=0;
/*PORTD=COM;
rs=0;
rw=0;
en=1;
delay(1000);
en=0;
*/
}
void lcd_data(unsigned int data)
{
unsigned char val1;
PORTD=data&0xf0;
rs=1;
rw=0;
en=1;
delay(1000);
en=0;
val1=data<<4;
PORTD=val1&0Xf0;
rs=1;
rw=0;
en=1;
delay(1000);
en=0;
/*PORTD=data;
rs=1;
rw=0;
en=1;
delay(1000);
en=0;
*/
}

void lcd_init()
{
lcd_command(0X02);
lcd_command(0x2c);
lcd_command(0X06);
lcd_command(0X0c);
lcd_command(0X01);
}

void lcd_display(const unsigned char*m)
{
for(int i=0;m[i]!=0;i++)
{
lcd_data(m[i]);
delay(1000);
}
}
void main()
{
TRISB=0X00;
PORTB=0X00;
TRISD=0X00;
PORTD=0X00;
TRISC=0XFF;
SSPSTAT=0XC0;
SSPCON=0X28;
SSPCON2=0X18;

lcd_init();
lcd_command(0x80);
lcd_display("CLOCK:");
delay(1000);
lcd_command(0xC0);
lcd_display("DATE:");

DS1307_WRITE(0,30,05,1,22,11,25);
delay(1000);
while(1)
{
DS1307_READ(DS1307_ADD,0X00);
delay(1000);
}
}

void bcd_to_ascii(unsigned char value)
{
unsigned char bcd;
bcd=value;
bcd=bcd&0xf0;
bcd=bcd>>4;
bcd=bcd|0x30;
lcd_data(bcd);
delay(50000);
bcd=value;
bcd=bcd&0x0f;
bcd=bcd|0x30;
lcd_data(bcd);
delay(1000);
}

char decimal_to_bcd(unsigned char value)
{
unsigned char msb,lsb,hex;
msb=value/10;
lsb=value%10;
hex=((msb<<4)+lsb);
return hex;
delay(1000);
}


void DS1307_WRITE(char _sec,char _min,char _hr,char _day,char _date,char _mon,char _yr)
{

// start bit
SEN=1;
while(SEN==1);
SSPIF=0;

//SLAVE address bit
SSPBUF=DS1307_ADD;
while(SSPIF==0);
while(ACKSTAT==1);
SSPIF=0;
ACKSTAT=0;

SSPBUF=second;
while(SSPIF==0);
while(ACKSTAT==1);
SSPIF=0;
ACKSTAT=0;

SSPBUF=decimal_to_bcd(_sec);
while(SSPIF==0);
while(ACKSTAT==1);
SSPIF=0;
ACKSTAT=0;


SSPBUF=decimal_to_bcd(_min);
while(SSPIF==0);
while(ACKSTAT==1);
SSPIF=0;
ACKSTAT=0;


SSPBUF=decimal_to_bcd(_hr);
while(SSPIF==0);
while(ACKSTAT==1);
SSPIF=0;
ACKSTAT=0;

SSPBUF=decimal_to_bcd(_day);
while(SSPIF==0);
while(ACKSTAT==1);
SSPIF=0;
ACKSTAT=0;


SSPBUF=decimal_to_bcd(_date);
while(SSPIF==0);
while(ACKSTAT==1);
SSPIF=0;
ACKSTAT=0;


SSPBUF=decimal_to_bcd(_mon);
while(SSPIF==0);
while(ACKSTAT==1);
SSPIF=0;
ACKSTAT=0;


SSPBUF=decimal_to_bcd(_yr);
while(SSPIF==0);
while(ACKSTAT==1);
SSPIF=0;
ACKSTAT=0;


SSPBUF=0x00;
while(SSPIF==0);
while(ACKSTAT==1);
SSPIF=0;
ACKSTAT=0;

//stop bit
PEN=1;
while(PEN==1);
SSPIF=0;
}

void DS1307_READ(char slave_add,char reg_add)
{
//start bit
SEN=1;
while(SEN==1);
SSPIF=0;

//SLAVE ADDRES BIT
SSPBUF=slave_add;
while(SSPIF==0);
while(ACKSTAT==1);
SSPIF=0;
ACKSTAT=0;

SSPBUF=reg_add;
while(SSPIF==0);
while(ACKSTAT==1);
SSPIF=0;
ACKSTAT=0;

//restart bit
RSEN=1;
while(RSEN==1);
SSPIF=0;

SSPBUF=slave_add+1;
while(SSPIF==0);
while(ACKSTAT==1);
SSPIF=0;
ACKSTAT=0;

//RECIEVE BIT
RCEN=1;
while(BF==0);
sec1=SSPBUF;
ACKDT=0;
ACKEN=1;
while(ACKEN==1);


RCEN=1;
while(BF==0);
min1=SSPBUF;
ACKDT=0;
ACKEN=1;
while(ACKEN==1);

RCEN=1;
while(BF==0);
hr1=SSPBUF;
ACKDT=0;
ACKEN=1;
while(ACKEN==1);

RCEN=1;
while(BF==0);
day1=SSPBUF;
ACKDT=0;
ACKEN=1;
while(ACKEN==1);

RCEN=1;
while(BF==0);
date1=SSPBUF;
ACKDT=0;
ACKEN=1;
while(ACKEN==1);

RCEN=1;
while(BF==0);
mon1=SSPBUF;
ACKDT=0;
ACKEN=1;
while(ACKEN==1);

RCEN=1;
while(BF==0);
yr1=SSPBUF;
ACKDT=0;
ACKEN=1;
while(ACKEN==1);

RCEN=1;
while(BF==0);
con1=SSPBUF;
ACKDT=1;
ACKEN=1;
while(ACKEN==1);
//stop bit
PEN=1;
while(PEN==1);

lcd_command(0x88);
bcd_to_ascii(hr1);
delay(1000);
lcd_data(':');
//delay(1000);
bcd_to_ascii(min1);
//delay(1000);
lcd_data(':');
//delay(1000);
bcd_to_ascii(sec1);
delay(1000);

lcd_command(0xC8);
bcd_to_ascii(date1);
lcd_data('/');
//delay(1000);
bcd_to_ascii(mon1);
//delay(1000);
lcd_data('/');
//delay(1000);
bcd_to_ascii(yr1); 
//delay(1000);
}