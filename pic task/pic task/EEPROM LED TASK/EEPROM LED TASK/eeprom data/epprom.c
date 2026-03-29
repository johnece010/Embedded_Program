#include <pic.h>

__CONFIG(0X3F72);

#define LED_PORT    PORTB
#define SWITCH_PIN  RB0

#define EEPROM_ADDR 0x00

void init();
void delay();
void saveToEEPROM(unsigned char data);
unsigned char readFromEEPROM();

void main() {
   
TRISB = 0x01;
PORTB = 0x00;


unsigned char currentAddress = 0;
currentAddress = readFromEEPROM();
while (1) {
LED_PORT = 0x00;
LED_PORT |= (1 << currentAddress);
delay();
if (SWITCH_PIN == 0) {
while(SWITCH_PIN == 0);
currentAddress++;
saveToEEPROM(currentAddress);
while (SWITCH_PIN == 0);
}

if (currentAddress == 8) 
{
currentAddress = 0;
}
}
}



void delay() {
    for (unsigned int i = 0; i < 50000; i++);
}

void saveToEEPROM(unsigned char data) {
EEADR = EEPROM_ADDR;
EEDATA = data;
EEPGD = 0;
WREN = 1;
GIE = 0;
EECON2 = 0x55;
EECON2 = 0xAA;
WR = 1;
GIE = 1;
while (WR == 1);
WREN = 0;
}

unsigned char readFromEEPROM()
{
EEADR = EEPROM_ADDR;
EEPGD = 0;
RD = 1;
return EEDATA;
}
