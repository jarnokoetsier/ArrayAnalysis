#' runArrayAnalysis
#' @return This function will run the ArrayAnalysis app
#' @examples runArrayAnalysis()
#' @export
runArrayAnalysis <- function(force.browser = FALSE){
  appDir <- system.file("myapp", package = "ArrayAnalysis")
  if (appDir == "") {
    stop("Could not find myapp. Try re-installing `ArrayAnalysis`.", call. = FALSE)
  }
  
  if (force.browser == FALSE){
    shiny::runApp(appDir, display.mode = "normal")
  } else{
    shiny::runApp(appDir, display.mode = "normal", launch.browser = TRUE)
  }
}