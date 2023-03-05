#!/bin/sh
#
#-------------------------Go to Repository 
cd ~/Repos/scripts
#-------------------------Credentials
#git config user.name "Kozm"
#git config user.email "kennedyonipa@gmail.com"

#-------------------------Stage and Commit
git add -u
git commit -m "Updated script" 

git add *
git commit -m "Added script"

#------------------------Pull and Push Changes
git pull
git push

#------------------------END
echo "Done."
read
