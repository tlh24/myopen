#!/usr/bin/perl

$filename = '/usr/local/lib/libPO8eStreaming.so';
unless (-e $filename) {
	print "$filename not found. \n";
	print "\tlibPO8eStreaming is proprietary to TDT, hence cannot be included here.\n"; 
	print "\tPlease request the library from them to stream data from their hardware.\n";
	print "\t(You'll need a PO8e card, too!)\n";
	exit(1); 
}
exit(0); 