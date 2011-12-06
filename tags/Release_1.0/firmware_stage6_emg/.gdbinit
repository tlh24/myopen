# This gdb init script automatically connects to the target and
# loads the program 
#
# $Id: .gdbinit,v 1.2 2006/01/22 17:08:05 strubi Exp $
# 

target remote :2000
set remotetimeout 999999
set remoteaddresssize 32

set prompt (bfin-jtag-gdb)\ 

file stage.dxe
load stage.dxe

define syscr
	print/x * ((unsigned short *) 0xffc00104)
end

#b main.c:128

set scheduler-locking off
