use strict;
use warnings;

package UserAgent::UeberAgent::Version;

use Moo;
with 'UserAgent::UeberAgent::Role::Version';

1;

=pod

=head1 Description

This version object can be used for version numbers of browsers, operating
systems etc.  We will overload comparison operators so that versions can easily
be compared.

    if ( $ua1->browser->version <  $ua2->browser->version ) { ... }

=cut
