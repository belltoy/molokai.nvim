# Repository state

- `molokai.old` is a symlink to an external legacy Vim colorscheme. Do not edit it; the Lua port is loaded through `colors/molokai.lua` -> `lua/molokai/init.lua`, which applies `groups.lua` and `plugins.lua` using `palette.lua`.
- `setup({ transparent, italic_comments, italic_keywords, original })` must run before `:colorscheme molokai`. Defaults: transparent true, both italics false. For compatibility, `original = true` selects the original palette and defaults to opaque unless `transparent` is explicitly set; `vim.g.molokai_original = 1` is the fallback when `original` is unset.
- There are no manifests, CI workflows, or test runners. Check formatting with `stylua --check lua colors` and smoke-test with `nvim --headless --clean --cmd 'set rtp^=.' +'colorscheme molokai' +q` from the repository root.
- `.emmyrc.json` targets LuaJIT and adds `$VIMRUNTIME` plus `$HOME/.local/share/nvim/lazy` to the editor's workspace library; diagnostics may depend on those local Neovim paths.
