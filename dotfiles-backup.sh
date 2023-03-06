#!/bin/sh
#
#-----------------------------Go to Repository
cd ~/Repos/dotfiles
#-----------------------------Credentials
#
#git config user.name "kozm-git"
#git config user.email "kennedyonipa@gmail.com"
#
#----------------------------Copying Files to Backup
#
cp ~/.bash_history ~/Repos/dotfiles
#cp ~/.vimrc ~/Repos/dotfiles
cp ~/.config/pavucontrol.ini ~/Repos/dotfiles

cp ~/.bashrc arcolinux
cp ~/.gtkrc-2.0 arcolinux
cp ~/.config/alacritty/alacritty.yml arcolinux/.config/alacritty
cp ~/.config/archlinux-logout/archlinux-logout.conf arcolinux/.config/i3 
cp ~/.config/i3/launcher/rofi/colors.rasi arcolinux/.config/i3
cp ~/.config/i3/launcher/rofi/launcher.rasi arcolinux/.config/i3
cp ~/.config/i3/launcher/launcher.sh arcolinux/.config/i3
cp ~/.config/i3/scripts/i3exit.sh arcolinux/.config/i3
cp ~/.config/i3/scripts/picom-toggle.sh arcolinux/.config/i3
cp ~/.config/i3/cheatsheet.md arcolinux/.config/i3
cp ~/.config/i3/config arcolinux/.config/i3
cp ~/.config/i3/i3status.conf arcolinux/.config/i3
cp ~/.config/i3/picom.conf arcolinux/.config

#--------------------------------Stage and Commit
#
##----------general dotfiles
git add .bash_history
git commit -m "my shell history"
#git add .vimrc
#git commit -m "my vimrc file"
git add pavucontrol.ini
git commit -m "my pavucontrol config"

##---------current setup dotfiles
git add arcolinux/.bashrc
git commit -m "my arcolinux bashrc file"
git add arcolinux/.gtkrc-2.0
git commit -m "my arcolinux themes configuration"
git add arcolinux/.config/alacritty/alacritty.yml 
git commit -m "arcolinux alacritty config"
git add arcolinux/.config/i3/archlinux-logout.conf
git commit -m "arcolinux logout config"
git add arcolinux/.config/i3/colors.rasi
git commit -m "arcolinux rofi colors"
git add arcolinux/.config/i3/launcher.rasi
git commit -m "arcolinux rofi launcher config"
git add arcolinux/.config/i3/launcher.sh
git commit -m "arcolinux rofi launcher script"
git add arcolinux/.config/i3/i3exit.sh
git commit -m "arcolinux i3bar logout script"
git add arcolinux/.config/i3/picom-toggle.sh 
git commit -m "arcolinux picom script"
git add arcolinux/.config/i3/cheatsheet.md 
git commit -m "arcolinux-i3 cheatsheet"
git add arcolinux/.config/i3/config 
git commit -m "arcolinux-i3 configuration"
git add arcolinux/.config/i3/i3status.conf 
git commit -m "arcolinux-i3-status configuration"
git add arcolinux/.config/picom.conf 
git commit -m "arcolinux picom configuration"

##----------old stage and commits
#git add mint/.config/i3/config
#git commit -m "linux mint i3 configuration"
#git add solus/.bashrc
#git commit -m "my solus bashrc file"
#git add solus/.gtkrc-2.0
#git commit -m "my solus themes configuration"
#git add solus/.config/i3/config 
#git commit -m "solus-i3 configuration"
#git add solus/.config/picom.conf 
#git commit -m "solus picom configuration"
#git add solus/.config/qutebrowser/config.py
#git commit -m "solus qutebrowser config"
#git add solus/.config/qutebrowser/quickmarks
#git commit -m "solus qutebrowser quickmarks"
#git add solus/.config/qutebrowser/urls
#git commit -m "solus qutebrowser bookmarks"
#
#-------------------------------Pull Changes
#
git pull

#-------------------------------Push Changes
#
git push

#-------------------------------END
echo "Done."
echo "Press Enter"
read
