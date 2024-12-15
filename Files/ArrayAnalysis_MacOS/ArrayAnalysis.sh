#!/bin/bash

# Enable strict mode
set -euo pipefail

# Define the root directory
RootDir="$( cd "$( echo "${BASH_SOURCE[0]%/*}" )"; pwd )"
RPathFound=false

for dir in "/Applications/R.app/Contents/MacOS/"; do
    if [[ -x "$dir/R" ]]; then
        R="$dir/R"
        RPathFound=true
        break
    fi
done


# If R is still not found, prompt the user
while [[ "$RPathFound" = false ]]; do
    read -p "Cannot detect R installation location. Please specify the full path to your R installation (R binary): " R
    if [[ -x "$R" ]]; then
        RPathFound=true
    else
        echo "The specified path does not exist or is not executable. Please try again."
    fi
done

# Run the selected Shiny app
cd "$RootDir"/app
"$R" -e 'if (!requireNamespace("shiny", quietly = TRUE)){install.packages("shiny", ask = FALSE, repos = "https://cloud.r-project.org")}'
"$R" -e 'shiny::runApp(launch.browser = TRUE)'
