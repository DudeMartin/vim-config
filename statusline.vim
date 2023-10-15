" Define the colors used on the status line.
highlight StatusBaseColor ctermfg=white ctermbg=none
highlight StatusFileDetailsColor ctermfg=black ctermbg=lightgray
highlight StatusCursorDetailsColor ctermfg=black ctermbg=gray

" Always display the status line.
set laststatus=2

" Start building the status line from scratch.
set statusline=

" Display the git branch if the current file is within a git repository.
if !empty(gitbranch#name())
  highlight StatusGitColor ctermfg=black ctermbg=lightblue

  set statusline+=%#StatusGitColor#
  set statusline+=\ ⎇\ %{gitbranch#name()}\ 
  set statusline+=%#StatusBaseColor#
endif

" Configure the right side of the status line.
set statusline+=%=

" Set the background color for the file details.
set statusline+=%#StatusFileDetailsColor#

" Display if the current file has been modified or if it is not modifiable.
set statusline+=%m\ 

" Display the name of the current file.
set statusline+=%f\ 

" Set the background color for the cursor position details.
set statusline+=%#StatusCursorDetailsColor#\ 

" Display the line and column number at the cursor.
set statusline+=%3l:%-3c\ 

" Display the percentage through the file.
set statusline+=%p%%\ 
