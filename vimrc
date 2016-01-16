" references for VIM are www.vim.org and vimdoc.sourceforge.net

set background=light
  " vim guesses the background color you're using and chooses a colorscheme
colorscheme delek
" Colorschemes whose contrast is not strong enough
" in either day or night:
"   pablo, desert, blue, koehler, elflord, ron, morning,
"   peachpuff, shine, slate, default
" Colorschemes with good contrast:
"  torte (cursor too weak)
"  evening (cursor too weak)
"  delek
"  murphy (color ugly)
"  zellner

syntax on
  " turn on syntax coloring


set gfn=Courier:h16
  " Change fonts.
  " There should be no need to change the font as
  " the terminal should have been configured to my like.


autocmd FileType make setlocal noexpandtab
  " turn off expandtab for editting makefiles

autocmd FileType c,cpp set formatoptions=croql cindent comments=sr:/*,mb:*,ex:*/,://
  " (line continuation does not work.)


set autowrite
  " write files when needed
set nobackup



set nowrap
  " Do not automatically wrap.
  " Instead, long lines will be signaled.
  " See also: 'listchars'.
set sidescroll=5
  " min number of columns to be scrolled horizontally
set textwidth=72
  " 72 column page when working with text.
  " This doesn't appear to work, or I am misunderstanding it.
  " Use 'columns' to set line length instead.
  " But that has caused some problem.
"set wrapmargin=2
  " 'wrapmargin' and 'textwidth' works on the same issue.
  " 'wrapmargin' is overruled by a nonzero 'textwidth'.


set autoindent
  " indent each line the same as the preceding one
"set nocindent
"set smartindent
  " It seems cindent is pretty good even when 
  " I'm not working on C source file.
set backspace=indent,eol,start
  " Tells vim to allow backspacing over autoindents.
  " Enables backspace over the end of lines. 
  " In other words, if you are on the 1st col and press <BS>, the current line
  " will be joined with the preceding one.
  " Enables you to backspace over the start of an insert.
  " In other words, you can erase more text than you entered during a single
  " insert command.
set expandtab
  " Insert space characters whenever the tab key is pressed;
  " this way the tab character does not get saved in the file either.
  " This is at odds with makefiles.
  " To enter a real TAB, use Ctrl-V<Tab> key sequence.
  " See also: 'au FileType make ...'
  "
  " After the 'expandtab' option is set, all new tabs entered will be changed
  " to spaces (see 'tabstop').
  " This will not affect the existing tab characters.
  " To change all the existing tab characters to match the current tab
  " settings, use
  "  :retab
  " See also: the 'expand' command (external; not in vim).
set shiftwidth=4
  " mod-4 indentation of spaces when you 'shift' the text horizontally
set softtabstop=4
  " get vim to interpret tab as an 'indent' command instead of an insert-a-tab
  " command. make the backspace key treat the four spaces like a tab 
  " (so one BS goes back a full 4 spaces)
set tabstop=4
  " cause the TAB file-character to be displayed as mod-4 in vim;
  " also, the number of space characters to insert when <Tab> is pressed.
set hardtabs=4
  " I don't know what this is.
"set smarttab

"set hlsearch
  " This will highlight everything that matches your search as you type
  " in search patterns. Kinda too much highlighting.
set incsearch
  " Show immediately where the so-far typed search pattern is matched.
"set ignorecase
set smartcase
  " case is ingored if the search pattern entered is all lower case
set magic
  " concerns treatment to search patterns

set highlight=8r,db,es,hs,mb,Mr,nu,rs,sr,tb,vr,ws
  " Highlight certain things like trailing spaces.
  " It's kinda too much highlighting.
set nonumber
  " Switch for line numbering on the left.
set ruler
  " show position of cursor
set list listchars=tab:>-,trail:~,extends:<,precedes:>
  " Show tabs, tailing spaces, unwrapped invisable lines.
  " :help listchars for explanations.
set showcmd
  " show the characters for the command I am typing in
set showmatch
  " show the matching bracket for the last ')'
set showmode
"set laststatus=2
  " Controlling the status line.
  " The default 1 is good.
set shortmess+=I
  " In addition to the default setting of 'shortmess':
  " dont' display the intro when vim is launched.

set history=50
  " default is 20

set noerrorbells
  " damn this beep!


"inoremap <S-Tab> <C-V><Tab>
  " remap Shift-Tab to insert  a real tab
  " doesn't work. don't know why.

" Turn on spell checker while editing files of specified types.
autocmd BufNewFile,BufRead *.txt,*.tex,README,readme set spell

" Command mappings for tabs
map <C-t> :tabnew<CR>
map <C-c> :tabclose<CR>
map <C-p> :tabprev<CR>
map <C-h> :tabprev<CR>
map <C-n> :tabnext<CR>
map <C-l> :tabnext<CR>

" Location of files that are worked on most often.
" This usually is the code and writeup directories of
" the research project that is going on at present.
" Then from within VIM, use
"   :find filename
" to locate and open a file in the path.
" I've never come into the habit of using this.
set path+=/home/zpzhang/research/lake/working
set path+=/home/zpzhang/research/lake/notes

