# Prerequisites

- `Python 3` and `pip3` (this is required by a couple `neovim` extensions that we want to install)


# Installation

1. Run script [install.sh](./install.sh)

   Before running this script, you may want to check and make sure the Python path at the top of the file
   [dotfiles/init.vim](./dotfiles/init.vim) is correct.
   
2. Launch `nvim`. There should be no welcome intro screen (which is turned off in our config) or any warning.
   In 'command' mode, type `:CheckHealth`; verify things are all right.

3. Edit a short Python or other text file to confirm auto-completion is working. As you type, there should be suggestion windows popping up
   from time to time; each suggestion row should contain `[...]` in the middle or at the end.

4. If `vim` is also installed, you may want to completely remove `vim` and define an alias `vim` which points to `nvim` as well.
