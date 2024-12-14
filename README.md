# nvim treesitter crash reproduction

Steps:

1. Ensure tree-sitter-javascript is installed
2. Run `nvim -u init.lua test.js`
3. Scroll down the page

This only crashes on ARM machines (a Macbook Air M2 in particular). On x86_64
machines, the highlighting is broken but otherwise works, though it does crash
with a fuller config.

The level of nesting seems to greatly affect whether it crashes or not. With
less nesting, it doesn't crash. On the other hand, with more queries, less
nesting is required to crash.

Other things like doing a visual selection from an opening to a closing tag also
seems to crash it.

## Building tree-sitter-javascript

On distros without a package for tree-sitter-javascript, it should be simple
enough to build from source and then link `libtree-sitter-javascript.so` to
`rtp/parser/javascript.so`
