# the simplest makefile ever!
CFLAGS=-I/usr/local/include
CFLAGS+= -g
CFLAGS+= -Wall -Wcast-align -Wpointer-arith -Wshadow -Wsign-compare -Wformat=2 \
-Wno-format-y2k -Wimplicit -Wmissing-braces -Wparentheses -Wtrigraphs -Wextra -Werror -pedantic
LDFLAGS = -lGL -lGLU -lpthread

OBJS = main.o sock.o

all: client

%.o: %.cpp
	g++ $(CFLAGS) -c -o $@ $<

client: $(OBJS)
	g++ $(LDFLAGS) $(OBJS) -o client
	
clean:
	rm -rf client *.o