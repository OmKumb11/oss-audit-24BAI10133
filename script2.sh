#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Om (omkumb21) | Course: Open Source Software
PACKAGE='python3'
echo 'Checking system for python3...'
# Check if installed using dpkg
if dpkg -l $PACKAGE &>/dev/null; then
echo "$PACKAGE is installed."
dpkg -s $PACKAGE | grep -E 'Version|Description'
else
echo "$PACKAGE is NOT installed."; exit 1
fi
# Case statement: print philosophy note based on package name
case $PACKAGE in
python3) echo 'Python: A language shaped entirely by community' ;;
firefox) echo 'Firefox: A nonprofit fighting for an open web' ;;
git)     echo 'Git: The tool Linus built when proprietary failed him' ;;
vlc)     echo 'VLC: Plays anything — built by students in Paris' ;;
*)       echo 'An open-source tool powering the world.' ;;
esac