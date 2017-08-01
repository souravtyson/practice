#!/usr/bin/perl

use 5.18.0;
use warnings;

my $fileName = "linesfile.txt";

# scalar, array and hash - perl has three data types

open(FH, $fileName);
my @lines = <FH>;
close(FH);

my $count = scalar @lines;

# say "there are $count lines in $fileName";
say "there are ". $count ." lines in ".$fileName;