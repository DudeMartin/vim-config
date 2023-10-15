" Define the colors used on the status line.
highlight StatusBaseColor ctermfg=white ctermbg=none
highlight StatusGitColor ctermfg=black ctermbg=darkyellow
highlight StatusGitAddColor ctermfg=lightgreen ctermbg=darkyellow
highlight StatusGitChangeColor ctermfg=lightyellow ctermbg=darkyellow
highlight StatusGitRemoveColor ctermfg=red ctermbg=darkyellow
highlight StatusFileDetailsColor ctermfg=black ctermbg=lightgray
highlight StatusCursorDetailsColor ctermfg=black ctermbg=gray

" Returns a status line format string that displays a summary of the lines changed in the current file.
function LinesChangedSummary()
  let [added, modified, removed] = GitGutterGetHunkSummary()
  return '%#StatusGitAddColor#+%#StatusGitColor#' . added .
        \' %#StatusGitChangeColor#~%#StatusGitColor#' . modified .
        \' %#StatusGitRemoveColor#-%#StatusGitColor#' . removed
endfunction

" Returns a status line format string that displays the git details like the branch and lines changed.
function GitDetails()
  if empty(gitbranch#name())
    return ''
  elseif &modifiable
    return '%#StatusGitColor# %{gitbranch#name()} | %{%LinesChangedSummary()%} %#StatusBaseColor#'
  else
    return '%#StatusGitColor# %{gitbranch#name()} %#StatusBaseColor#'
  endif
endfunction

" Always display the status line.
set laststatus=2

" Start building the status line from scratch.
set statusline=%#StatusBaseColor#

" Display the git details if the current file is in a git repository.
set statusline+=%{%GitDetails()%}

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
