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

=pod

=head1 SYNOPSIS

my $raw
    = 'Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B348b Safari/531.21.10';

my $ua = UserAgent::UeberAgent->new( $raw );

say $ua->language;
say $ua->country;
say $ua->os->name;
say $ua->os->version;
say $ua->device->is_mobile;
say $ua->device->name;
say $ua->browser->name;
say $ua->browser->version;    # stringifies to 1.3.4 etc
say $ua->browser->version->major;
say $ua->browser->version->minor;
say $ua->browser->version->patch;
say $ua->browser->is_bot;
say $ua->browser->engine->name;
say $ua->browser->engine->version->major;

if ( $ua->browser->version >= $other_ua->browser->version ) {
    ...
}

=cut
