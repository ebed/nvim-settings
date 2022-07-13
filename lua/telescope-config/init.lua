
require("telescope").setup({
  defaults = {
    file_ignore_patterns = { "^./.git/", "^node_modules/", "^vendor/" },
  },
  extensions = {
    coc = { theme = 'ivy' }
  },
})
-- require('telescope').load_extension('coc')

