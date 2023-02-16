#!/bin/sh

cd ~/Backups/scripts

git add -u
git commit -m "Updated shell script"

git pull
git push
