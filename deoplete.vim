let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_start_length = 1

"set completeopt+=noinsert,noselect
"set completeopt-=preview

if !exists('g:deoplete#omni#input_patterns')
    let g:deoplete#omni#input_patterns = {}
endif
"let g:deoplete#disable_auto_complete = 0
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end

"hi Pmenu    gui=NONE    guifg=#c5c8c6 guibg=#373b41
"hi PmenuSel gui=reverse guifg=#c5c8c6 guibg=#373b41
