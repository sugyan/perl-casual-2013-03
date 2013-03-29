use File::Spec;
use File::Basename qw(dirname);
my $basedir = File::Spec->rel2abs(File::Spec->catdir(dirname(__FILE__), '..'));
my $dbpath = File::Spec->catfile($basedir, 'db', 'development.db');
+{
    'DBI' => [
        "dbi:SQLite:dbname=$dbpath", '', '',
        +{
            sqlite_unicode => 1,
        }
    ],
    Auth => {
        Github => {
            client_id => '37748c88750cefa545d0',
            client_secret => '2c677768fbcb7fa160cc0e205873f4cb1165ab21',
        }
    }
};
