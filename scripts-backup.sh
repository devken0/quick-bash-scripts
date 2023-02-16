#!/bin/sh

cd ~/Backups/scripts

git add *
#git add -u
git commit -m "Updated script" 

git pull
git push
