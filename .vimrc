" Vundle 
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Syntax
colorscheme onedark
set t_Co=256 
syntax enable

" Indentation
set tabstop=4               " Visual tab size
set softtabstop=4           " Tab size when using spaces
set expandtab               " Transform tabs to spaces
set shiftwidth=4            " Tab size when auto indenting
set shiftround              " Round indent to nearest multiple of 4

" UI
set number              " Display line numbers
set showcmd             " Show command in the bottom bar
set wildmenu            " Autocomplete in bottom bar
set lazyredraw          " Redraw less for performance
" set showmatch         " Highlight matching brackets
" set cursorline        " Highlight the current line
set mouse=a             " Enable mouse scrolling and selecting in iTerm2

" File types
au BufRead,BufNewFile *.scss set filetype=css
au BufRead,BufNewFile *.md set filetype=markdown

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Yet Another JavaScript Syntax
Plugin 'othree/yajs.vim'

call vundle#end()            " required
filetype plugin indent on    " required:w

