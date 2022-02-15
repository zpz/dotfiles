# My Neovim dot files

I have been a "light" user of Vi and Vim for a long time. In 2019, I started using Neovim (version 0.4.x)
as a "better Vim" without much tweaking. I added `deoplete` for auto completion and was happy.

In early 2022, I revisited my Neomvim setup and found that Neovim had advanced a lot with the release of 0.5.0 in July 2021. So I started migrating from VSCode to Neovim. (VSCode drives me nuts with the Python extension "is loading"-please-wait-for-ever issue, which I don't have the energy to research.)

I want to find a nice and small setup. This will evolve as I learn and experiment.

1. Install Neomvim in one of the "official" ways w/o any customization or configuration.
   On Linux, I would download `nvim.appimage` and place it in `~/.local/bin/`.

2. Link `config/nvim` to `~/.config/nvim` (see `install`).

3. Start Neovim, do `:PackerInstall`.

4. Enable LSP support for Python. This requires installing [`pyright`](https://github.com/microsoft/pyright) and making small additions to the config files.
Note that a  "language server" itself is not a Neomvim plugin; it is installed separately. Initially, Python support did not work. After a brief struggle, some message reminded me that my Node version was too low. After an upgrade to Node, things worked.

5. Enable LSP suport for Lua. Although I have no plan to write Lua code, I need to edit the config file `init.lua` from time to time. The error message at every startup is annoying. So I decided to enable Lua language server.

   1. Go to [sumneko/lua-language-server](https://github.com/sumneko/lua-language-server), download the latest precompiled binary such as `lua-language-server-2.6.4-linux-x64.tar.gz`, expand and put it in `~/.local/share/`.
   2. Add this to `PATH`: `export PATH="$HOME/.local/share/lua-language-server/bin:$PATH"`

6. Play with `Telescope`. (Remember to install `ripgrep` separately.)

7. On Mac, the default `Terminal` app messes with colorschemes. If it's an issue to you, choose an alternative terminal app, such as `Alacritty`.
