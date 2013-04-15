use Test::Most;

use UserAgent::UeberAgent::Browser;

my $browser = UserAgent::UeberAgent::Browser->new();

ok( $browser, "creates object" );

done_testing();
