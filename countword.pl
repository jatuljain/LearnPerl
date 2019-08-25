$infile='d:\perl\file.txt';

open INFILE,"$infile" or die ;

while(<INFILE>) {
chomp;
$r++ for $_ =~/list/g;
}
print "list $r \n\n";

close INFILE;



### Read a particular line from file
open FILE, "$infile" or die "can not open file $infile"; 
while (<FILE>) 
{ 
print if($.==5)                     #Perl special variable $. contains current line number
}
