# not a very smart makefile -- no deps -- but works.
# depends on google protocol buffers -- not too hard to install, in debian.
# you'll need to install libatlas-base-dev for linear algebra.
CFLAGS=-I/usr/local/include -I../common_host
CFLAGS+=  -O6
CFLAGS+= -Wall -Wcast-align -Wpointer-arith -Wshadow -Wsign-compare -Wformat=2 \
-Wno-format-y2k -Wmissing-braces -Wparentheses -Wtrigraphs \
-Wextra -pedantic -std=c++11
LDFLAGS = -pg -lGL -lGLU -lpthread -lCg -lCgGL -lgsl -lcblas -latlas -lm -lsqlite3
# if
GLIBS = gtk+-2.0 gtkglext-1.0 gtkglext-x11-1.0 protobuf
GTKFLAGS = `pkg-config --cflags $(GLIBS) `
GTKLD = `pkg-config --libs $(GLIBS) `

OBJS = main.o sock.o

GOBJS = spikes.pb.o gtkclient.o decodePacket.o headstage.o\
../common_host/gettime.o ../common_host/sock.o ../common_host/sql.o \
../common_host/tcpsegmenter.o ../common_host/glInfo.o

COBJS = convert.o decodePacket.o

all: gtkclient
convert: convert

%.o: %.cpp channel.h ../common_host/vbo.h ../common_host/cgVertexShader.h
	g++ -c -o $@ $(CFLAGS) $(GTKFLAGS) $<

spikes.pb.cc : spikes.proto
	protoc $< --cpp_out=.
	protoc $< --python_out=.


gtkclient: $(GOBJS)
	g++ -o $@ $(GTKLD) $(LDFLAGS) -lmatio -lhdf5 $(GOBJS)

convert: $(COBJS)
	g++ -o $@ -g -Wall -lmatio -lz $(COBJS)

clean:
	rm -rf gtkclient convert *.o spikes.pb.*

wf_plot: wf_plot.c
	gcc -g -lSDL -lGL -lGLU -lglut -lpthread -lmatio -lpng -o $@ wf_plot.c

deps:
	sudo apt-get install libprotobuf-dev protobuf-compiler libgtk2.0-dev libgtkgl2.0-dev \
	libgtkglext1-dev freeglut3-dev nvidia-cg-toolkit libgsl0-dev libmatio-dev libsqlite3-dev \
	libatlas-base-dev python-matplotlib python-jsonpickle python-opengl libhdf5-dev
	echo "make sure /usr/lib64 is in /etc/ld.so.conf.d/libc.conf"
	echo "otherwise Cg may not be found. "