#!/usr/bin/env bash


# -- ZSH -----------------------------------------------------------------------


export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh


# -- Pure ----------------------------------------------------------------------


autoload -U promptinit && promptinit
prompt pure
PROMPT='%(?.%F{green}.%F{red}❯%F{green})❯%f '


# -- Bash ----------------------------------------------------------------------


export PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"

alias rip="rm -rf"
alias grep='grep -r --extended-regexp --color=auto --exclude-dir=.svn --exclude-dir=.git'

function mk {
    mkdir -p $(dirname "$1") && touch "$1"
}


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
alias commit="git commit -m"
alias gs="git stash"
alias gsp="git stash pop"
alias gbc="git checkout -b"
alias pr="hub pull-request create"
alias rel="hub release create"

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

function gamp {
    git add --all
    git commit --amend -m $1
    git push origin head -f
}

# -- PHP -----------------------------------------------------------------------


export PATH="$PATH:/$HOME/.composer/vendor/bin"

# Composer
alias cu="composer update"
alias cr="composer require"
alias ci="composer install"
alias dump="composer dump"
alias comp="vi composer.json"

# PHPUnit
alias p="./vendor/bin/phpunit"
alias phpunit="./vendor/bin/phpunit"
alias pw="phpunit-watcher watch"

# PHPSpec
alias spec="./vendor/bin/phpspec"

# Laravel
alias a="php artisan"
alias deps="composer install; yarn"

# Envoy
alias d="envoy run deploy"
alias dc="envoy run deploy-code"


# -- JavaScript ----------------------------------------------------------------


PATH="${HOME}/.npm-packages/bin:$PATH"

alias y="yarn"
alias ya="yarn add"
alias yu="yarn upgrade"
alias y!="rm -rf node_modules; yarn"
alias n="npm"
alias ni="npm install"
alias nu="npm update"
alias pack="vi package.json"
alias j="./node_modules/.bin/jest"


# -- Go ------------------------------------------------------------------------


export GOPATH="/Users/sebastiandedeyne/go"


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


alias phpstorm='open -a /Applications/PhpStorm.app "`pwd`"'
alias s='open -a /Applications/Sublime\ Text.app "`pwd`"'
alias c="code ."
alias br="defaultbrowser -set"


# -- Various -------------------------------------------------------------------

alias deps="composer install; yarn"
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

function digga {
    dig +nocmd "$1" any +multiline +noall +answer
}


# -- Z -------------------------------------------------------------------------


. ~/dotfiles/scripts/z.sh
export PATH="/usr/local/opt/sqlite/bin:$PATH"
