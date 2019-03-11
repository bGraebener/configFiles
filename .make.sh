#!/bin/bash
#.make.sh

dir=~/configFiles
olddir=~/configFiles_old
dotFiles=".bashrc .bash_aliases .vimrc .gitconfig .tmux.conf .zshrc"

echo "backing up old configfiles to $olddir"
mkdir -p $olddir
echo "created $olddir ..."

for file in $dotFiles; do
  if [ -h ~/$file ]; then 
      echo "deleting existing symbolic link to $file..."
      rm ~/$file
  elif [ -e ~/$file ]; then 
      echo "Moving existing file to backup folder ..."
      mv ~/$file $olddir
  fi
      echo "Creating Symlink to $file in home directory..."
      ln -s $dir/$file ~/$file
done
