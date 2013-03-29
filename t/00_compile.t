use strict;
use warnings;
use utf8;
use Test::More;

use_ok $_ for qw(
    CasualApp
    CasualApp::Web
    CasualApp::Web::ViewFunctions
    CasualApp::Web::Dispatcher
);

done_testing;
