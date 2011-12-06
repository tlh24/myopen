CFLAGS  = -Wall -g

CFLAGS += $(DBGFLAGS)

all:
	gcc $(CFLAGS) flash.c -o flash -lparapin 

clean:
	-rm -rf *.o *~ flash 
