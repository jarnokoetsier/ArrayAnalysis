options(repos=c(CRAN="https://cran.r-project.org"))
print(paste0("ArrayAnalysis is using ", R.Version()$version.string))
wd <- commandArgs(T)[1] # Shiny app directory
rd <- dirname(wd) # Root repo directory

if (is.na(wd)) {

  stop("Please use run.bat to launch the application.")

} else {

  # Get packages listed in req.txt
  req <- readLines(file.path(rd, "req.txt"))

  #============================================================================#
  # Set R package library
  #============================================================================#
  
  #  If R is bundles (not relevant in ArrayAnalysis app)
  if (file.exists(file.path(rd, "R", "bin", "R.exe")) &
    .libPaths()[1] != file.path(rd, "R", "library")){
    lib_path <- file.path(rd, "R", "library")
    
  # If R is not bundled
  } else{
    
      lib_path <- file.path(Sys.getenv("R_LIBS_USER"))
      
      # Create the directory if it doesn't exist
      if (!dir.exists(lib_path)) {
        dir.create(lib_path, showWarnings = FALSE, recursive = TRUE)
      }
      
      .libPaths(lib_path)
  }

  #============================================================================#
  # Install missing packages
  #============================================================================#
  
  if (length(req) > 0) {
    missing_packages <- req[!(req %in% installed.packages()[,"Package"])]
    if (length(missing_packages) > 0) {
      install.packages(
        missing_packages,
        lib = lib_path,
        repos = "https://cloud.r-project.org",
        clean = T
      )
    }
  }

  # Load packages
  suppressPackageStartupMessages(invisible(lapply(req, library, character.only = T)))

  #============================================================================#
  # Run app
  #============================================================================#
  
  browser_path <- file.path(rd, "chrome", "chrome.exe")
  if (file.exists(browser_path)) {

    # Open in embedded browser (must use a specific port)
    shiny::runApp(
      appDir = file.path(wd),
      launch.browser = function(shinyurl) {
        system(paste0("\"", browser_path, "\" --app=", shinyurl, " -incognito"), wait = F)
      }
    )

  } else {

    # Open in default web browser
    shiny::runApp(appDir = file.path(wd), launch.browser = T)

  }

}
