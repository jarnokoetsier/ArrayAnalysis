#!/bin/bash

# Run the selected Shiny app
/usr/local/bin/R -e "if (!requireNamespace('remotes', quietly = TRUE)){install.packages('remotes', ask = FALSE, repos = 'https://cloud.r-project.org')};if (!requireNamespace('ArrayAnalysis', quietly = TRUE)){remotes::install_github('jarnokoetsier/ArrayAnalysis/Package')};if (packageVersion('ArrayAnalysis') < '0.1.0'){remotes::install_github('jarnokoetsier/ArrayAnalysis/Package')};ArrayAnalysis::runArrayAnalysis(force.browser = TRUE)"
