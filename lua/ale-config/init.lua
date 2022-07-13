
vim.cmd [[
  "    let g:ale_disable_lsp = 1
      let g:ale_set_highlights = 1
      highlight ALEWarning ctermbg=DarkMagenta
      let g:ale_elixir_elixir_ls_release='/Users/ebed/workspaces/utils/elixir-ls/release'

      let g:ale_ruby_rubocop_executable = 'rubocop'
      let g:ale_linters = {
            \   '*': ['remove_trailing_lines', 'trim_whitespace'],
            \   'ruby': ['rubocop','solargraph','ruby'],
            \   'elixir': ['dialyxir','elixir-ls','mix'],
            \   'pug': ['pug-lint'],
            \   'handlebars': ['ember-template-lint', 'html-beautify', 'prettier', 'remove_trailing_lines', 'trim_whitespace'],
            \   'python': ['flake8', 'pylint'],
            \   'javascript': ['prettier', 'eslint'],
            \   'typescript': ['prettier', 'eslint'],
            \   'json': ['prettier'],
            \   'sql': ['pgformatter'],
            \   'yaml': ['yamlfix', 'yamllint'],
            \   'erb': ['erb'],
            \   'html': ['prettier'] }
      let g:ale_typescript_tsserver_executable = 'tsserver'
      let js_fixers =['prettier', 'eslint']
      let g:ale_fixers = {
            \   '*': ['remove_trailing_lines', 'trim_whitespace'],
            \   'css': ['prettier'], 'javascript': js_fixers,  'typescript': js_fixers, 'json': ['prettier'],
            \   'html': ['prettier'],
            \   'elixir': ['mix_format'],
            \   'handlebars': ['html-beautify', 'prettier', 'remove_trailing_lines', 'trim_whitespace'],
            \   'pug': ['pug-lint'],
            \   'sql': ['pgformatter'],
            \   'yaml': ['yamlfix'],
            \   'ruby': ['rubocop','prettier'],
            \   'erb': ['erb'] }
      "     'ruby': ['rubocop'], 'javascript': js_fixers,  'typescript': js_fixers, 'json': ['prettier'], 'erb': ['erb'],

      let g:ale_hover_cursor = 1
    "  let g:ale_set_balloons = 1

let g:ruby_rubocop_options = "--config .rubocop.yml"

augroup ale_hover_cursor
   autocmd!
   autocmd CursorHold * ALEHover
 augroup END

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction


augroup mygroup
autocmd!
autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

set background=dark mouse=a termguicolors nowrap number relativenumber
set mousefocus lazyredraw noshowmode splitright showcmd smartindent
set termguicolors nowrap autoread inccommand=nosplit t_Co=25d
set clipboard+=unnamedplus

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
au BufWinEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/
au BufWinLeave * call clearmatches()

set relativenumber number
au Filetype NERDTree setlocal norelativenumber nonumber
au Filetype coc-explorer setlocal norelativenumber nonumber
au BufEnter term://* set norelativenumber nonumber

au ColorScheme * hi Cursor ctermbg=243 guibg=787882
au ColorScheme * hi Normal guibg=NONE ctermbg=NONE
au ColorScheme * hi NonText guibg=NONE ctermbg=NONE
au ColorScheme * hi SignColumn guibg=NONE ctermbg=NONE
au ColorScheme * hi VertSplit guibg=NONE ctermbg=NONE
au ColorScheme * hi Split guibg=NONE ctermbg=NONE
au ColorScheme * hi ExtraWhitespace ctermbg=red guibg=red
au VimLeave * set guicursor=a:block-blinkon0
" au VimLeave * silent !echo -ne "\033]112\007"

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
au BufWinEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/
au BufWinLeave * call clearmatches()

au BufEnter *coc-explorer* set norelativenumber nonumber
au BufWinEnter *coc-explorer* call clearmatches()

let g:ale_floating_preview = 1
let g:ale_floating_window_border = []
let g:ale_hover_to_floating_preview = 1
let g:ale_detail_to_floating_preview = 1

      let g:ale_fix_on_save = 0
      let g:ale_completion_autoimport = 1

      let b:ale_warn_about_trailing_whitespace = 1
      " let g:ale_list_vertical = 1

let g:ale_open_list = 1
" Set this if you want to.
" This can be useful if you are combining ALE with
" some other plugin which sets quickfix errors, etc.
" let g:ale_keep_list_window_open = 1
  augroup CloseLoclistWindowGroup
    autocmd!
    autocmd QuitPre * if empty(&buftype) | lclose | endif
  augroup END

      let g:ale_sign_error = '**'

      let g:ale_sign_warning = '!!'
      let g:ale_floating_window_border = ['│', '─', '╭', '╮', '╯', '╰']

      let g:airline#extensions#ale#enabled = 1
      let g:ale_echo_msg_error_str = 'E'
      let g:ale_echo_msg_warning_str = 'W'
      let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
      let g:ale_linters_explicit = 1
      let g:ale_sign_column_always = 1
      let g:ale_set_highlights = 1

      let g:ale_python_pylint_options = '--load-plugins pylint_django'

]]

