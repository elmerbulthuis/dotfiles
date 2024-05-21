#!/bin/sh

source /usr/share/git/completion/git-prompt.sh
PS1='$(ERROR=$? ; if [ $ERROR != 0 ] ; then echo "$ERROR " ; fi)\W$(__git_ps1 " \[\e[2m\]%s\[\e[0m\]") \[\e[1m\]\$\[\e[0m\] ' 

export PATH=$PATH:~/.local/bin:~/.cargo/bin

