#!/bin/sh

username=$1

LC_ALL=C lscpu | grep Virtualization

sudo systemctl enable libvirtd
sudo systemctl start libvirtd
sudo usermod -G libvirt -a $username 
