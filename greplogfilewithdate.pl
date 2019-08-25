#!/usr/bin/perl
use warnings;
use strict;
use Cwd qw(abs_path);

use Cwd qw(abs_path);
use File::Find qw(find);

my $folder;
die "no directory provided " unless defined $ARGV[0];
die "no date provided " unless defined $ARGV[1];
my $path = abs_path $ARGV[0];
my $date = $ARGV[1];

print "$date\n";
search_all_folder($path);

sub search_all_folder {
    ($folder) = @_;
    if ( -d $folder ) {
        chdir $folder;
        opendir my $dh, $folder or die "can't open the directory: $!";
        while ( defined( my $file = readdir($dh) ) ) {
            chomp $file;
            next if $file eq '.' or $file eq '..';
			# print "Current folder is $folder\n";
            search_all_folder("$folder/$file");  ## recursive call
			# print "Going to read $file \n";
            read_files($file) if ( -f $file );
        }
        closedir $dh or die "can't close directory: $!";
    } 
}

sub read_files {
    my ($filename) = @_;

    open my $fh, '<', $filename or die "can't open file: $!";
    while (<$fh>) {
        # if ($_ =~ /\d{2}\/[a-zA-Z]{3}\/\d{4}/) {
        if ($_ =~ /$date/) {
		print "$folder \t $_, $/";
		}
    }
}

# [download]
# Hope this helps. 
# UPDATE:
# Like others have said before now, it will be half the work and a lot easiler to use module like File::Find like so:

# die "no directory provided " unless defined $ARGV[0];
# my $path = abs_path $ARGV[0];

# find( \&search_all_folder, $path );

# sub search_all_folder {
    # chomp $_;
    # return if $_ eq '.' or $_ eq '..';
    # read_files($_) if (-f);
# }

# sub read_files {
    # my ($filename) = @_;

    # open my $fh, '<', $filename or die "can't open file: $!";
    # while (<$fh>) {
        # print $_, $/;
    # }
# }