use Test::Most;

use UserAgent::UeberAgent;

my $ua
    = 'Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/534.6 (KHTML, like Gecko) Chrome/6.0.495.0 Safari/534.6';

my $ueber = UserAgent::UeberAgent->new( raw => $ua );
ok( $ueber, "creates object" );

done_testing();
