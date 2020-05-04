#!/usr/bin/env raku

my @list = (2, 3, 4);

my $sum;

for @list.combinations(2) -> ($n1, $n2) {
    $sum += f($n1, $n2);
}

say $sum;

sub f ($n1, $n2) {
    ($n1 +^ $n2).fmt("%0b").comb("1").elems;
}
