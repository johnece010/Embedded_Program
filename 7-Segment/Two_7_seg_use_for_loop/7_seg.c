#include <pic.h>

#define S1 RC0
#define S2 RC1

void delay(unsigned int x)
{
    while(x--);
}

int seg[] = {0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
int i, a, b;

void main()
{
    TRISB = 0x00; // PORTB output (7-seg data)
    PORTB = 0x00;
    TRISC = 0x00; // PORTC output (digit control)
    PORTC = 0x00;

    while(1)
    {
        for(i = 0; i <= 99; i++)
        {
            a = i / 10;  // Tens digit
            b = i % 10;  // Ones digit

            // Display tens
            S1 = 0;
            S2 = 1;
            PORTB = seg[a];
            delay(50000);

            // Display ones
            S1 = 1;
            S2 = 0;
            PORTB = seg[b];
            delay(50000);
        }
    }
}
