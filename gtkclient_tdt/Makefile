# not a very smart makefile -- no deps -- but works.
# depends on google protocol buffers -- not too hard to install, in debian.
# you'll need to install libatlas-base-dev for linear algebra.

# The following can be set at the command line
# ie: make DBG=true JACK=false
DBG = false
JACK = true
MUDFLAP = false
STACKPROTECTOR = false

CC  = gcc
CPP = g++
TARGET = /usr/local/bin

CFLAGS := -I/usr/local/include -I../common_host
CFLAGS += -Wall -Wcast-align -Wpointer-arith -Wshadow -Wsign-compare \
-Wformat=2 -Wno-format-y2k -Wmissing-braces -Wparentheses -Wtrigraphs \
-Wextra -pedantic -std=c++11 -Wno-int-to-pointer-cast 
LDFLAGS := -lGL -lGLU -lpthread -lCg -lCgGL -lgsl -lcblas -latlas -lm -lPO8eStreaming

GLIBS = gtk+-2.0 gtkglext-1.0 gtkglext-x11-1.0 protobuf
GTKFLAGS = `pkg-config --cflags $(GLIBS) `
GTKLD = `pkg-config --libs $(GLIBS) `

GOBJS = spikes.pb.o gtkclient.o decodePacket.o \
	gettime.o sock.o tcpsegmenter.o glInfo.o matStor.o
COBJS = convert2.o
COM_HDR = channel.h wfwriter.h ../common_host/vbo.h ../common_host/cgVertexShader.h \
../common_host/firingrate.h ../common_host/timesync.h ../common_host/jacksnd.h
FIFOS = gtkclient_in gtkclient_out

ifeq ($(strip $(DBG)),true)
	CFLAGS  += -g -O0 -DDEBUG
else
	CFLAGS += -O3
endif

ifeq ($(strip $(JACK)),true)
	CFLAGS += -DJACK
	LDFLAGS += -ljack
	GOBJS += jacksnd.o
endif

ifeq ($(strip $(MUDFLAP)),true)
        CFLAGS  += -fmudflap -fmudflapth -funwind-tables
        LDFLAGS += -lmudflap -fmudflapth -rdynamic
endif

ifeq ($(strip $(STACKPROTECTOR)),true)
	CFLAGS  += -fstack-protector-all
endif

all: gtkclient wf_plot po8e mmap_test convert2
#convert: convert

%.o: %.cpp $(COM_HDR)
	$(CPP) -c -o $@ $(CFLAGS) $(GTKFLAGS) $<

%.o: ../common_host/%.cpp $(COM_HDR)
	$(CPP) -c -o $@ $(CFLAGS) $(GTKFLAGS) $<

spikes.pb.cc : spikes.proto
	protoc $< --cpp_out=.
	protoc $< --python_out=.

gtkclient: $(GOBJS) $(FIFOS)
	$(CPP) -o $@ $(GTKLD) $(LDFLAGS) -lmatio -lhdf5 $(GOBJS)

convert: $(COBJS) wfwriter.h
	$(CPP) -o $@ -g -Wall -lmatio -lhdf5 -lz $(COBJS)

clean:
	rm -rf gtkclient convert2 mmap_test po8e wf_plot *.o spikes.pb.*

wf_plot: wf_plot.c
	$(CC) -g -lSDL -lGL -lGLU -lglut -lpthread -lmatio -lpng -o $@ wf_plot.c
	
po8e: po8e.cpp
	$(CC) -g -lPO8eStreaming -o $@ $<
	
mmap_test: mmap_test.cpp
	$(CPP) -g -lrt -o $@ $<
	
gtkclient_in: 
	mkfifo $@
	
gtkclient_out:
	mkfifo $@

deps:
	sudo apt-get install libprotobuf-dev protobuf-compiler libgtk2.0-dev libgtkgl2.0-dev \
	libgtkglext1-dev freeglut3-dev nvidia-cg-toolkit libgsl0-dev \
	libatlas-base-dev libjack-jackd2-dev python-matplotlib python-jsonpickle python-opengl \
	libboost1.49-all-dev pkg-config libhdf5-dev libsdl1.2-dev
	echo "make sure /usr/lib64 is in /etc/ld.so.conf.d/libc.conf"
	echo "otherwise Cg may not be found. "

install:
	install -d $(TARGET)
	install gtkclient -t $(TARGET)
	install convert2 -t $(TARGET)
	install -d $(TARGET)/cg
	install cg/fade.cg -t $(TARGET)/cg
	install cg/fadeColor.cg -t $(TARGET)/cg
	install cg/threshold.cg -t $(TARGET)/cg
