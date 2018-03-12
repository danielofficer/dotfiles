call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasr/molokai'
Plug 'dag/vim-fish'
call plug#end()

filetype plugin indent on
syntax on
colo molokai

set encoding=utf-8

set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 15
set guioptions-=T
set guioptions-=r
set guioptions-=L

" Airline config
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
let g:airline#extensions#tabline#enabled = 1

if ! has('gui_running')
	set ttimeoutlen=10
	augroup FastEscape
		autocmd!
		au InsertEnter * set timeoutlen=0
		au InsertLeave * set timeoutlen=1000
	augroup END
endif

" Standard vim config
set showtabline=1
set cursorline
set nocompatible

set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

set showmatch
set nohls
set clipboard=unnamedplus

if !isdirectory($HOME . "/.vim/tmp")
    call mkdir($HOME . "/.vim/tmp", "p")
endif
set directory=~/.vim/tmp
set backupdir=~/.vim/tmp

set wildmenu
set showcmd

set ignorecase
set smartcase

set hidden

set scrolloff=3
set tabpagemax=50

" buffer navigation
map <leader>q :bd<cr>
map <leader>l :bn<cr>
map <leader>h :bp<cr>

