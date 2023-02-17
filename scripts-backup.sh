#!/bin/sh

cp *.sh ~/Backups/scripts
cd ~/Backups/scripts

git add -u
git commit -m "Updated script" 

git add *
git commit -m "Added script"

git pull
git push
