package UserAgent::UeberAgent::Browser;

use Moo;
use MooX::Types::MooseLike::Base qw(Str);

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


1;
