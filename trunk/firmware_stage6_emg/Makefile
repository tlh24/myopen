# Makefile for  program running in L1 memory
#this actually could be much simpler.
.SUFFIXES: .o .c .asm .bo

ASMSRCS = crt0.o radio4.o
COMMON = print.o util.o spi.o
CSRCS = main.o
# note: the order of objects in the .ldr mirrors the order in this list!
OPT = -g
CPUDEFINES = -D__ADSPBF532__ -D__BLACKFIN__
bridge: CPUDEFINES += -D__BRIDGE__
INCLUDES = -I. -I/opt/uClinux/bfin-elf/bfin-elf/include/ -I../../myopen/common/
ASMFLAGS = -x assembler-with-cpp $(INCLUDES) $(CPUDEFINES) -Wall
ASMFLAGS += -mcpu=bf532 $(OPT) -include memory.h -include defBF532.h -D__ASM__
CFLAGS = $(INCLUDES) $(CPUDEFINES) -mcpu=bf532 $(OPT) -include memory.h -Wall 
# -fomit-frame-pointer
# -ffixed-FP -ffixed-P5 -ffixed-P4 -ffixed-P0
# note: -O means debug symbols are not loaded. 
LDR = /home/tlh24/svn/bfin/ldr-utils/ldr
LDRFILE = $(shell ls *.ldr)

LDFLAGS = -T bftiny.x

OBJS = $(ASMSRCS) $(CSRCS) $(COMMON)
BOBJS = $(B_ASMSRCS:%.asm=%.bo) $(CSRCS:%.c=%.bo)

BFINROOT = /opt/uClinux/bfin-uclinux/bin
AS = $(BFINROOT)/bfin-uclinux-as
CC = $(BFINROOT)/bfin-uclinux-gcc
LD = $(BFINROOT)/bfin-uclinux-ld
OBDMP = $(BFINROOT)/bfin-uclinux-objdump
BIN = $(BFINROOT)/bfin-uclinux-objcopy

%.bo: %.asm
	$(CC) $(ASMFLAGS) $(BRIDGE) -c -o $@ $<
	
%.o: ../../myopen/common/%.c
	$(CC) $(CFLAGS) -c -o $@ $<
	
%.o: %.asm
	$(CC) $(ASMFLAGS) -c -o $@ $<
	
%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<
	

#note: delete spi.o each time, as it compiles different for the headstage.
# -- and we don't want to screw anything up.
#svn version script runs at the end of the build process, but this isn't such a problem as 
#the version does not change frequently. 
all: $(OBJS) stage.ldr stage.elf 
	rm -f ../common/spi.o 

bridge: $(OBJS) stage.ldr stage.elf # radio_control.asm
	rm -f ../common/spi.o 
	
stage.elf: $(OBJS)
	$(LD) $(LDFLAGS) -g -o stage.elf $(OBJS)

stage.dxe: $(OBJS)
	$(LD) $(LDFLAGS) -o stage.dxe $(OBJS) 
		
%.ldr:%.dxe
	rm -f *.ldr
	$(LDR) -T BF532 -c $@ $<
	$(OBDMP) -d $< > decompile.asm
	perl register_check.pl

clean:
	rm -f *.o *.ldr *.dxe *.elf radio_control.asm

flash: 
	sudo ~/svn/myopen/flasher/flash stage.ldr
	
reset: 
	sudo ~/svn/myopen/flasher/flash --reset
	
debug: # also need bfin-gdbproxy bfin --reset
	/opt/uClinux/bfin-elf/bin/bfin-elf-gdb

usb:	
	cd ttyUSB_client; make

