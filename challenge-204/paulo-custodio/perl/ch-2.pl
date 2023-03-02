#!/usr/bin/perl

# Challenge 204
# 
# Task 2: Reshape Matrix
# Submitted by: Mohammad S Anwar
# 
# You are given a matrix (m x n) and two integers (r) and (c).
# 
# Write a script to reshape the given matrix in form (r x c) with the original value in the given matrix. If you can’t reshape print 0.
# 
# Example 1
# 
# Input: [ 1 2 ]
#        [ 3 4 ]
# 
#        $matrix = [ [ 1, 2 ], [ 3, 4 ] ]
#        $r = 1
#        $c = 4
# 
# Output: [ 1 2 3 4 ]
# 
# Example 2
# 
# Input: [ 1 2 3 ]
#        [ 4 5 6 ]
# 
#        $matrix = [ [ 1, 2, 3 ] , [ 4, 5, 6 ] ]
#        $r = 3
#        $c = 2
# 
# Output: [ [ 1, 2 ], [ 3, 4 ], [ 5, 6 ] ]
# 
#         [ 1 2 ]
#         [ 3 4 ]
#         [ 5 6 ]
# 
# Example 3
# 
# Input: [ 1 2 ]
# 
#        $matrix = [ [ 1, 2 ] ]
#        $r = 3
#        $c = 2
# 
# Output: 0

use Modern::Perl;

my @list;
my($r, $c);
while (<>) {
	if (s/[\[\]]//g) {
		push @list, split(' ', $_);
	}
	else {
		($r, $c) = split(' ', $_);
		last;
	}
}
if ($r*$c == @list) {
	for (1..$r) {
		print "[ ";
		for (1..$c) {
			print shift(@list), " ";
		}
		print "]\n";
	}
}
else {
	print 0;
}
