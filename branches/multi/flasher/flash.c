/*connections: (used to be aw-usb board, now use the parallel port, much faster! 
pin2  D0 = _cs , chip select (active lo, pulled lo, set high to write.)
			this is broken on the PCB - had to cut & jumper _wr & _cs together!
pin13 SEL = SO , serial output of the flash, connected to an input. called SI here. 
pin3  D1 = SI , serial input to the flash, connected to an output, called SO here.
pin4  D2 = SCLK , output. 
pin5	 D3 = _prog , pull low to hold the processor in reset &
			prevent it from driving the bus. (& enable the buffer). 
			in the cable, this is attached to the gate of a fet; 
			hence, it's an inverted open-collector (drain) output.
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

int g_type = 0; 
/* 0 = AT45
	1 = AT25041
	2 = AT25081 
	3 = SST25VF04
	*/

void cleanup(int doexit){
	clear_pin( _PROG | _CS | SO | SCLK); //release the device! 
	if(!doexit) usleep(60000); 
	else exit(0); 	
}
void write_byte(unsigned char byte){
	// see the connections & commentary above. 
	int i; 
	clear_pin(SO); 
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
		clear_pin(SO); //this works to delay the signal..
		if(pin_is_set(SI))
			data++; 
		if( i < 7)
			data = data << 1; 
		set_pin(SCLK); 
		set_pin(SO); 
	}
	return data; 
}
unsigned char read_status_register(int doprint){
	unsigned char stat; 
	//clear_pin(_CS | SCLK); 
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
void write_enable_25(){
	//also write the status register, w/ 0
	//first EWSR
	clear_pin(_CS | SCLK); 
	write_byte(0x50);
	set_pin(_CS); 
	set_pin(SO); 
	//now actual status register
	clear_pin(_CS | SCLK); 
	write_byte(0x01);
	write_byte(0x00); 
	set_pin(_CS); 
	set_pin(SO); 
	//works for both AT25 and SST25 chips.
	clear_pin(_CS | SCLK); 
	write_byte(0x06); 	
	set_pin(_CS); 
	set_pin(SO); 
}
void write_disable_SST25(){
	//works for both AT25 and SST25 chips.
	clear_pin(_CS | SCLK); 
	write_byte(0x04); 	
	set_pin(_CS); 
	set_pin(SO); 
	//also write the status register, w/ 0
	//first EWSR
	clear_pin(_CS | SCLK); 
	write_byte(0x50);
	set_pin(_CS); 
	set_pin(SO); 
	//now actual status register
	clear_pin(_CS | SCLK); 
	write_byte(0x01);
	write_byte(0x00); 
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
	if(stat != 0x11 && stat != 0x13)
		printf("status register 0x%x \n", stat);
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
	write_enable_25(); 
	clear_pin(_CS | SCLK); 
	write_byte(0x01); 
	write_byte(0); //global unprotect. 
	set_pin(_CS); 
	set_pin(SO); 
	/*printf("erasing entire device.\n"); 
	//erases the whole AT25 type device. 
	write_enable_25(); 
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
	int length = 512*1024; 
	if(g_type == 2) length = 1024*1024; 
	for(addr = 0; addr <= data_length && addr <= 512*1024; addr += 4096){
		printf("block erase %d ( 0x%x )\n",addr, addr); 
		//unprotect this block. 
		write_enable_25();
		clear_pin(_CS | SCLK); 
		if(g_type == 1) write_byte(0x39);
		if(g_type == 2) write_byte(0x52); 
		write_byte((addr >> 16) & 0xff);
		write_byte((addr >> 8) & 0xff); 
		write_byte((addr >> 0) & 0xff); 
		set_pin(_CS);
		set_pin(SO); 
		//now do a block erase.
		write_enable_25(); 
		clear_pin(_CS | SCLK); 
		write_byte(0x20); 
		write_byte((addr >> 16) & 0xff);
		write_byte((addr >> 8) & 0xff); 
		write_byte((addr >> 0) & 0xff); 
		set_pin(_CS);
		set_pin(SO); 
		int ctr = 0; 
		int stat = read_stat_AT25(0); 
		while(stat & 0x01){
			usleep(1000); 
			stat = read_stat_AT25(0);
			ctr++; 
			if(ctr % 1000 == 0)
				printf("status register 0x%x\n", stat); 
		}
		usleep(1000); 
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
	write_enable_25();
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
		usleep(1000); 
	}while( (read_stat_AT25(0) & 0x01) );
	usleep(1000); 
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
	else printf("... bad.\n"); 
	set_pin(_CS); 
	usleep(100); 
	set_pin(SO); 
	return ok; 
}
unsigned char read_stat_SST25(int doprint){
	unsigned char stat; 
	clear_pin(_CS | SCLK); 
	write_byte(0x05); 
	stat= read_byte(); 
	set_pin(_CS); 
	set_pin(SO);
	if(doprint)
		printf("status register 0x%x \n", stat);
	if(stat & 0x80){
		printf("bank protect read-only!\n");
	} else {
		if(doprint) printf("bank potect bits read-write.\n"); 	
	}
	if(stat & 0x40){
		printf("AAI on!\n");
	} else {
		if(doprint) printf("AAI off.\n"); 	
	}
	if(stat & 0x0c){
		printf("block protection on!\n");
	} else {
		if(doprint) printf("block protect off.\n"); 	
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
int sanityCheck_SST25(){
	int good = 1, i; 
	unsigned char r; 
	//check the MFR id. 
	clear_pin(SCLK); 
	clear_pin(_CS); 
	write_byte(0x90); //leaves SCLK set.
	for(i = 0; i<3; i++) read_byte(); 
	r = read_byte(); 
	if(r!= 0xbf){
		printf("sanity check: mfr id %x should be 0xbf\n", r); 
		good = 0; 
	}
	r = read_byte(); 
	if(r!= 0x8d){
		printf("sanity check: dev id %x should be 0x8d\n", r); 
		good = 0; 
	}
	set_pin(_CS); 
	set_pin(SO);
	write_enable_25(); 
	int status = read_stat_SST25(0) & 0xcf; 
	if(status != 0x02){ 
		printf("sanity check: status %x should be 0x02\n", status); 
		good = 0; 
	}
	write_disable_SST25(); 
	status = read_stat_SST25(0) & 0xcf; 
	if(status != 0){
		printf("sanity check: status %d should be 0\n", status); 
		good = 0; 
	}
	return good; 
}
void eraseChip_SST25(){
	//erases the entire flash chip. 
	read_stat_SST25(1);
	printf("erasing SST25 !\n"); 
	write_enable_25(); 
	clear_pin(_CS | SCLK); 
	write_byte(0x60); 
	set_pin(_CS); 
	set_pin(SO);
	printf("waiting for the erase to complete..\n"); 
	usleep(100000); 
	unsigned char r = read_stat_SST25(1);
	while(r & 0x1){
		r = read_stat_SST25(0);
		usleep(5000); 	
	}
}
void write_all_SST25(unsigned char* d, int length){
	printf("write_all_SST25 writing buffer length %d\n", length);  
	int i; 
	write_enable_25();
	clear_pin(_CS | SCLK); 
	write_byte(0xaf); 
	write_byte(0); //start at the top!! 
	write_byte(0); 
	write_byte(0);
	write_byte(d[0]); 
	set_pin(_CS); 
	set_pin(SO); 
	usleep(22); //Tbp
	for(i=1; i<length; i++){
		clear_pin(_CS | SCLK); 
		write_byte(0xaf); 
		write_byte(d[i]); 
		set_pin(_CS); 
		set_pin(SO); 
		usleep(22); //Tbp = 20us, add a bit.
	}
	//disable write.
	clear_pin(_CS | SCLK); 
	write_byte(0x04); 
	set_pin(_CS); 
	set_pin(SO); 
	usleep(22); //Tbp
}
void write_all2_SST25(unsigned char* d, int length){
	printf("write_all_SST25 writing buffer length %d\n", length);  
	int i,r; 
	for(i=0; i<length; i++){
		write_enable_25();
		clear_pin(_CS | SCLK); 
		write_byte(0x02); 
		write_byte((i>>16)&0xff); //start at the top!! 
		write_byte((i>>8)&0xff); 
		write_byte(i&0xff);
		write_byte(d[i]); 
		set_pin(_CS); 
		set_pin(SO); 
		usleep(22); //Tbp
	}
	//disable write.
	clear_pin(_CS | SCLK); 
	write_byte(0x04); 
	set_pin(_CS); 
	set_pin(SO); 
	usleep(22); //Tbp
	do{
		r = read_stat_SST25(0);
	}while(r & 0x1); 
}
int verify_SST25(unsigned char* d, int length){
	int i, ok=1; 
	printf("verifying all.."); 
	clear_pin(_CS | SCLK); 
	write_byte(0x03); 
	write_byte(0x00);
	write_byte(0x00);
	write_byte(0x00);
	for(i=0; i< length; i++){
		unsigned char read = read_byte(); 
		if(read != d[i]){
			if(ok)printf("\n"); 
			printf("read flash[%d] expected %02x got %02x \n", i, d[i], read); 
			ok = 0; 
		}
	}
	if(ok) printf(" ... ok.\n");
	else printf("... bad.\n"); 
	set_pin(_CS); 
	usleep(100); 
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
	do{
		usleep(1000); 
	}while( (read_status_register(0) & 0x80) == 0 );
	usleep(4000); 
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
		usleep(4000); 
	}usleep(4000); 
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
	int 		i, j, ps; 
	int 		page_size = 256; 
	FILE* 	file; 
	int 		file_size; 
	unsigned char*	buffer;
	int disp; 
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
		cleanup(1); 
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
	usleep(10000); 
	//leave deep power down.
	clear_pin(SCLK); 
	clear_pin(_CS); 
	write_byte(0xBA); 
	set_pin(_CS); 
	set_pin(SO);
	usleep(10000); 
	//leave deep power down. (again?)
	clear_pin(SCLK); 
	clear_pin(_CS); 
	write_byte(0xBA); 
	set_pin(_CS); 
	set_pin(SO);
	usleep(10000); 

	i = 0; 
	disp = 0; 
	g_type = 0; 
	while(i < 1000){
		//if a bad firmware has been written 
		// (leaving the processor to constantly reading the flash), 
		// the flash may need to be queried twice before it is ready. 
		set_pin(_PROG); 
		usleep(50); 
		clear_pin(SCLK); 
		clear_pin(_CS); 
		write_byte(0x9f); 
		if(i == 0) disp = 1; 
		else disp = 0; 
		for(j=0; j<4; j++){//see page 44 of the spec sheet.
			byte = read_byte(); 
			if(disp)printf("read: 0x%x \n", byte);
			switch(j){
				case 0:
					if(byte == 0xbf){
						if(disp) printf("looks like microchip flash\n");
						g_type = 3; 
					} else if(byte == 0x1f ){
						if(disp) printf("looks like atmel flash\n");
					} else {
						printf("manufacturer ID does not look correct.\n"); 
						i=0;
						cleanup(0); 
					} break; 
				case 1: 
					if(byte == 0x44){
						if(disp) printf("looks like an AT25DF041\n");
						g_type = 1; 
					} else if(byte == 0x25){
						if(g_type == 3){//already set throu mfr opcode
							if(disp) printf("looks like an SST25VF0404\n");
						} else {
							if(disp) printf("looks like an AT45DB081\n");
							g_type = 0; 
						}
					} else if(byte == 0x45){
						if(disp) printf("looks like an AT25DF081\n"); 
						g_type = 2; 
					} else if(g_type != 3){
						printf("pass %d unrecognized device ID\n",i); 
						i = 0; 
						cleanup(0); 
					} break; 
				case 2:
					if(disp) printf(" device version %d\n", (int)byte); 
					break; 
				case 3:
					if(g_type != 3 && byte != 0x00){
						printf("extended device information != 0\n"); 
						i = 0; 
						cleanup(0); 
					} break; 
			}
			if(g_type == 3) i = 1000; //early out. 
		}
		i++; 
		//this is a bit of overkill, but better not to write crap to flash! 
		if(i > 999 && g_type !=3) printf("communication test: completed passes: %d\n",i); 
		set_pin(_CS); 
		usleep(50); 
	}
	printf("detected: "); 
	if(g_type == 0) printf("AT45DB081\n"); 
	if(g_type == 1) printf("AT25DF041\n"); 
	if(g_type == 2) printf("AT25DF081\n");
	if(g_type == 3) printf("SST25VF040\n"); 
	if(g_type == 1 || g_type == 2)
		printf("status register 0x%x\n", read_stat_AT25(0)); 
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
	if( g_type == 2 ){
		//enter deep power down. 
		clear_pin(_CS | SCLK); 
		write_byte(0xb9); 
		set_pin(_CS); 
		set_pin(SO);
		usleep(100000); 
		//leave deep pwr down.
		clear_pin(_CS | SCLK); 
		write_byte(0xab); 
		set_pin(_CS); 
		set_pin(SO);
		usleep(10000);
		//leave deep pwr down.
		clear_pin(_CS | SCLK); 
		write_byte(0xab); 
		set_pin(_CS); 
		set_pin(SO);
		usleep(10000); 
	}
	if(g_type == 1 || g_type == 2){
		unprotect_AT25();
		block_erase_AT25(file_size); 
	}
	if(g_type == 3){
		for(i=0; i<2000; i++){
			if(!sanityCheck_SST25()){
				cleanup(1); 
			}
		}
		printf("SST25 sanity check ok\n"); 	
		eraseChip_SST25(); 
		write_all2_SST25(buffer, file_size); 
	} else {
		for(i=0; i< (file_size / page_size)+1; i++){
			ps = file_size - i*page_size; 
			ps = ps > page_size ? page_size : ps; 
			if(g_type == 0){
				printf("writing page %d size %d\n", i, ps); 
				write_page(&(buffer[i*page_size]), ps, i);
			}
			if(g_type == 1 ){
				printf("writing page %d size %d\n", i, ps); 
				write_page_AT25(&(buffer[i*page_size]), ps, i); 
				//while(1) verify_AT25(&(buffer[i*page_size]), ps, i); 
				//verify_AT25(&(buffer[i*page_size]), ps, i); 
				/*if(!verify_AT25(&(buffer[i*page_size]), ps, i)){
					printf("page not verified, exiting.\n"); 	
					cleanup(1); 
				} --this is overkill, verify at the end.*/
			}
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
		ok = verify_AT25(buffer, file_size, 0); 	
	}
	if(g_type == 3){
		ok = verify_SST25(buffer, file_size); 
	}
	if(!ok){
		printf("not all pages verified properly!  beware!\n"); 
	}else{
		printf("all pages verified correctly!\n"); 
	}
	free(buffer);
	cleanup(0);
	return 0;
}

