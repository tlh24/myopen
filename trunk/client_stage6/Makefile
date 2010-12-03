# the simplest makefile ever!
CFLAGS=-I/usr/local/include
CFLAGS+= -g
CFLAGS+= -Wall -Wcast-align -Wpointer-arith -Wshadow -Wsign-compare -Wformat=2 \
-Wno-format-y2k -Wimplicit -Wmissing-braces -Wparentheses -Wtrigraphs -Wextra -pedantic
LDFLAGS = -lGL -lGLU -lpthread
GLIBS = gtk+-2.0 gtkglext-1.0 gtkglext-x11-1.0
GTKFLAGS = `pkg-config --cflags $(GLIBS) `
GTKLD = `pkg-config --libs $(GLIBS) `

OBJS = main.o sock.o

GOBJS = gtkclient.o glInfo.o

all: gtkclient

%.o: %.cpp
	g++ -c -o $@ $(CFLAGS) $(GTKFLAGS) $<

client: $(OBJS)
	g++ $(LDFLAGS) $(OBJS) -o client
	
gtkclient: $(GOBJS)
	g++ -o $@ $(GTKLD) $(GOBJS)
	
clean:
	rm -rf client gtkclient *.o