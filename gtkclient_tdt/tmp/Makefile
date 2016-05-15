CPP = g++

CFLAGS := -Wall -Wcast-align -Wpointer-arith -Wshadow -Wsign-compare \
-Wformat=2 -Wno-format-y2k -Wmissing-braces -Wparentheses -Wtrigraphs \
-std=c++11
LDFLAGS := -lPO8eStreaming

all: po8e

%.o: %.cpp
	$(CPP) -c $(CFLAGS) $< -o $@
	
po8e: po8e.o
	$(CPP) -o $@ $(LDFLAGS) $^

clean:
	rm -rf po8e *.o
