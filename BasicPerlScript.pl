# use strict;
#! /usr/bin/perl  
use lib "e:/Perl";
use PerlPractice;
use warnings;
use Cwd;
use Cwd 'abs_path';
use Data::Dumper;
@ISA = qw(PerlPractice);
print "\@INC is @INC\n";

print PerlPractice::add(3 ,4 , 5, 6,7);


# ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 


# # Get unique elements from Arrays

# use List::MoreUtils qw(uniq);
 
# my @words = qw(foo bar baz foo zorg baz);
# my @unique_words = uniq @words;
#----------------------------------------------------------------------------------------------------------------------------------------------------


# # view plainprint?

# perl -e 'print sort {lc($a) cmp lc($b)} <>' "log.txt" > output.txt;

# ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 


# my $str = "perl is awesome, I am also awesome";
# $str =~ /.*awesome/; # '*' is greedy operator, so it is not satisfied with the first occurrence
# print $&,"\n"; # perl is awesome, I am also awesome

# To restict the greeedyness to first occurance#Use '?' operator to restrict the greediness
# $str =~ /(.*?awesome)/;
# print $&,"\n"; #perl is awesome
# print $1,"\n"; #perl is awesome
#---------------------------------------------------------------------------------------------------------------------------------------------------- 

# my $array = [qw/sandhya prabhath eswar vamsi/];
# print $array[0]; # Throws error since $array is a reference, you can't access directly
# print $array->[0]; # sandhya

# my @arr = qw/100 200 300/;
# print $arr[0]; # Now you cn access as usual, since it is an array

#----------------------------------------------------------------------------------------------------------------------------------------------------
 

# %hash = ( a => 10, b => 20, c => 30, d => 40);  
# print "\n Hash before reverse:", Dumper(\%hash);  
# %reverse_hash = reverse %hash; # It will reverse the hash  
# print "\n Hash after reverse :", Dumper(\%reverse_hash);  
# print "\n";  



# # Use tr/// with the delete (d) modifier to convert the following string: 'aa bbb c dd eee ff mmmm rr' into '11 222 3 44'.
## Modifier 	Description
## c 	Complement SEARCHLIST.
## d 	Delete found but unreplaced characters.
## s 	Squash duplicate replaced characters.

# my $string = 'aa bbb c dd eee ff mmmm rr';
# $string =~ tr/abcdefmr/1234/d;
# print $string; 

# my $string = '123.95,44.32,27.77,221q23';
# $string =~ tr/[0-9]/" "/cd;
 # print $string; 
 
# my $string = '123.95,44.32,27.77,221q23';
# $string =~ tr/[0-9]/" "/d;
# print $string;     #### ".,.,.,"q


# my $string = 'the cat sat abn the mat.';
# $string =~ tr/a-z/bZ/d;

# print "$string\n"; #  b b bZ  b.  --> "a" is replaced by "b" and "b" is replaced by "Z" rest "c-z" replaced by " "


### How can we count number of digits
# my($test,$number);  
# $test = "12344tyyyyy456juikg7";  
# $number = ($test =~ tr/[0-9]/[0-9]/);  
# print "Number of digits in variable is : $number ";  

#----------------------------------------------------------------------------------------------------------------------------------------------------

# # Substitute 3rd occurrence of 'perl' with 'PERL'  
# my $text = 'perl is good, perl is better, perl is best';  
# print "\n INPUT Text:", $text;  
  
# my $nth_occurrence = 3;  
# my $count = 0;  
  
# $text =~ s{(perl)}{ ++$count == $nth_occurrence ? 'PERL' : $1 }ige;  
  
# print "\n OUTPUT Text:", $text,"\n"; 
#----------------------------------------------------------------------------------------------------------------------------------------------------



# # ' tr ' or ' y '
# # Removing the duplicate characters from the string:
# # view plainprint?
# #! /usr/bin/perl  
  
# #Removing the duplicate characters ('c' , 'd') but not ('e') from the string  
# my $val = 'abcccdddddeeeeeeeeeeeeeccccccccc';  
# print "\n Given String:", $val;  
  
# $val =~ y/cd//s; # 'y' is nothing but 'tr'  
	# print "\nAfter :$val\n";  
	  
	# 1;  

# Output :	
# Given String:abcccdddddeeeeeeeeeeeeecccccc
# After :abcdeeeeeeeeeeeeec

#----------------------------------------------------------------------------------------------------------------------------------------------------
  
