# install dependencies with make deps

# The following can be set at the command line
# ie: make DBG=true JACK=false
DBG = false
JACK = true
MUDFLAP = false
STACKPROTECTOR = false

CC  = clang-3.6
CPP = clang++-3.6
ifeq ($(shell lsb_release -sc), jessie)
        CC = clang-3.5
        CPP = clang++-3.5
endif
ifeq ($(shell lsb_release -sc), stretch)
        CC = gcc
        CPP = g++
endif

TARGET = /usr/local/bin

CPPFLAGS := -Iinclude -I/usr/local/include -I../common_host
CPPFLAGS += -Wall -Wcast-align -Wpointer-arith -Wshadow -Wsign-compare \
-Wformat=2 -Wno-format-y2k -Wmissing-braces -Wparentheses -Wtrigraphs \
-Wextra -pedantic -std=c++11 -Wno-int-to-pointer-cast #-mcmodel=medium
CPPFLAGS += -march=native

CFLAGS := -Iinclude -I/usr/local/include -I../common_host
CFLAGS += -Wall -Wcast-align -Wpointer-arith -Wshadow -Wsign-compare \
-Wformat=2 -Wno-format-y2k -Wmissing-braces -Wparentheses -Wtrigraphs \
-Wextra -pedantic -std=c99
CFLAGS += -march=native

ifeq ($(shell lsb_release -sc), wheezy)
        HDFLIB = -lhdf5
else
        ifeq ($(shell lsb_release -sc), jessie)
                HDFLIB = -lhdf5_serial
        endif
endif

LDFLAGS := -lGL -lGLU -lpthread -lCg -lCgGL -lgsl -lcblas -latlas -lm \
-lmatio $(HDFLIB) -lprotobuf -lPO8eStreaming #-mcmodel=medium

GLIBS := gtk+-2.0 gtkglext-1.0 gtkglext-x11-1.0 lua5.1 libprocps
CPPFLAGS += $(shell pkg-config --cflags $(GLIBS))
LDFLAGS += $(shell pkg-config --libs $(GLIBS))

GOBJS = src/analog.pb.o src/icms.pb.o src/gtkclient.o src/gettime.o \
src/glInfo.o src/matStor.o src/datawriter.o src/filter.o \
src/spikebuffer.o src/rls.o src/nlms.o src/lconf.o src/random.o
# src/threadpool.o
COM_HDR = include/channel.h include/wfwriter.h include/medfilt.h \
include/po8e_conf.h \
../common_host/vbo.h \
../common_host/cgVertexShader.h \
../common_host/firingrate.h \
../common_host/timesync.h \
../common_host/jacksnd.h \
../common_host/lconf.h

ifeq ($(strip $(DBG)),true)
	CPPFLAGS += -O0 -g -rdynamic -DDEBUG
	CFLAGS   += -O0 -g -rdynamic -DDEBUG
	JACK=false
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

all: gtkclient timesync spikes2mat icms2mat analog2mat mmap_test po8e wf_plot   

src/%.o: src/%.cpp $(COM_HDR)
	$(CPP) -c $(CPPFLAGS) $< -o $@

src/%.o: ../common_host/%.cpp $(COM_HDR)
	$(CPP) -c $(CPPFLAGS) $< -o $@

src/%.pb.o: src/%.pb.cc $(COM_HDR)
	$(CPP) -c $(CPPFLAGS) $< -o $@

src/%.pb.cc src/%.pb.h: proto/%.proto
	protoc -I$(<D) --cpp_out=src $<
	mv src/$(*F).pb.h include

src/wf_plot.o: src/wf_plot.c
	$(CC) -c $(CFLAGS) $< -o $@

gtkclient: $(GOBJS)
	$(CPP) -o $@ $(LDFLAGS) $^

timesync: src/timeclient.o src/gettime.o
	$(CPP) -o $@ $(LDFLAGS) $^

spikes2mat: src/spikes2mat.o
	$(CPP) -o $@ -lmatio $(HDFLIB) -lz $^

icms2mat: src/icms.pb.o src/icms2mat.o src/stimchan.o src/matStor.o
	$(CPP) -o $@ -lmatio $(HDFLIB) -lz -lprotobuf $^

analog2mat: src/analog.pb.o src/analog2mat.o src/analogchan.o src/matStor.o
	$(CPP) -o $@ -lmatio $(HDFLIB) -lz -lprotobuf $^

mmap_test: src/mmap_test.o
	$(CPP) -o $@ -lrt $^

po8e: src/po8e.pb.o src/po8e.o src/lconf.o src/po8e_conf.o
	$(CPP) -o $@ $(LDFLAGS) $^

wf_plot: src/wf_plot.o
	$(CC) -o $@ -lSDL -lGL -lGLU -lglut -lpthread -lmatio $(HDFLIB) -lpng $^

clean:
	rm -rf gtkclient timesync spikes2mat icms2mat analog2mat mmap_test po8e wf_plot \
	src/*.pb.cc include/*.pb.h src/*.o

	
ifeq ($(shell lsb_release -sc), stretch)
# as of April 2016.
DEPS = libgtk2.0-dev libgtk2.0-0-dbg \
	libgtkgl2.0-dev libgtkglext1-dev freeglut3-dev nvidia-cg-toolkit \
	libgsl-dev libatlas-base-dev libjack-jackd2-dev python-matplotlib \
	python-jsonpickle python-opengl libboost1.58-all-dev pkg-config \
	libhdf5-dev libsdl1.2-dev astyle \
	libprotobuf-dev protobuf-compiler \
	cppcheck libprocps-dev \
	liblua5.1-0-dev	
else
DEPS = libgtk2.0-dev libgtk2.0-0-dbg \
	libgtkgl2.0-dev libgtkglext1-dev freeglut3-dev nvidia-cg-toolkit \
	libgsl0-dev libatlas-base-dev libjack-jackd2-dev python-matplotlib \
	python-jsonpickle python-opengl libboost1.49-all-dev pkg-config \
	libhdf5-dev libsdl1.2-dev astyle \
	libprotobuf-dev libprotobuf7 protobuf-compiler \
	cppcheck libprocps0-dev \
	liblua5.1-0-dev
endif
deps:
	sudo apt-get install $(DEPS); 
	@echo ""
	@echo "make sure non-free is in /etc/apt/sources.list for nvidia-cg-toolkit."
	
check:
	cppcheck -Iinclude -I/usr/local/include -I../common_host --enable=all \
		-q src/*.cpp

pretty:
	# "-rm" means that make ignores errors, if any
	astyle -A8 --indent=tab -H -k3 include/*.h
	-rm include/*.h.orig
	astyle -A8 --indent=tab -H -k3 src/*.cpp
	-rm src/*.cpp.orig
	astyle -A8 --indent=tab -H -k3 ../common_host/*.h
	-rm ../common_host/*.h.orig
	astyle -A8 --indent=tab -H -k3 ../common_host/*.cpp
	-rm ../common_host/*.cpp.orig

install:
	install -d $(TARGET)
	install gtkclient -t $(TARGET)
	install timesync -t $(TARGET)
	install spikes2mat -t $(TARGET)
	install icms2mat -t $(TARGET)
	install analog2mat -t $(TARGET)
	install -d $(TARGET)/cg
	install cg/fade.cg -t $(TARGET)/cg
	install cg/fadeColor.cg -t $(TARGET)/cg
	install cg/threshold.cg -t $(TARGET)/cg

.PRECIOUS: src/%.pb.cc
