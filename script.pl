#!/usr/bin/perl 
die "Required arguments not found\n" unless @ARGV == 2;
my $file = $ARGV[0];
my $site_name = $ARGV[1];

open FH, "<$file" or die "can't open $file. $! \n";

my ($name, $location, $mapref, $type, $description)
