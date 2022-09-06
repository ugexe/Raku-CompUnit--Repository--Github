## CompUnit::Repository::Github

Load modules directly from the Github API over http. Fuck it.

## Synopsis

    BEGIN %*ENV<GITHUB_ACCESS_TOKEN> = "..."; # optional, but useful due to api rate limiting

    use CompUnit::Repository::Github;
    use lib "CompUnit::Repository::Github#user<ugexe>#repo<Raku-PathTools>#branch<main>#/";

    require ::("PathTools") <&ls>;
    say &ls($*CWD);

See: [tests](https://github.com/ugexe/Raku-CompUnit--Repository--Github/blob/main/t)
