# dotfiles

This directory contains initialization or configuration files for
the Shell and certain programs that use such mechanisms.

There are some tools for "dotfile management".
[GNU Stow](https://www.gnu.org/software/stow/)
and [Dotbot](https://github.com/anishathalye/dotbot) are two popular ones worth consideration.
I'm using homegrown shell scripts for now.

See `install` and `sudo_install`.


## Terminal

To control the position of Terminal at startup, edit its ".desktop" file.
In my LinuxMint 21, it is `/usr/share/applications/org.gnome.Terminal.desktop`.
Edit the `Exec` line of this text file:

```
Exec=gnome-terminal --geometry columnsxrows+x+y
```

I settled at 88x28+20+220, which is roughly the lower-left corner.
