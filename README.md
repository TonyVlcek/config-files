# My Config Files Archive

The idea of this is to move my config files into one location (`~/.my-config`) and create symbolic links to them in their original directories. That way it will be easy to manage and version them.

> Also I do plan to clean up my system and reinstall the whole computer so this repo will be used to setup some of the functionality more easily after the restart.


## .zshrc & oh-my-zsh
Installed mainly based on [this guide](https://gist.github.com/renshuki/3cf3de6e7f00fa7e744a).

Added `ll` alias which uses the `exa` program. Nicer file and directory listings with git support. `ll` = `exa -la@gh --git` (more details in `man exa`).


## .bashrc & .bash\_aliases
Insert to home directory. Some of the aliases depend on a specific software which must be installed first in order for them to work.

## Keyboard
Keyboard source: <http://www.imega.cz/keyboard/>

In my current layout there is just one alteration: when `Shift + Space` is pressed the keyboard inserts regular space while the original layout inserts non-breaking space. I have made this change due to numerous typos while writing code. When you insert something that look exactly like space but it is not a space it is very hard to find it later on.

### Instalation
When the layout is downloaded from the original site the archive includes a README file which describes the instalation process.

The file `cz-imega` and `cz-imega2` have to be copied to `/usr/share/X11/xkb/symbols`. After this the kaybor layout can be already set: `setxkbmap -layout cz-imega2`. Now we want it to appear in the select box (Text Entry Settings -> Add (+)) for that to work these lines have to be added to `/usr/share/X11/xkb/rules/evdev.xml` after the Czech layout section:
```
   <layout>
      <configItem>
        <name>cz-imega</name>
        <shortDescription>CzeIm</shortDescription>
        <languageList><iso639Id>cze</iso639Id></languageList>
        <description>Czechia - IMega</description>
      </configItem>
      <variantList>
        <variant>
          <configItem>
            <name>quertz</name>
            <description>qwertz - ZY</description>
          </configItem>
        </variant>
      </variantList>
    </layout>
    <layout>
      <configItem>
        <name>cz-imega2</name>
        <shortDescription>Cze2</shortDescription>
        <languageList><iso639Id>cze</iso639Id></languageList>
        <description>Czechia - IMega 2</description>
      </configItem>
      <variantList>
        <variant>
          <configItem>
            <name>quertz</name>
            <description>qwertz - ZY</description>
          </configItem>
        </variant>
      </variantList>
    </layout>
```

The variantList tags are optional.

## .vimrc
> TODO: colors, themes, plugins, special smybolic font installation.
Pathogen needs to be installed

## .toprc
Just insert this file or its symbolic link to `~/`. It makes `top` a little more friendly - changes colors and  highlites the sorting column.

## PhpStomr & CLion
Exported settings into .jar archive. These settings are not versioned automatically. After each change the new version has to be exported to `~/.my-config/`. This works just fine for the time beeing.

> **TODO:** https://www.jetbrains.com/help/idea/sharing-your-ide-settings.html jetbrains IDEs can backup, version and share their settings. Awesome. I'll have to take a look into it later on.

## Terminator
The config file is just copied from ~/.config/terminator/config.

## Ubuntu Keyboard shortcuts
> TODO: custom shortcuts mapping, so that it doesn't colide with the on in my IDEs that I'm used to.

## .gitconfig
Few of my aliases and default setings for git. `Meld` diff program need for these stings to work because it's set as the default diff and merge tool.
