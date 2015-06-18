execute pathogen#infect()
" set nocompatible              " be iMproved, required
" filetype off                  " required
syntax on
filetype plugin indent on
set t_Co=256
set term=xterm-256color
set background=dark
set nowrap
set scrolloff=2
set laststatus=2
set showmatch
set tabstop=2
set shiftwidth=2
set number
set cursorline
set expandtab
set title
set ruler
set background=light
set wildmenu
set incsearch
set hlsearch

colorscheme monokai
highlight CursorLine term=bold cterm=bold
highlight CursorLineNr term=bold ctermfg=red guifg=white
highlight LineNr ctermfg=green


inoremap jk <esc>
inoremap <esc> <nop>
inoremap <UP> <nop>
inoremap <DOWN> <nop>
inoremap <LEFT> <nop>
inoremap <RIGHT> <nop>
