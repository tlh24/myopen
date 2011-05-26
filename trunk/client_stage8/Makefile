# the simplest makefile ever!
CFLAGS=-I/usr/local/include
CFLAGS+= -g
CFLAGS+= -Wall -Wcast-align -Wpointer-arith -Wshadow -Wsign-compare -Wformat=2 \
-Wno-format-y2k -Wimplicit -Wmissing-braces -Wparentheses -Wtrigraphs \
-Wextra -pedantic -std=c++0x
LDFLAGS = -lGL -lGLU -lpthread -lCgGL -lCg -lgsl -lcblas -latlas -lm
GLIBS = gtk+-2.0 gtkglext-1.0 gtkglext-x11-1.0
GTKFLAGS = `pkg-config --cflags $(GLIBS) `
GTKLD = `pkg-config --libs $(GLIBS) `

OBJS = main.o sock.o

GOBJS = gtkclient.o glInfo.o sock.o decodePacket.o

COBJS = convert.o decodePacket.o

all: gtkclient

%.o: %.cpp vbo.h cgVertexShader.h
	g++ -c -o $@ $(CFLAGS) $(GTKFLAGS) $<

client: $(OBJS)
	g++ $(LDFLAGS) $(OBJS) -o client
	
gtkclient: $(GOBJS) 
	g++ -o $@ $(GTKLD) $(LDFLAGS) $(GOBJS)
	
convert: $(COBJS)
	g++ -o $@ $(CFLAGS) -lmatio $(COBJS)
	
clean:
	rm -rf client gtkclient convert *.o