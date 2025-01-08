# nvim-config
My personal Nvim configuration.


# Plugins

This config uses `Lazy` as a plugin manager.

## barbar

## colorscheme

## conform

## fileline

## gitsigns
[lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
This adds coloured lines at the left for uncommited changes.

## lsp

## lualine

## luasnip
Snippets are some kind of macros.
They are configured for specific file types.
For example in `.tex`-files one can type `table` followed by `<S-Tab>` to expand a full table setup.

[L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip) provides the framework but no snippets itself.
This config relies on [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets) for the implementation of many useful snippets.
To get a full list of available snippets, type `:LuaSnipListAvailable`.
It is also possible to add custom snippets, but this is not implemented yet here.

## telescope

## tree

## treesitter

## vimtex
[lervag/vimtex](https://github.com/lervag/vimtex)

### Requirements (macOS)
```console
brew install cask
brew install --cask mactex
brew install --cask skim
```

# Common problems
### Missing symbols
Install a font from [Nerd Fonts](https://www.nerdfonts.com/).
Maybe you need to change your terminal settings to use a different font for non-ASCII text.
In iTerm2 this would work like this:
```
Settings > Profiles > Text
[x] Use a different font for non-ASCII text
```

# Todo
- [ ] get CI running

# Setup guide and prerequisits
On macOS:
```console
brew install neovim node cask
brew install --cask mactex
brew install --cask skim
./install.sh
```

# How to use
Start with:
```console
nvim
```

`space + e` - open folder tree
`space + ff` - find files
`\ll` - toggle latex auto compilation
