#!/bin/sh
#
#-------------------------Go to Repository 

cd ~/Repos/asm

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

git pull
git push

#------------------------END
#echo "Done."
#echo "Press Enter"
#read
