# install dependencies with make deps

# The following can be set at the command line
# ie: make DBG=true JACK=false
DBG = false
JACK = true
MUDFLAP = false
STACKPROTECTOR = false

CC  = gcc
CPP = g++
TARGET = /usr/local/bin

CPPFLAGS := -I/usr/local/include -I../common_host
CPPFLAGS += -Wall -Wcast-align -Wpointer-arith -Wshadow -Wsign-compare \
-Wformat=2 -Wno-format-y2k -Wmissing-braces -Wparentheses -Wtrigraphs \
-Wextra -pedantic -std=c++11 -Wno-int-to-pointer-cast 

CFLAGS := -Wall -Wcast-align -Wpointer-arith -Wshadow -Wsign-compare \
-Wformat=2 -Wno-format-y2k -Wmissing-braces -Wparentheses -Wtrigraphs \
-Wextra -pedantic -std=c99

LDFLAGS := -lGL -lGLU -lpthread -lCg -lCgGL -lgsl -lcblas -latlas -lm \
-lmatio -lhdf5 -lPO8eStreaming

GLIBS := gtk+-2.0 gtkglext-1.0 gtkglext-x11-1.0
GTKFLAGS = `pkg-config --cflags $(GLIBS) `
GTKLD = `pkg-config --libs $(GLIBS) `

GOBJS = gtkclient.o decodePacket.o gettime.o glInfo.o matStor.o
COM_HDR = channel.h wfwriter.h \
../common_host/vbo.h \
../common_host/cgVertexShader.h \
../common_host/firingrate.h \
../common_host/timesync.h \
../common_host/jacksnd.h

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
	GOBJS    += jacksnd.o
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

all: gtkclient convert2 mmap_test po8e wf_plot   

%.o: %.cpp $(COM_HDR)
	$(CPP) -c $(CPPFLAGS) $(GTKFLAGS) $< -o $@

%.o: ../common_host/%.cpp $(COM_HDR)
	$(CPP) -c $(CPPFLAGS) $(GTKFLAGS) $< -o $@

%.o: %.c
	$(CC) -c $(CFLAGS) $< -o $@

gtkclient: $(GOBJS)
	$(CPP) -o $@ $(GTKLD) $(LDFLAGS) $^

convert2: convert2.o
	$(CPP) -o $@ -lmatio -lhdf5 -lz $<

mmap_test: mmap_test.cpp
	$(CPP) -o $@ -lrt $^

po8e: po8e.o
	$(CPP) -o $@ -lPO8eStreaming $^

wf_plot: wf_plot.o
	$(CC) -o $@ -lSDL -lGL -lGLU -lglut -lpthread -lmatio -lpng $^

clean:
	rm -rf gtkclient convert2 mmap_test po8e wf_plot *.o 

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
	install convert2 -t $(TARGET)
	install -d $(TARGET)/cg
	install cg/fade.cg -t $(TARGET)/cg
	install cg/fadeColor.cg -t $(TARGET)/cg
	install cg/threshold.cg -t $(TARGET)/cg
