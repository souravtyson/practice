#!/usr/bin/perl

use 5.18.0;
use warnings;
use IO::File;

my $fileName = "linesfile.txt";

my $fh = IO::File->new($fileName,"r");

if(! $fh){
    say "could not open $fileName";
    exit;
}

my $count = 0;
while($fh->getline){
   # say $fh->getline;
    $count++;
}

$fh->close
say "there are ". $count ." lines in ".$fileName;
