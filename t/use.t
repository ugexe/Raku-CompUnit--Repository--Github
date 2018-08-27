use v6;
use Test;
plan 2;

use CompUnit::Repository::Github;
use lib "CompUnit::Repository::Github#user<ugexe>#repo<zef>#branch<master>#/";


subtest {
    {
        dies-ok { ::("Zef") };
    }
    {
        use-ok("Zef"), 'module use-d ok';
    }
}, 'require module with no external dependencies';

subtest {
    {
        dies-ok { ::("Zef::Build") };
    }
    {
        use-ok("Zef::Build"), 'module use-d ok';
    }
}, 'require modules with external dependency chain';

done-testing;
