#! /usr/bin/perl
print "Content-type: text/xml\n\n"; # mime-type! 
my $request ; 
# open data file -- in real life this would be from SDRAM on myopen. 
my $source = "datasin.txt"; # must be in same dir.. 
open(FH, "< $source"); 
local( $/ ); # this allows us to slurp the whole thing.. 
my $data = <FH>; 
close FH; 
read(STDIN, $request,$ENV{'CONTENT_LENGTH'}) ; 
if( not defined ($ENV) ){
	$request = "samples=$range"; 
}
print qq(<div>$data\n</div>); 
#print qq(<p>@array</p></font>\n); 
#print qq(<p> The features are: @feats</p>);

