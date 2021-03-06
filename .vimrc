set statusline=%F%m%r%h%w\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%\ of\ %L]
" lBerio0 vimrc file
" 6/15


"  'flazz/vim-colorschemes'
"  'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
"  'bling/vim-airline'
"  'moll/vim-node'
"  'marijnh/tern_for_vim'

" Bundle Scripts-----------------------------
if has('vim_starting')
    if &compatible
      set nocompatible               " Be iMproved
    endif

" Required:
   set runtimepath+=/Users/ianmccunn/.vim/bundle/neobundle.vim/
endif
      
" Required:
call neobundle#begin(expand('/Users/ianmccunn/.vim/bundle'))
        
" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
        
" Add or remove bundles here:
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
NeoBundle 'bling/vim-airline'
NeoBundle 'moll/vim-node'
NeoBundle 'marijnh/tern_for_vim'
NeoBundle 'groenewege/vim-less'
NeoBundle 'jiangmio/auto-pairs'
NeoBundle 'fatih/vim-go'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'mattn/emmet-vim'
        
" Required:
call neobundle#end()
        
" Required:
filetype plugin indent on
        
" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

" vim-less requirement
nnoremap <Leader>m :w <BAR> !lessc % > %:t:r.css<CR><space>

" Update open buffer when this file is changed
augroup myvimrc
  au!
  au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

colorscheme monokai 

syntax on
set t_Co=256
set term=xterm-256color
set background=dark
set nowrap
set scrolloff=2
set laststatus=2
set showmatch
set tabstop=2
set shiftwidth=2
set expandtab
set number
set cursorline
set title
set ruler
set background=light
set wildmenu
set incsearch
set hlsearch
set tw=80

" number/relativenumber toggle function
" function! LineNumToggle()
"   if(&relativenumber == 1)
"     set number
"   else
"     set relativenumber
"   endif
" endfunc
" 
" " map Ctrl+n to toggle line number
" nnoremap <C-n> :call LineNumToggle()<cr>

map <C-t> :NERDTreeToggle<CR>

" relativenumber on normal mode
" autocmd InsertEnter * :set number
" autocmd InsertLeave * :set relativenumber
" 
" " revert to absolute numbers when lost focus 
" autocmd FocusLost * :set number
" autocmd FocusGained * :set relativenumber


" lBeri0 Keymappings
inoremap jk <esc>
inoremap <UP> <nop>
inoremap <DOWN> <nop>
inoremap <LEFT> <nop>
inoremap <RIGHT> <nop>

