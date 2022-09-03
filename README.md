# dotfiles

This directory contains initialization or configuration files for
the Shell and certain programs that use such mechanisms.

There are some tools for "dotfile management".
[GNU Stow](https://www.gnu.org/software/stow/)
and [Dotbot](https://github.com/anishathalye/dotbot) are two popular ones worth consideration.
I'm using homegrown shell scripts for now.


## Setting up a new computer

On a new computer (or OS) for my exclusive use, I usually need to set up these things:

- `.bashrc`
- Terminal: size and location, font size, background etc.

    To control the position of Terminal at startup, edit its ".desktop" file.
    In my LinuxMint 21, it is `/usr/share/applications/org.gnome.Terminal.desktop`.
    Edit the `Exec` line of this text file:

    ```
    Exec=gnome-terminal --geometry columnsxrows+x+y
    ```

    I settled at 88x28+20+220, which is roughly the lower-left corner.
- Install and config `neovim`.
- Install and config an IDE such as VS Code.
- Install `git`. Verify `github` account.
- Install `Docker`.
- Create directory `~/work/src` for code work.
- Other things are installed as needed. For example, Python's `pip` may not be there when I use it for the first time.