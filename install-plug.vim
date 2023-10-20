" Determine the installation directory based on the operating system.
if has('win32')
  let s:plug_file = $HOME . '/vimfiles/autoload/plug.vim'
else
  let s:plug_file = $HOME . '/.vim/autoload/plug.vim'
endif

" Install the "vim-plug" plugin manager if it is missing.
if empty(glob(s:plug_file))
  echo "\"vim-plug\" plugin manager is missing! Installing...\n"
  silent execute '!curl -SsLo ' . s:plug_file . ' --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  if !empty(glob(s:plug_file))
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif
endif
