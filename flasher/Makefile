# you might need to manually define the location of your
# libusb object, especially if you installed it in a
# nonstandard location
CFLAGS  = -Wall -g

CFLAGS += $(DBGFLAGS)

all:
	gcc $(CFLAGS) flash.c -o flash -lparapin 

clean:
	-rm -rf *.o *~ flash 
