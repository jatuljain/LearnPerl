package PerlPractice;
# use strict;
# use warnings;
use feature qw(say);

print "\@INC is @INC\n";

# use Log::Log4perl qw(:easy);
# use lib 'e:/Perl';
# Log::Log4perl->easy_init($DEBUG);
 
# DEBUG "A low-level message";
# ERROR "Won't make it until level gets increased to ERROR";# ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
# mkdir testdir

# _LOGGING("Initialize");

# ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 

# my $i = "outside package";
# package foo;

# my $i =1;
# print "this is inside foo $i\n";

# 1;
# package boo;
# $i  =2;
# say "this is inside boo $i";

# 1;

# print "this is outside $i\n";

# print "this was not getting print $boo::$i\n";


# ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 

sub add {

# validate_parameters(@_);

my $total = 0; 

$total += $_ for (@_);

return $total;


}


# ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 

# my @checkarray = ["1", "2", "4"];
# if (@checkarray)
# {
# @checkarray =[];
# print "Array is not empty";
# if (@checkarray)
# {
# print "Array was not empty made it empty";

# }

# }
# else
# {
# print "Array is empty";
# }




# --------------------------------------------------------------------------------------------- 
# $firststring = "abcd";
 
# $secondstring = "efgh";
 
# $combine = "$firststring $secondstring";
 
# print "$combine\n";


# my $string="APerlAReplAFunction";
# my $counter = ($string =~ tr/A//);
# print "There are $counter As in the given string\n";
# print $string;

# --------------------------------------------------------------------------------------------- 
# $sum = 0;
# $count = 0;
# print "Enter number: ";
# $num = <>;
# chomp($num);
# while ($num >= 0)
# {
# $count++;
# $sum += $num;
# print "Enter another number: ";
# $num = <>;
# chomp($num);
# }
# print "$count numbers were entered\n";
# if ($count > 0)
# {
# print "The average is ",$sum/$count,"\n";
# }
# exit(0);

1;