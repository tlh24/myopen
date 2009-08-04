#! /usr/bin/perl
print "Content-type: text/xml\n\n"; # mime-type! 
my $request ; 
# open data file -- in real life this would be from SDRAM on myopen. 
my $source = "data4.txt"; # when changing the data source, check variables: classes, omit, samp, test

open(FH, "< $source"); 
local( $/ ); # this allows us to slurp the whole thing.. 
my $data = <FH>; 
close FH; 
my $range = 125 ;
read(STDIN, $request,$ENV{'CONTENT_LENGTH'}) ; 
if( not defined ($ENV) ){
	$request = "samples=$range"; 
}
my $samples = $range; 
#Sif($request =~ /samples=(\d+)/){
#	$samples = $1 + 0 ; 
#}


#generate some sinusoidal data (eventually need to revert to real data)
#print qq(<div>rows:$samples cols:4\n); 

#for( $k=0; $k<$samples; $k++){
#	for( $j=0; $j<4; $j++){
#		print (0.2*sin($k/40)) . " "; 
#	}
#	print "\n"; 
#}
#print "</div>"; 
print qq(<div>$data\n</div>); 
#print qq(<p>@array</p></font>\n); 
#print qq(<p> The features are: @feats</p>);

