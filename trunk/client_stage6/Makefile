# the simplest makefile ever!
CFLAGS=-I/usr/local/include -L. -lm -lc -L/usr/local/lib
CFLAGS+= -I/usr/lib/ -L/usr/X11R6/lib -lGL -lGLU
CFLAGS+= -g
CFLAGS+= -Wall -Wcast-align -Wpointer-arith -Wshadow -Wsign-compare -Wformat=2 \
-Wno-format-y2k -Wimplicit -Wmissing-braces -Wparentheses -Wtrigraphs -Wextra -Werror -pedantic

all: client

client: main.c
	gcc $(CFLAGS) main.c -o client
	
clean:
	rm -rf client 