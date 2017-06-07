if has("autocmd")
  autocmd FileType py set smartindent
  autocmd FileType pyx set smartindent
  autocmd FileType pyd set smartindent

  autocmd FileType py set textwidth=79
  autocmd FileType pyx set textwidth=79
  autocmd FileType pyd set textwidth=79
endif

let python_highlight_all = 1
  " enable all Python syntax highlighting features

