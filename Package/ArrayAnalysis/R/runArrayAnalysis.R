#' runArrayAnalysis
#' @return This function will run the ArrayAnalysis app
#' @examples runArrayAnalysis()
#' @export
runArrayAnalysis <- function(){
  appDir <- system.file("myapp", package = "ArrayAnalysis")
  if (appDir == "") {
    stop("Could not find myapp. Try re-installing `mypackage`.", call. = FALSE)
  }
  
  shiny::runApp(appDir, display.mode = "normal")
}