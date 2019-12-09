#include <avr/io.h>
#include <util/delay.h>
#define WREN 6
#define RDSR 5
#define WRITE 2
#define READ 3

void reset()  {									//chip select is assigned
	PORTB |= 1 << 0x00 |1 << 0x02 |1 << 0x04;
}

void set() {
	PORTB |= 1 << 0x02 | 1 << 0x04;
	PORTB &= ~(1 << 0x00);
}

void spi_hold() {
	while (!(SPSR & (1 << SPIF)));
}


void write_function_enable() {
	SPDR =WREN;
	spi_hold();
}

char spi_read(char * adress)
 {
	SPDR = READ;
	spi_hold();
	for(int i=0;i<=2;i++) {
		SPDR = adress[i];
		spi_hold();
	}

	SPDR = 0x00;
	spi_hold();

	return SPDR;
}

void spi_write(char * adress, char data)
{

	SPDR = WRITE;
	spi_hold();

	for(int i=0;i<=2;i++)
	{
		SPDR = adress[i];
		spi_hold();
	}
	SPDR = data;
	spi_hold();
}

void setup_mode(){
		DDRD = 0xFF;		//output register
		DDRB = 0xf7;		//output register
		DDRE |= 1 << WREN;	//(Hardware bootloader activatiset)
		PORTE |= 1 << WREN;
		SPCR =  (1 << SPE) | (1 << MSTR) |(0 << SPR1)|(1 << SPR0);	//setting the spi control register
		set();

	};
int main(void)
{
	setup_mode();
	reset();
	set();

	char eeprom_key = 0x3D;				// key value is written to eeprom and then passed to microcontroller and then fpga
	char adress[] ={0x00,0x00,0x00};	// address location of eeprom. (24-bit adredss)

	for(;;) {
		write_function_enable();		// enable the write configuration
			reset();
			_delay_ms(10);
			set();

		spi_write(adress,eeprom_key);  // uc writes a data to the eeprom to a specific address
			reset();
			_delay_ms(10);
			set();

		char data = spi_read(adress);  //uc reads a data from a specific address of the eeprom to
			reset();
			_delay_ms(10);
			set();

		PORTD = data;		//key is sent through the portd
    }
}
