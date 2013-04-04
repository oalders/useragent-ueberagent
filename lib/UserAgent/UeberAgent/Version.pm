use strict;
use warnings;

package UserAgent::UeberAgent::Version;

use Moo;
use MooX::Types::MooseLike::Base qw(Int Str);

has product_name => (
    is       => 'ro',
    isa      => Str,
    required => 1,
);

has number => (
    is       => 'ro',
    isa      => Str,
    required => 1,
);

has major => (
    is  => 'ro',
    isa => Int,
);

1;

=pod

=head1 Description

This version object can be used for version numbers of browsers, operating
systems etc.  We will overload comparison operators so that versions can easily
be compared.

    if ( $ua1->browser->version <  $ua2->browser->version ) { ... }

=cut
