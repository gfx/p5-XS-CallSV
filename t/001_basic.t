#!perl -w
use strict;
use Test::More;

use B qw(/^G_/);
use XS::SvCallTest;

sub empty_pp { }
sub return_empty_pp { return }
sub return2_pp { return(10, 20) }

sub fatal { die }

note 'G_VOID';
is call_sv(\&empty_pp, G_VOID),          0;
is call_sv(\&return_empty_pp, G_VOID),   0;
is call_sv(\&return2_pp, G_VOID),        0;

is call_sv(\&empty_xs, G_VOID),          0;
is call_sv(\&return2_xs, G_VOID),        2;

note 'G_SCALAR';
is call_sv(\&empty_pp, G_SCALAR),        1;
is call_sv(\&return_empty_pp, G_SCALAR), 1;
is call_sv(\&return2_pp, G_SCALAR),      1;

is call_sv(\&empty_xs, G_SCALAR),        1;
is call_sv(\&return2_xs, G_SCALAR),      1;

note 'G_VOID | G_EVAL';
is call_sv(\&fatal, G_VOID | G_EVAL),    1;

note 'G_SCALAR | G_EVAL';
is call_sv(\&fatal, G_SCALAR | G_EVAL),  1;

done_testing;
