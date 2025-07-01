#' runArrayAnalysis
#' @return This function will run the ArrayAnalysis app
#' @examples runArrayAnalysis()
#' @export
runArrayAnalysis <- function(force.browser = FALSE){
  appDir <- system.file("myapp", package = "ArrayAnalysis")
  if (appDir == "") {
    stop("Could not find myapp. Try re-installing `ArrayAnalysis`.", call. = FALSE)
  }
  
    # if (packageVersion("shiny") > "1.10.0"){
    #   if ("shiny" %in% .packages()){
    #     detach("package:shiny", unload = TRUE, character.only = TRUE)
    #   }
    #   remove.packages("shiny")
    #   remotes::install_version("shiny",
    #                            "1.10.0",
    #                            repos = "https://cloud.r-project.org",
    #                            upgrade = "never")
    # }
  
  if (force.browser == FALSE){
    shiny::runApp(appDir, display.mode = "normal")
  } else{
    shiny::runApp(appDir, display.mode = "normal", launch.browser = TRUE)
  }
}