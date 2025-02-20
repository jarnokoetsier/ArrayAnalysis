#!/bin/bash

# Set app directory
APP_DIR=$(cd "$(dirname "$0")"; pwd)

# Path to Shiny app
cd "$APP_DIR"
echo "Current directory: $(pwd)"

# Run the selected Shiny app
#R -e "if (!requireNamespace("shiny", quietly = TRUE)){install.packages("shiny", ask = FALSE, repos = "https://cloud.r-project.org")}"
#R -e "shiny::runApp(appDir = 'app', launch.browser = TRUE)"
