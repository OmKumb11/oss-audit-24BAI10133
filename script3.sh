#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Om (omkumb21) | Course: Open Source Software
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
echo "================================================"
echo "           Directory Audit Report"
echo "================================================"
for DIR in "${DIRS[@]}"; do          # loop through directory array
if [ -d "$DIR" ]; then             # check directory exists
PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')  # permissions + owner
SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)         # disk usage
echo "$DIR => Permissions: $PERMS | Size: $SIZE"
else
echo "$DIR does not exist on this system"
fi
done
# Check Python config directory specifically
PYDIR='/etc/python3'
if [ -d "$PYDIR" ]; then
ls -ld $PYDIR | awk '{print "Permissions:", $1, $3, $4}'
fi