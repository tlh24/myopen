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
#include <string.h> //for strcmp()
#include <unistd.h> //for usleep(). 
#include <time.h>

#define _CS	LP_PIN02
#define SI	LP_PIN13
#define SO	LP_PIN03
#define SCLK	LP_PIN04
#define _PROG	LP_PIN05

int g_type = 0; // 0 = AT45; 1 = AT25. 

void cleanup(){
	clear_pin(_PROG | _CS | SO | SCLK); //release the device! 
	exit(0); 	
}
void write_byte(unsigned char byte){
	// see the connections & commentary above. 
	int i; 
	//msb first. 
	for( i=0; i < 8; i++ ){
		clear_pin(SCLK); 
		//clear_pin(LP_PIN06); 
		if( (byte >> (7-i) ) & 0x1 ){
			set_pin(SO); 
		}else{
			clear_pin(SO); 
		}
		//data is always clocked in on the rising edge of SCLK.
		set_pin(SCLK); 
		//set_pin(LP_PIN06); 
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
unsigned char read_status_register(int doprint){
	unsigned char stat; 
	clear_pin(_CS | SCLK); 
	write_byte(0xd7); 
	stat= read_byte(); 
	if(doprint) {
		printf("status register= %x \n", stat); 
		if(stat & 0x80)
			printf("flash ready; "); 
		else
			printf("flash busy; "); 
		printf("comp bit = %d; ", (stat>>6)&1); 
		if( (stat & 0x3c) == 0x24)
			printf("density OK; "); 
		else
			printf("density BAD; "); 
		if(stat & 0x02)
			printf("flash protected; "); 
		else
			printf("flash unprotected; "); 
		if(stat & 0x01)
			printf("page size 256 bytes.\n"); 
		else
			printf("page size 264 bytes.\n"); 
	}
	set_pin(_CS); 
	
	return stat; 
}
void write_enable_AT25(){
	clear_pin(_CS | SCLK); 
	write_byte(0x06); 	
	set_pin(_CS); 
	set_pin(SO); 
}
unsigned char read_stat_AT25(int doprint){
	unsigned char stat; 
	clear_pin(_CS | SCLK); 
	write_byte(0x05); 
	stat= read_byte(); 
	set_pin(_CS); 
	set_pin(SO);
	if(stat != 0x11)
		printf("status register %x \n", stat);
	if(stat & 0x80){
		printf("sector protection registers locked!\n");
	} else {
		if(doprint) printf("sector protection registers unlocked.\n"); 	
	}
	if(stat & 0x20){
		printf("erase / program error detected!\n");
		//cleanup(); 
	}else{
		if(doprint) printf("last erase / program operation successful\n"); 
	}
	if(stat & 0x10){
		if(doprint) printf("write protect pin de-asserted\n"); 	
	}else{
		printf("write protect pin asserted!\n"); 
		//cleanup(); 
	}
	if(stat & 0x02){
		if(doprint) printf("device is write enabled\n"); 	
	}else{
		if(doprint) printf("device is not write enabled. (default)\n"); 	
	}
	if(stat & 0x01){
		if(doprint) printf("device is busy.\n"); 	
	}else{
		if(doprint) printf("device is ready.\n"); 	
	}
	return stat; 
}
void unprotect_AT25(){
	//first unprotect all sectors. 
	// 4mbit device, 256 pages -> 2k pages
	printf("unprotecting all pages..\n"); 
	write_enable_AT25(); 
	clear_pin(_CS | SCLK); 
	write_byte(0x01); 
	write_byte(0); //global unprotect. 
	set_pin(_CS); 
	set_pin(SO); 
	/*printf("erasing entire device.\n"); 
	//erases the whole AT25 type device. 
	write_enable_AT25(); 
	clear_pin(_CS); 
	write_byte(0xc7); 
	set_pin(_CS); 
	set_pin(SO); 
	while( (read_stat_AT25(0) & 0x01) ){
		usleep(1000); 
	}*/
}
void block_erase_AT25(int data_length){
	int addr = 0; 
	for(addr = 0; addr <= data_length && addr <= 512*1024; addr += 4096){
		printf("block erase %d ( 0x%x )\n",addr, addr); 
		//unprotect this block. 
		write_enable_AT25();
		clear_pin(_CS | SCLK); 
		write_byte(0x39); 
		write_byte((addr >> 16) & 0xff);
		write_byte((addr >> 8) & 0xff); 
		write_byte((addr >> 0) & 0xff); 
		set_pin(_CS);
		set_pin(SO); 
		//now do a block erase.
		write_enable_AT25(); 
		clear_pin(_CS | SCLK); 
		write_byte(0x20); 
		write_byte((addr >> 16) & 0xff);
		write_byte((addr >> 8) & 0xff); 
		write_byte((addr >> 0) & 0xff); 
		set_pin(_CS);
		set_pin(SO); 
		do{
			usleep(4000); 
		}while( (read_stat_AT25(0) & 0x01) );
	}
}
void write_page_AT25(unsigned char *d, int page_size, int page){
	int i; 
	unsigned char read; 
	page *= 256; 
	printf("writing page @ %d ( 0x%x )\n",page,page); 
	
	//read the sector protection registers. 
	clear_pin(_CS | SCLK); 
	write_byte(0x3c); 
	write_byte((page >> 16) & 0xff); 
	write_byte((page >> 8) & 0xff); 
	write_byte(0); //always going to be a multiple of 256..
	read = read_byte(); 
	set_pin(_CS); 
	set_pin(SO); 
	printf("sector protection register %x\n", read); 
	
	printf("writing buffer..."); 
	write_enable_AT25();
	clear_pin(_CS | SCLK); 
	write_byte(0x02); 
	write_byte((page >> 16) & 0xff); 
	write_byte((page >> 8) & 0xff); 
	write_byte(0); //always going to be a multiple of 256..
	for(i=0; i<page_size; i++){
		write_byte(d[i]);  
	}
	set_pin(_CS); 
	set_pin(SO); 
	printf("waiting for write to finish.\n"); 
	do{
		usleep(4000); 
	}while( (read_stat_AT25(0) & 0x01) );
	usleep(4000); 
}
int verify_AT25(unsigned char* d, int length, int page){
	int i, ok=1; 
	unsigned char read; 
	page *= 256; 
	printf("verifying page %d ( 0x%x ) ",page/256,page); 
	clear_pin(_CS | SCLK); 
	write_byte(0x0B); 
	write_byte((page >> 16) & 0xff);
	write_byte((page >> 8) & 0xff); 
	write_byte((page >> 0) & 0xff); 
	write_byte(0); //dont-care byte.
	for(i=0; i< length; i++){
		read = read_byte(); 
		if(read != d[i]){
			if(ok)printf("\n"); 
			printf("read flash[%d] expected %02x got %02x \n", i, d[i], read); 
			ok = 0; 
		}
	}
	if(ok) printf(" ... ok.\n"); 
	set_pin(_CS); 
	set_pin(SO); 
	return ok; 
}
void erasePage(int page){
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
	while( (read_status_register(0) & 0x80) == 0 ){
		usleep(1000); 
	}
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
	write_byte( (page & 0xfff) >>8); 		
	write_byte( ( (page & 0xfff) << 0 ) & 0xff); 
	write_byte(0x00); 
	set_pin(_CS); 
	
	//wait until the device is done.
	while( (read_status_register(0) & 0x80) == 0 ){
		usleep(2000); 
	}
}
void printByteBinary(unsigned char byte){
	int i; 
	unsigned char mask = 0x80; 
	for(i=0; i < 8; i++){
		if(byte & mask) printf("1"); 
		else printf("0"); 
		mask >>= 1; 
	}
}
int verify_page(unsigned char *d, int page_size, int page){
	int i, ok=1; 
	unsigned char read; 
	
	//read back the flash & verify.  page 7 of the datasheet.
	clear_pin(_CS); 
	write_byte(0xd2); 
	//24 address bits - again, first 4 bits don't matter. 
	write_byte( (page & 0xfff) >>8); 		
	write_byte( ( (page & 0xfff) << 0 ) & 0xff); 	
	write_byte(0x00); //read out from the start of a page.
	//32 don't care bits. 
	write_byte(0x00); 
	write_byte(0x00); 
	write_byte(0x00); 
	write_byte(0x00); 
	for(i=0; i<page_size; i++){
		read = read_byte(); 
		if(read != d[i] ){
			printf("read flash[%d] expected %02x got %02x | ", i, d[i], read); 
			// print the output in binary too. 
			printByteBinary(d[i]); 
			printf(" got "); 
			printByteBinary(read); 
			printf(" err "); 
			printByteBinary(read ^ d[i]); 
			printf("\n"); 
			ok = 0; 
		}
	}
	if(ok){
		printf("flash page %d has been verified :) \n", page); 
	}
	set_pin(_CS); 
	return ok; //return 1 on success, 0 on failure.
}
int main(int argv, char* argc[]){
	int 		i, j, ps, pass; 
	int 		page_size = 256; 
	FILE* 	file; 
	int 		file_size; 
	unsigned char*	buffer;
	size_t 	result; 
	/*these are no longer used, but may be useful as reference.
	unsigned char	mfr_code_AT45[4] = {0x1f, 0x25, 0x00, 0x00}; //for AT45DB081
	unsigned char 	mfr_code_AT25[4] = {0x1f, 0x44, 0x01, 0x00}; //for AT25DF041
	*/
	unsigned char 	byte; 
	
	if(argv < 2){
		printf("please specify the ldr file to be written to flash. \n"); 
		printf("alternately, you can call with the option -r or --reset\n"); 
		printf("to reset the board without programming it\n"); 
		return 0; 
	}
	
	if(pin_init_user(LPT1) < 0){
		printf("could not open the parallel port! \n"); 
		exit(0); 
	}
	pin_output_mode(LP_DATA_PINS); 
	
	if(strcmp(argc[1], "--reset") == 0 || strcmp(argc[1], "-r") == 0){
		printf("resetting the board.\n"); 
		set_pin(_PROG); 
		usleep(400000); //enough?
		clear_pin(_PROG); 
		exit(0); 
	}
	printf("ldr file: %s\n", argc[1]); 
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
	usleep(100000); 

	for(pass=0; pass < 2; pass++){
		//if a bad firmware has been written 
		// (leaving the processor to constantly reading the flash), 
		// the flash may need to be queried twice before it is ready. 
		clear_pin(_CS | SCLK); 
		write_byte(0x9f); 
		for(j=0; j<4; j++){//see page 44 of the spec sheet.
			byte = read_byte(); 
			printf("read: 0x%x \n", byte);
			if(pass == 1){
				switch(j){
					case 0:
						if(byte != 0x1f){
							printf("manufacturer ID does not look correct.\n"); 
							cleanup(); 
						} break; 
					case 1: 
						if(byte == 0x44){
							printf("looks like an AT25DF041\n");
							g_type = 1; 
						} else if(byte == 0x25){
							printf("looks like an AT45DB081\n"); 	
							g_type = 0; 
						} else {
							printf("unrecognized device ID\n"); 
							cleanup(); 
						} break; 
					case 2:
						printf(" device version %d\n", (int)byte); 
						break; 
					case 4:
						if(byte != 0x00){
							printf("extended device information != 0\n"); 
							cleanup(); 
						} break; 
				}
			}
		}
		set_pin(_CS); 
	}
	//need to make sure the device is in power of 2 binary page size. 
	//converting to this is a one-time operation. 
	if( g_type == 0 && (read_status_register(1) & 0x01) == 0){
		printf("this device is configured for 264-byte pages\n"); 
		printf("this mode is incompatible with boot streams consisting of \n"); 
		printf("multiple sections.  Permanently change to 256-byte pages?\n"); 
		printf("**This operation can NEVER be undone** (type 'y' or 'n')\n"); 
		char ans = 'n'; 
		scanf("%c", &ans); 
		if(ans != 'y'){
			printf("operation cancelled. \n"); 
			exit(0); 
		}else{
			clear_pin(_CS); 
			write_byte(0x3d); 
			write_byte(0x2a); 
			write_byte(0x80); 
			write_byte(0xa6); 
			set_pin(_CS); 
			//now have to wait for the device to finish. 
			//wait until the device is done.
			while( (read_status_register(0) & 0x80) == 0 ){
				usleep(2000); 
			}
			printf("binary page size set. Please power down the board & turn back on to program.\n"); 
			exit(0); 
		}
	}
	if(g_type == 1){
		unprotect_AT25();
		block_erase_AT25(file_size); 
	}
	for(i=0; i< (file_size / page_size)+1; i++){
		ps = file_size - i*page_size; 
		ps = ps > page_size ? page_size : ps; 
		printf("writing page %d size %d\n", i, ps); 
		if(g_type == 0)
			write_page(&(buffer[i*page_size]), ps, i); 
		if(g_type == 1){
			write_page_AT25(&(buffer[i*page_size]), ps, i); 
			//verify_AT25(&(buffer[i*page_size]), ps, i); 
		}
	}
	int ok = 1; 
	if(g_type == 0){
		for(i=0; i< (file_size / page_size)+1; i++){
			ps = file_size - i*page_size; 
			ps = ps > page_size ? page_size : ps; 
			printf("verifying page %d size %d\n", i, ps); 
			ok &= verify_page(&(buffer[i*page_size]), ps, i); 
		}
	}
	if(g_type == 1){
		ok = verify_AT25(buffer, 512, 0); 	
	}
	if(!ok){
		printf("not all pages verified properly!  beware!\n"); 
	}else{
		printf("all pages verified correctly!\n"); 
	}
	free(buffer);
	cleanup();
	return 0;
}

