#!/usr/bin/perl

use 5.18.0;
use warnings;
use IO::File;


main(@ARGV);

sub main(){
    my $fileName = shift || "xlinesfile.txt";
    my $count = countlines($fileName);
    say "there are $count lines in $fileName";
}

sub countlines(){
    my $fileName = shift;
    error("countlines: missing filename") unless $fileName;

    my $fh = IO::File->new($fileName,"r") or 
            error("Cannot open $fileName ($!)\n");

    my $count = 0;
    $count++ while($fh->getline);
    $fh->close;

    return $count;
}

sub error(){
    my $e = shift||'unknown error';
    say "$0; $e";
    exit 0;
}