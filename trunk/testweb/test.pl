#!/usr/bin/perl
print "Content-type: text/html\r\n\r\n";
print "you said: "; 
print $ENV{"QUERY_STRING"};  
#this prints all the environment variables that perl knows. 
#print "<html><body> environment variables:\n<br/>"; 
#foreach $key (sort keys(%ENV)) {
#	print "$key = $ENV{$key}<p/>";
#} 
print "</body></html>\n"; 
exit 0; 