#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Tanish | Course: Open Source Software
# Alias example: alias cls='clear' (aliases create shortcuts for commands)

echo ""
echo "=== Open Source Manifesto Generator ==="
echo "Answer three questions to generate your manifesto."
echo ""

# Ask the user three questions using read
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does freedom mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Get the current date and username
DATE=$(date '+%d %B %Y')
AUTHOR=$(whoami)
OUTPUT="manifesto_$AUTHOR.txt"

# Write the manifesto to a file using > and >>
echo "=== OPEN SOURCE MANIFESTO ===" > $OUTPUT
echo "by $AUTHOR on $DATE" >> $OUTPUT
echo "" >> $OUTPUT
echo "I believe open source is built on $FREEDOM." >> $OUTPUT
echo "Every day I use $TOOL, which reminds me that" >> $OUTPUT
echo "the best software is shared freely." >> $OUTPUT
echo "" >> $OUTPUT
echo "I would love to build $BUILD and share it" >> $OUTPUT
echo "with the world for free." >> $OUTPUT
echo "" >> $OUTPUT
echo "- $AUTHOR, $DATE" >> $OUTPUT

# Show the saved file
echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
