#! /usr/bin/perl
print "Content-type: text/xml\n\n"; # mime-type! 
my $request ; 
# open data file -- in real life this would be from SDRAM on myopen. 
my $source = "data2.txt"; # must be in same dir.. 
open(FH, "< $source"); 
local( $/ ); # this allows us to slurp the whole thing.. 
my $data = <FH>; 
close FH; 
my $range = 10000;
my $random_number = int(rand($range));
@array = ("$random_number");
@feats = (1, 1, 1, 1, 1, 1);
read(STDIN, $request,$ENV{'CONTENT_LENGTH'}) ; 
if( not defined ($ENV) ){
	$request = "samples=$range"; 
}
if($request =~ /samples=(\d+)/ ){
	#first line should be the matrix size. 
	print "<div>rows:10000 cols:5\n"; 
	#print "you requested $1 samples\n"; 
}
print qq($data\n</div>); 
#print qq(<p>@array</p></font>\n); 
#print qq(<p> The features are: @feats</p>);

