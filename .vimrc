"************************************************

" | |  / (_)___ ___  __________
" | | / / / __ `__ \/ ___/ ___/
" | |/ / / / / / / / /  / /__  
" |___/_/_/ /_/ /_/_/   \___/  

"************************************************

set nocompatible
syntax on
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"************************************************

call vundle#begin()

"Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-fugitive'
Plugin 'valloric/youcompleteme'
Plugin 'jiangmiao/auto-pairs'
Plugin 'preservim/nerdtree'
Plugin 'rust-lang/rust.vim'
"Plugin 'davidhalter/jedi-vim'
Plugin 'VundleVim/Vundle.vim'
"Plugin 'vim-python/python-syntax'
"Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'git://git.wincent.com/command-t.git'

call vundle#end() 
"************************************************

filetype plugin indent on

"************************************************

set t_Co=16
set tabstop=4
set history=200
set softtabstop=4
set nrformats-=octal
set backspace=indent,eol,start
set clipboard=unnamedplus
set display=truncate
set fileformat=unix
set ttimeoutlen=100
set shiftwidth=4
set textwidth=79
set scrolloff=5
set smartindent
set autoindent
set incsearch
set expandtab
set wildmenu
set ttimeout
set showcmd
set mouse=a
set number
set nohls
set ruler

"************************************************

map Q gq
sunmap Q
map <F2> :set cc=79<cr>
map <F3> :set cc=-79<cr>
inoremap < <> <Left><Left>
inoremap <C-U> <C-G>u<C-U>
nmap <C-g> :NERDTreeToggle<CR>
"map <C-B> :w <cr> :! clear; time bash %<cr>
map <C-N> :w <cr> :! clear; time python %<cr>
"map <C-M> :w <cr> :! clear; time gcc % && ./a.out <CR>
map <C-b> :w <cr> :! clear; time cargo run
map <C-m> :w <cr> :RustFmt <cr> 
autocmd FileType python map <buffer> <F4> :call flake8#Flake8()<CR>

"************************************************

let NERDTreeWinSize = 20
let NERDTreeShowBookmarks = 1
let g:python_highlight_all = 1
let g:python_highlight_operators = 1
let g:python_highlight_str_format = 0
let g:python_highlight_file_headers_as_comments = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ale_linters = {'rust': ['analyzer']}
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0

"************************************************

hi Function ctermfg=6
hi Pmenu ctermbg=gray guibg=gray
hi pythonBuiltinFunc ctermfg=14
hi Comment ctermfg=7
hi String ctermfg=10
hi LineNr ctermfg=gray

"************************************************

