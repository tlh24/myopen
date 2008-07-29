# $Id$

CC = gcc
SHELL = /bin/sh

#INC = include
INC = 

CFLAGS = -Wall -std=c99 -pedantic 
#-I$(INC)
DEBUG = -g
#DEBUG =

BLASLIB = /usr/lib/sse2 

LDFLAGS = -L$(BLASLIB) -latlas -llapack

OBJS = util.o matrix.o myopen.o

all: myopen

myopen: $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $(OBJS)

.c.o:
	$(CC) -c $(DEBUG) $(CFLAGS) $<

.f.o:
	$(FC) -c $(DEBUG) $(FFLAGS) $<

clean:
	\rm -rf *.o myopen