# #unique elements from different arrays  
# my @array1 = (10,20,30);  
# my @array2 = (11,22,33);  
# my @array3 = (10,20,30);  
	# my %uniq_arr;  
	  
	# for my $each (@array2, @array3, @array1) {  
	# $uniq_arr{$each}++;  
	# }  
	# print "\n", $_ for (keys %uniq_arr),"\n";  
	   
	# 1;  

#----------------------------------------------------------------------------------------------------------------------------------------------------

# # # Description:	This short script displays the prime numbers found in a range given by the user.
# # # How it works: The user inputs the range $o to $e. A for command checks every number from $o to $e. For each number that evenly goest into the tested number ( if($i % $j==0) ), the script adds the factor ($j) into an array (@prime) at the $p position. $p starts at zero, and increases by 1 with every factor placed in @prime. If the second position of @prime is equal to the tested number, the tested number is prime.
# # # #! Perl

# print "Find primes from: ";
# $o = <>;
# print "to: ";
# $e = <>;

# for($i=$o; $i<=$e; $i++){
# $p=0;
    # for($j=1; $j<=$i; $j++){
        # if($i % $j==0){

            # $prime_[$p] = "$j";
            # $p++;
        # }
        # if ($prime_[1] == $i){
            # print "$i is prime";
            # print "\n";
        # }
    # }

# }


# # ---------------------------------------------------------------------------------------------------------------------------------------------------

# #Program to convert from dec to binary

# print "Enter a number to convert: ";

# chomp(my $decimal = <STDIN>);

# print "\nConverting $decimal to binary...\n";
# my @array;
# my $num;
# while($decimal >= 1)
# {
# if($decimal == 1) {
    # $num .= 1;
    # last;
# }

# my $remainder = $decimal%2;
# $num .= $remainder;
# $decimal = $decimal/2;
# }

# print $num."\n";
# $revnum = reverse($num);
# print $revnum."\n";
# # #Simple for loop to print 1 - 10
# # for ($count = 1; $count < 11; $count++) {
# # print "$count \n";

 # # }

# # ---------------------------------------------------------------------------------------------------------------------------------------------------
# # To search an IP in text file and change it to other IP.
# my $newIP = 20.20.20.20;
# my $string = "";
# open FH,"<D:\\Project\\Perl\\log.txt";
# open FHW,">D:\\Project\\Perl\\newlog.txt";
# while (<FH>) {
  # # print $_;
  
  
  
  # $_ =~ s/"10.10.10.10"/"20.20.20.20"/g;
  
  # print "$_";
  
  # print FHW $_;
  
  # # print "new line - $_ \n"
# }



# # print $line;

# close FH;
# close FHW;


 # my @arr11= sort values %count ;
# my $max= $arr11[$#arr11];
# foreach my $a (keys %count){
# if($count{$a} == $max){
# print "max key is",$a;
# }
# }


# open FH,"<D:\\Project\\Perl\\newlog.txt";
# $line  = <FH>;
# print $line;

# my $file = "D:\\Project\\Perl\\newlog.txt";
# my %count;
# my @count1 = undef;
# my $file = shift or die "Usage: $0 FILE\n";
# open my $fh, '<', $file or die "Could not open '$file' $!";
# while (my $line = <$fh>) {
    # chomp $line;
    # foreach my $str (split /\s+/, $line) {
        # $count{$str}++;
		# # print "word count ";
	# # print $str;
	# # print " " . $count{$str} . "\n";
	
    # }
	
# }
 # my @array;
# foreach my $str (sort keys %count) {
    # printf "%-31s %s\n", $str, $count{$str};
	# push (@array,$count{$str});
# }

# print "\n\n @array\n\n...";





# # foreach my $str (sort values %count) {
    # # # printf "%-31s %s\n", $str, $count{$str};
	
	# # @count1 = $str;
# # }
# @count1 = (sort values %count) ;

# print @count1;


# my $k;
# my $str= "hello";
# my @arr= split($str,"");
# for( $k=0; $k<=$#arr;$k++) {
# printf $arr[$k];
# }

# print "lenght of atul is - ";
# print length "atul";
# print "\n";



# my @testarray = (1,2,3,4,5);

# # print "My array with space - " . "@testarray" . "\n";
# # print "My array without space - \n";
# # print @testarray;

# # print $#testarray;

# unshift(@testarray , 0);


