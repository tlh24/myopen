//goal: to write to the dataflash on the board, 
// a atmel AT45DB081D
// http://www.atmel.com/dyn/resources/prod_documents/doc3596.pdf
// & read from it.  
/*connections: (used to be aw-usb board, now use the parallel port, much faster! 
pin2  D0 = _cs , chip select (active lo, pulled lo, set high to write.)
			this is broken on the PCB - had to cut & jumper _wr & _cs together!
pin13 SEL = SO , serial output of the flash, connected to an input. called SI here. 
pin3  D1 = SI , serial input to the flash, connected to an output, called SO here.
pin4  D2 = SCLK , output. 
pin5	 D3 = _prog , pull low to hold the processor in reset &
			prevent it from driving the bus. (& enable the buffer). 
*/
#include <parapin.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h> //for usleep(). 
#include <time.h>

#define _CS	LP_PIN02
#define SI	LP_PIN13
#define SO	LP_PIN03
#define SCLK	LP_PIN04
#define _PROG	LP_PIN05

void write_byte(unsigned char byte){
	// see the connections & commentary above. 
	int i; 
	//msb first. 
	for( i=0; i < 8; i++ ){
		clear_pin(SCLK); 
		if( (byte >> (7-i) ) & 0x1 ){
			set_pin(SO); 
		}else{
			clear_pin(SO); 
		}
		//data is always clocked in on the rising edge of SCLK.
		set_pin(SCLK); 
	}
	
}
unsigned char read_byte(){
	unsigned char data = 0;
	int i; 
	clear_pin(SO); 
	
	for(i=0; i<8; i++){
		clear_pin(SCLK); 
		//data is latched out on the falling edge of SCLK. 
		clear_pin(SO); //this works to delay thet signal..
		set_pin(SCLK); 
		if(pin_is_set(SI))
			data++; 
		if( i < 7)
			data = data << 1; 
	}
	return data; 
}
unsigned char read_status_register(){
	unsigned char stat; 
	clear_pin(_CS); 
	write_byte(0xd7); 
	stat= read_byte(); 
	printf("status register= %x \n", stat); 
	if(stat & 0x80)
		printf("device is ready\n"); 
	else
		printf("device is busy.\n"); 
	printf("comp bit = %d\n", (stat>>6)&1); 
	if( (stat & 0x3c) == 0x24)
		printf("density OK for AT45DB081\n"); 
	else
		printf("density mangled/different\n"); 
	if(stat & 0x02)
		printf("device is protected.\n"); 
	else
		printf("device is unprotected.\n"); 
	if(stat & 0x01)
		printf("page size 256 bytes\n"); 
	else
		printf("page size 264 bytes.\n"); 
	set_pin(_CS); 
	
	return stat; 
}
void test(int page_size){
	int i; 
	//just a procedure to exercise the flash - 
		//write some flash!
	printf("writing buffer\n"); 
	clear_pin(_CS); 

	write_byte(0x84); //see page 28 on the spec sheet - buffer 1 write. 
	//next, we need 15 don't care bits and 9 buffer address bits. 
	//since we are writing to the beginning of the buffer, this will be 24 zeros. 
	write_byte(0x00); 
	write_byte(0x00); 
	write_byte(0x00); 
	for(i=0; i<page_size; i++){
		write_byte((unsigned char)(i & 0xff)); 
	}
	set_pin(_CS); 
	//okay - now read back the buffer. 
	clear_pin(_CS); 
	write_byte(0xd4); 
	//three address bytes. 
	write_byte(0x00); 
	write_byte(0x00); 
	write_byte(0x00); 
	//one dont-care byte to init read. 
	write_byte(0x00); 
	for(i=0; i<page_size; i++){
		printf("read buffer[%d] = %x\n", i, read_byte()); 
	}
	set_pin(_CS); 
	//erase a page. 
	printf("erasing page 0 ... \n"); 
	clear_pin(_CS); 
	write_byte(0x81); 
	//address : 3 don't care, 12 page address, 9 don't care. 
	write_byte(0x00); 
	write_byte(0x00); 
	write_byte(0x00); 
	
	set_pin(_CS); 
	while( (read_status_register() & 0x80) == 0 ){
		usleep(1000); 
	}
	
	//now, write the buffer to flash.  page 8. 
	printf("writing buffer to flash\n"); 
	clear_pin(_CS); 
	write_byte(0x83); 
	//next, 3 bytes of page address. (page size = 256 bytes, 2^12 pages,
	// hence first 4 bits don't matter. 
	write_byte(0x00); 
	write_byte(0x00); 
	write_byte(0x00); 
	set_pin(_CS); 
	
	//wait until the device is done.
	while( (read_status_register() & 0x80) == 0 ){
		usleep(2000); 
	}
	
	//read back the flash. 
	printf("reading back the flash\n"); 
	clear_pin(_CS); 
	write_byte(0xd2); 
	//24 address bits - again, first 4 bits don't matter. 
	write_byte(0x00); 
	write_byte(0x00); 
	write_byte(0x00); 
	//32 don't care bits. 
	write_byte(0x00); 
	write_byte(0x00); 
	write_byte(0x00); 
	write_byte(0x00); 
	for(i=0; i<page_size; i++){
		printf("read flash[%d] = %x\n", i, read_byte()); 
	}
	set_pin(_CS); 
}
void write_page(unsigned char *d, int page_size, int page){
	int i;
	
	printf("writing buffer\n"); 
	clear_pin(_CS); 
	write_byte(0x84); //see page 28 or 8 on the spec sheet - buffer 1 write. 
	//next, we need 15 don't care bits and 9 buffer address bits. 
	//since we are writing to the beginning of the buffer, this will be 24 zeros. 
	write_byte(0x00); 
	write_byte(0x00); 
	write_byte(0x00); 
	for(i=0; i<page_size; i++){
		write_byte(d[i]); 
	}
	set_pin(_CS); 
	
	//now, write the buffer to flash with built-in erase.  page 8. 
	printf("writing buffer to flash\n"); 
	clear_pin(_CS); 
	write_byte(0x83); 
	//next, 3 bytes of page address. (page size = 256 bytes, 2^12 pages,
	// hence first 4 bits don't matter. 
	write_byte( (page & 0xfff) >>7); 			//0b000DDDDD
	write_byte( ( (page & 0xfff) << 1 ) & 0xff); 	//0bDDDDDDD0
	write_byte(0x00); 
	set_pin(_CS); 
	
	//wait until the device is done.
	while( (read_status_register() & 0x80) == 0 ){
		usleep(2000); 
	}
}

