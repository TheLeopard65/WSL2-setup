#!/bin/bash

# Check if the User is Root
if [ $(whoami) != "root" ]; then
    echo "SYNTAX: Please Run this script as ROOT or using SUDO"
    exit 1
fi

cp ./updatemywsl.sh /root/.updatemywsl.sh
PATH="/root/.updatemywsl.sh"
chmod 700 $PATH
JOB="0 0 1 * * $PATH"

# Check if the script file exists
if [ ! -f "$PATH" ]; then
    echo "ERROR: File not Found: $PATH"
    exit 1
fi

# Create the Cron job via a secure method
TMP=$(mktemp)
(crontab -l | grep -v "$PATH") > "$TMP"
echo "$JOB" >> "$TMP"
crontab "$TMP"
rm "$TMP"

# Final Echo
echo "SUCCESS: Cron job added successfully : $JOB"
