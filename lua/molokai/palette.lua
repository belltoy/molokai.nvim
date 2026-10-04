local M = {
  fg               = '#f8f8f2',
  white            = '#f8f8f0',
  black            = '#000000',
  red              = '#f92672',
  orange           = '#fd971f',
  yellow           = '#e6db74',
  green            = '#a6e22e',
  cyan             = '#66d9ef',
  purple           = '#ae81ff',
  comment          = '#7e8e91',
  original_comment = '#75715e',
  gray             = '#808080',
  dark             = '#1b1d1e',
  darker           = '#080808',
  panel            = '#232526',
  muted            = '#465457',
}

function M.get(original, transparent)
  local p = vim.deepcopy(M)
  p.get = nil
  p.bg           = transparent and 'NONE' or '#272822'
  p.comment      = original and M.original_comment or M.comment
  p.cursor_line  = original and '#3e3d32' or '#293739'
  p.color_column = original and '#3b3a32' or M.panel
  p.line_nr      = original and '#bcbcbc' or M.muted
  p.line_nr_bg   = transparent and 'NONE' or M.dark
  p.nontext      = original and M.original_comment or M.muted
  return p
end

return M
