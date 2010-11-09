CFLAGS  = -Wall -g
KSRCS = fontcheck.c
KOBJS = $(KSRCS:%.c=%.o)
RSRCS = fontripper.c
ROBJS = $(RSRCS:%.c=%.o)

%.o: %.c
	gcc $(CFLAGS) -c -o $@ $<
	
fontcheck: $(KOBJS)
	gcc -o fontcheck -lX11 $(KOBJS) 
	
fontripper: $(ROBJS)
	gcc -o fontripper -lX11 $(ROBJS) 

all: fontcheck fontripper

clean:
	-rm -rf *.o *~ fontcheck fontripper
