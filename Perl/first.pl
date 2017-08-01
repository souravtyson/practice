#!/usr/bin/perl       # known as shebang line. It is mostly common in unix-based scripting language.

use 5.18.0;
use warnings;

print "Hello, world";
say "Hello, World";

say foreach ("hello", "world", 2, 3);

my @arr = (5,2,3,"gret");
say foreach @arr;