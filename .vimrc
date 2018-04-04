call plug#begin('~/.vim/plugged')

Plug 'zhou13/vim-easyescape'
Plug 'https://github.com/rking/ag.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'lervag/vimtex'

call plug#end()

colorscheme badwolf

autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

syntax enable " enable syntax processing

set tabstop=4       " number of visual spaces per TAB
set shiftwidth=4
set softtabstop=0   " number of spaces in tab when editing

set number

set showcmd             " show command in bottom bar

filetype indent on      " load filetype-specific indent files

set wildmenu            " visual autocomplete for command menu

set lazyredraw          " redraw only when we need to.

set showmatch           " highlight matching [{()}]

" Search Settings
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
"Folding settings
"set foldenable          " enable folding
"set foldlevelstart=10   " open most folds by default
"set foldnestmax=10      " 10 nested fold max
"set foldmethod=indent   " fold based on indent level

" space open/closes folds
"nnoremap <space> za 

""""""KEYBINDINGS"""""""
"move vertically on the line that are to long
nnoremap j gj
nnoremap k gk
" highlight last inserted text
nnoremap gV `[v`]

let g:easyescape_chars = { "j": 1, "k": 1 }
let g:easyescape_timeout = 100
cnoremap jk <ESC>
cnoremap kj <ESC>

" FZF Config
nnoremap <c-p> :FZF<cr>
nnoremap <c-b> :Buffers<cr>

" Customize fzf colors to match your color scheme
let g:fzf_colors =
  \ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Backup Settings
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" Set run commands
autocmd Filetype python nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>
