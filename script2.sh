#!/bin/bash

# ================================================
# Script Name: git_checker.sh
# Author: Jeela Rithvika
# Purpose: Verify Git installation and display info
# ================================================

# Target software
APP_NAME="git"

echo "===== Checking Software: $APP_NAME ====="

# Check if Git exists using command -v
if command -v $APP_NAME >/dev/null 2>&1; then
    
    # Fetch version
    APP_VERSION=$($APP_NAME --version | cut -d' ' -f3)
    echo "[OK] $APP_NAME is installed."
    echo "Version : $APP_VERSION"
    
    # Describe purpose
    case "$APP_NAME" in
        git)
            echo "Description: Git is a distributed version control system."
            echo "It helps track changes and enables team collaboration."
            ;;
        *)
            echo "Description: General open-source software tool."
            ;;
    esac

else
    echo "[ERROR] $APP_NAME is not installed on this system."
    echo "Install using: sudo apt install $APP_NAME"
fi

echo "===== Process Finished ====="