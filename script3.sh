#!/bin/bash

# ================================================
# Script Name: system_log_checker.sh
# Author: Jeela Rithvika
# Purpose: Scan system logs for specific keywords
# ================================================

# Default log file (Linux systems)
LOG_PATH="/var/log/syslog"

echo "======================================="
echo "        SYSTEM LOG CHECKER             "
echo "======================================="

# Ask user for input
read -p "Enter a keyword to search (e.g., error, fail, warning): " SEARCH_TERM

echo ""
echo "Scanning logs for: $SEARCH_TERM ..."
echo "---------------------------------------"

# Count matches
MATCH_COUNT=$(grep -i "$SEARCH_TERM" "$LOG_PATH" | wc -l)

# Condition check
if [ "$MATCH_COUNT" -eq 0 ]; then
    echo "[SAFE] No matching entries found."
else
    echo "[WARNING] $MATCH_COUNT matches found!"
    echo ""
    echo "Recent entries:"
    
    # Show last 5 results
    grep -i "$SEARCH_TERM" "$LOG_PATH" | tail -5
fi

echo "---------------------------------------"
echo "Scan Completed"