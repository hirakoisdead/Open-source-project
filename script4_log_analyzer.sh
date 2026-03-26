#!/bin/bash
# Script 4: Log File Analyzer
# Author: Tanish | Course: Open Source Software
# Usage: ./script4_log_analyzer.sh /var/log/syslog error

# Get the log file and keyword from command line arguments
LOGFILE=$1
KEYWORD=$2
COUNT=0

# If no keyword given, use "error" as default
if [ -z "$KEYWORD" ]; then
    KEYWORD="error"
fi

# Check if the file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Check if the file is empty, retry 3 times
RETRY=1
while [ $RETRY -le 3 ]; do
    if [ -s "$LOGFILE" ]; then
        break
    fi
    echo "File is empty. Retry $RETRY..."
    sleep 2
    RETRY=$((RETRY + 1))
done

# Read the file line by line using a while loop
while IFS= read -r LINE; do
    # Check if the line contains the keyword
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# Print the result
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo ""

# Show the last 5 matching lines
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
