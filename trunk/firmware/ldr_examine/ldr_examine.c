#include <stdio.h>
#include <stdlib.h>

unsigned int reverse_int(unsigned char* buffer, int ptr){
	unsigned int u; 
	u = buffer[ptr++]; 
	u |= ( (buffer[ptr++]) << 8)  & 0x0000ff00; 
	u |= ( (buffer[ptr++]) << 16) & 0x00ff0000; 
	u |= ( (buffer[ptr++]) << 24) & 0xff000000; 
	return u;
}

int main(int argv, char* argc[]){
	FILE* 	file; 
	int 		file_size; 
	unsigned char*	buffer;
	unsigned int u; 
	size_t 	result; 
	int		ptr=0, block = 0; 
	unsigned int block_length; 
	
	if(argv < 2){
		printf("please specify the ldr file to be examined.\n" ); 
		return 0; 
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
	printf("file size %d bytes\n", file_size); 
	 // allocate memory to contain the whole file:
	buffer = (unsigned char*) malloc (sizeof(char)*file_size);
	if (buffer == NULL) {fputs("Memory error",stderr); exit (2);}

	// copy the file into the buffer:
	result = fread (buffer,1,file_size,file);
	if (result != file_size) {fputs ("Reading error",stderr); exit (3);}
	fclose(file); 
	
	while(ptr < file_size){
		//read in the header & reverse. 
		printf("block[%d] @ %x\n", block, reverse_int(buffer, ptr)); 
		ptr += 4; 
		block_length = reverse_int(buffer, ptr); 
		ptr += 4;
		printf("block[%d] length %x = %d\n", block, block_length, block_length); 
		if(buffer[ptr] & 1){
			printf("this is a zerofill block.\n"); 
			block_length = 0; 
		}
		else printf("this is not a zerofill block.\n"); 
		if(buffer[ptr] & 2) printf("block vectors back to 0xFFA0 0000 (BF533/4/7).\n"); 
		else  printf("block vectors back to 0xFFA0 8000 (BF532/1).\n"); 
		if(buffer[ptr] & 8) printf("init block.\n"); 
		else  printf("non-init block.\n"); 
		if(buffer[ptr] & 0x10) printf("ignore block.\n"); 
		else  printf("don't ingore block.\n"); 
		printf("pflag 2:0 = %x \n", buffer[ptr] >>5); 
		ptr ++; 
		printf("pflag 3 = %x \n", buffer[ptr] & 1); 
		if(buffer[ptr] & 0x80) printf("last block.\n"); 
		else  printf("not last block.\n"); 
		ptr++; 
		printf("block contents (compare to objdump dissasembly):\n"); 
		for(u=0; u<block_length && ptr < file_size; u++){
			printf("%02x ", buffer[ptr++]); 
			if(u % 16 == 15)
				printf("\n"); 
		}
		printf("\n"); 
		block++; 
	}
	
	free(buffer); 
	return 0; 
}
