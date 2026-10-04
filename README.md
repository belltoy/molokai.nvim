# molokai.nvim

A Neovim Lua port of Tomas Restrepo's [Molokai](https://github.com/tomasr/molokai), based on the Monokai theme. The default background is transparent, with upright comments and keywords.

Add this repository to your plugin manager and enable it with:

```lua
vim.cmd.colorscheme('molokai')
```

Configure the theme **before** loading it:

```lua
require('molokai').setup({
  transparent = false,      -- default: true; opaque background is #272822
  italic_comments = true,   -- default: false
  italic_keywords = true,   -- default: false
})
vim.cmd.colorscheme('molokai')
```

`original = true` selects the original palette (including its comment and UI colors) and defaults to an opaque background, as before. `transparent` can override its background independently. `vim.g.molokai_original = 1` is still supported if `original` was not passed to `setup()`.

The theme includes traditional Vim syntax, Tree-sitter and LSP highlights, plus optional highlight groups for Telescope, Neo-tree, NvimTree, Lualine-compatible statusline defaults, Bufferline, gitsigns, Todo Comments, Aerial, blink.cmp, Snacks, vim-illuminate, and related plugins. No plugin is required to load the theme.

The palette lives in `lua/molokai/palette.lua`; `lua/molokai/groups.lua` separates core UI/Vim syntax, Tree-sitter, and LSP/diagnostic groups, while `lua/molokai/plugins.lua` contains plugin-specific groups. `colors/molokai.lua` is the `:colorscheme` entrypoint.

This port retains the upstream MIT license and attribution in [LICENSE.md](LICENSE.md).
