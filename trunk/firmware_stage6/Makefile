COMMON = print.o util.o spi.o ethernet.o arp.o tcp.o http.o
LOCAL = test.o test_spi.o 
# note: the order of objects in the .ldr mirrors the order in this list!

CPUDEFINES = -D__ADSPBF527__  -D__BLACKFIN__
INCLUDES = -I../common/ -I/opt/uClinux/bfin-elf/bfin-elf/include/
ASMFLAGS = -x assembler-with-cpp $(INCLUDES) $(CPUDEFINES) -Wall
ASMFLAGS += -mcpu=bf527 -include memory.h -include defBF527.h
CFLAGS = $(INCLUDES) $(CPUDEFINES) -mcpu=bf527 -Wall -include memory.h
# CFLAGS += -O3 -ffast-math -mfast-fp -funsafe-math-optimizations 

ASMFLAGS += -g
CFLAGS += -g

# see http://blackfin.uclinux.org/gf/project/toolchain/forum/?action=ForumBrowse&forum_id=44&_forum_action=ForumMessageBrowse&thread_id=3023
# the archive file must have the same organization (FLAT, FDPIC ..)
LDFLAGS = -T bftiny.x \
 -L /opt/uClinux/bfin-uclinux/bfin-uclinux/runtime/usr/lib/
#-L /opt/uClinux/bfin-elf/bfin-elf/lib/bf532-none/mid-shared-library/ -lbffastfp
#  -L/opt/uClinux/bfin-elf/bfin-elf/lib/ -lbffastfp

COMSRC = $(COMMON:%.o=../common/%.c)
COMDBG = $(COMMON:%o=%.do)
OBJS = $(ASMSRCS:%.asm=%.o) $(CSRCS:%.c=%.o)
DBGOBJS = $(DBGASMSRCS:%.asm=%.o) $(CSRCS:%.c=%.do)
INITOBJS = $(INITSRC:%.asm=%.o)

BFINROOT = /opt/uClinux/bfin-uclinux/bin
AS = $(BFINROOT)/bfin-uclinux-as
CC = $(BFINROOT)/bfin-uclinux-gcc
LD = $(BFINROOT)/bfin-uclinux-ld
LDR = /opt/uClinux/bfin-uclinux/bin/bfin-uclinux-ldr
OBDMP = $(BFINROOT)/bfin-uclinux-objdump
BIN = $(BFINROOT)/bfin-uclinux-objcopy

%.o: %.asm
	$(CC) $(ASMFLAGS) -c -o $@ $<
	
%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<
	
%.o: ../common/%.c
	$(CC) $(CFLAGS) -c -o $@ $<

#svn version script runs at the /end/ of the build process, but this isn't such a problem as 
#the version does not change frequently. 
all: $(LOCAL) $(COMMON) test.dxe
	perl svn_version.pl
	
init_sdram_dbg.o: init_sdram.asm 
	./debug.pl init_sdram.asm | $(CC) $(ASMFLAGS) -g -c -o init_sdram_dbg.o -
# -x assember-with-cpp specifies language, final dash indicates stdin.

crt0_dbg.o: crt0.asm
	./debug.pl crt0.asm | $(CC) $(ASMFLAGS) -g -c -o crt0_dbg.o -
	
init_sdram.dxe: $(INITOBJS)
	$(LD) -T init_sdram.x -o $@ $(INITOBJS) 

emg_dsp.dxe: $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $(OBJS)
	
# this is for loading with the JTAG cable (icebear, from section5.ch)
emg_dbg.dxe: $(DBGOBJS)
	./debug.pl bftiny.x > bftiny_dbg.x
	$(LD) -T bftiny_dbg.x -o $@ $(DBGOBJS)
	$(OBDMP) -d emg_dbg.dxe > dbg_decompile.asm
	
# this is for loading with the JTAG cable (icebear, from section5.ch)
test.dxe: $(LOCAL) $(COMMON)
	./debug.pl bftiny.x > bftiny_dbg.x
	$(LD) -T bftiny_test.x -o $@ $(LOCAL) $(COMMON)
	$(OBDMP) -d $@ > test_decompile.asm

# this written to flash. 
emg_dsp.ldr:emg_dsp.dxe init_sdram.dxe
	rm -f *.ldr
	$(LDR) -v -T BF537 -c $@ -i init_sdram.dxe -v emg_dsp.dxe
	$(OBDMP) -d emg_dsp.dxe > decompile.asm
	$(OBDMP) -d init_sdram.dxe > init_decompile.asm
#	perl register_check.pl
	
clean:
	rm -f *.o *.do *.ldr *.dxe

flash: 
	sudo ../flasher/flash emg_dsp.ldr

reset:
	sudo ../flasher/flash --reset

debug: # you need to run bfin-gdbproxy bfin to start remote debugging.
	/opt/uClinux/bfin-elf/bin/bfin-elf-gdb
#useful commands: p /x $r0
# load emg_dbg.dxe 
# file emg_dbg.dxe