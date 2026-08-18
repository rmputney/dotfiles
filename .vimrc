filetype plugin indent on

syntax on

set ruler
set number
set relativenumber
set laststatus=2
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set hidden
set hlsearch
set incsearch
" set autochdir
set sessionoptions=blank,buffers,curdir,folds,tabpages,winsize
" Key Options Explained
" blank: Saves empty windows and keeps your window layout intact, even if a window has no file loaded.
" buffers: Saves all files currently hidden in the background, not just the ones visible on your screen.
" curdir: Remembers your current working directory so relative file paths still work when you restore.
" folds: Manually created folds and your open/closed fold statuses are completely preserved.
"tabpages: Saves all open tabs and their respective window layouts, rather than just the active tab.
" winsize: Preserves the exact height and width of all your splits and windows.
" What is Left Out? By omitting options like options and globals, you prevent Vim from saving local settings
" (like line numbers or search highlights) into the session file. This ensures that your standard configuration
" from your ~/.vimrc always takes precedence when you start a new session.

:map Y y$

let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

"let g:airline_symbols_ascii = 1
"let g:airline#extensions#whitespace#enabled = 0
"let g:airline_powerline_fonts = 1

set background=light
"colorscheme gotham256
"colorscheme tokyo-metro
"colorscheme pop-punk
"colorscheme sorbet  
colorscheme wildcharm
"colorscheme bluegreen
"colorscheme thegoodluck
"colorscheme mac_classic
"colorscheme one
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
"
"" unicode symbols
"let g:airline_left_sep = '»'
""let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
""let g:airline_right_sep = '◀'
"let g:airline_symbols.crypt = '🔒'
"let g:airline_symbols.linenr = '☰'
""let g:airline_symbols.linenr = '␊'
""let g:airline_symbols.linenr = '␤'
""let g:airline_symbols.linenr = '¶'
""let g:airline_symbols.maxlinenr = ''
"let g:airline_symbols.maxlinenr = '㏑'
""let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.spell = 'Ꞩ'
"let g:airline_symbols.notexists = 'Ɇ'
"let g:airline_symbols.whitespace = 'Ξ'
"

" powerline symbols
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ' :'
"let g:airline_symbols.maxlinenr = '☰ '
"let g:airline_symbols.dirty='⚡'
" highlight columns > 80
" let &colorcolumn=join(range(81,999),",")
"
" set colorcolumn=80
highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white
" guibg=#592929
match OverLength /\%80v.\+/

let mapleader = " "

" type <Space>l to toggle line numbers on/off
nnoremap <Leader>l :set number!  relativenumber!<CR>

" type space-l to highlight current line
" type :match to unhighlight
" May have to use escape sequence for meta/option key
" In iterm, set option key to: +Esc in Settings->Profiles->Keys
" execute "set <M-l>=\el"
nnoremap <silent> <Leader>h ml:execute 'match Search /\%'.line('.').'l/'<CR>
" nnoremap <M-l> ml:execute 'match Search /\%'.line('.').'l/'<CR>

" Whenever entering insert mode the following will save the
" current working directory (cwd) and then set autochdir so the
" new cwd will be the file in the open buffer. When exiting
" insert mode, autochdir is turned off and the previous cwd restored.
" https://superuser.com/questions/604122/vim-file-name-completion-relative-to-current-file
" :autocmd InsertEnter * let save_cwd = getcwd() | set autochdir
" :autocmd InsertLeave * set noautochdir | execute 'cd' fnameescape(save_cwd)

" remap the jump window commands to avoid ctrl-w
" https://superuser.com/questions/280500/how-does-one-switch-between-windows-on-vim
" or vim.fandom.wiki Tip 173
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

" The following should fix syntax highlighting
" problems with long files
" https://vim.fandom.com/wiki/Fix_syntax_highlighting
" syntax sync minlines=1000
autocmd BufEnter * :syntax sync fromstart

" Insert a blank line below cursor, o, or above cursor, O,
" without staying in insert mode
" https://stackoverflow.com/questions/16134457/insert-a-newline-without-entering-in-insert-mode-vim
nmap oo o<Esc>k
nmap OO O<Esc>j

" Comment a single line globally
nnoremap _c I<!-- <Esc>A --><Esc>

