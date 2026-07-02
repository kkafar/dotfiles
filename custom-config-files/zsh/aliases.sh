# ALIASES
############################################################
alias ll='eza -F'
alias la='eza -AF'
alias l='eza -CF'
alias up='cd ..'
alias upup='cd ../..'
alias upupup='cd ../../../'
alias upupupup='cd ../../../../'
alias ..='cd ..'
alias cls='clear'
alias rm='rm -v -i'
alias mv='mv -i'
alias gs='git status'
alias gp='git push'
alias gc='git commit'
alias gaa='git add --all'
alias exa='exa -al --color=always --group-directories-first'
alias eza='eza -al --color=always --group-directories-first'
alias cg='cargo'
alias lg='lazygit'
alias tx=tmux

# Taken from Omarchy configuration

alias ls='eza -lh --color=always --group-directories-first --icons=auto'
alias ff="fzf --preview 'bat --style=numbers --color=always {}'"

# alias cd="zd"
# zd() {
#   if [ $# -eq 0 ]; then
#     builtin cd ~ && return
#   elif [ -d "$1" ]; then
#     builtin cd "$1"
#   else
#     z "$@" && printf "\U000F17A9 " && pwd || echo "Error: Directory not found"
#   fi
# }
############################################################

# dotfiles configuation
############################################################
alias dfconfig='/usr/bin/git --git-dir=$HOME/dotfiles.git/ --work-tree=$HOME'
alias dfc=dfconfig
############################################################

# gt configuration
alias gd='gdimpl'
