alias vi='vim $*'
alias ll='ls -al --color=auto $*'
alias ls='ls --color $*'
alias cls='clear'
alias sp='sudo poweroff'

alias g.='git add .'
alias gl='git log --oneline --all --graph --decorate $*'
alias gp='git push'
alias gs='git status'
alias gll='git pull'

function gcm(){
    git commit -m "$*"
}

function gco(){
    gcc -o $1 $2 -lm
}

function gcor(){
    gcc -o $1 $2 -lm
    ./$1
}
