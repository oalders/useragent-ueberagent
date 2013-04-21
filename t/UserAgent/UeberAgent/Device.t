use Test::Most;

use UserAgent::UeberAgent::Device;

my $device = UserAgent::UeberAgent::Device->new();

ok( $device, "creates object" );

done_testing();
