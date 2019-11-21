# ===== general ====
alias vi='vim $*'
alias ll='ls -alh --color=auto '
alias ls='ls --color '
alias cls='clear'
alias sp='sudo poweroff'
alias config='cd ~/configFiles'
alias coding='cd ~/Coding'
alias aliases='vim ~/configFiles/dotFiles/.bash_aliases'
alias vimrc='vim ~/configFiles/dotFiles/.vimrc'
alias zshrc='vim ~/configFiles/dotFiles/.zshrc'
alias .alias='source ~/.bash_aliases'

alias music='cd /run/media/basti/Pi-Storage/Music'

# ===== git ====
alias g.='git add .'
alias g.l='git log --oneline --all --graph --decorate $*'
alias g.push='git push'
alias g.s='git status'
alias g.pull='git pull'
alias g.diff='git diff HEAD'
alias g.branch='git branch -a'
alias g.remote='git remote -v'
alias g.config='vim ~/.gitconfig'

function gcm(){
    git commit -m "$*"
}

# ===== pacman ====
alias pc.llist='pacman -Qqe | less'   # list all local packages
alias pc.info='pacman -Si '
alias pc.search='pacman -Ss '       # search packages in repos
alias pc.install='sudo pacman -S '
alias pc.uninstall='sudo pacman -Rnssu '
alias pc.orphans='sudo pacman -Rns $(pacman -Qtdq)'  # remove orphan packages
alias pc.update='sudo pacman -Syu '
alias pc.clean='sudo pacman -Sc'
alias pc.cleanfull='sudo pacman -Scc'
alias pc.mirrors='sudo pacman-mirrors --country Germany,United_Kingdom,Austria,France'

alias y.music='youtube-dl -x --audio-format mp3 --audio-quality 1 '
