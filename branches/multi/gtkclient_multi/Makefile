# install dependencies with make deps

# The following can be set at the command line
# ie: make DBG=true JACK=false
DBG = false
JACK = false
MUDFLAP = false
STACKPROTECTOR = false

CC  = gcc
CPP = g++
TARGET = /usr/local/bin

CPPFLAGS := -Iinclude -Iproto -I/usr/local/include -I../common_host
CPPFLAGS += -Wall -Wcast-align -Wpointer-arith -Wshadow -Wsign-compare \
-Wformat=2 -Wno-format-y2k -Wmissing-braces -Wparentheses -Wtrigraphs \
-Wextra -pedantic -std=c++11 -Wno-int-to-pointer-cast 

CFLAGS := -Wall -Wcast-align -Wpointer-arith -Wshadow -Wsign-compare \
-Wformat=2 -Wno-format-y2k -Wmissing-braces -Wparentheses -Wtrigraphs \
-Wextra -pedantic -std=c99

LDFLAGS := -lGL -lGLU -lpthread -lCg -lCgGL -lgsl -lcblas -latlas -lm \
-lmatio -lhdf5

GLIBS := gtk+-2.0 gtkglext-1.0 gtkglext-x11-1.0 protobuf
GTKFLAGS = `pkg-config --cflags $(GLIBS) `
GTKLD = `pkg-config --libs $(GLIBS) `

GOBJS = src/gtkclient.o src/headstage.o src/decodePacket.o src/gettime.o src/glInfo.o \
src/matStor.o proto/parameters.pb.o proto/spikes.pb.o src/sock.o

COM_HDR = include/channel.h include/headstage.h include/spkwriter.h \
../common_host/vbo.h \
../common_host/cgVertexShader.h \
../common_host/firingrate.h \
../common_host/jacksnd.h \
proto/parameters.pb.h proto/spikes.pb.h

ifeq ($(strip $(DBG)),true)
	CPPFLAGS += -g -rdynamic -DDEBUG
	CFLAGS   += -g -rdynamic -DDEBUG
else
	CPPFLAGS += -O3
	CFLAGS   += -O3
endif

ifeq ($(strip $(JACK)),true)
	CPPFLAGS += -DJACK
	LDFLAGS  += -ljack
	GOBJS    += src/jacksnd.o
endif

ifeq ($(strip $(MUDFLAP)),true)
        CPPFLAGS += -fmudflap -fmudflapth -funwind-tables
        CFLAGS   += -fmudflap -fmudflapth -funwind-tables
        LDFLAGS  += -lmudflap -fmudflapth -rdynamic
endif

ifeq ($(strip $(STACKPROTECTOR)),true)
	CPPFLAGS += -fstack-protector-all
	CFLAGS   += -fstack-protector-all
endif

all: gtkclient wf_plot
convert: convert

src/%.o: src/%.cpp $(COM_HDR)
	$(CPP) -c $(CPPFLAGS) $(GTKFLAGS) $< -o $@

src/%.o: ../common_host/%.cpp $(COM_HDR)
	$(CPP) -c $(CPPFLAGS) $(GTKFLAGS) $< -o $@

src/%.o: src/%.c
	$(CC) -c $(CFLAGS) $< -o $@

spikes.pb.cc : spikes.proto
	protoc $< --cpp_out=.
	protoc $< --python_out=.

parameters.pb.cc : parameters.proto
	protoc $< --cpp_out=.
	protoc $< --python_out=.

gtkclient: $(GOBJS)
	$(CPP) -o $@ $(GTKLD) $(LDFLAGS) $^

convert: src/convert.o
	$(CPP) -o $@ -lmatio -lhdf5 -lz $<


wf_plot: src/wf_plot.o
	$(CC) -o $@ -lGL -lGLU -lglut -lpthread -lmatio -lhdf5 -lpng $^

clean:
	rm -rf gtkclient convert wf_plot src/*.o 

deps:
	sudo apt-get install libgtk2.0-dev \
	libgtkgl2.0-dev libgtkglext1-dev freeglut3-dev nvidia-cg-toolkit \
	libgsl0-dev libatlas-base-dev libjack-jackd2-dev python-matplotlib \
	python-jsonpickle python-opengl libboost1.49-all-dev pkg-config \
	libhdf5-dev libsdl1.2-dev

	echo "make sure /usr/lib64 is in /etc/ld.so.conf.d/libc.conf"
	echo "otherwise Cg may not be found. "

install:
	install -d $(TARGET)
	install gtkclient -t $(TARGET)
	install convert -t $(TARGET)
	install -d $(TARGET)/cg
	install cg/fade.cg -t $(TARGET)/cg
	install cg/fadeColor.cg -t $(TARGET)/cg
	install cg/threshold.cg -t $(TARGET)/cg
