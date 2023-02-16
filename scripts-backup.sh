#!/bin/sh

cd ~/Backups/scripts

git add *
#git add -u
git commit -u 

git pull
git push
