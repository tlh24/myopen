#!/usr/bin/perl
print "Content-type: text/html\r\n\r\n";
print "<html><body>\n"; 
print "you said: "; 
# POST strings are read from stdin.
print $ENV{"CONTENT_LENGTH"};  
read(STDIN, $request,$ENV{'CONTENT_LENGTH'}) 
		|| die "Could not get query\n";
print $request . "\n" ; 
#this prints all the environment variables that perl knows. 
# print "<html><body> environment variables:\n<br/>"; 
# foreach $key (sort keys(%ENV)) {
# 	print "$key = $ENV{$key}<p/>";
# } 
print "</body></html>\n"; 
exit 0; 