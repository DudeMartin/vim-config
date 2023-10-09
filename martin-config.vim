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

" Save the absolute path of the directory that this script is in. Useful for relative paths.
const s:cur_dir = expand('<sfile>:h')

" Executes the Vim commands in the Vim script file at the specified (relative) path.
function Readscript(rel_path)
  execute 'source ' . s:cur_dir . '/' . a:rel_path
endfunction

" Install the "vim-plug" plugin manager if it is missing.
call Readscript('install-plug.vim')

" Install plugins.
call plug#begin()
Plug 'vim-airline/vim-airline'
call plug#end()
