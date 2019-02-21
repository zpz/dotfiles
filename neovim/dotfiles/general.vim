" References:
" https://github.com/dougblack/dotfiles
" http://dougblack.io/words/a-good-vimrc.html

set nocompatible
  " do not launch in old vi compatible mode

syntax enable
  " enable syntax highlighting

set t_Co=256
  " load colors
colorscheme molokai
  " Some nice color schemes:
  "   badwolf
  "   molokai
  "   monokai
  "   solarized (I haven't figured out how to set it up)
  "
  " Usable default colorschemes:
  "   delek
  "   desert
  "   torte

set cursorline
  " Show a visual line under the cursor's current line.
  " Some colorschemes use underlining, some others
  " (like monokai, molokai, badwolf) uses whole-line coloring.

set ruler
  " show position of cursor

" Place this block after 'colorscheme' setting
" to override the cursorline setting in the chosen colorscheme.
" Underline the current line instead of coloring it (like in
" 'monokai', 'molokai', 'badwolf').
highlight CursorLine cterm=underline ctermbg=NONE

set ttyfast
  " faster redraw
set backspace=indent,eol,start
  " Tells vim to allow backspacing over autoindents.
  " Enables backspace over the end of lines. 
  " In other words, if you are on the 1st col and press <BS>, the current line
  " will be joined with the preceding one.
  " Enables you to backspace over the start of an insert.
  " In other words, you can erase more text than you entered during a single
  " insert command.

set tabstop=4
  " tab is shown as 4 spaces visually
set softtabstop=4
  " 4-space when editing (insert and backspace)
set expandtab
  " Expand tabs into spaces
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
  " when using the >> or << commands, shift lines by 4 spaces

set number
  " show line numbers

set showcmd
  " show the characters for the command I am typing in

set showmatch
  " show the matching part of the pair for [], {}, and ()

let python_highlight_all = 1
  " enable all Python syntax highlighting features

set autoindent
  " indent each line the same as the preceding one

set wildmenu
  " You know how Vim automatically autocompletes things like filenames when you,
  " for instance, run :e ~/.vim<TAB>? Well it will provide a graphical menu of all the matches
  " you can cycle through if you turn on wildmenu.

set hlsearch
  " This will highlight everything that matches your search as you type
  " in search patterns. Kinda too much highlighting.
set incsearch
  " Show immediately where the so-far typed search pattern is matched.
set smartcase
  " case is ingored if the search pattern entered is all lower case
"set ignorecase          " ignore case when searching
"Vim will keep highlighted matches from searches until you either run a new
"one or manually stop highlighting the old search with :nohlsearch or :noh.

set foldenable
  " enable folding.
  " don't fold files by default on open
set foldmethod=indent
  " fold based on indent level
set foldnestmax=10
  " max 10 depth
nnoremap <space> za
  " space open/close folds
set foldlevelstart=10
  " start with fold level of 1

set list listchars=tab:>-,trail:~,extends:<,precedes:>
  " Show tabs, tailing spaces, unwrapped invisable lines.
  " :help listchars for explanations.

set laststatus=2
set statusline=%F\%m%r%h%w\ \ \ \ %l/%L,%c%=(%P)
  " status line:
  "   full-path modes    line-number/total-lines, col-number, <flush "   right>(percentage)

"set gfn=Courier:h16
  " Change fonts.

set nowrap
  " Do not automatically wrap.
  " Instead, long lines will be signaled.
  " See also: 'listchars'.

"set highlight=8r,db,es,hs,mb,Mr,nu,rs,sr,tb,vr,ws
  " Highlight certain things like trailing spaces.
  " It's kinda too much highlighting.

set showmode
set shortmess+=I
  " In addition to the default setting of 'shortmess':
  " dont' display the intro when vim is launched.

set mouse=c
"set mouse=a
"Contrary to some suggestions, 'set mouse=a' will NOT make copy/paste work.
"'set mouse=c' seems to do the trick.
"Someone also suggested using 'set mouse=r'.

