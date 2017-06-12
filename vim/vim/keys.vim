
" Line Shortcuts
nnoremap j gj
nnoremap k gk
  " These two allow us to move around lines visually.
  " So if there's a very long line that gets visually wrapped to two lines,
  " j won't skip over the "fake" part of the visual line in favor of the next "real" line.
nnoremap gV `[v`]
  " this one visually selects the block of characters you added last time you were in INSERT mode.

" Leader Shortcuts
let mapleader=","
  " leader is comma
"nnoremap <leader>u :GundoToggle<CR>
  " In one of its cleverest innovations, Vim doesn't model undo as a simple stack.
  " In Vim it's a tree. This makes sure you never lose an action in Vim,
  " but also makes it much more difficult to traverse around that tree.
  " gundo.vim fixes this by displaying that undo tree in graphical form.
  " Get it and don't look back. Here I've mapped it to ,u, which I like to think of as "super undo".
nnoremap <leader><space> :noh<CR>
  " turn off search highlights

" Command mappings for tabs
map <C-t> :tabnew<CR>
map <C-c> :tabclose<CR>
map <C-p> :tabprev<CR>
map <C-n> :tabnext<CR>