# print "new array - " . "@testarray";
# my $firstvalue = shift @testarray;
# print "\n new first value  - " . "$firstvalue";
# my $secvalue = shift @testarray;
# print "\nnew 2 value  - " . "$secvalue";

# print "\nnew array - " . "@testarray";

# # Get the Path of current working directory
# my $dir = getcwd;

# print "dir - $dir\n";

# my $filepath = 'D:\Project\Status\Moderation Meeting\ModerationMeeting1709.txt';

# my $file = abs_path($filepath);
# print "\nfile - $file";
# $a = "testset";
# while(length $a > 1)
# {
   # $a =~ /(.)(.*)(.)/;
   # die "Not a palindrome: $a" unless $1 eq $3;
   # $a = $2;
# }
# print "Palindrome";
# # use Time::Piece;
# # use Time::Seconds;
# # use DateTime;
# # my $day_of_year = undef;

# # my @names = ("Foo", "Bar", "Baz");  
# # my $first = shift @names;    # Shift - removes element at the start of the array  
  
# # print "$first\n";              # Foo  
# # print "@names\n";              # Bar Baz  
  
# # unshift @names, "Moo";            # UnShift - adds element at the start of the array  
# # print "@names\n";              # Moo Bar Baz  




# print "\n" ."-" x 100 . "\n";
# print "File name ". __FILE__ . "\n";
# print "Line Number " . __LINE__ ."\n";
# print "Package " . __PACKAGE__ ."\n";

# my @unsorted = qw(1 4 3 9 8);
# print "unsorted @unsorted\n";
# my $size = @unsorted;
# print "size of array - $size";
# # open "status.txt" or die "not ble to open";
# my @sorted = sort {$a <=> $b} @unsorted;
# print "\nsorted @sorted" or die "not able to print";

# my $last = pop @sorted;

# print "\nlast - $last";
# my $seclast = pop @sorted;

# print "\n2nd last - $seclast";
# # my @array = qw(atul jain class);

# # print "@array";

# # my $a=9;  
# # print "Before Reverse:\n", (1..$a);  
# # print "\nAfter Reverse:\n", reverse (1..$a);  



# # @array = (20, 3, 1, 9, 100, 88, 75);  
# # my @new_array = (map { $_*2; } @array);  
# # print join(",", @new_array), "\n";  



# # $str = "2-5,3-9,1-2,8-1,4-7,5-9,20-3,16-9";  
# # @array=split(/,/, $str);  
# # my @a1= (map  
    # # {  
	        # # ($left,$right)=split(/-/,$_);  
	        # # $left*$right;  
	    # # }  
	# # @array  
	# # );  
	# # print join(",",@a1),"\n";  


# # my $str="10 20 30";  
# # my ($a,$b,$c) = split(/ /,$str);  
# # print $a,$b,$c,"\n";  


# # my @input = (  
        # # "Hello World!",  
        # # "You is all I need.",  
        # # "To be or not to be",  
        # # "There's more than one way to do it.",  
	        # # "Absolutely Fabulous",  
	        # # "Ci vis pacem, para belum",  
	        # # "Give me liberty or give me death.",  
	        # # "Linux - Because software problems should not cost money",  
	# # );  
	  
	  
	# # # Do a case-insensitive sort  
	# # my @sorted = (sort { lc($a) cmp lc($b); } @input);  
	# # print join("\n", @sorted), "\n";  


# # print "\n", $_ for (1..10);  

# # foreach my $file (<jun*.log>) {    
    # # # print "File to check for delete - $file\n";
    # # print "TimeStamp of file : ". -M $file;
	# # print "\n";
	# # if ( -M $file > 7 ) {
        # # print "\n Deleting the log file more than 7 days old: " . $file; 
        # # unlink $file; #or die "\nFailed to remove $file: $!";
    # # }
# # }

# # print "\n\n";



# # $a = "abcdefghij\n";  
# # chomp($a);  
# # print "chopm output - $a";  #would return 'abcdefghij', removed special newline char '\n'  
# # print "\n\n";
  
# # $a = "abcdefghij\n";  
# # $b = chomp($a);  
# # print "chomp return output - $b";  #would return 1, it did remove something for sure  



# # @myNames = ('Larry', 'Curly');  
# # push(@myNames, 'Moe');     #It adds 'Moe' at the end of the array  
# # print "@myNames\n";   


# # @myNames = ('Larry', 'Curly', 'Moe');  
# # $oneName = pop(@myNames); #It removes 'Moe' from the end of the array  
  
