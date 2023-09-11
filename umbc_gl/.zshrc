# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/afs/umbc.edu/users/d/d/d163/home/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# Daniel Cleaver

# CMPE 212, Spring 2020
alias iverilog='/afs/umbc.edu/users/r/o/robucci/pub/iverilog/bin/iverilog'
alias vvp='/afs/umbc.edu/users/r/o/robucci/pub/iverilog/bin/vvp'

# CMPE 413, Fall 2022
alias vncserver=/opt/TurboVNC/bin/vncserver
alias cl='find . -name *.cdslck -exec rm {} \;'
alias nchelpdir='/afs/umbc.edu/software/cadence/software_2017/INCISIVE152/tools.lnx86/inca/bin'
alias vivado='/umbc/software/Xilinx/Vivado/2022.1/bin/vivado'
alias textmover='~/cmpe413/textmover.sh'
alias lv='cd ~/cmpe413/cadence && ./launch_virtuoso.bash'


# Quality of life
alias dul='du . -h | sort -h | tail -n 25'
alias duc='rm -rf ~/.cache ~/.mozilla 2> /dev/null'

duc
