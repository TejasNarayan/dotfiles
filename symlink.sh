#!/bin/bash
######################################################################################
# Makes symlinks to the files in ~/dotfiles.
#
# Based off: http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
#####################################################################################

dir=~/dotfiles
olddir=~/dotfiles_backup
files="i3 oh-my-zsh vimrc zshrc"

#Make the folder for the backups
mkdir -p $olddir

# Go into the dotfiles directory
cd $dir

for file in $files; do
	mv ~/.$file $olddir/
	ln -s $dir/$file ~/.$file
done

echo "Done"
