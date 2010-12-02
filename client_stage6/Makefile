# the simplest makefile ever!
CFLAGS=-I/usr/local/include
CFLAGS+= -g
CFLAGS+= -Wall -Wcast-align -Wpointer-arith -Wshadow -Wsign-compare -Wformat=2 \
-Wno-format-y2k -Wimplicit -Wmissing-braces -Wparentheses -Wtrigraphs -Wextra -pedantic
LDFLAGS = -lGL -lGLU -lpthread
GTKFLAGS = `pkg-config --cflags --libs gtk+-2.0 gtkglext-1.0 gtkglext-x11-1.0`

OBJS = main.o sock.o

all: gtkclient

%.o: %.cpp
	g++ $(CFLAGS) -c -o $@ $<

client: $(OBJS)
	g++ $(LDFLAGS) $(OBJS) -o client
	
gtkclient: gtkclient.cpp
	g++ -o $@ $(CFLAGS) $(GTKFLAGS) $<
	
clean:
	rm -rf client *.o