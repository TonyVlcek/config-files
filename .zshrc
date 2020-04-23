export PATH=~/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/tony/.oh-my-zsh
eval `dircolors ~/.solarized/dircolors`

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(git colored-man-pages command-not-found composer npm autojump docker docker-compose kubectl )

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='subl'
fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#########
# TOOLS #
########
#
# Dependencies
# sudo apt install tpl xclip exa

#Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo err    or)" "$(history|tail -n1|sed -e '\''s/^\s*    [0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


# XCLIP -> copy to 'normal' clip
alias xclip='xclip -selection c'


# TRASH
alias trash='gio trash'
alias trash-list='gio list trash://'
alias trash='gio trash --empty'

# Development
alias gg='g++ --std=c++11 -Wall -pedantic'
alias npm-exec='PATH=$(npm bin):$PATH'
alias k='kubectl'

# Restrat network manager
alias wifi-restart='sudo service network-manager restart'

# EXA (ls alternative) aliases
alias ll='exa -la@gh --git'

# Docker
##Stop and remove all containers at once
alias drca='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'
## Remove all images at once
alias dria='docker rmi $(docker images -a -q)'

alias show-apt-repositories="egrep -v '^#|^ *$' /etc/apt/sources.list /etc/apt/sources.list.d/*"

# Networking
alias con-headphones="echo -e 'connect 00:16:94:35:4A:22' | bluetoothctl"
alias con-amati-vpn="nmcli connection up amati-vpn_ovpn"
alias dcon-amati-vpn="nmcli connection up amati-vpn_ovpn"
alias con-hotspot="nmcli connection up V30"
