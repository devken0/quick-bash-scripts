#!/bin/sh

cp ~/.config/i3/config ~/Backups/dotfiles
cp ~/.config/i3/mint-config ~/Backups/dotfiles
cp ~/.config/qutebrowser/config.py ~/Backups/dotfiles
cp ~/.config/qutebrowser/quickmarks ~/Backups/dotfiles
cp ~/.config/qutebrowser/bookmarks/urls ~/Backups/dotfiles
cp ~/.bashrc ~/Backups/dotfiles
cp ~/.vimrc ~/Backups/dotfiles
cp ~/.gtkrc-2.0 ~/Backups/dotfiles
cp ~/.bash_history ~/Backups/dotfiles
cp ~/.config/picom.conf ~/Backups/dotfiles

cd ~/Backups/dotfiles

git add config
git commit -m "my i3wm configuration file"
git add .bashrc
git commit -m "my bashrc file"
git add .vimrc
git commit -m "my vimrc file"
git add .gtkrc-2.0
git commit -m "my themes configuration"
git add .bash_history
git commit -m "my shell history"
git add picom.conf
git commit -m "my picom configuration"
git add config.py
git commit -m "my qutebrowser configuration"
git add quickmarks
git commit -m "my qutebrowser quickmarks"
git add urls
git commit -m "my qutebrowser bookmarks"
git add mint-config
git commit -m "linux mint i3 configuration"

#git add *
#git add -u
#git commit -m "Updated script" 

git pull
git push
