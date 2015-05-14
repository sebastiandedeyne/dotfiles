#!/usr/bin/env bash

# ZSH
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh
alias zshrc="vi ~/Sites/sebastiandedeyne/dotfiles/.zshrc"

# General
export PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"

# Vim
export VISUAL=vim
export EDITOR="$VISUAL"

# Git
alias gadd="git add --all"
alias gpu="git push -u origin master"
alias goops="git add --all && git commit -m \"Fixed unnecessary line(s) from last commit\""

function gac {
    git add --all
    git commit -m $1
}
