package UserAgent::UeberAgent::Device;

use Moo;
use MooX::Types::MooseLike::Base qw(Bool Str);

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

has is_handheld => (
    is  => 'ro',
    isa => Bool,
);

has is_tablet => (
    is  => 'ro',
    isa => Bool,
);

has is_phone => (
    is  => 'ro',
    isa => Bool,
);

has is_gaming_console => (
    is  => 'ro',
    isa => Bool,
);

1;
