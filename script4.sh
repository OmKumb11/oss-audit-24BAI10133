#!/bin/bash
# Script 4: Log File Analyzer
# Author: Om (omkumb21) | Course: Open Source Software
# Usage: ./script4.sh /var/log/dpkg.log install
LOGFILE=$1
KEYWORD=${2:-'error'}   # default keyword if none provided
COUNT=0
if [ ! -f "$LOGFILE" ]; then echo "Error: $LOGFILE not found."; exit 1; fi
echo "Analyzing $LOGFILE for keyword: '$KEYWORD'..."
# Read file line by line and count matches
while IFS= read -r LINE; do
if echo "$LINE" | grep -iq "$KEYWORD"; then
COUNT=$((COUNT + 1))   # increment counter
fi
done < "$LOGFILE"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo 'Last 5 matching lines:'
grep -i "$KEYWORD" "$LOGFILE" | tail -5