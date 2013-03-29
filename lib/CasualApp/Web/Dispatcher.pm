package CasualApp::Web::Dispatcher;
use strict;
use warnings;
use utf8;
use Amon2::Web::Dispatcher::Lite;

any '/' => sub {
    my ($c) = @_;
    my $entries = $c->dbh->selectall_arrayref(
        'SELECT * FROM entry',
        { Slice => {} },
    );
    return $c->render('index.tt', { entries => $entries });
};

get '/account/logout' => sub {
    my ($c) = @_;
    $c->session->expire();
    return $c->redirect('/');
};

post '/post' => sub {
    my ($c) = @_;
    my $body = $c->req->param('body');
    $c->dbh->do(
        'INSERT INTO entry (user_name, body) values (?, ?)',
        undef,
        $c->session->get('name'), $body,
    );
    $c->redirect('/');
};

1;
