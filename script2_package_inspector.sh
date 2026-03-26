#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Tanish | Course: Open Source Software

# Set the package name to check
PACKAGE="httpd"

echo ""
echo "========================================="
echo " FOSS Package Inspector"
echo " Package: $PACKAGE"
echo "========================================="
echo ""

# Check if the package is installed using dpkg
if dpkg -l $PACKAGE 2>/dev/null | grep -q "^ii"; then
    echo "$PACKAGE is installed."
    echo ""
    # Show package details using dpkg -s and grep
    dpkg -s $PACKAGE | grep "Version"
    dpkg -s $PACKAGE | grep "Description"
else
    echo "$PACKAGE is NOT installed."
fi

echo ""

# Print a philosophy note based on the package name
case $PACKAGE in
    httpd)
        echo "Apache: the web server that built the open internet." ;;
    apache2)
        echo "Apache: the web server that built the open internet." ;;
    mysql)
        echo "MySQL: open source at the heart of millions of apps." ;;
    firefox)
        echo "Firefox: a browser that fights for user privacy." ;;
    vlc)
        echo "VLC: plays everything, charges nothing." ;;
    nginx)
        echo "NGINX: open source innovation in web performance." ;;
    *)
        echo "$PACKAGE: an open-source gift from the community." ;;
esac

echo ""