# # print "$oneName\n"; 

# # my $str = "this is in between PrashantBangalore 40 ruby and ruble and ruby";

# # $string = 'the cat sat on the sat bzll mat.';
# # $string =~ tr/a-z/b/d;

# # print "abc. $string .abc\n";

# # my $b = "8*5";
# # if ($str =~ /8*5/o/) {
# # print "with b ";
# # }


# # my $a = "rub((?:le|y))";

# # if ($str =~ /$a(?#this is comment)/) {
# # print "with b $& ";
# # }


# # my $a = "atud\n";
# # my $chompvar;
# # my $string = "thisshouldbe18digit";
# # my $abc = chomp ($a);
# # print "enter value for chmop - \n";

# # chomp ($chompvar = <STDIN>);
# # print "abc this is chomp will return number of character trim - $abc \n";
# # print "chompvar this is chomp will return number of character trim - $chompvar \n";

# # my $str = chop ($a);
# # print "enter value for chop - \n";
# # chop ($chompvar = <STDIN>);
# # print "chopvar this is chomp will return number of character trim - $chompvar \n";

# # print "str this is chop will return last character - $str \n";



# # my @str = split(//, $string);

# # my $leng = $#str;

# # print "string length is $leng \n \n";

# # # # my $d = undef;
# # # # my $t = localtime;
# # # # # $t += ONE_DAY * 14;
# # # # print $t->strftime('%Y %m %d %X');
# # # # $day = $t->strftime('%d');
# # # # print "\ntoday day is $day";


# # # # # Calculate numeric value of today and the 
# # # # # target day (Monday = 1, Sunday = 7); the
# # # # # target, in this case, is Monday, since that's
# # # # # when I want the week to start
# # # # my $today_dt = DateTime->now;
# # # # my $today = $today_dt->day_of_week;
# # # # # my $target = 1;
# # # # print "\ntoday day is $today";

# # # # my @date = split(" ", localtime(time));
# # # # my $day = $date[0]; 
# # # # my %days = ();
# # # # %days = ("Mon", "Monday", "Tue", "Tuesday", "Wed", "Wednesday", "Thur", "Thursday", "Fri", "Friday", "Sat", "Saturday", "Sun", "Sunday");
# # # # print STDERR "Today is $days{$day}\n";
# # # # print STDERR "Today is $day\n";
# # # # $day_of_year = (localtime(time()))[7];
# # # # print STDERR "Today is $day_of_year day of year\n";

# # # # sub to12h {
 # # # # local $_=shift;
 # # # # return (12, "PM") if $_==0;
 # # # # return ($_, "AM") if $_<=12;
 # # # # return ($_-12, "PM") 
# # # # }

# # # # our $hour = join " ", to12h(0), "\n";
# # # # print $hour;
# # # # our $ampm = undef;
# # # our $starttime = undef;
# # # our $endtime = undef;
# # # our $ampmend = undef;


		# # # # if($hour =~ m|(\d+)\s(\w+)|s) {
		 # # # # ($hour, $ampm) = ($1, $2);
		# # # # };
		
		# # # # print "hour - $hour, ampm - $ampm\n";
		
		# # # # if ($hour == 12) {
		# # # # print "Coming inside if , hour is $hour\n";
		# # # # $starttime = $hour - 1;
		# # # # $endtime = 1;
		# # # # # print ("Starttime - $starttime:00,\n endtime - $endtime:00");
		# # # # if ($ampm eq "AM") {
		 # # # # $ampmend = "PM";
			# # # # } else {
			 # # # # $ampmend = "AM";
			# # # # }
		# # # # } else {
		 # # # # $starttime = $hour - 1;
		 # # # # $endtime = $hour + 1;
		 # # # # $ampmend = $ampm;
		# # # # };
		# # # # print ("Starttime - $starttime:00$ampm,\n endtime - $endtime:00$ampmend");

# # # # # for (0..23) {
  # # # # # print join " ", to12h($_), "\n";
# # # # # }

# # # # our $k = undef;
# # # # sub dayofyear {
	
    # # # # my  ($day1,$month1,$year1)=@_;
       # # # # my(@d_in_m)=(0,31,28,31,30,31,30,31,31,30,31,30,31);
      # # # # $d_in_m[2]=29 if (&leap($year1));
             # # # # for(my $i=1;$i<$month1;$i++) {
              # # # # $k += $d_in_m[$i];
             # # # # }
             # # # # $k += $day1;
      # # # # return $k;
