#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias tmux='tmux -2'

# export idf commands for esp programming
alias idf='source ~/Documents/esp/esp-idf/export.sh'
alias build='idf.py build'
alias flash='idf.py flash'

# run putty omitting wayland error
alias putty='env GDK_BACKEND=x11 putty'

# .dotfiles Git repository commands setup
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

export PS1="\[\033[95m\]\u@\h \[\033[32m\]\W\[\033[33m\] git(\[\033[31m\]\$(git rev-parse --abbrev-ref HEAD 2>/dev/null)\\[\033[33m\]) \[\033[00m\]\$ " 
