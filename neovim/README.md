# My Neovim dot files

I have been a "light" user of Vi and Vim for a long time. In 2019, I started using Neovim (version 0.4.x)
as a "better Vim" without much tweaking. I added `deoplete` for auto completion and was happy.

In early 2022, I revisited my Neomvim setup and found that Neovim had advanced a lot with the release of 0.5.0 in July 2021. So I started migrating from VSCode to Neovim. (VSCode drives me nuts with the Python extension "is loading"-please-wait-for-ever issue, which I don't have the energy to research.)

I want to find a nice and small setup. This will evolve as I learn and experiment.

1. Install Neomvim in one of the "official" ways w/o any customization or configuration.
   On Linux, I would download `nvim.appimage` and place it in `~/.local/bin/`. Then do

   ```
   chmod u+x ~/.local/bin/nvim.appimage
   ```

   Then, add an alias in `~/.bashrc`, e.g. `nvim`, pointing to `~/.local/bin/nvim.appimage`.

2. Install `packer.nvim`:

   ```
   git clone --depth 1 https://github.com/wbthomason/packer.nvim \
      ~/.local/share/nvim/site/pack/packer/start/packer.nvim
   ```

3. Link `config/nvim` in this repo to `~/.config/nvim`.

   ```
   ln -s ~/work/src/dotfiles/neovim/config/nvim ~/.config/nvim
   ```

4. Start Neovim (there will be some error messages about missing packages), do `:PackerInstall`.

   `Packer` installs things into the same directory where we have cloned `packer.nvim`, i.e.,
   `~/.local/share/nvim/site/pack/packer/start/`. If any package failed to install,
   just remove its corresponding directory; then upon `:PackerInstall`, it will try to install
   the missing package again.

   I had trouble installing `telescope-fzf-native.nvim`. Retry led to the same failure.
   I went into the directory `start/telescope-fzf-native.nvim` and typed `make` directly, it failed and complained about missing `stdint.h`. That was fixed by installing `libc6-dev`.

5. Enable LSP support for Python. This requires installing [`pyright`](https://github.com/microsoft/pyright) and making small additions to the config files (now already in `config/nvim/lua/setup/nvim-lspconfig.lua`).

   Note that a  "language server" itself is not a Neomvim plugin; it is installed separately.

   ```
   sudo apt-get install --no-install-recommends npm
   sudo npm install -g pyright
   ```
 
   Initially, Python support did not work. After a brief struggle, some message reminded me that my NodeJS version was too low. After an upgrade to Node, things worked.

6. Enable LSP suport for Lua. Although I have no plan to write Lua code, I need to edit the config file `init.lua` from time to time. The error message at every startup is annoying. So I decided to enable Lua language server.

   1. Go to [sumneko/lua-language-server](https://github.com/sumneko/lua-language-server), download the latest precompiled binary such as `lua-language-server-2.6.4-linux-x64.tar.gz`, extract things into `~/.local/share/lua-language-server/`.
   2. Add this to `PATH`: `export PATH="$HOME/.local/share/lua-language-server/bin:$PATH"`

7. Play with `Telescope`. Remember to install `ripgrep` separately:

   ```
   sudo apt-get install --no-install-recommends ripgrep
   ```

8. On Mac, the default `Terminal` app messes with colorschemes. If it's an issue to you, choose an alternative terminal app, such as `Alacritty`.
