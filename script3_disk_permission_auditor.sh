#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Tanish | Course: Open Source Software

# List of directories to check
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo ""
echo "Directory Audit Report"
echo "----------------------"

# Loop through each directory using a for loop
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Get permissions and owner using ls -ld
        PERMS=$(ls -ld $DIR | awk '{print $1}')
        OWNER=$(ls -ld $DIR | awk '{print $3}')
        # Get size using du -sh
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Perms: $PERMS | Owner: $OWNER | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo ""
echo "--- Software Config Check ---"

# Check if Apache config directory exists
if [ -d "/etc/apache2" ]; then
    echo "/etc/apache2 exists"
    ls -ld /etc/apache2
elif [ -d "/etc/httpd" ]; then
    echo "/etc/httpd exists"
    ls -ld /etc/httpd
else
    echo "Apache config directory not found."
fi

echo ""
