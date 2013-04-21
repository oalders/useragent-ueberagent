package UserAgent::UeberAgent::Role::Version;

use Moo::Role;
use MooX::Types::MooseLike::Base qw(Int Str);

has id => (
    is       => 'ro',
    isa      => Str,
    required => 1,
);

has raw => (
    is       => 'ro',
    isa      => Str,
    required => 1,
);

has major => (
    is  => 'ro',
    isa => Int,
);

has minor => (
    is  => 'ro',
    isa => Int,
);

has patch => (
    is  => 'ro',
    isa => Int,
);

1;
