" Define the colors used on the status line.
highlight StatusBaseColor ctermfg=white ctermbg=none
highlight StatusGitColor ctermfg=black ctermbg=lightblue
highlight StatusFileDetailsColor ctermfg=black ctermbg=lightgray
highlight StatusCursorDetailsColor ctermfg=black ctermbg=gray

" Returns a status line format string that displays the current git branch if one exists.
function DisplayGitBranch()
  if empty(gitbranch#name())
    return ""
  else
    return "%#StatusGitColor#\ ⎇\ %{gitbranch#name()}\ %#StatusBaseColor#"
  endif
endfunction

" Always display the status line.
set laststatus=2

" Start building the status line from scratch.
set statusline=%#StatusBaseColor#

" Display the git branch if the current file is within a git repository.
set statusline+=%{%DisplayGitBranch()%}

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
