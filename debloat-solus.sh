#!/bin/sh

#sudo eopkg rmf --purge file-roller celluloid hexchat gedit libreoffice-common evince rhythmbox onboard seahorse system-config-printer hplip-drivers firefox eog doflicky nautilus baobab nano gnome-calendar gnome-system-monitor gnome-calculator gparted
sudo eopkg it mupdf pdfarranger img2pdf vlc mpv feh vim ranger nemo cmus brave nomacs ncdu alacritty tlp neofetch htop flameshot
sudo systemctl enable tlp
sudo systemctl start tlp
