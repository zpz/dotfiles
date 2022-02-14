1. Completely remove any existing installation of `vim`, such as by

   ```
   $ sudo apt-get purge --auto-remove -y vim vim-runtime vim-gnome vim-tiny vim-gui-common vim-common
   $ sudo apt-get autoremove -y
   $ sudo rm -rf /usr/local/share/vim /usr/local/bin/vim /usr/bin/vim
   ```

2. Install `vim` package with `lua` support by

   ```
   $ sudo apt-get install vim-nox
   ```

3. Run `vim --version` to check things, especially `+lua` should appear.

4. Clone [Vundle](https://github.com/VundleVim/Vundle.vim) code into `~/.local/share/vim/bundle/`
   (note this is different from the instructions in the Vundle repo):

   ```
   $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.local/share/vim/bundle/Vundle.vim
   ```

5. Link `vimrc` to `~/.vimrc` and `vim/vim` to `~/.vim` (see `install`).

6. Launch `vim`, run command `:PluginInstall`.

7. Install Python package `pynvim`: `pip3 install pynvim`.

8. Use `vim` to edit something (e.g. Python code) to confirm that auto completion is working.
   The autocompletion is not restricted to language "keywords", package names or other special
   things relevant to programming. It works for repeat typing of arbitrary strings that have appeard in the document.


I verified on Feb 12, 2022 that this works. These materials are kept for reference as I have switched to `Neovim`.

