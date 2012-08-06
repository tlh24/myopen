#!/usr/bin/perl

# select time, cursor position, and target position from the file.  
# leave the other crap out. 
my $nlines = 0; 
while(<STDIN>){
	my $line = $_; 
	if( $line =~ /([\d\.-]+) curs ([\d\.-]+) ([\d\.-]+) targ ([\d\.-]+) ([\d\.-]+)[^D]+Diff ([\d\.-]+)/){
		print "$1 $2 $3 $4 $5 $6 "; 
	}
	if( $line =~ /targ_sz ([\d\.-]+) curs_sz ([\d\.-]+) holdTime ([\d\.-]+) rewardTime ([\d\.-]+)/){
		print "$1 $2 $3 $4\n"; 
		$nlines++; 
	}
}
print STDERR "total lines output $nlines\n"; 
# there!  now you can read it into matlab with load( filename ). 