" Set indentations to be 2 spaces wide.
let indent_size = 2
let &tabstop = indent_size
let &shiftwidth = indent_size

" Expand tabs into spaces.
set expandtab

" Automatically indent new lines.
set autoindent
set smartindent

" Enable syntax highlighting.
syntax enable

" Show line numbers.
set number
set relativenumber

" Set the preferred line length to 120 characters.
set textwidth=120

" Set UTF-8 as the default character encoding.
set encoding=utf-8

" Set the number of colors to 256.
set t_Co=256

" Set the color scheme.
colorscheme desert

" Save the absolute path of the directory that this script is in. Useful for relative paths.
let s:cur_dir = expand('<sfile>:h')

" Executes the Vim commands in the Vim script file at the specified (relative) path.
function Readscript(rel_path)
  execute 'source ' . s:cur_dir . '/' . a:rel_path
endfunction

" Install the "vim-plug" plugin manager if it is missing.
call Readscript('install-plug.vim')

" Install plugins.
call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/vim-gitbranch'
call plug#end()

" Load the custom status line.
autocmd VimEnter * call Readscript('status-line.vim')

" Load git gutter customizations.
autocmd VimEnter * call Readscript('git-gutter.vim')
