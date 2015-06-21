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
        
" Add or remove your Bundles here:
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
NeoBundle 'bling/vim-airline'
NeoBundle 'moll/vim-node'
NeoBundle 'marijnh/tern_for_vim'
" You can specify revision/branch/tag.
        
" Required:
call neobundle#end()
        
" Required:
filetype plugin indent on
        
" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------


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
set number
set cursorline
set expandtab
set title
set ruler
set background=light
set wildmenu
set incsearch
set hlsearch

highlight Cursor guibg=black guifg=green ctermbg=black ctermfg=green 

" lBeri0 Keymappings
inoremap jk <esc>
inoremap <esc> <nop>
inoremap <UP> <nop>
inoremap <DOWN> <nop>
inoremap <LEFT> <nop>
inoremap <RIGHT> <nop>

