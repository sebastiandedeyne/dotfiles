#!/usr/bin/env bash

# -- ZSH -----------------------------------------------------------------------

export ZSH=/Users/sebastiandedeyne/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# -- Bash ----------------------------------------------------------------------

export PATH=/usr/local/bin:$PATH

alias rip="rm -rf"
alias grep='grep -r --extended-regexp --color=auto --exclude-dir=.svn --exclude-dir=.git'

# -- Files & locations ---------------------------------------------------------

alias si="~/Sites"
alias hosts="sudo vi /etc/hosts"

# -- Vim settings --------------------------------------------------------------

export VISUAL=vim
export EDITOR="$VISUAL"
alias vi="vim"

# -- Git aliases ---------------------------------------------------------------

alias git="hub"
alias gadd="git add --all"
alias gap="git add -p"
alias gph="git push origin head"
alias gpu="git push -u origin master"
alias gl="git log --oneline --decorate --all --graph"
alias gc="git commit -m"
alias gs="git stash"
alias gsp="git stash pop"
alias gbc="git checkout -b"
alias pr="hub pull-request create"
alias rel="hub release create"
alias wip="gacp wip"

function gac {
    git add --all
    git commit -m $1
}

function gacp {
    git add --all;
    git commit -m $1
    git push origin head
}

function gam {
    git add --all
    git commit --amend -m $1
}

# -- PHP -----------------------------------------------------------------------

export PATH="$PATH:/$HOME/.composer/vendor/bin"

alias a="php artisan"
alias cu="composer update"
alias cr="composer require"
alias ci="composer install"
alias dump="composer dump"
alias comp="vi composer.json"
alias p="./vendor/bin/phpunit"
alias d="envoy run deploy"
alias dc="envoy run deploy-code"

phpv() {
    valet stop
    brew unlink php@7.0 php@7.1 php@7.2
    brew link --force --overwrite $1
    brew services start $1
    composer global update
    valet install
}

alias php70="phpv php@7.0"
alias php71="phpv php@7.1"
alias php72="phpv php"

# -- JavaScript ----------------------------------------------------------------

# NVM is pretty slow so it's disabled by default
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

alias y="yarn"
alias y!="rm -rf node_modules; yarn"
alias pack="vi package.json"
alias j="./node_modules/.bin/jest"
alias jw="./node_modules/.bin/jest --watch"

# -- MySQL ---------------------------------------------------------------------

function db {
    if [ "$1" = "refresh" ]; then
        mysql -uroot -e "drop database $2; create database $2"
    elif [ "$1" = "create" ]; then
        mysql -uroot -e "create database $2"
    elif [ "$1" = "drop" ]; then
        mysql -uroot -e "drop database $2"
    fi
}

# -- Apps ----------------------------------------------------------------------

alias s="subl ."
alias c="code ."
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

# -- Various -------------------------------------------------------------------

function digga {
    dig +nocmd "$1" any +multiline +noall +answer
}

# -- Z -------------------------------------------------------------------------

. ~/dotfiles/scripts/z.sh
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