void verify_page(unsigned char *d, int page_size, int page){
	int i, ok=1; 
	unsigned char read; 
	
	//read back the flash & verify.
	clear_pin(_CS); 
	write_byte(0xd2); 
	//24 address bits - again, first 4 bits don't matter. 
	write_byte( (page & 0xfff) >>7); 			//0b000DDDDD
	write_byte( ( (page & 0xfff) << 1 ) & 0xff); 	//0bDDDDDDD0
	write_byte(0x00); 
	//32 don't care bits. 
	write_byte(0x00); 
	write_byte(0x00); 
	write_byte(0x00); 
	write_byte(0x00); 
	for(i=0; i<page_size; i++){
		read = read_byte(); 
		if(read != d[i]){
			printf("read flash[%d] expected %x got %x\n", i, d[i], read); 
			ok = 0; 
		}
	}
	if(ok){
		printf("flash page %d has been verified :) \n", page); 
	}
	set_pin(_CS); 
}
int main(int argv, char* argc[]){
	int 		i, j, ps; 
	int 		page_size = 264; 
	FILE* 	file; 
	int 		file_size; 
	unsigned char*	buffer;
	size_t 	result; 
	unsigned char	mfr_code[4] = {0x1f, 0x25, 0x00, 0x00}; 
	unsigned char 	byte; 
	
	if(argv < 2){
		printf("please specify the ldr file to be written to flash %d\n", argv); 
		return 0; 
	}
	printf("ldr file: %s\n", argc[1]); 
	
	if(pin_init_user(LPT1) < 0){
		printf("could not open the parallel port! \n"); 
		exit(0); 
	}
	pin_output_mode(LP_DATA_PINS); 
	
	//read the binary file. 
	file = fopen( argc[1], "r"); 
	if(file == 0){
		printf("could not open %s\n", argc[1]); 
		return 0; 
	}
	// obtain file size:
	fseek (file , 0 , SEEK_END);
	file_size = ftell (file);
	rewind (file);
	printf("file size %d bytes , %d pages\n", file_size, (file_size / page_size) +1); 
	 // allocate memory to contain the whole file:
	buffer = (unsigned char*) malloc (sizeof(char)*file_size);
	if (buffer == NULL) {fputs("Memory error",stderr); exit (2);}

	// copy the file into the buffer:
	result = fread (buffer,1,file_size,file);
	if (result != file_size) {fputs ("file read error",stderr); exit (3);}
	fclose(file); 
	
	printf("requesting manufacturer opcode...\n"); 
	set_pin(_PROG); 
	clear_pin(SCLK); 

	clear_pin(_CS | SCLK); 
	write_byte(0x9f); 

	for(j=0; j<4; j++){//see page 44 of the spec sheet.
		byte = read_byte(); 
		printf("read: 0x%x \n", byte);
		if(byte != mfr_code[j]){
			printf("manufacturer code does not look right, exiting.\n"); 
			clear_pin(_PROG | _CS | SO | SCLK); //release the device! 
			exit(0); 
		}
	}
	set_pin(_CS); 
	//test(264); 
	
	for(i=0; i< (file_size / page_size)+1; i++){
		ps = file_size - i*page_size; 
		ps = ps > page_size ? page_size : ps; 
		printf("writing page %d size %d\n", i, ps); 
		write_page(&(buffer[i*page_size]), ps, i); 
	}
	for(i=0; i< (file_size / page_size)+1; i++){
		ps = file_size - i*page_size; 
		ps = ps > page_size ? page_size : ps; 
		printf("verifying page %d size %d\n", i, ps); 
		verify_page(&(buffer[i*page_size]), ps, i); 
	}
	
	free(buffer); 
	clear_pin(_PROG | _CS | SO | SCLK); //release the device! 
	return 0;
}

