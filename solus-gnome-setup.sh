#!/bin/sh

# update system
#sudo eopkg up -y

# install drivers
#sudo eopkg install egl-wayland nvidia-glx-driver-common nvidia-glx-driver-current

# remove packages
#sudo eopkg rmf --purge hexchat libreoffice-common libreoffice-calc libreoffice-writer libreoffice-impress thunderbird system-config-printer onboard firefox gedit

# install packages from official repo
sudo eopkg install chrome-gnome-shell libreoffice-draw burp openjdk-17 filezilla gcolor3 keepassxc etcher cheese clipit gufw vlc android-tools wget deja-dup grsync vim git pavucontrol geary brave geany flameshot peek obs-studio tigervnc htop neofetch yt-dlp ncdu simplenote shotcut kdenlive qbittorrent dropbox discord telegram kdeconnect linux-current-headers linux-lts-headers codeblocks thonny meld openssh-server gnome-screenshot
sudo eopkg install -c system-devel
#sudo eopkg install -c system-devel gcolor3 keepassxc etcher cheese clipit gufw vlc android-tools wget deja-dup grsync vim git pavucontrol geary brave geany flameshot peek obs-studio tigervnc htop neofetch yt-dlp ncdu simplenote shotcut kdenlive qbittorrent dropbox discord telegram kdeconnect linux-current-headers codeblocks thonny meld openssh-server gnome-screenshot

# setting up virt-manager
sudo systemctl enable libvirtd
sudo systemctl start libvirtd
sudo usermod -G libvirt -a mc 

# installing 3rd party apps
# 2 packages installed through solus-sc(software center)
# gitkraken pycharm-ce

# install packages from other sources
#wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash
#cd ~/Downloads
#git clone https://github.com/rom1v/sndcpy.git
# install xampp and java
#git clone https://github.com/realmazharhussain/gdm-settings.git

# setup flatpak 
#sudo eopkg install flatpak xdg-desktop-portal-gtk
#flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
#echo "System will reboot in 5 seconds"
#sleep 5
#systemctl reboot
