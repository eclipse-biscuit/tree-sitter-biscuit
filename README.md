# Tree Sitter grammar for biscuit

This is a work in progress, but it is already used by the [biscuit online tooling](https://www.biscuitsec.org/docs/tooling/datalog-playground/)

## Current support

Tree-sitter biscuit supports [biscuit datalog v3.3](https://www.biscuitsec.org/blog/biscuit-3-3/).

## Known issues

Method calls are not parsed correctly (see [issue #3](https://github.com/eclipse-biscuit/tree-sitter-biscuit/issues/3)).

## How to use

### Helix

Add the following to `languages.toml` (make sure the commit id is up-to date)

```toml
[[language]]
name = "biscuit"
scope = "source.biscuit"
injection-regex = "(biscuit|authorizer|block|query)"
file-types = ["bcdl", "biscuit-datalog"]
comment-token = "//"
indent = { tab-width = 4, unit = "...."}
roots = []
language-servers = []

[language.auto-pairs]
'(' = ')'
'{' = '}'
'[' = ']'
'"' = '"'

[[grammar]]
name = "biscuit"
source = { git = "https://github.com/biscuit-auth/tree-sitter-biscuit", rev = "91923e75bc93142500349684baec30b9539bdc0b" }
```

Then, copy `queries/highlights.scm` and `queries/textobjects.scm` in `queries/biscuit/` within a helix runtime directory.
