#!/usr/bin/perl
use strict;
use warnings;
use lib "e:/Perl";
use FileLogger;
 
FileLogger::open("logtest.log");
 
FileLogger::log(a,"This is a test message");
 
FileLogger::close();