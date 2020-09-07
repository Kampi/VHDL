#include <avr/io.h>
#include <util/delay.h>

int main(void)
{
	uint8_t Buffer[2];

	PORTC.DIRSET = (0x01 << 0x07) | (0x01 << 0x05) | (0x01 << 0x04);
	SPIC.CTRL |= (SPI_ENABLE_bm | SPI_MASTER_bm | SPI_MODE_1_gc | SPI_PRESCALER_DIV4_gc);

	PORTC.DIRSET = (0x01 << 0x03);
	PORTC.OUTSET = (0x01 << 0x03);

    while(1) 
    {
	    PORTC.OUTCLR = (0x01 << 0x03);
		
		// Read out the data
		for(uint8_t i = 0x00; i < 0x02; i++)
		{
			SPIC.DATA = 0x06;
			while(!(SPIC.STATUS & SPI_IF_bm));
			Buffer[i] = SPIC.DATA;
		}

	    PORTC.OUTSET = (0x01 << 0x03);
		_delay_ms(1000);
    }
}

