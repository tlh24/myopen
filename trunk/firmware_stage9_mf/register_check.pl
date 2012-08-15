# this is not really used anymore --
# I'm not sure why I wanted to avoid touching the loop registers.
my $file = "decompile.asm"; 
open(FH, $file); 
@j = <FH>; 
my $i=0; 
# my @badregs = ("LC0", "LB0", "LT0"); 
my @badregs = ("LB0", "LT0"); 
foreach $reg (@badregs){
	foreach $k (@j){
		if($k =~ /$reg/){
			$i++;
			print "touch register $reg : $k";
		}
	}
}
#tell make if we found problems or not.
if($i>0){
	exit 1;
}else{
	exit 0;
}