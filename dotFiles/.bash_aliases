alias vi='vim $*'
alias ll='ls -alh --color=auto $*'
alias ls='ls --color $*'
alias cls='clear'
alias sp='sudo poweroff'
alias z='zsh'
alias home='cd ~'
alias config='cd ~/configFiles'
alias coding='cd ~/Coding'

alias g.='git add .'
alias gl='git log --oneline --all --graph --decorate $*'
alias gp='git push'
alias gs='git status'
alias gll='git pull'

alias aliases='vim ~/configFiles/dotFiles/.bash_aliases'
alias vimrc='vim ~/configFiles/dotFiles/.vimrc'
alias zshrc='vim ~/configFiles/dotFiles/.zshrc'

alias spm='sudo pacman $*'


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
