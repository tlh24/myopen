#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <stdlib.h>
#include <sys/time.h>
#include <time.h>

long double 	g_startTime = 0.0;
long double gettime(){ //in seconds!
	timespec pt ;
	clock_gettime(CLOCK_MONOTONIC, &pt);
	long double ret = (long double)(pt.tv_sec) ;
	ret += (long double)(pt.tv_nsec) / 1e9 ;
	return ret - g_startTime;
}

void flush_pipe(int fid){
	fcntl(fid, F_SETFL, O_NONBLOCK);
	char* d = (char*)malloc(1024*8); 
	int r = read(fid, d, 1024*8); 
	printf("flushed %d bytes\n", r); 
	free(d); 
	int opts = fcntl(fid,F_GETFL);
	opts ^= O_NONBLOCK;
	fcntl(fid, F_SETFL, opts);
}

int main(){
	int fid = 0; 
	if(0){
		fid = shm_open("/bmi5_binned", O_RDWR, S_IRUSR | S_IWUSR);
	}else{
		fid = open("/tmp/binned", O_RDWR); 
		if(!fid){
			perror("could not shm_open /bmi5_binned\n"); 
			return 0; 
		}
	}
	size_t length = 97*2*10*2; 
	void* addr = mmap(NULL, length, PROT_READ, 
							MAP_SHARED, fid, 0); 
	/*void* addr = mmap((void*)0x7fc43538e000, length, PROT_READ, 
							MAP_FIXED, fid, 0); -- does not work. probably not safe anyway.*/
	if (addr == MAP_FAILED) {
		close(fid);
		perror("Error mmapping the file");
		exit(EXIT_FAILURE);
	}
	int pipe_out = open("bmipipe_out", O_RDWR); 
	if(!fid){
		perror("could not open ./bmipipe_out (make with mkfifo)\n"); 
		return 0; 
	}
	int pipe_in = open("bmipipe_in", O_RDWR); 
	if(!fid){
		perror("could not open ./bmipipe_in (make with mkfifo)\n"); 
		return 0; 
	}
	//need to flush pipe_in, so that we can block synchronously.
	flush_pipe(pipe_out); 
	unsigned short* bin = (unsigned short*)addr; 
	int skipped = 0; 
	int total = 5000; 
	unsigned short prev = bin[0]-1;
	unsigned short prev2 = bin[length/2-1]-1; 
	char* buf[32]; 
	g_startTime = gettime(); 
	for(int i=0; i<total; i++){
		//printf("sending to pipe_in\n"); 
		write(pipe_in, "go\n", 3); 
		//printf("reading pipe_out:"); 
		int r = read(pipe_out, buf, 3);
		//printf(" %d\n", r); 
		if(r == 3){
			//msync(addr, length, MS_SYNC); 
			//printf("%d %d %d\n", i, bin[0], bin[length/2-1]); 
			if(bin[0] - prev != 1)
				skipped++; 
			if(bin[length/2-1] - prev2 != 1)
				skipped++; 
			//printf("%d %d %d %d %d\n", i, bin[0], bin[length/2-1], prev, prev2); 
			prev = bin[0];
			prev2 = bin[length/2-1]; 
		} else
			usleep(10000); //does not seem to limit the frame rate, just the startup sync.
	}
	double elapsed = gettime(); 
	printf("took %f s (%f Hz)\n", elapsed, total/elapsed); 
	printf("skipped: %d/%d\n", skipped, total); 
	printf("mmap address: %x\n", addr); 
	munmap(addr, length); 
	close(fid); 
	close (pipe_in);
	close (pipe_out); 
	return 0; 
}

/* conclusion: mmap, as expected, works quickly. 
 memory is shared between processes -- still a memcpy, but fast.
 
matlab test code: 
-------
m = memmapfile('/tmp/binned', 'Format', {'uint16' [194 10] 'x'}); 
A = m.Data(1).x;

pipe_out = fopen('bmipipe_out', 'r'); 
pipe_in = fopen('bmipipe_in', 'w'); 

fread(pipe_out, 100); 

skip = 0;
prev = [0 0];
tic
for i=1:5000
	disp('writing to pipe_in') 
	fwrite(pipe_in, 'go.'); 
	disp('reading from pipe_out'); 
	fgets(pipe_out);
	disp([num2str(i) ' ' num2str(A(1,1))]); 
	if A(1,1) - prev(1) ~= 1
		skip = skip + 1; 
	end
	if A(194,10) - prev(2) ~= 1
		skip = skip + 1; 
	end
	prev(1) = A(1,1); 
	prev(2) = A(194,10); 
	% this seems to lag just a little bit.. by about 5ms. 
end
d = toc()
frame_rate = 5000/d
skip

*/

