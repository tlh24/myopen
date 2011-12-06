file emg_dbg.dxe 

target remote localhost:2000 

source /usr/share/gdbscripts/mmr.gdb 
source /usr/share/gdbscripts/dump.gdb

set prompt (bfin-jtag-gdb)\ 

define target_init
	monitor reset 
end

monitor reset

load emg_dbg.dxe
