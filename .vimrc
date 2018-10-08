set t_Co=256 
colorscheme panic
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

" File types
au BufRead,BufNewFile *.scss set filetype=css
au BufRead,BufNewFile *.md set filetype=markdown

" Move backups to their own folder instead of using a ~ suffix
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" Backspace options
set backspace=indent,eol,start

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

set incsearch
set hlsearch
