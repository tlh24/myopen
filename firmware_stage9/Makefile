# Makefile for  program running in L1 memory
#this actually could be much simpler.
.SUFFIXES: .o .c .asm .bo .asm

ASMSRCS = crt0.o radio6.o get.o get.o2 init6.o enc.o divsi3.o
COMMON = util.o spi.o
# CSRCS = main.o usb_write.o usb.o
CSRCS = main.o
# note: the order of objects in the .ldr mirrors the order in this list!
OPT = -g
CPUDEFINES = -D__ADSPBF532__ -D__BLACKFIN__
INCLUDES = -I. -I/opt/uClinux/bfin-elf/bfin-elf/include/ -I../common/
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

%.o: ../common/%.c
	$(CC) $(CFLAGS) -c -o $@ $<

%.o: %.asm
	$(CC) $(ASMFLAGS) -D_AGC_ -c -o $@ $<
	
%.o2: %.asm
	$(CC) $(ASMFLAGS) -c -o $@ $<

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<


#note: delete spi.o each time, as it compiles different for the headstage.
# -- and we don't want to screw anything up.
#svn version script runs at the end of the build process, but this isn't such a problem as
#the version does not change frequently.
all: $(OBJS) stage.ldr stage.elf # radio_control.asm
	rm -f ../common/spi.o


stage.elf: $(OBJS)
	$(LD) $(LDFLAGS) -g -o stage.elf $(OBJS)

stage.dxe: $(OBJS)
	$(LD) $(LDFLAGS) -o stage.dxe $(OBJS)

enc_create: enc_create.cpp
	g++ -Wall $< -o $@

enc.asm: enc_create
	./enc_create

%.ldr:%.dxe
	rm -f *.ldr
	$(LDR) -T BF532 -c $@ $<
	$(OBDMP) -d $< > decompile.asm
	perl register_check.pl

record:
	sudo ttyUSB_client/usbtest
#	rm ttyUSB_client/out.txt
#	sudo ttyUSB_client/usbtest > ttyUSB_client/out.txt

clean:
	rm -f *.o *.ldr *.dxe radio_control.asm enc.asm enc_create

flash:
	sudo ../flasher/flash stage.ldr

reset:
	sudo ../flasher/flash --reset

debug: # also need bfin-gdbproxy bfin --reset
	/opt/uClinux/bfin-elf/bin/bfin-elf-gdb


