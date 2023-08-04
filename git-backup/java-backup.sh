#!/bin/sh

cd ~/Repos/java

#-------------------------First Run
#
#git init
#git add * 
#git commit -m "Added java files"
#git branch -M main
#git remote add origin git@github.com:kozm-git/java.git
#eval "$(ssh-agent -s)"
#ssh-add ~/.ssh/github_rsa
#git push -u origin main

#-------------------------Credentials(Optional)
#
#git config user.name "Kozm"
#git config user.email "kennedyonipa@gmail.com"

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/github_rsa

#-------------------------Stage and Commit

git add -u
git commit -m "Updated java file" 

git add *
git commit -m "Added java file"

#------------------------Pull and Push Changes

git pull 
git push 

#------------------------END
#echo "Done."
#echo "Press Enter"
#read
