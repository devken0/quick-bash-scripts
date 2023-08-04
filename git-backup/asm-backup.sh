#!/bin/sh

cd ~/Repos/asm

#-------------------------Create New Repository
#
#git init
#git branch -M main
#git remote add origin https://github.com/kozm-git/py.git

#-------------------------Credentials
#
#git config user.name "Kozm"
#git config user.email "kennedyonipa@gmail.com"

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/github_rsa

#-------------------------Stage and Commit

git add -u
git commit -m "Updated assembly file" 

git add *
git commit -m "Added assembly file"

#------------------------Pull and Push Changes

git pull -u origin main
#git push
git push -u origin main

#------------------------END
#echo "Done."
#echo "Press Enter"
#read
