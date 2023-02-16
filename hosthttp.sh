#!/bin/sh

echo "Remember to close all https/http websites first!!"
ip a | grep enp3s0 
echo "Copy your ip address!"
echo "Indicate the path/directory you would like to share:"
read path
sudo python3 -m http.server 40 --directory $path 
