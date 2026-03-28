#!/bin/bash
# Script 1: System Identity Report
# Author: Tanish | Course: Open Source Software

# Store student details in variables
STUDENT_NAME="Tanish Kumar Kar"
SOFTWARE_CHOICE="Linux Kernel"

# Get system info using command substitution
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date)
DISTRO_NAME=$(cat /etc/os-release | grep "PRETTY_NAME" | cut -d'"' -f2)

# Display the report using echo
echo ""
echo "================================"
echo " Open Source Audit"
echo " Student: $STUDENT_NAME"
echo "================================"
echo "Distribution : $DISTRO_NAME"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Home Dir     : $HOME_DIR"
echo "Uptime       : $UPTIME"
echo "Date/Time    : $CURRENT_DATE"
echo "================================"
echo "This OS is licensed under the"
echo "GNU General Public License v2."
echo "================================"
echo ""
