#!/bin/bash

# ================================================
# Script Name: oss_manifesto_creator.sh
# Author: Jeela Rithvika
# Purpose: Generate a personal Open Source statement
# ================================================

echo "======================================="
echo "   OPEN SOURCE MANIFESTO GENERATOR     "
echo "======================================="
echo ""

# Taking user inputs
read -p "Enter your name: " NAME
read -p "Favorite open-source tool: " TOOL
read -p "What does open source mean to you (one word)? " VALUE

# Get current date
TODAY=$(date +"%d-%m-%Y")

# Create manifesto content
TEXT="I, $NAME, strongly support open-source software.
Using $TOOL, I learned how collaboration improves technology.
For me, open source represents $VALUE.
Date: $TODAY"

# Save to file
echo "$TEXT" > oss_manifesto.txt

echo ""
echo "Your manifesto has been created successfully!"
echo "Saved as: oss_manifesto.txt"
echo "======================================="