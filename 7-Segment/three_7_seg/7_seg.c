#include <pic.h>

#define S1 RC0   // Digit 1
#define S2 RC1   // Digit 2
#define S3 RC2   // Digit 3
#define S4 RC3   // Digit 4

void delay(unsigned int x)
{
    while(x--);
}

// 7-segment codes for 0-9 (Common Cathode)
int seg[] = {0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};

int i, a, b, c, d, e, f, g ;

void main()
{
    TRISB = 0x00; // PORTB output for segments
    PORTB = 0x00;
    TRISC = 0x00; // PORTC output for digit control
    PORTC = 0x00;

    while(1)
    {
        for(i = 1; i <= 9999; i++)   // count from 1 to 9999
        {
            // --- Split number into digits ---
            a = i / 1000;             // thousands
            b = i % 1000;       // hundreds
            c = b / 100;        // tens
            d = b % 100;
 	     e = d/10;
	     f = d%10;

            // --- Multiplex display (show all 4 digits quickly) ---
           // for(int k = 0; k < 50; k++) // repeat to maintain visible display
            {
                // 1st digit
                S1=0; S2=0; S3=0; S4=1;
                PORTB = seg[a];
		  delay(50000);

                // 2nd digit
                S1=0; S2=0; S3=1; S4=0;
                PORTB = seg[c];
		  delay(50000);

                // 3rd digit
                S1=0; S2=1; S3=0; S4=0;
                PORTB = seg[e];
		  delay(50000);

                // 4th digit
                S1=1; S2=0; S3=0; S4=0;
                PORTB = seg[f];
		  delay(50000);
            }
        }
    }
}
