#!/bin/bash
f="/var/log/syslog"

if [ ! -f "$f" ]; then
    echo "$f does not exist!"
    exit
fi

touch "$f"
MAXSIZE=$((1 * 1024))

size=$(du -b "$f" | tr -s '\t' ' ' | cut -d' ' -f1)
if [ "$size" -gt "$MAXSIZE" ]; then
    echo Rotating!
    timestamp=$(date +%s)
    mv "$f" "/var/lib/jenkins/backup.$timestamp"
    touch "$f"
fi
