//program for generating the forward encoding LUT. 
// too lazy to type in in!
//compile with g++ enc_create.cpp -o enc_create
#include <stdio.h>
#include <stdlib.h>

int map(int in){
	//input [96B 32B 96A 32A 64B  0B 64A  0A] -- 
	//if template A is matched, zero template B on same channel.
	//this so we can compress a bit!
	if(in & 0x1) in &= (0xff ^ 0x4);
	if(in & 0x2) in &= (0xff ^ 0x8); 
	if(in & 0x10) in &= (0xff ^ 0x40);
	if(in & 0x20) in &= (0xff ^ 0x80); 
	return in; 
}
void sprintf_binary(int i, char* c){
	snprintf(c,256,"0b %d%d%d%d %d%d%d%d ", 
		   (i>>7) & 0x1, 
		   (i>>6) & 0x1, 
		   (i>>5) & 0x1, 
		   (i>>4) & 0x1, 
		   (i>>3) & 0x1, 
		   (i>>2) & 0x1, 
		   (i>>1) & 0x1, 
		   (i>>0) & 0x1); 
}
int countOnes(int in){
	int n = 0; 
	for(int i=0; i<8; i++){
		if(in & (0x1 << i)) n++; 
	}
	return n;
}

int main(void){
	int in, code; 
	unsigned char lut[256]; 
	code = 0x2e; //start here so we have many transitions for radio.0b0010 1110
	for(in = 0; in < 256; in++){
		lut[in] = 0; 
		int m = map(in); 
		if(m < in) lut[in] = lut[m]; 
		else{
			lut[in] = code; 
			code++; 
			code &= 0xff; //wrap around.
		}
	}
	FILE* fid = fopen("enc.asm", "w"); 
	if(!fid){
		printf("could not open enc.asm\n"); 
		exit(0); 
	}
	fprintf(fid,"#include \"memory.h\"\n\n"); 
	fprintf(fid,".global _enc_create\n"); 
	fprintf(fid,"_enc_create:\n"); 
	fprintf(fid,"\tp5.l = LO(ENC_LUT);\n");
	fprintf(fid,"\tp5.h = HI(ENC_LUT);\n"); 
	fprintf(fid,"//total number of codewords used: %d\n", code - 0x2e);
	fprintf(fid,"//largest codeword: %d, 0x%x\n", code-1, code-1); 
	char buf[256]; 
	for(in=0; in<256; in++){
		sprintf_binary(in, buf); 
		fprintf(fid,"\tr0 = %d;\t/*%x*/ b[p5++] = r0; // %s 0x%x\n", 
			   lut[in], lut[in], buf, in); 
	}
	fprintf(fid, "//also setup the state LUT.\n"); 
	fprintf(fid,"\tp5.l = LO(STATE_LUT);\n");
	fprintf(fid,"\tp5.h = HI(STATE_LUT);\n"); 
	for(in=0; in<16; in++){
		unsigned int k = 0; 
		k += (in & 0x1) << 7; 
		k += (in & 0x2) << 14;
		k += (in & 0x4) << 21; 
		k += (in & 0x8) << 28; 
		fprintf(fid, "\tr0.l = 0x%04x; ", k & 0xffff);
		fprintf(fid, "r0.h = 0x%04x; ", (k>>16) & 0xffff); 
		fprintf(fid, "\t[p5++] = r0; // %d\n", in); 
	}
	fprintf(fid, "\trts;\n"); 
	fclose(fid); 
	//make the reverse mapping too. 
	//(the client can do the decoding .. the bridge will just mask)
	//provide a bits for error too --
	fid = fopen("decoder.h", "w"); 
	if(!fid){
		printf("could not open decoder.h\n"); 
		exit(0); 
	}
	fprintf(fid, "#ifndef __DECODER_H__\n#define __DECODER_H__\n"); 
	fprintf(fid, "\nunsigned short decoder [128] = {\n\t"); 
	int k; 
	for(in = 0; in<128; in++){
		//got codeword 'in' - decompress to threshold exceeded.
		//look through the LUT for this code. 
		for(k=0; k<256; k++){
			if(lut[k] == in) break; 
		}
		if(k == 256){ 
			int distance = 8; 
			//do some error correction. 
			for(int j=0; j<256; j++){
				int d = countOnes(lut[j] ^ in); 
				if(d < distance){
					distance = d; 
					k = j + 0x100; //+ error.
				}
			}
		}
		fprintf(fid,"0x%x",k);
		if(in < 127) fprintf(fid,",");
		if(in % 8 == 7) fprintf(fid,"\n\t"); 
	}
	fprintf(fid,"};\n\n"); 
	fprintf(fid,"#endif\n"); 
	fclose(fid); 
	return 0;
}