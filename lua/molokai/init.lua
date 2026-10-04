local M = {}
local options = {}

-- setup configures the next :colorscheme molokai; load() also supports direct use.
function M.setup(opts)
  options = opts or {}
end

function set_telescope_input_bg()
  local original_cursorline = vim.api.nvim_get_hl(0, { name = 'CursorLine' })
  vim.api.nvim_create_autocmd("FileType", {
    pattern = "TelescopePrompt",
    callback = function()
      -- Save the original CursorLine highlight attributes if needed,
      -- or just redefine it for the prompt.
      vim.api.nvim_set_hl(0, "CursorLine", { bg = 'none' })
    end,
  })

  vim.api.nvim_create_autocmd("WinLeave", {
    callback = function()
      if vim.bo.filetype == "TelescopePrompt" then
        ---@diagnostic disable-next-line: param-type-mismatch
        vim.api.nvim_set_hl(0, "CursorLine", original_cursorline)
      end
    end,
  })
end

function M.load()
  local original = options.original
  if original == nil then
    original = vim.g.molokai_original == 1
  end
  local transparent = options.transparent
  if transparent == nil then
    transparent = not original
  end

  vim.o.background = 'dark'
  vim.cmd('highlight clear')
  vim.g.colors_name = 'molokai'

  local palette = require('molokai.palette').get(original, transparent)
  local groups_list = require('molokai.groups')(palette, options)
  table.insert(groups_list, require('molokai.plugins')(palette))
  for _, groups in ipairs(groups_list) do
    for name, definition in pairs(groups) do
      vim.api.nvim_set_hl(0, name, definition)
    end
  end

  set_telescope_input_bg()
end

return M
