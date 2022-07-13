function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


map("n", "<Leader>c", ":Glow<CR>")

map("n", "<Leader>l", ":Limelight!!<CR>")
map("n", "<Leader>ll", "<Plug>(Limelight)")

map("n","<Leader>S", ":split<CR>")
map("n","<Leader>SS", ":vsplit<CR>")

map("n", "<Leader>q", ":q<CR>")
map("n", "<Leader>qq", ":q!<CR>")

map("n", "<Leader>s", ":w<CR>")
map("n", "<Leader>ss", ":w!<CR>")

map("n", "<Leader>x", ":x<CR>")
map("n", "<Leader>X", ":x!<CR>")

map("n", "cc", ":t .<CR>")

map("n", "<Leader>f", ":Telescope find_files<CR>")
map ("n","<Leader>ff",":Telescope live_grep<CR>")
map ("n","<Leader>fb", ":Telescope buffers<CR>")
map ("n","<Leader>th",":Telescope help_tags<CR>")

map("n", "<Leader>B",":buffers<CR>")
map("n", "<Leader>b",":bn<CR>")
map("n", "<Leader>bb",":bp<CR>")

map("n", "<Leader>ne","gt")
map("n", "<Leader>nm","gT")
map("n", "<Leader>n",":tabnew<CR>")

-- Vifm
map("n","<Leader>v",":Vifm<CR>")
map("n","<Leader>ve",":EditVifm<CR>")
map("n","<Leader>vs",":SplitVifm<CR>")
map("n","<Leader>vsv",":VsplitVifm<CR>")

map('n','<Leader>m',":Magit<CR>")


-- VIM
map("n","<Leader>gv", ":GV<CR>")
map("n","<Leader>gvv", ":GV!<CR>")
map("n","<Leader>gvg", ":GV?<CR>")


--vimtree
map('n', '<Leader>N', ':NvimTreeToggle<CR>')
map('n', '<Leader>NF', ':NvimTreeFocus<CR>')
map('n', '<Leader>Nf', ':NvimTreeFindFile<CR>')
map('n', '<Leader>NC', ':NvimTreeCollapse<CR>')

