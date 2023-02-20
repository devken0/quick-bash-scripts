#!/bin/sh

# open a port
# adb tcpip 5555

# lower bitrate and resolution
# scrcpy --bit-rate 2M --max-size 800

# to uninstall sndcpy
# adb uninstall com.rom1v.sndcpy

# to enable usb again
# adb usb

# adb connect 192.168.1.2:5555
adb devices
#scrcpy -m 1024
scrcpy
