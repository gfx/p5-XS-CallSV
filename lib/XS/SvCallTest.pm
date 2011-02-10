package XS::SvCallTest;
use 5.008_001;
use strict;
use warnings;

our $VERSION = '0.01';

use XSLoader;
XSLoader::load(__PACKAGE__, $VERSION);

use parent qw(Exporter);
our @EXPORT = qw(call_sv empty_xs return2_xs);

1;
__END__

=head1 NAME

XS::SvCallTest - Perl extention to do something

=head1 VERSION

This document describes XS::SvCallTest version 0.01.

=head1 SYNOPSIS

    use XS::SvCallTest;

=head1 DESCRIPTION

# TODO

=head1 INTERFACE

# TODO

=head1 DEPENDENCIES

Perl 5.8.1 or later.

=head1 BUGS

All complex software has bugs lurking in it, and this module is no
exception. If you find a bug please either email me, or add the bug
to cpan-RT.

=head1 SEE ALSO

L<Dist::Maker::Template::XS>

=head1 AUTHOR

Fuji, Goro (gfx) E<lt>gfuji@cpan.orgE<gt>

=head1 LICENSE AND COPYRIGHT

Copyright (c) 2011, Fuji, Goro (gfx). All rights reserved.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
