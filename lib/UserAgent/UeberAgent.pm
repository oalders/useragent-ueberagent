use strict;
use warnings;

package UserAgent::UeberAgent;

use Moo;
use MooX::Types::MooseLike::Base qw(Str);
use Safe::Isa;

has browser => (
    is  => 'ro',
    isa => sub {
        my $class = __PACKAGE__ . '::Browser';
        die "$class object expected" if !$_[0]->$_isa( $class );
    },
);

has os => (
    is  => 'ro',
    isa => sub {
        my $class = __PACKAGE__ . '::OS';
        die "$class object expected" if !$_[0]->$_isa( $class );
    },
);

has raw => (
    is       => 'ro',
    isa      => Str,
    required => 1,
);

1;
