filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Shougo/deoplete.nvim'
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'zchee/deoplete-jedi'
Plugin 'ervandew/supertab'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


let g:deoplete#enable_at_startup = 1
" let g:deoplete#custom#option("smart_case", 1)
" let g:deoplete#custom#option("fuzzy_completion", 1)


" start showing suggestions after typing first letter.
call deoplete#custom#option("auto_completion_start_length", 1)
" let g:neocomplete#manual_completion_start_length = 0
" let g:neocomplete#min_keyword_length = 3

call deoplete#custom#option("auto_complete_delay", 20)
"call g:deoplete#custom#option("auto_refresh_delay", 20)

let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabCrMapping = 1

set completeopt+=noinsert,noselect

" disable preview window on the top of the screen.
set completeopt-=preview

" if !exists('g:deoplete#omni#input_patterns')
"     let g:deoplete#omni#input_patterns = {}
" endif
" " "let g:deoplete#disable_auto_complete = 0
" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" augroup omnifuncs
"   autocmd!
"   autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"   autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"   autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"   autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"   autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" augroup end

"hi Pmenu    gui=NONE    guifg=#c5c8c6 guibg=#373b41
"hi PmenuSel gui=reverse guifg=#c5c8c6 guibg=#373b41


