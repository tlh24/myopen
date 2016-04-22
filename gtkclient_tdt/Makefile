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

CPPFLAGS := -Iinclude -I/usr/local/include -I../common_host -Iproto
CPPFLAGS += -Wall -Wcast-align -Wpointer-arith -Wshadow -Wsign-compare \
-Wformat=2 -Wno-format-y2k -Wmissing-braces -Wparentheses -Wtrigraphs \
-Wextra -pedantic -std=c++11 -Wno-int-to-pointer-cast #-mcmodel=medium
CPPFLAGS += -march=native

CFLAGS := -Iinclude -I/usr/local/include -I../common_host -Iproto
CFLAGS += -Wall -Wcast-align -Wpointer-arith -Wshadow -Wsign-compare \
-Wformat=2 -Wno-format-y2k -Wmissing-braces -Wparentheses -Wtrigraphs \
-Wextra -pedantic -std=c99
CFLAGS += -march=native

LDFLAGS := -lGL -lGLU -lpthread -lCg -lCgGL -lgsl -lcblas -latlas -lm -lz \
-lmatio -lprotobuf -lPO8eStreaming -larmadillo #-mcmodel=medium

GLIBS := gtk+-2.0 gtkglext-1.0 gtkglext-x11-1.0 lua5.1 libprocps hdf5
CPPFLAGS += $(shell pkg-config --cflags $(GLIBS))
LDFLAGS += $(shell pkg-config --libs $(GLIBS))

GOBJS = proto/po8e.pb.o proto/icms.pb.o src/gtkclient.o \
src/datawriter.o \
src/h5writer.o \
src/h5spikewriter.o \
src/h5analogwriter.o \
src/filter.o src/po8e_conf.o \
src/spikebuffer.o src/nlms2.o \
src/vbo_raster.o src/vbo_timeseries.o \
src/icmswriter.o \
../common_host/domainSocket.o \
../common_host/gettime.o \
../common_host/matStor.o \
../common_host/glInfo.o \
../common_host/util.o \
../common_host/random.o \
../common_host/lconf.o

COM_HDR = include/channel.h \
include/po8e_conf.h include/vbo_raster.h include/vbo_timeseries.h \
../common_host/util.h \
../common_host/vbo.h \
../common_host/domainSocket.h \
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
	GOBJS    += ../common_host/jacksnd.o
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

all: gtkclient timesync icms2mat mmap_test po8e

src/%.o: src/%.cpp $(COM_HDR)
	$(CPP) -c $(CPPFLAGS) $< -o $@

../common_host/%.o: ../common_host/%.cpp $(COM_HDR)
	$(CPP) -c $(CPPFLAGS) $< -o $@

proto/%.pb.o: proto/%.pb.cc $(COM_HDR)
	$(CPP) -c $(CPPFLAGS) $< -o $@

proto/%.pb.cc proto/%.pb.h: proto/%.proto
	protoc -I$(<D) --cpp_out=proto/ $<

gtkclient: $(GOBJS)
	$(CPP) -o $@ $(LDFLAGS) $^

timesync: src/timeclient.o ../common_host/gettime.o
	$(CPP) -o $@ $(LDFLAGS) $^

#spikes2mat: src/spikes2mat.o
#	$(CPP) -o $@ $(LDFLAGS) $^

icms2mat: proto/icms.pb.o src/icms2mat.o src/stimchan.o ../common_host/matStor.o
	$(CPP) -o $@ $(LDFLAGS) -lprotobuf $^

mmap_test: src/mmap_test.o
	$(CPP) -o $@ -lrt $^

po8e: proto/po8e.pb.o src/po8e.o ../common_host/util.o ../common_host/lconf.o src/po8e_conf.o
	$(CPP) -o $@ $(LDFLAGS) $^

clean:
	rm -rf gtkclient timesync icms2mat mmap_test po8e \
	proto/*.pb.cc proto/*.pb.h proto/*.o src/*.o ../common_host/*.o

	
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
	liblua5.1-0-dev libgl1-mesa-glx
endif
deps:
	sudo apt-get install $(DEPS);
	@echo ""
	@echo "make sure non-free is in /etc/apt/sources.list for nvidia-cg-toolkit."
	@echo "also please install libarmadillo >= 6.7"

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
	install icms2mat -t $(TARGET)
	install -d $(TARGET)/cg
	install cg/fade.cg -t $(TARGET)/cg
	install cg/fadeColor.cg -t $(TARGET)/cg
	install cg/threshold.cg -t $(TARGET)/cg

.PRECIOUS: proto/%.pb.cc proto/%.pb.h
