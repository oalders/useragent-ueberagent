use Test::Most;

use UserAgent::UeberAgent::Browser::Engine::Version;

my $version = UserAgent::UeberAgent::Browser::Engine::Version->new(
    id  => 'Chrome',
    raw => '6.0.495.0'
);

ok( $version, "creates object" );

done_testing();
