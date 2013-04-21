use Test::Most;

use UserAgent::UeberAgent::OS;

my $browser = UserAgent::UeberAgent::OS->new( raw => 'foo' );

ok( $browser, "creates object" );

done_testing();
