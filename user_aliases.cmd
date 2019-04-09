;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here

e.=explorer .
e =explorer $1

ls=ls --show-control-chars -F --color $*
ll=ls -al --color $*

ss=scoop status
su=scoop update $*
sc=scoop search | grep $*
sl=scoop list

pwd=cd
clear=cls
history=cat "%CMDER_ROOT%\config\.history"
unalias=alias /d $1
vi=vim $*
cmderr=cd /d "%CMDER_ROOT%"
conf=cd /d "c:\users\Basti\Coding\configFiles" >NUL 2>&1 || cd /d "g:\coding\configs\"
home=cd %HOME%
vimrc=vim "c:\users\basti\coding\configFiles\.vimrc"
aliases=vim "c:\users\basti\coding\configFiles\.user_aliases.cmd"


gl=git log --oneline --all --graph --decorate  $*
g.=git add .
gp=git push
gs=git status
gll=git pull
gc=git commit -m "$*"
