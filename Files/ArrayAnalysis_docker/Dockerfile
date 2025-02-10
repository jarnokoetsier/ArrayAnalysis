# Base R Shiny image
FROM rocker/shiny

# Copy the Shiny app code
COPY /app ./app
COPY /configure ./configure

# Install R dependencies
RUN Rscript configure/InstallPackages.R

# Expose the application port
EXPOSE 3838

# Run the R Shiny app
CMD ["R", "-e", "shiny::runApp('/app', host = '0.0.0.0', port = 3838)"]