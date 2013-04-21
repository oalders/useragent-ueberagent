use Test::Most;

use UserAgent::UeberAgent::Browser::Engine;

my $browser = UserAgent::UeberAgent::Browser::Engine->new();

ok( $browser, "creates object" );

done_testing();
