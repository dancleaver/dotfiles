#!/bin/bash

# Run zsh if possible
if [[ $SHELL != "/bin/zsh" && $(grep "/bin/zsh" /etc/shells) ]]; then
    export SHELL="/bin/zsh"
    exec /bin/zsh
fi
