# script to insert the SVN version.. 
$verstr = `svn info main.c`; 
if($verstr =~ /Revision: (\d+)/ ){
	$version = $1; 
	# print "svn version: $version \n"; 
	open(FH, "main.c"); 
	open(FHnew, ">main.c.new"); #open in write-over mode.
	@j = <FH>; 
	foreach $line (@j){
		$line =~ s/(SVN_VERSION\{\*\/)([^\/]*)(\/\*\})/$1$version$3/; 
		print FHnew $line; 
	}
	close FH; 
	close FHnew;
	`mv main.c.new main.c`;
}