#!/usr/bin/env bash

MYDOTFILES="$(cd "$(dirname "$0")" && pwd)"

# ZSH
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Private stuff
source $MYDOTFILES/.zshrc-private

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
alias goops="git add --all && git commit -m \"Minor fix for last commit\""

function gac {
    git add --all
    git commit -m $1
}

function github {
    git clone git@github.com:$1.git
}
alias gh="github"

function bitbucket {
    git clone git@bitbucket.org:$1
}
alias bb="bitbucket"

# Usage: phpackage package-name
function phpackage {
    git clone git@github.com:thephpleague/skeleton.git $1
    cd $1
    rm -rf .git
    find ./ -type f -exec sed -i '' -e "s/:package_name/${1}/g" {} \;
    find ./ -type f -exec sed -i '' -e "s/thephpleague/spatie/g" {} \;
    find ./ -type f -exec sed -i '' -e "s/league/spatie/g" {} \;
    find ./ -type f -exec sed -i '' -e "s/:author_name/Sebastian De Deyne/g" {} \;
    find ./ -type f -exec sed -i '' -e "s/:author_email/sebastian@spatie\.be/g" {} \;
    find ./ -type f -exec sed -i '' -e "s/:author_username/sebastiandedeyne/g" {} \;
    find ./ -type f -exec sed -i '' -e "s/:author_website/https:\/\/spatie\.be/g" {} \;
}

# PHP
alias phpspec="vendor/bin/phpspec"
alias phpunit="vendor/bin/phpunit"
alias pun="phpunit"
alias art="php artisan"
alias c="composer"
alias cu="composer update"
alias cr="composer require"
alias ci="composer install"
alias composr="composer"
alias cmposer="composer"
alias compser="composer"
alias compsoer="composer"
alias dump="composer dump"

# Various
function digga {
    dig +nocmd "$1" any +multiline +noall +answer
}

# Z
. ~/Sites/sebastiandedeyne/dotfiles/z.sh
