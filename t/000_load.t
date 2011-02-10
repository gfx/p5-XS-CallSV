#!perl -w
use strict;
use Test::More tests => 1;

BEGIN {
    use_ok 'XS::SvCallTest';
}

diag "Testing XS::SvCallTest/$XS::SvCallTest::VERSION";
