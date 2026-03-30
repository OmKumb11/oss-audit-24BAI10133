#!/bin/bash
# Script 1: System Identity Report
# Author: Om (omkumb21) | Course: Open Source Software
STUDENT_NAME="Om"
SOFTWARE_CHOICE="Python"
KERNEL=$(uname -r)                  # capture kernel version
USER_NAME=$(whoami)                 # capture current user
UPTIME=$(uptime -p)                 # human-readable uptime
DISTRO=$(lsb_release -ds 2>/dev/null) # distro name
DATE_TIME=$(date "+%a %b %d %H:%M:%S UTC %Y")
echo "================================"
echo "       The Open Source Audit"
echo "================================"
echo "Student Name: $STUDENT_NAME"
echo "Software     : $SOFTWARE_CHOICE"
echo "Distro  : $DISTRO"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME"
echo "Date    : $DATE_TIME"
echo "Uptime  : $UPTIME"
echo "OS License : GNU GPL"
echo "================================"