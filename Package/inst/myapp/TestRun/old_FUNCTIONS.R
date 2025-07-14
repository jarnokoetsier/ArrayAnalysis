#==============================================================================#
# getCELS1()
#==============================================================================#

# DESCRIPTION:
# Unzip the celfiles and return the path to the unzipped folder

# VARIABLES:
# zippath: path to zip file
# shiny_upload: is it an object from shiny upload

getCELs1 <- function(zippath, shiny_upload = TRUE){
  tryCatch({
    unlink("Data_unzipped", recursive = TRUE, force = TRUE)
    if (shiny_upload){
      # Unzip files
      if(!file.exists(paste0("Data_unzipped/unzipped_",stringr::str_remove(zippath$name, ".zip")))){
        unzip(zippath$datapath, exdir = paste0("Data_unzipped/unzipped_",stringr::str_remove(zippath$name, ".zip")))
      }
      
      # list CEL files
      celfiles <- list.files(tail(list.dirs(paste0("Data_unzipped/unzipped_",stringr::str_remove(zippath$name, ".zip"))),1),
                             pattern = "CEL", 
                             full.names = TRUE) 
    }
    if (!shiny_upload){
      # Unzip files
      if(!file.exists(paste0("Data_unzipped/unzipped_",stringr::str_remove(zippath, ".zip")))){
        unzip(zippath, exdir = paste0("Data_unzipped/unzipped_",stringr::str_remove(basename(zippath), ".zip")))
      }
      
      # list CEL files
      celfiles <- list.files(tail(list.dirs(paste0("Data_unzipped/unzipped_",stringr::str_remove(basename(zippath), ".zip"))),1),
                             pattern = "CEL", 
                             full.names = TRUE) 
    }
    return(celfiles)
    
  }, error = function(cond){
    return(NULL)
  })
}

#==============================================================================#
# readCELs1()
#==============================================================================#

# DESCRIPTION:
# Read CEL files

# VARIABLES:
# celfiles: vector with path to each of the celfiles
# rm: remove unzipped directory

readCELs1 <- function(celfiles, zippath, rm = FALSE){
  tryCatch({
    if(!file.exists(paste0("Data_unzipped/unzipped_",stringr::str_remove(zippath, ".zip")))){
      unzip(zippath, exdir = paste0("Data_unzipped/unzipped_",stringr::str_remove(basename(zippath), ".zip")))
    }
    
    gxData <- affy::ReadAffy(filenames = celfiles)
    if(rm){unlink("./Data_unzipped/", recursive = TRUE, force = TRUE)}
    return(gxData)
  }, error = function(cond){
    gxData <- oligo::read.celfiles(filenames = celfiles)
    if(rm){unlink("Data_unzipped", recursive = TRUE, force = TRUE)}
    return(gxData)
  })
}
