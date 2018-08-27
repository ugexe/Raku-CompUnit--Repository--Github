use v6;
use Test;
plan 1;

use CompUnit::Repository::Github;
use lib "CompUnit::Repository::Github#user<ugexe>#repo<zef>#branch<master>#/";


subtest {
    {
        dies-ok { ::("Zef") };
        lives-ok { require ::("Zef") <&from-json> }, 'module require-d ok';
    }
    {
        # TODO: need a test module
        require ::("Zef::Utils::FileSystem") <&list-paths>;
        ok &list-paths($*CWD).elems;
    }
}, 'require module with no external dependencies';

done-testing;