# # # # }
# # # # sub leap {
# # # # my  $y = shift;
   # # # # return 0 unless $y % 4 == 0;
   # # # # return 1 unless $y % 100 == 0;
   # # # # return 0 unless $y % 400 == 0;
   # # # # return 1;
# # # # }

# # # # $day_of_year = dayofyear(31,12,2014);
# # # # print "day_of_year - $day_of_year";

# # # # my $month = "09";

	 	# # # # if ($month =~ /0[0-9]/) {
		# # # # my @arr = split("",$month);

		# # # # print("\n0=>$arr[0]");
		# # # # $month = $arr[1];
		# # # # }
		
		# # # # print "month - $month";
		
# my $data  = `type D:\\Project\\Perl\\log.txt`;	
# open FH, ">D:\\Project\\Perl\\newlog.txt" or die $!;	
# print FH $data;
# print "\n";
# print $data;
# print "\n";
# close $FH;
# my %datetime = (
          # "status" => "0",
          # "value" => "12:17:49 PM'"

        # );	
		
		# print "\ndate time - \n";
		# print %datetime;
		# print "\n";
		# print Dumper %datetime;
		
		# # # # my $hour = undef;
		# # # # my $ampm = undef;
# # # # print "time - $datetime{value}";	

# # # # if($datetime{value} =~ /(\d+):\d+:\d+\s(\w+)/) { $hour = $1; $ampm = $2 }
		
		# # # # print("hour - $hour , ampm - $ampm");
		# # # # if($datetime{value} =~ m|(\w+)|s) {
		# # # # my	$DayF = $1;
		# # # # }	
		
		
	# # # # my $hour = 1;
# # # # my $ampm = "AM";	
		
		# # # # if ($hour == 12 && $ampm eq "AM") {
		# # # # print("Coming inside if , hour is $hour\n");
		# # # # $starttime = $hour;
		# # # # $endtime = 2;
		# # # # $ampmend = "AM";
		# # # # }
		# # # # elsif ($hour == 12 && $ampm eq "PM") {
		# # # # $starttime = $hour - 1;
		# # # # $endtime = 1;
		# # # # if ($ampm eq "AM") {
		 # # # # $ampmend = "PM";
			# # # # } else {
			 # # # # $ampmend = "AM";
			# # # # }
		# # # # } elsif ($hour == 1) {
		 # # # # $starttime = $hour ;
		 # # # # $endtime = $hour + 2;
		 # # # # $ampmend = $ampm;
		# # # # } elsif ($hour == 2) {
		 # # # # $starttime = $hour -1;
		 # # # # $endtime = $hour + 2;
		 # # # # $ampmend = $ampm;
		# # # # } elsif ($hour == 11) {
		 # # # # $starttime = $hour - 2;
		 # # # # $endtime = $hour + 1;
		 # # # # $ampmend = $ampm;
		# # # # } else {
		 # # # # $starttime = $hour -2;
		 # # # # $endtime = $hour + 2;
		 # # # # $ampmend = $ampm;
		# # # # };		
		
# # # # print "starttime - $starttime, endtime - $endtime ,ampm - $ampm,  ampmend - $ampmend  "		



# # # my $filename = 'D:\Project\Perl\test4.pl';
# # # our $count = undef;
# # # for ($count = 0; $count < 3; $count++) {
# # # print "Checking for file again! \n";
# # # if (-e $filename) {
 # # # print "File Exists!";
# # # last;
 # # # } else {
 # # # print "File doest not Exists!\n";
 # # # sleep 1;
  # # # print "$count inside loop \n";
 
 # # # } 
 # # # }
 
 # # # print $count;
# # # if ($count == 3) {
# # # print "File is not saved";
# # # }
 # # my $LogFileHash = "AuthAccept nete1 \[13/Mar/2014:16:02:19 -0800\] \"10.64.55.38 uid=u0001,dc=neteauto,dc=com\" \"iveall GET /nete/\"";
 # # my $Serverlog = undef;
# # my $SMServerLog = "AuthAccept.*10.64.55.38.*u0001.*iveall";
 
 # # if($LogFileHash =~ /$SMServerLog/) {
	 # # print("$SMServerLog found in Server log file");
	# # } else {
	# # print("FAILED to get $SMServerLog in Server Log file");
	 # # $Serverlog = 1;
        # # } 
 
 