#! /usr/bin/perl
print "Content-type: text/xml\n\n"; # mime-type! 

read(STDIN, $request,$ENV{'CONTENT_LENGTH'}) 
		|| die "Could not get query\n";
if($request =~ /samples=(\d+)/ ){
	print "<p>you requested $1 samples.</p>\n"; 
}
print qq(<font color="purple"><p>some simulated data here!</p>\n); 
print qq(<p>450,345,556,100</p></font>\n); 