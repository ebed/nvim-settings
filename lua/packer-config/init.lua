local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use "lunarvim/darkplus.nvim"
  use {
    'hoob3rt/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use { 'ThePrimeagen/git-worktree.nvim' }
  use { 'stevearc/aerial.nvim' }
  use { 'mhartington/oceanic-next' }
  use { 'justinmk/vim-sneak' }
  -- Database
  use { 'tpope/vim-dadbod' }
  use { 'kristijanhusak/vim-dadbod-ui' }
-- use {
--   "folke/trouble.nvim",
--   requires = "kyazdani42/nvim-web-devicons",
--   config = function()
--     require("trouble").setup {
--       position = "bottom", -- position of the list can be: bottom, top, left, right
--       height = 10, -- height of the trouble list when position is top or bottom
--       width = 50, -- width of the list when position is left or right
--       icons = true, -- use devicons for filenames
--       mode = "workspace_diagnostics", -- "workspace_diagnostics", "document_diagnostics", "quickfix", "lsp_references", "loclist"
--       fold_open = "", -- icon used for open folds
--       fold_closed = "", -- icon used for closed folds
--       group = true, -- group results by file
--       padding = true, -- add an extra new line on top of the list
--       action_keys = { -- key mappings for actions in the trouble list
--           -- map to {} to remove a mapping, for example:
--           -- close = {},
--           close = "q", -- close the list
--           cancel = "<esc>", -- cancel the preview and get back to your last window / buffer / cursor
--           refresh = "r", -- manually refresh
--           jump = {"<cr>", "<tab>"}, -- jump to the diagnostic or open / close folds
--           open_split = { "<c-x>" }, -- open buffer in new split
--           open_vsplit = { "<c-v>" }, -- open buffer in new vsplit
--           open_tab = { "<c-t>" }, -- open buffer in new tab
--           jump_close = {"o"}, -- jump to the diagnostic and close the list
--           toggle_mode = "m", -- toggle between "workspace" and "document" diagnostics mode
--           toggle_preview = "P", -- toggle auto_preview
--           hover = "K", -- opens a small popup with the full multiline message
--           preview = "p", -- preview the diagnostic location
--           close_folds = {"zM", "zm"}, -- close all folds
--           open_folds = {"zR", "zr"}, -- open all folds
--           toggle_fold = {"zA", "za"}, -- toggle fold of current file
--           previous = "k", -- preview item
--           next = "j" -- next item
--       },
--       indent_lines = true, -- add an indent guide below the fold icons
--       auto_open = false, -- automatically open the list when you have diagnostics
--       auto_close = false, -- automatically close the list when you have no diagnostics
--       auto_preview = true, -- automatically preview the location of the diagnostic. <esc> to close preview and go back to last window
--       auto_fold = false, -- automatically fold a file trouble list at creation
--       auto_jump = {"lsp_definitions"}, -- for the given modes, automatically jump if there is only a single result
--       signs = {
--           -- icons / text used for a diagnostic
--           error = "",
--           warning = "",
--           hint = "",
--           information = "",
--           other = "﫠"
--       },
--       use_diagnostic_signs = false -- enabling this will use the signs defined in your lsp client
--        -- your configuration comes here
--         -- or leave it empty to use the default settings
--         -- refer to the configuration section below
--     }
--   end
-- }
  use { 'jose-elias-alvarez/null-ls.nvim' }
  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  use 'nvim-lua/plenary.nvim'
  use "nvim-lua/popup.nvim"
  use {
    "williamboman/nvim-lsp-installer",
    "neovim/nvim-lspconfig",
  }

  use { 'joshdick/onedark.vim' }
  use 'scrooloose/nerdtree'
  use 'xuyuanp/nerdtree-git-plugin'
  use 'PhilRunninger/nerdtree-visual-selection'
  use 'tiagofumo/vim-nerdtree-syntax-highlight'
  use 'jreybert/vimagit'

--    use { 'fannheyward/telescope-coc.nvim' }
    -- use 'vim-airline/vim-airline'
    -- use 'vim-airline/vim-airline-themes'
    use 'Yggdroot/indentLine'

  --  use { 'neoclide/coc.nvim', branch='release' }
    use { 'rcarriga/nvim-notify' }

    use { 'tpope/vim-rails', ft = "ruby" }
    use { 'vifm/vifm.vim' }

    use { 'junegunn/gv.vim' }
    use 'sirver/ultisnips'
    use 'honza/vim-snippets'
   -- use 'dense-analysis/ale'
    use 'sheerun/vim-polyglot'
    use {'hail2u/vim-css3-syntax' }
    use {'othree/html5.vim' }
    use 'ervandew/supertab'
    use 'Shougo/echodoc.vim'

    use 'ludovicchabant/vim-gutentags'

    use {'pangloss/vim-javascript' }
    use {'plasticboy/vim-markdown' }
    use 'ctrlpvim/ctrlp.vim'
    use 'haya14busa/incsearch.vim'
    use 'scrooloose/nerdcommenter'
    use 'tpope/vim-repeat'
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'
    use 'vim-ruby/vim-ruby'
    use 'mhinz/vim-mix-format'
    use 'elixir-editors/vim-elixir'
    use {'ellisonleao/glow.nvim', branch='main'}
    use 'nvim-telescope/telescope.nvim'
    use { 'nvim-telescope/telescope-fzy-native.nvim' }
    use 'famiu/bufdelete.nvim'
    use { 'nvim-treesitter/nvim-treesitter' }
    use 'norcalli/nvim-colorizer.lua'

    use "EdenEast/nightfox.nvim"

    use 'tpope/vim-sensible'

    use 'vijaymarupudi/nvim-fzf'

	-- Rust
	use 'rust-lang/rust.vim'
	use 'rhysd/rust-doc.vim'

	use {'autozimu/LanguageClient-neovim',
	branch = 'next',
	run = 'bash install.sh'}

	-- Arduino ()
	use 'stevearc/vim-arduino'

	-- Multi cursor
	use {'mg979/vim-visual-multi', branch = 'master'}

	-- Clap
	use 'liuchengxu/vim-clap'

	-- Close tags
	use 'alvan/vim-closetag'

    
	-- fzf
	-- use {'junegunn/fzf', dir = '~/.fzf', run = './install --all' }
	-- use {'junegunn/fzf.vim'}

	-- skim
	-- use {'lotabout/skim', dir = '~/.skim', run = './install' }
	-- use 'lotabout/skim.vim'

	-- GoYo
	use 'junegunn/goyo.vim'

	-- Easy Align
	use 'junegunn/vim-easy-align'

	-- Limelight
	use 'junegunn/limelight.vim'

	-- Auto pairs
	-- !! -> breaks visual-multi (multi-cursor)
	use 'jiangmiao/auto-pairs'

	-- Indentline
	use 'vim-scripts/indentLine.vim'

	-- Neoformat
	use 'sbdchd/neoformat'

	-- Commentary
	use 'tpope/vim-commentary'

	-- Easymotion
	use 'easymotion/vim-easymotion'

	-- Surround
	use 'tpope/vim-surround'

	-- Repeat

  use {'kyazdani42/nvim-tree.lua',  requires = {'kyazdani42/nvim-web-devicons',}, tag = 'nightly' }

  use {
  "NTBBloodbath/rest.nvim",
  requires = { "nvim-lua/plenary.nvim" },
  config = function()
    require("rest-nvim").setup({
      -- Open request results in a horizontal split
      result_split_horizontal = true,
      -- Keep the http file buffer above|left when split horizontal|vertical
      result_split_in_place = true,
      -- Skip SSL verification, useful for unknown certificates
      skip_ssl_verification = false,
      -- Highlight request on run
      highlight = {
        enabled = true,
        timeout = 150,
      },
      result = {
        -- toggle showing URL, HTTP info, headers at top the of result window
        show_url = true,
        show_http_info = true,
        show_headers = true,
      },
      -- Jump to request line on run
      jump_to_request = false,
      env_file = '.env',
      custom_dynamic_variables = {},
      yank_dry_run = true,
    })
  end
}
end)

     
