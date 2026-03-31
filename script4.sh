#!/bin/bash

# ================================================
# Script Name: log_file_audit.sh
# Author: Jeela Rithvika
# Purpose: Analyze a log file for specific patterns
# ================================================

# Input arguments
FILE_PATH=$1
SEARCH_KEY=${2:-"error"}   # default keyword

TOTAL=0

# Check if file exists
if [[ ! -f "$FILE_PATH" ]]; then
    echo "[ERROR] Log file not found: $FILE_PATH"
    exit 1
fi

# Wait until file is not empty
until [[ -s "$FILE_PATH" ]]; do
    echo "Log file is empty... waiting"
    sleep 2
done

echo "======================================="
echo "     LOG FILE ANALYSIS STARTED         "
echo "======================================="
echo "File    : $FILE_PATH"
echo "Keyword : $SEARCH_KEY"
echo "---------------------------------------"

# Read file line by line
while read -r text; do
    if [[ "$text" =~ $SEARCH_KEY ]]; then
        TOTAL=$((TOTAL + 1))
    fi
done < "$FILE_PATH"

# Display result
echo "Total Matches Found: $TOTAL"
echo ""
echo "Recent Matching Lines:"
grep -i "$SEARCH_KEY" "$FILE_PATH" | tail -5

echo "---------------------------------------"
echo "Analysis Completed"