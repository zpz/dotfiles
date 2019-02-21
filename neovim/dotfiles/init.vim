let g:python3_host_prog = '/usr/bin/python3'

" if system('uname -s') == "Darwin\n"
    set rtp^=~/.local/share/nvim
    source ~/.local/share/nvim/general.vim
    source ~/.local/share/nvim/autocmd.vim
    source ~/.local/share/nvim/keys.vim
    source ~/.local/share/nvim/plugins.vim
" else
"     set rtp^='/etc/xdg/nvim'
"     source /etc/xdg/nvim/general.vim
"     source /etc/xdg/nvim/autocmd.vim
"     source /etc/xdg/nvim/keys.vim
"     source /etc/xdg/nvim/plugins.vim
" endif
