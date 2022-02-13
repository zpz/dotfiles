# Neovim

In early 2022, I revisited my `Neomvim` setup and found that `Neovim` had advanced a lot with the release of 0.5.0 in July 2021.

In a new setup, I want to eliminate or greatly reduce my tweaking and customization. I want to make minimal customizations on top of a nice setup of someone's, and be done with it.

This is a living document as I experiment with the new setup.

1. Install `Neomvim` in one of the "official" ways. On Linux, I downloaded `nvim.appimage` and places in `~/.local/bin/`.
Do not provide any customization or configuration.

2. Use the config in [nvim-lua kickstart](https://github.com/nvim-lua/kickstart.nvim). Follow its instructions.

   - On my Mac laptop, the color somehow did not work. I commented out one line in `init.lua` concerning color, and that fixed the issue.

3. Enable LSP support for Python. This requires installing `pyright` and adding it to a line or two in `init.lua`. Note that a  "language server" itself is not a `Neomvim` plugin; it is installed independently. Initially, Python support did not work. After a brief struggle, some message reminded me that my `Node` version was too low. After an upgrade to `Node`, things worked fine.

4. Enable LSP suport for Lua. Although I have no plan to write Lua code, I need to edit the config file `init.lua` from time to time. The error message at every startup is annoying. So I decided to enable Lua language server.

   1. Go to [sumneko/lua-language-server](https://github.com/sumneko/lua-language-server), download the latest precompiled binary such as `lua-language-server-2.6.4-linux-x64.tar.gz`, expand and put it in `~/.local/share/`.
   2. Add this to `PATH`: `export PATH="$HOME/.local/share/lua-language-server/bin:$PATH"`

   That's it. No need to edit `init.lua`.

5. Auto completion. I used to use `neocomplete` and was happy about it. The setup so far enables `nvim-cmp` but I didn't get `neocomplete`-like behavior and don't know how to config `nvim-cmp` to get the behavior, if at all possible. The behavior of `neocomplete` I liked is auto-complete of repeat use of arbitrary strings in the document, not only programming language keywords.
