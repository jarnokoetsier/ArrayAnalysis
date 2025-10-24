#!/bin/bash

# Run the selected Shiny app
R -e "if (!requireNamespace('remotes', quietly = TRUE)){install.packages('remotes', ask = FALSE, repos = 'https://cloud.r-project.org')};if (!requireNamespace('ArrayAnalysis', quietly = TRUE)){remotes::install_github('jarnokoetsier/ArrayAnalysis/Package')};if (packageVersion('ArrayAnalysis') < '0.1.2'){remotes::install_github('jarnokoetsier/ArrayAnalysis/Package')};ArrayAnalysis::runArrayAnalysis(force.browser = TRUE)"
