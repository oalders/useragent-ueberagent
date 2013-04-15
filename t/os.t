use Test::Most;

use UserAgent::UeberAgent::OS;

my $os = UserAgent::UeberAgent::OS->new(
    raw => 'Linux 2.6.32-24-generic x86_64' );

ok( $os, "creates object" );

done_testing();
