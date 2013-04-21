use Test::Most;

use UserAgent::UeberAgent::Version;

my $version = UserAgent::UeberAgent::Version->new(
    id  => 'Chrome',
    raw => '6.0.495.0'
);

ok( $version, "creates object" );

done_testing();
