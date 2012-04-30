#!/usr/bin/perl

# this is kinda a blackfin simulator ..
# really should read in decompile.asm for this. yea right.
$m0 = 288; 
$m1 = 64; 
$m2 = 16*4; 
$m3 = 8; 

$l0 = 12288; 
$l1 = 4608; 
$l2 = 4608; 
$l3 = 3840; 

sub ireg{
	$reg = shift; 
	$loop = shift; 
	$c = 0; 
	open FH, "get.asm"; 
	print "\n/** ---- $reg ---- **/\n"; 
	while(<FH>){
		# break into line and comment. 
		my $l = $_; 
		my $comment = ""; 
		if($_ =~ /([^\/]+)\/\/([^\/]+)/){
			$l = $1; 
			$comment = $2; 
			$comment =~ s/\n//gs; 
		}
		if($l =~ /([^|]+$reg[^|]+)/){ 
			$m = $1; 
			$m =~ s/\n//gs; 
			$d = $c/4; 
			print "$c ($d)\t$m //$comment\n"; 
			if($comment !~ /ifndef/){
				if($m =~ /m0/){
					if($m =~ /\+=/ || $m =~ /\+\+/){
						$c += $m0; 
					}
					if($m =~ /-=/ || $m =~ /--/){
						$c -= $m0; 
					}
				}
				elsif($m =~ /m1/){
					if($m =~ /\+=/ || $m =~ /\+\+/){
						$c += $m1; 
					}
					if($m =~ /-=/ || $m =~ /--/){
						$c -= $m1; 
					}
				}
				elsif($m =~ /m2/){
					if($m =~ /\+=/ || $m =~ /\+\+/){
						$c += $m2; 
					}
					if($m =~ /-=/ || $m =~ /--/){
						$c -= $m2; 
					}
				}
				elsif($m =~ /m3/){
					if($m =~ /\+=/ || $m =~ /\+\+/){
						$c += $m3; 
					}
					if($m =~ /-=/ || $m =~ /--/){
						$c -= $m3; 
					}
				}
				elsif($m =~ /\+\+/){
					$c += 4; 
				}
				elsif($m =~ /--/){
					$c -= 4; 
				}
				if( $c >= $loop){
					$c -= $loop; 
				}
			}
		}
	}
}

ireg("i0", $l0); 
ireg("i1", $l1); 
ireg("i2", $l2);
ireg("i3", $l3); 