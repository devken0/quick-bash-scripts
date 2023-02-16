#!/bin/sh

# generate ssh-key for github

cd ~/.ssh
echo "Please enter your email: "
read email
ssh-keygen -t rsa -b 2048 -C "$email"
