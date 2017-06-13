# _______                _       ____            _      
#|__   __|              ( )     |  _ \          | |     
#   | | ___  _ __  _   _|/ ___  | |_) | __ _ ___| |__   
#   | |/ _ \| '_ \| | | | / __| |  _ < / _` / __| '_ \   
#   | | (_) | | | | |_| | \__ \ | |_) | (_| \__ \ | | | 
#   |_|\___/|_| |_|\__, | |___/ |____/ \__,_|___/_| |_| 
#				   __/ |                                
#				  |___/                                

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

#History setup
HISTCONTROL=ignoreboth	# ignore dublicities and space starting lines
shopt -s histappend		#append to the history file
HISTSIZE=1000			# history length
HISTFILESIZE=2000		# history lenght

shopt -s checkwinsize	# window size update
shopt -s globstar		# enable ** - match file in subtree

# Less setup
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)" ## make less more friendly for non-text input files
# Less colors
export LESS_TERMCAP_mb=$(printf '\e[01;31m') # enter blinking mode - red
export LESS_TERMCAP_md=$(printf '\e[01;32m') # enter double-bright mode - bold, magenta
export LESS_TERMCAP_me=$(printf '\e[0m') # turn off all appearance modes (mb, md, so, us)
export LESS_TERMCAP_se=$(printf '\e[0m') # leave standout mode    
export LESS_TERMCAP_so=$(printf '\e[01;33m') # enter standout mode - yellow
export LESS_TERMCAP_ue=$(printf '\e[0m') # leave underline mode
export LESS_TERMCAP_us=$(printf '\e[04;36m') # enter underline mode - cyan

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# Enable programmable completion features (you don't need to enable
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# COLORS SETUP
. ~/.bash_colors

# Git Setup
. ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="auto verbose"

# GCC setup
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01' # enable colored errors
GCC_INCLUDE_DIR=/usr/include/
export GCC_INCLUDE_DIR

# PROMPT SETUP
PS1="\[${Yellow}\][\t] \[${BGreen}\]\u@\h\[${Color_Off}\]:\[${BBlue}\]\w\[${Yellow}\]"'$(__git_ps1 "(%s)")'"\[${Color_Off}\]\$ "

# Load ALIASES
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Enable Z command
. /opt/z/z.sh

# xset setup
xset r rate 200 50		# speed up keyboard response

