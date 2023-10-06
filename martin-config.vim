" Set indentations to be 2 spaces wide.
let indent_size=2
let &tabstop=indent_size
let &shiftwidth=indent_size

" Expand tabs into spaces.
set expandtab

" Automatically indent new lines.
set autoindent
set smartindent

" Enable syntax highlighting.
syntax enable

" Show line numbers.
set number

" Set the color scheme.
colorscheme darkblue

" Install the "vim-plug" plugin manager if necessary.
source install-plug.vim

" Install plugins.
call plug#begin()
Plug 'vim-airline/vim-airline'
call plug#end()

