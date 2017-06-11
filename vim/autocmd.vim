if has("autocmd")
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    " jump to the last position when reopening a file

  filetype plugin indent on
    " load indentation rules and plugins according to the detected filetype.
    " The python indentation file that lives at ~/.vim/indent/python.vim gets loaded every time 
    " I open a *.py file.

  autocmd FileType make setlocal noexpandtab
    " turn off expandtab for editting makefiles
  autocmd FileType c,cpp set formatoptions=croql cindent comments=sr:/*,mb:*,ex:*/,://
    " (line continuation does not work.)

  autocmd FileType py set smartindent
  autocmd FileType pyx set smartindent
  autocmd FileType pyd set smartindent

  autocmd FileType py set textwidth=79
  autocmd FileType pyx set textwidth=79
  autocmd FileType pyd set textwidth=79

  " Turn on spell checker while editing files of specified types.
  autocmd BufNewFile,BufRead *.txt,*.tex,*.md,README,readme set spell
endif
