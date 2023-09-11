#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# Use bash-completion, if available
# https://github.com/scop/bash-completion#installation
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

# Use vi mode in bash
# set -o vi

export EDITOR='vim'
export VISUAL='vim'

export GTK_USE_PORTAL=1

# Streamline editing common files
alias eb='vim ~/.bashrc; source ~/.bashrc; exec bash'
alias ev='vim ~/.vimrc'

# Need this so I can run `sudo [alias]` 
alias sudo='sudo '

# Colors
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias ls='ls -Ah --color=auto'
alias ll='ls -l'

# Git
alias g='git'
alias ga='git add'
alias gb='git branch'
alias gba='git branch -a'
alias gc='git commit'
alias gcp='git cherry-pick'
alias gch='git checkout'
alias gcl='git clone'
alias gcm='git commit -m'
alias gf='git fetch'
alias gfa='git fetch --all'
alias gpl='git pull'
alias gps='git push'
alias grpo='git remote prune origin'
alias gs='git status'

# Misc
alias p='pacman'
alias mp='makepkg'

alias v='vim'
alias c='code'

alias gw='gwenview'

alias ff='firefox'

alias nf='neofetch'

function f() {
    find . -iname "*$@*"
}

function findi() {
    find "$@" 2> >(grep -v 'Permission denied' >&2)
}

# Complete all aliases
# https://github.com/cykerway/complete-alias#faq
complete -F _complete_alias "${!BASH_ALIASES[@]}"

