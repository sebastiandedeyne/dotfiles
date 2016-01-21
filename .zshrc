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
alias si="~/Sites"
alias dotfiles="~/dotfiles"

# Bash
alias rip="rm -rf"

# Vim
export VISUAL=vim
export EDITOR="$VISUAL"
alias vi="vim"

# Git
alias gadd="git add --all"
alias gpu="git push -u origin master"
alias goops="git add --all && git commit -m \"Minor fix for last commit\""
alias gl="git log --oneline --decorate --all --graph"
alias gcm="git commit -m"
alias gs="git stash"
alias gsp="git stash pop"

function gac {
    git add --all
    git commit -m $1
}

function gacp {
    git add --all
    git commit -m $1
    git push
}

function gdevm {
    git checkout master
    git merge develop
    git push
    git checkout develop
    git push
}

function github {
    git clone git@github.com:$1.git $2
}
alias gh="github"

function bitbucket {
    git clone git@bitbucket.org:$1 $2
}
alias bb="bitbucket"

function bbo {
    remote=$(git config --get remote.origin.url)
    remote=${remote#"git@bitbucket.org:"}
    remote=${remote%".git"}

    open "https://bitbucket.org/${remote}"
}

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
alias phpunit="vendor/bin/phpunit"
alias pun="phpunit"
alias phpspec="vendor/bin/phpspec"
alias spec="phpspec"
alias art="php artisan"
alias c="composer"
alias cu="composer update"
alias cr="composer require"
alias ci="composer install"
alias dump="composer dump"

# JS
alias ni="npm install"

# Various
function digga {
    dig +nocmd "$1" any +multiline +noall +answer
}

# Z
. ~/dotfiles/scripts/z.sh
