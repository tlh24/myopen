#!/usr/bin/perl
$narg = $#ARGV + 1; 
if( $narg ne 1 ){
	print "please specify the file to read\n"; 
}else{
	$source = $ARGV[0]; 
	local( $/, *FH ) ;
	open(FH, $source); 
	@jh = <FH>; #slurp entire file. 
	close FH;
	print "tc $tc \n"; 
	my @regs = ("i0", "i1", "i2", "i3"); 
	my %mreg = ("m0"=>64, "m1"=>-32,"m2"=>32,"m3"=>512); 
	foreach $reg (@regs){
		my $sum = 0; 
		foreach $j (@jh){
			$j =~ s/\/\/.*//; #remove comments.
			while (($m,$mval) = each %mreg) {
				my $cnt = () = ( $j =~ /$reg\s*\+\+\s*$m/gi); #use this strange syntax to get the number of matches.
				$cnt += () = ( $j =~ /$reg\s*\+\=\s*$m/gi); 
				$sum += $cnt * $mval ; 
			}
			$cnt = () = ( $j =~ /[^w]\[$reg\s*\+\+[^\]m]*\]/gi); #count [i0++] accesses
			$sum += $cnt * 4; 
			$cnt = () = ( $j =~ /w\[$reg\s*\+\+[^\]m]*\]/gi); #count w[i0++] accesses
			$sum += $cnt * 2; 
			$cnt = () = ( $j =~ /[^w]\[$reg\s*--[^\]m]*\]/gi); #count [i0--] accesses
			$sum -= $cnt * 4; 
			$cnt = () = ( $j =~ /w\[$reg\s*--[^\]m]*\]/gi); #count w[i0--] accesses
			$sum -= $cnt * 2; 
			# count bare moves by immediates
			while( $j =~ /$reg\s*\+\=\s*(\d+)/gi ) {
				$sum += $1; 
			}
		}
		# search for raw increments. 
		print "register $reg increments by $sum (ignoring loops!)\n"
		# making this script figure out how many times an instruction were called 
		# would be ... more difficult, to say the least! 
		# also note that this script does not pay attention to multiline comments. 
	}
}