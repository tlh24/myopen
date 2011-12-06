#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <sys/soundcard.h>

/* Audio data mono (L and R) and 16 bits/sample */
#define BITSPERSAMPLE  16
#define STEREO 2
int main(int argc, char **argv)
{
        int infile;
        int outfile;
        int tm;
        #define BUF_SIZE 1024
        unsigned char audio_buffer[BUF_SIZE];
        if(argc < 2){
			printf("please specify the file to write to /dev/dsp \n"); 
			return 0;
		}
		//read the binary file. 
		infile = open( argv[1], O_RDWR, 0);
		if(infile == 0){
			printf("could not open %s\n", argv[1]); 
			return 0; 
		}
        outfile = open("/dev/dsp", O_WRONLY, 0);
        
        int ioctlarg = BITSPERSAMPLE;
        ioctl(outfile, SNDCTL_DSP_SETFMT, &ioctlarg);
        ioctlarg = STEREO;    // AIC23 is a stereo codec
        ioctl(outfile, SNDCTL_DSP_CHANNELS, &ioctlarg);
        ioctlarg = 4000;  // sampfreq
        ioctl(outfile, SNDCTL_DSP_SPEED, &ioctlarg);
        
        while(( tm = read(infile, audio_buffer, BUF_SIZE)) > 0 )
                if( write(outfile, audio_buffer, tm) != tm ){                   
                        printf( "Write error.\n" );
                        return -1;
                }
        
        close(infile);
        close(outfile);
        return 0;
}
