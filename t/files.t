use v6;
use Test;
plan 5;

use CompUnit::Repository::Github;
use lib "CompUnit::Repository::Github#user<ugexe>#repo<zef>#branch<master>#/";


subtest {
    ok  $*REPO.repo-chain[0].files("bin/zef");
    nok $*REPO.repo-chain[0].files("bin/xxx");
}, 'name-path only';

subtest {
    ok  $*REPO.repo-chain[0].files("bin/zef", name => "Zef");
    nok $*REPO.repo-chain[0].files("bin/zef", name => "xxx");
}, 'name-path and distribution name';

subtest {
    ok  $*REPO.repo-chain[0].files("bin/zef", auth => "github:ugexe");
    nok $*REPO.repo-chain[0].files("bin/zef", auth => "github:xxx");
}, 'name-path and distribution auth';

subtest {
    ok  $*REPO.repo-chain[0].files("bin/zef", ver => "*");
}, 'name-path and distribution ver';

subtest {
    ok  $*REPO.repo-chain[0].files("bin/zef", name => "Zef", auth => "github:ugexe", ver => "*");
    nok $*REPO.repo-chain[0].files("bin/xxx", name => "Zef", auth => "github:ugexe", ver => "*");
}, 'name-path and distribution name/auth/ver';

done-testing;
