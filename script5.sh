#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Om (omkumb21) | Course: Open Source Software
echo "================================================"
echo "       The Open Source Manifesto Generator"
echo "================================================"
echo "Answer three questions to generate your manifesto."
# Collect user input interactively
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"
# Write manifesto to file using brace group + single redirect
{
echo 'My Open Source Manifesto'
echo "Date: $DATE"
echo "As a developer, I rely on open-source tools like $TOOL to learn and create."
echo "To me, the true essence of open source can be summarized in one word: $FREEDOM."
echo "I plan to build a $BUILD and share it openly with the world."
} > $OUTPUT
echo "Manifesto generated and saved to: $OUTPUT"
cat $OUTPUT   # display the saved file