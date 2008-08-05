ASMSRCS = crt0.asm peripheral.asm lms.asm sample.asm
DBGASMSRCS = init_sdram_dbg.asm crt0_dbg.asm peripheral.asm lms.asm sample.asm
CSRCS = main.c lcd.c util.c ethernet.c tcp.c http.c usb.c
INITSRC = init_sdram.asm
# note: the order of objects in the .ldr mirrors the order in this list!

CPUDEFINES = -D__ADSPBF537__  -D__BLACKFIN__
INCLUDES = -I/opt/uClinux/bfin-elf/bfin-elf/include/
ASMFLAGS = -x assembler-with-cpp $(INCLUDES) $(CPUDEFINES) -Wall
ASMFLAGS += -mcpu=bf537 -include memory.h -include defBF537.h
CFLAGS = $(INCLUDES) $(CPUDEFINES) -mcpu=bf537 -O2 -Wall \
 -ffixed-I0 -ffixed-I1 -ffixed-I2 -ffixed-I3 \
 -ffixed-B0 -ffixed-B1 -ffixed-B2 -ffixed-B3 \
 -ffixed-L0 -ffixed-L1 -ffixed-L2 -ffixed-L3 \
 -ffixed-M0 -ffixed-M1 -ffixed-M2 -ffixed-M3 
LDR = /opt/uClinux/bfin-uclinux/bin/bfin-uclinux-ldr

LDFLAGS = -T bftiny.x

OBJS = $(ASMSRCS:%.asm=%.o) $(CSRCS:%.c=%.o)
DBGOBJS = $(DBGASMSRCS:%.asm=%.o) $(CSRCS:%.c=%.o)
INITOBJS = $(INITSRC:%.asm=%.o)

BFINROOT = /opt/uClinux/bfin-uclinux/bin
AS = $(BFINROOT)/bfin-uclinux-as
CC = $(BFINROOT)/bfin-uclinux-gcc
LD = $(BFINROOT)/bfin-uclinux-ld
OBDMP = $(BFINROOT)/bfin-uclinux-objdump
BIN = $(BFINROOT)/bfin-uclinux-objcopy

%.o: %.asm
	$(CC) $(ASMFLAGS) -c -o $@ $<

#svn version script runs at the /end/ of the build process, but this isn't such a problem as 
#the version does not change frequently. 
all: $(OBJS) emg_dsp.ldr emg_dbg.dxe
	perl svn_version.pl
	
init_sdram_dbg.o: init_sdram.asm 
	./debug.pl init_sdram.asm | $(CC) $(ASMFLAGS) -c -o init_sdram_dbg.o -
# -x assember-with-cpp specifies language, final dash indicates stdin.

crt0_dbg.o: crt0.asm
	./debug.pl crt0.asm | $(CC) $(ASMFLAGS) -c -o crt0_dbg.o -
	
init_sdram.dxe: $(INITOBJS)
	$(LD) -T init_sdram.x -o $@ $(INITOBJS) 

emg_dsp.dxe: $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $(OBJS)
	
# this is for loading with the JTAG cable. 
emg_dbg.dxe: $(DBGOBJS)
	./debug.pl bftiny.x > bftiny_dbg.x
	$(LD) -T bftiny_dbg.x -o $@ $(DBGOBJS)
	$(OBDMP) -d emg_dbg.dxe > dbg_decompile.asm
	
emg_dsp.ldr:emg_dsp.dxe init_sdram.dxe
	rm -f *.ldr
	$(LDR) -v -T BF537 -c $@ -i init_sdram.dxe -v emg_dsp.dxe
	$(OBDMP) -d emg_dsp.dxe > decompile.asm
	$(OBDMP) -d init_sdram.dxe > init_decompile.asm
#	perl register_check.pl
	
clean:
	rm -f *.o *.ldr *.dxe



