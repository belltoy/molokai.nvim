This is a modern Neovim colorscheme written in Lua. It is designed to be easy to read and visually appealing, with a focus on providing a comfortable coding experience.

```
molokai.nvim/
├── colors/
│   └── molokai.lua       # Vim colorscheme file that sets the colors for the editor
├── lua/
│   └── molokai/
│       ├── init.lua      # The main entry point for the colorscheme, responsible for loading the palette, groups, and plugin highlights
│       ├── palette.lua   # The color palette used by the colorscheme, defining the base colors and their variations
│       ├── groups.lua    # Defines the core highlight groups for the colorscheme, such as editor UI, TreeSitter, and LSP highlights
│       └── plugins.lua   # For the third-party plugin highlights, defining the colors for popular plugins like Telescope, NvimTree, and Lualine
├── doc/
│   └── molokai.txt       # Vim help documentation for the colorscheme
└── README.md
```

Supported plugins include:

- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [NeoTree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- [Bufferline](https://github.com/akinsho/bufferline.nvim)
- [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- [TodoComments](https://github.com/folke/todo-comments.nvim)
- [Aerial](https://github.com/stevearc/aerial.nvim)
- [blink.cmp](https://github.com/saghen/blink.cmp)
- [Snacks](https://github.com/folke/snacks.nvim)
- [vim-illuminate](https://github.com/RRethy/vim-illuminate)
