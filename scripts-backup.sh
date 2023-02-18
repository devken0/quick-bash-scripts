#!/bin/sh

#cp *.sh ~/Repos/scripts
cd ~/Repos/scripts

git add -u
git commit -m "Updated script" 

git add *
git commit -m "Added script"

git pull
git push
