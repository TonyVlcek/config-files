# My Config Files Archive

The idea of this is to move my config files into one location (`~/.my-configs`) and create symbolic links to them in their original directories. That way it will be easy to manage and version them.

> Also I do plan to clean up my system and reinstall the whole computer so this repo will be used to setup some of the functionality more easily after the restart.


## .zshrc & oh-my-zsh
Installed mainly based on [this guide](https://gist.github.com/renshuki/3cf3de6e7f00fa7e744a).


## .bashrc & .bash\_aliases
Insert to home directory. Some of the aliases depend on a specific software which must be installed first in order for them to work.

## Keyboard
Keyboard source: <http://www.imega.cz/keyboard/>

In my current layout there is just one alteration: when `Shift + Space` is pressed the keyboard inserts regular space while the original layout inserts non-breaking space. I have made this change due to numerous typos while writing code. When you insert something that look exactly like space but it is not a space it is very hard to find it later on.

### Instalation
When the layout is downloaded from the original site the archive includes a README file which describes the instalation process.

This is **not tested**, but in theory just taking the keyboard confg file and placing it into `user/share/X11/xkb/symbols` should be enough.

## .vimrc
> TODO: colors, themes, plugins, special smybolic font installation.

## .toprc
Just insert this file or its symbolic link to `~/`. It makes `top` a little more friendly - changes colors and  highlites the sorting column.

## PhpStomr & CLion
Exported settings into .jar archive. These settings are not versioned automatically. After each change the new version has to be exported to `~/.my-configs/`. This works just fine for the time beeing.

> **TODO:** https://www.jetbrains.com/help/idea/sharing-your-ide-settings.html jetbrains IDEs can backup, version and share their settings. Awesome. I'll have to take a look into it later on.

## Terminator
The config file is just copied from ~/.config/terminator/config.

## Ubuntu Keyboard shortcuts
> TODO: custom shortcuts mapping, so that it doesn't colide with the on in my IDEs that I'm used to. 

