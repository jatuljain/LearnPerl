use strict;
use warnings;
use Time::Piece ();
use Time::Seconds;

### Ask for IP address
print "Enter an IP address to lookup: ";
my $ipAddress = <STDIN>; # I moved chomp to a new line to make it more readable
chomp $ipAddress; # Get rid of newline character at the end

###Ask for number of days
print "Enter no. of days: ";
my $numdays = <STDIN>; chomp $numdays;

my $dt = Time::Piece->strptime( $sdate, '%Y-%m-%d');
$dt += ONE_DAY * $numdays;
my $edate = $dt->strftime('%Y-%m-%d');

if ($numdays == 1){
			my $result = `grep -R -E '$ipAddress' $LogDir | grep -E '$sdate'`;
                        
			
			if ($result){
				print $result;
			}else{
				print "No result found from $sdate. Please try changing your IP address/start date and try again.\n"; 
				}
		}
		elsif($numdays > 1){
			my $result = `grep -R -E '$ipAddress' $LogDir | sed -n '/$sdate/,/$edate/{/$edate/d; p}'`;
			if ($result){
			print $result;
			}else{
			print "No result found from $sdate. Please try changing your IP address/start date and try again.\n"; 
			}
		}