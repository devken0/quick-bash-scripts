#!/bin/sh

#rclone sync -P ~/Archive/ tup:
rclone sync ~/Archive od-tup:PC\ Backup/Archive/
rclone sync ~/Downloads od-tup:PC\ Backup/Downloads/
rclone sync ~/Music od-tup:PC\ Backup/Music/
rclone sync ~/Pictures od-tup:PC\ Backup/Pictures/
rclone sync ~/Programming od-tup:PC\ Backup/Programming/
rclone sync ~/Videos od-tup:PC\ Backup/Programming/