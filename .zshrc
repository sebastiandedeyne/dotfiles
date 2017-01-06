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
alias gpu="git push -u origin master"
alias gl="git log --oneline --decorate --all --graph"
alias gcm="git commit -m"
alias gs="git stash"
alias gsp="git stash pop"
alias gbc="git checkout -b"

function gac {
    git add --all
    git commit -m $1
}

function gacp { git add --all;
    git commit -m $1
    git push
}

function gmm {
    git checkout master
    git pull
    git merge -
    git push
    git checkout -
}


# -- PHP -----------------------------------------------------------------------


export PATH="$PATH:/$HOME/.composer/vendor/bin"

alias phpunit="vendor/bin/phpunit"
alias pun="phpunit"
alias punf="phpunit --filter"
alias phpspec="vendor/bin/phpspec"
alias spec="phpspec"
alias art="php artisan"
alias c="composer"
alias cu="composer update"
alias cr="composer require"
alias ci="composer install"
alias dump="composer dump"
alias comp="vi composer.json"


# -- JavaScript ----------------------------------------------------------------


export PATH="~/.yarn/bin:$PATH"

# https://gist.github.com/DanHerbert/9520689
NPM_PACKAGES="${HOME}/.npm-packages"
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"
unset MANPATH
MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

alias pack="vi package.json"
alias npmnpm="npm config set registry https://registry.npmjs.org"
alias npmspatie="npm config set registry https://npm.spatie.be"


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
alias br="defaultbrowser -set"


# -- Various -------------------------------------------------------------------


function digga {
    dig +nocmd "$1" any +multiline +noall +answer
}


# -- Z -------------------------------------------------------------------------


. ~/dotfiles/scripts/z.sh
