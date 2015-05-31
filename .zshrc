#!/usr/bin/env bash

# ZSH
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# General
export PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
export PATH="$PATH:/$HOME/.composer/vendor/bin"

# Shortcuts
alias sites="~/Sites"
alias dotfiles="~/Sites/sebastiandedeyne/dotfiles"

# Vim
export VISUAL=vim
export EDITOR="$VISUAL"
alias vi="vim"

# Git
alias gadd="git add --all"
alias gpu="git push -u origin master"
alias goops="git add --all && git commit -m \"Fixed unnecessary line(s) from last commit\""

function gac {
    git add --all
    git commit -m $1
}

# PHP
alias phpspec="vendor/bin/phpspec"
alias phpunit="vendor/bin/phpunit"
alias art="php artisan"
alias c="composer"
alias cu="composer update"
alias ci="composer install"
alias composr="composer"
alias cmposer="composer"
alias compser="composer"
alias compsoer="composer"
alias dump="composer dump"

# Various
function digga() {
    dig +nocmd "$1" any +multiline +noall +answer
}

# Z
. ~/Sites/sebastiandedeyne/dotfiles/z.sh
