vim.cmd [[
syntax on
set t_Co=256
try
  "" colorscheme onedark
  let g:oceanic_next_terminal_bold = 1
  let g:oceanic_next_terminal_italic = 1
  colorscheme OceanicNext
  set background=dark
catch /^Vim\%((\a\+)\)\=:E185
  colorscheme default
  set background=dark
endtry
]]


