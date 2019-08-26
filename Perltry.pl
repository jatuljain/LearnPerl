#! /usr/bin/perl  
# use strict;

open FH,"<E:\\Perl\\newlog.txt";
$line  = <FH>;
print $line;

my $file = "E:\\Perl\\newlog.txt";
my %count;
my @count1 = undef;
my $file = shift or die "Usage: $0 FILE\n";
open my $fh, '<', $file or die "Could not open '$file' $!";
while (my $line = <$fh>) {
    chomp $line;
    foreach my $str (split /\s+/, $line) {
        $count{$str}++;
		# print "word count ";
	# print $str;
	# print " " . $count{$str} . "\n";
	
    }
	
}
 my @array;
foreach my $str (sort keys %count) {
    printf "%-31s %s\n", $str, $count{$str};
	push (@array,$count{$str});
}

print "\n\n @array\n\n...";