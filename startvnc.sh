#!/bin/sh

#sudo eopkg it tigervnc

#set password
#vncpasswd
x0vncserver -display=:0 -PasswordFile=/home/mc/.vnc/passwd
