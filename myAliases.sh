#!/bin/zsh

##### Add Color to tmux #####
echo 'set -g default-terminal "screen-256color"' >> ~/.tmux.conf

##### history shortcut #####
alias h='history'

##### my alias functions ####
printf "\n##### my alias functions ####\n" >> ~/.zshrc
echo 'mk() { mkdir -p "$@" && cd "$_"; }' >> ~/.zshrc  # use quotes for folders with spaces

printf "\n" >> ~/.zshrc
echo 'alias updater="zsh ~/.scripts/updater.sh"' >> ~/.zshrc 

##### Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

##### get rid of command not found ##
alias cd..='cd ..'
 
##### a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

##### Colorize the ls output #####
alias ls='ls --color=auto'
 
##### Use a long listing format #####
alias ll='ls -lath --color=auto'
 
##### Show hidden files #####
alias l.='ls -d .* --color=auto'

##### top is bpytop #####
alias top='bpytop'

##### tmux #####
alias ta="tmux attach -d"

# if user is not root, pass all commands via sudo #
if [ $UID -ne 0 ]; then
    alias reboot='sudo reboot'
fi



