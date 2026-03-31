#!/bin/bash
# Script 1: System Information Display
# Author: Jeela Rithvika

# --- User Details ---
NAME="Jeela Rithvika"
TOOL="Git"

# --- Fetch System Details ---
OS_NAME=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')
KERNEL_VERSION=$(uname -r)
SYSTEM_UPTIME=$(uptime -p)

# --- Output Section ---
echo "======================================"
echo "        $TOOL System Audit Report     "
echo "======================================"
echo "Student Name : $NAME"
echo "Operating OS : $OS_NAME"
echo "Kernel Info  : $KERNEL_VERSION"
echo "System Uptime: $SYSTEM_UPTIME"
echo "License Info : GPL (Open Source License)"
echo "======================================"