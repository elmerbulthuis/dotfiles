#!/bin/sh

source /usr/share/git/completion/git-prompt.sh
PS1='\W$(__git_ps1 " \[\e[2m\]%s\[\e[0m\]") \[\e[1m\]\$\[\e[0m\] ' 

export $(cat ~/.env | xargs)
