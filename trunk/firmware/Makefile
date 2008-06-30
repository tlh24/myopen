ASMSRCS = crt0.asm peripheral.asm
CSRCS = main.c lcd.c util.c ethernet.c
INITSRC = init_sdram.asm peripheral.asm
# note: the order of objects in the .ldr mirrors the order in this list!

CPUDEFINES = -D__ADSPBF537__  -D__BLACKFIN__
INCLUDES = -I/opt/uClinux/bfin-elf/bfin-elf/include/
ASMFLAGS = -x assembler-with-cpp $(INCLUDES) $(CPUDEFINES) -Wall
ASMFLAGS += -mcpu=bf537 -include memory.h -include defBF537.h
CFLAGS = $(INCLUDES) $(CPUDEFINES) -mcpu=bf537 -O2 -Wall -fomit-frame-pointer -ffixed-P5 -ffixed-P4 -ffixed-P0
LDR = /opt/uClinux/bfin-uclinux/bin/bfin-uclinux-ldr

LDFLAGS = -T bftiny.x

OBJS = $(ASMSRCS:%.asm=%.o) $(CSRCS:%.c=%.o)
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
all: $(OBJS) emg_dsp.ldr
	perl svn_version.pl
	
init_sdram.dxe: $(INITOBJS)
	$(LD) -T init_sdram.x -o $@ $(INITOBJS) 

emg_dsp.dxe: $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $(OBJS)
	
emg_dsp.ldr:emg_dsp.dxe init_sdram.dxe
	rm -f *.ldr
	$(LDR) -v -T BF537 -c $@ -i init_sdram.dxe -v emg_dsp.dxe
	$(OBDMP) -d emg_dsp.dxe > decompile.asm
	$(OBDMP) -d init_sdram.dxe > init_decompile.asm
#	perl register_check.pl
	
clean:
	rm -f *.o *.ldr *.dxe



