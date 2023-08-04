#!/bin/sh

alias dconfig='/usr/bin/git --git-dir=$HOME/GIT_DOTFILES/ --work-tree=$HOME' 
alias sconfig='/usr/bin/git --git-dir=$HOME/GIT_SCRIPTS/ --work-tree=$HOME' 
	
#git init --bare $HOME/GIT_DOTFILES
#git init --bare $HOME/GIT_SCRIPTS
#config config --local status.showUntrackedFiles no
#git dconfig --global user.email "kennedyonipa@gmail.com"
#git dconfig --global init.defaultBranch main
cd ~/GIT_DOTFILES

dconfig add ~/.config/i3/config
dconfig commit -m "my i3wm configuration file"
dconfig add ~/.bashrc
dconfig commit -m "my bashrc file"
dconfig add ~/.vimrc
dconfig commit -m "my vimrc file"
dconfig add ~/.gtkrc-2.0
dconfig commit -m "my themes configuration"
dconfig add ~/.bash_history
dconfig commit -m "my shell history"
dconfig add ~/.config/picom.conf
dconfig commit -m "my picom configuration"
dconfig add ~/.config/qutebrowser/config.py
dconfig commit -m "my qutebrowser configuration"
dconfig add ~/.config/qutebrowser/quickmarks
dconfig commit -m "my qutebrowser quickmarks"
dconfig add ~/.config/qutebrowser/bookmarks/urls
dconfig commit -m "my qutebrowser bookmarks"
dconfig add ~/.config/i3/mint-config
dconfig commit -m "linux mint i3 configuration"

#dconfig add -u
#dconfig commit 
#dconfig status
#echo "How many commits? "
#read num
#for i in {1..$num}
#do
#  echo "Hello"
#done

#echo "Short description for commits: "
#read desc
#config commit -m "$desc"
#echo "Do another commit? (y/n)"
#read ans
#if [ "$ans" == "y" ]; then 
#	echo "Short description for commits: "
#	read desc
#	config commit -m "$desc"
#else
#	echo "Okay"
#fi

#no ssh-key
#git push --set-upstream https://github.com/kozm-git/dotfiles.git main 

#with ssh
dconfig pull --no-rebase --set-upstream git@github.com:kozm-git/dotfiles.git main
dconfig pull --set-upstream git@github.com:kozm-git/dotfiles.git main
git push --set-upstream git@github.com:kozm-git/dotfiles.git main

### GIT_DOTFILES ###

dconfig reset HEAD
git reset HEAD 
cd ~/GIT_SCRIPTS

sconfig add ~/audio-capture.sh
sconfig commit -m "sndcpy shell script"

sconfig add -u
sconfig commit 

#no ssh-key
#git push --set-upstream https://github.com/kozm-git/dotfiles.git main 

#with ssh
sconfig pull --no-rebase --set-upstream git@github.com:kozm-git/scripts.git main
sconfig pull --set-upstream git@github.com:kozm-git/scripts.git main
git push --set-upstream git@github.com:kozm-git/scripts.git main
