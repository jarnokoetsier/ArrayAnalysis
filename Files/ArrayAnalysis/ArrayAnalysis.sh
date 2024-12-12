#!/bin/bash

# Enable strict mode
set -euo pipefail

# Define the root directory
RootDir="$(dirname "$0")"
RPathFound=false

# First, try to find R in the portable directory
if [[ -x "$RootDir/R/bin/R" ]]; then
    R="$RootDir/R/bin/R"
    RPathFound=true
fi

# If not found, search for R in default installation paths
if [[ "$RPathFound" = false ]]; then
    for dir in "/usr/lib/R" "/usr/local/lib/R"; do
        if [[ -x "$dir/bin/R" ]]; then
            R="$dir/bin/R"
            RPathFound=true
            break
        fi
    done
fi

# If R is still not found, prompt the user
while [[ "$RPathFound" = false ]]; do
    read -p "Cannot detect R installation location. Please specify the full path to your R installation (R binary): " R
    if [[ -x "$R" ]]; then
        RPathFound=true
    else
        echo "The specified path does not exist or is not executable. Please try again."
    fi
done

# Find directories containing Shiny apps
declare -a apps
appCount=0
for dir in "$RootDir"/*/; do
    dirName="$(basename "$dir")"
    if [[ "$dirName" != "R" && "$dirName" != "chrome" ]]; then
        apps+=("$dirName")
        ((appCount++))
    fi
done

# Exit if no apps are found
if [[ "$appCount" -eq 0 ]]; then
    echo "No Shiny apps were found. Make sure you have at least one folder containing a Shiny app."
    exit 1
fi

# If only one app is found, skip selection
if [[ "$appCount" -eq 1 ]]; then
    AppDir="$RootDir/${apps[0]}"
else
    echo "====== Shiny App Launcher ======"
    for i in "${!apps[@]}"; do
        echo "$((i + 1)). ${apps[i]}"
    done
    echo

    while true; do
        read -p "Select application to launch (1-$appCount): " opt
        if [[ "$opt" =~ ^[1-9][0-9]*$ ]] && ((opt >= 1 && opt <= appCount)); then
            AppDir="$RootDir/${apps[$((opt - 1))]}"
            break
        else
            echo "Invalid input. Please enter a number between 1 and $appCount."
        fi
    done
fi

# Run the selected Shiny app
"$R" --no-save --slave -f "$RootDir/run.R" --args "$AppDir"
