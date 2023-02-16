#!/bin/sh

sudo eopkg up -y
sleep 5

echo "Installing System Utilities...."
sleep 5
sudo eopkg install brighntessctl gufw nvidia-driver pavucontrol deja-dup evince picom i3 timeshift grsync nitrogen etcher flameshot cheese clipit nomacs keepassxc gcolor3 rofi simplescreenrecorder peek
sleep 5

echo "Installing Development Tools"
sleep 5
sudo eopkg install -c system-devel linux-current-headers linux-lts-headers geany codeblocks thonny vscode netbeans meld pycharm-ce pylint openssh-server
sleep 5

echo "Setting up openssh-server"
sudo systemctl enable --now sshd
sleep 3
systemctl -l --type service --all|grep ssh
sleep 3
ip a
sleep 3
systemctl restart sshd
sleep 5

echo "Installing Programs...."
sleep 5
sudo eopkg install simplenote geary virtualbox virt-manager shotcut kdenlive qbittorrent kdeconnect obs-studio dropbox brave qutebrowser discord telegram 
sleep 5

echo "Setting up virt-manager..."
sleep 1
./add2group $USER

echo "Installing Command Line Utilities...."
sleep 5
sudo eopkg arp-scan alpine aerc notmuch iftop iptraf mc vifm alsaequal alsamixer install ncmpcpp mpc mpd vim kitty cava neofetch htop cmatrix nmap cmus scrcpy yt-dlp pip glances cool-retro-term terminator ncdu adb feh ranger  
sleep 5

echo "Setting up ranger..."
sleep 1
ranger --copy-config-all
cd ~/.config/ranger
# enables image previews for ranger
sed '/user_preview_script/s/false/true/g' rc.conf
echo "ranger image preview enabled"
# w3m for image previews in ranger
# optional: xsel for copying paths or dirs in ranger
echo "Do you want to install xsel and w3m? (y/n)"
read answer
if [ "$answer" == "yes" ] 
  sudo eopkg install xsel w3m
else 
  sleep 5
fi

echo "Installing Other Programs/Utilities...."
sleep 5
sudo eopkg install tigervnc vlc gscan2pdf bleachbit gimp inkscape soundconverter pinta focuswriter spotify retroarch teamviewer
sleep 5

echo "Installing Theme Configuration Applications..."
sleep 5
sudo eopkg install -themes plank cairo-dock lxappearance pywal conky qt5ct lightdm-settings gnome-font-viewer bumblebee-status compton
sleep 5
