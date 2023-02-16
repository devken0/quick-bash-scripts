#!/bin/sh

cd ~/Backups/scripts

cp ~/.config/i3/scripts/lock.sh ~/Backups/scripts

git add *
#git add -u
git commit -m "Updated script" 

git pull
git push
