#unique elements from different arrays  
my @array1 = (10,20,30);  
my @array2 = (11,22,33);  
my @array3 = (10,20,30);  
	my %uniq_arr;  
	  
	for my $each (@array2, @array3, @array1) {  
	$uniq_arr{$each}++;  
	}  
	print "\n", $_ for (keys %uniq_arr),"\n";  
	print "$uniq_arr->[0]";   
	1;  