#!/bin/sh

cd ~/Backups/scripts

git add -u
git commit -m "Updated"

git pull
git push
