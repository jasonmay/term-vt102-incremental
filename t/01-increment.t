#!/usr/bin/env perl
use strict;
use warnings;
use Test::More tests => 1;

use Term::VT102::Incremental;

my $vti = Term::VT102::Incremental->new;

$vti->get_increment();
$vti->process('foo');

is_deeply(
    $vti->get_increment(),
    [
        [0, 0, {v => 'f'}],
        [0, 1, {v => 'o'}],
        [0, 2, {v => 'o'}],
    ]
);

