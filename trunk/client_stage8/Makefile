# not a very smart makefile -- no deps -- but works.
# depends on google protocol buffers -- not too hard to install, in debian.
# you'll need to install libatlas-base-dev for linear algebra. 
CFLAGS=-I/usr/local/include
CFLAGS+= -g
CFLAGS+= -Wall -Wcast-align -Wpointer-arith -Wshadow -Wsign-compare -Wformat=2 \
-Wno-format-y2k -Wimplicit -Wmissing-braces -Wparentheses -Wtrigraphs \
-Wextra -pedantic -std=c++0x
LDFLAGS = -lGL -lGLU -lpthread -lCgGL -lCg -lgsl -lcblas -latlas -lm -lsqlite3
GLIBS = gtk+-2.0 gtkglext-1.0 gtkglext-x11-1.0 protobuf
GTKFLAGS = `pkg-config --cflags $(GLIBS) `
GTKLD = `pkg-config --libs $(GLIBS) `

OBJS = main.o sock.o

GOBJS = spikes.pb.o gtkclient.o glInfo.o sock.o decodePacket.o sql.o headstage.o\
 tcpsegmenter.o

COBJS = convert.o decodePacket.o

all: gtkclient

%.o: %.cpp vbo.h channel.h cgVertexShader.h
	g++ -c -o $@ $(CFLAGS) $(GTKFLAGS) $<
	
spikes.pb.cc : spikes.proto
	protoc $< --cpp_out=. 
	protoc $< --python_out=. 

client: $(OBJS)
	g++ $(LDFLAGS) $(OBJS) -o client
	
gtkclient: $(GOBJS) 
	g++ -o $@ $(GTKLD) $(LDFLAGS) -lmatio $(GOBJS)
	
convert: $(COBJS)
	g++ -o $@ $(CFLAGS) -lmatio $(COBJS)
	
clean:
	rm -rf client gtkclient convert *.o spikes.pb.*