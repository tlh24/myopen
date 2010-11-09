#!/usr/bin/perl -w
#this script is to help building the monolithic .dxe
# for loading over JTAG.  
# normally, the two dxes are merged into on .ldr file, which is sent to the 
# flash via the parallel port (two-stage boot process); here we want everything in one dxe, 
# hence have to change some of the global symbols, labels, and start point. 
$source = $ARGV[0]; 
open(FH, $source); 
@j = <FH>; 
close FH;
foreach $r (@j) {
	$r =~ s/^start:\n/start_crt0:\n/; #for crt0.asm -- this is no longer the start point.
	$r =~ s/^\.global start\s+\/\/crt0\.asm/.global start_crt0/; #remove multiple .global start definitions.
	if( $r =~ /jump start_crt0;/ ){ #for init_sdram.asm - uncomment the jump.
		$r =~ s/\/\*//; 
		$r =~ s/\*\///; 
	}
	$r =~ s/\{crt0\.o/{init_sdram_dbg.o/ ; # for bftiny.x
	print $r; 
}