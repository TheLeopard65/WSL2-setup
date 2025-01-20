#!/bin/bash

# Check if the User is Root
if [ "$(whoami)" != "root" ]; then
    echo "SYNTAX: Please run this script as ROOT or using SUDO"
    exit 1
fi

# Define paths
SCRIPT_SRC="./updatemywsl.sh"
SCRIPT_DEST="/root/.updatemywsl.sh"
LOG_FILE="/var/log/updatemywsl.log"

# Copy the script
cp "$SCRIPT_SRC" "$SCRIPT_DEST"
if [ $? -ne 0 ]; then
    echo "ERROR: Failed to copy $SCRIPT_SRC to $SCRIPT_DEST"
    exit 1
fi

# Set permissions
chmod 700 "$SCRIPT_DEST"

# Define the cron job
JOB="0 0 1 * * $SCRIPT_DEST >> $LOG_FILE 2>&1"

# Check if the script file exists
if [ ! -f "$SCRIPT_DEST" ]; then
    echo "ERROR: File not found: $SCRIPT_DEST"
    exit 1
fi

# Create the cron job via a secure method
TMP=$(mktemp)
crontab -l 2>/dev/null | grep -v "$SCRIPT_DEST" > "$TMP"
echo "$JOB" >> "$TMP"
crontab "$TMP"
if [ $? -ne 0 ]; then
    echo "ERROR: Failed to install new crontab"
    rm "$TMP"
    exit 1
fi
rm "$TMP"

# Final Echo
echo "SUCCESS: CRON-JOB added successfully: $JOB"
