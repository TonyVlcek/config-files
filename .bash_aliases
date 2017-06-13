# enable colors
alias ls='ls --color=auto'
alias grep='grep --color=auto'               
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias ..='cd ../'
alias ...='cd ../../'
alias cdc='cd ~-'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# TLP aliases
alias tbat='sudo tlp bat'
alias tac='sudo tlp ac'

# XCLIP -> copy to 'normal' clip
alias xclip='xclip -selection c'

# Development
alias gg='g++ --std=c++11 -Wall -pedantic'

# Amati Webconsole
alias webconsole='sudo -u www-data php /var/www/amati/admin/www/index.php'

# Restrat network manager
alias wifi-restart='sudo systemctl restart NetworkManager'

