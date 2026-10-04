# Repository state

- This is a Neovim colorscheme scaffold, not yet the implementation described in `README.md`. The only tracked Lua file is the empty `lua/molokai/init.lua`; the README's `colors/`, palette, groups, plugins, and `doc/` files do not exist yet. Verify paths before following that layout.
- There are no manifests, CI workflows, tests, or documented build commands; do not assume a test runner. Lua formatting is configured in `.stylua.toml` (2 spaces, 120 columns, prefer single quotes).
- `.emmyrc.json` targets LuaJIT and adds `$VIMRUNTIME` plus `$HOME/.local/share/nvim/lazy` to the editor's workspace library; diagnostics may depend on those local Neovim paths.
