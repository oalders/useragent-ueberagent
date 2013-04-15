package UserAgent::UeberAgent::OS;

use Moo;
use MooX::Types::MooseLike::Base qw(Bool Int Maybe Str);

has bits => (
    is            => 'ro',
    isa           => Maybe[Int],
    documentation => 'Returns 32, 64 or undef',
);

has name => (
    is            => 'ro',
    isa           => Str,
    documentation => 'ie OSX, Win95, etc',
);

has string => (
    is            => 'ro',
    isa           => Str,
    documentation => 'Human readable string: Windows 95, Mac OS X, etc',
);

has vendor => (
    is            => 'ro',
    isa           => Str,
    documentation => 'RedHat, Microsoft, Canonical, etc',
);

has is_linux => (
    is  => 'ro',
    isa => Bool,
);

has is_unix => (
    is  => 'ro',
    isa => Bool,
);

has is_nix => (
    is      => 'ro',
    isa     => Bool,
    lazy    => 1,
    builder => '_build_nix',
);

has raw => (
    is            => 'ro',
    isa           => Str,
    required      => 1,
    documentation => 'Raw string required for parsing',
);

sub _build_is_nix {
    my $self = shift;
    return $self->is_linux || $self->is_unix;
}

1;
