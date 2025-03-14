
# Set working directory
setwd("/configure")

#******************************************************************************#
#CRAN packages
#******************************************************************************#
install.packages("textshaping", dependencies = TRUE,ask = FALSE,
                 repos = "https://cloud.r-project.org")

# Get required CRAN packages
CRANpackages <- read.table("CRANpackages.txt", header = TRUE)

# Install remotes package
if (!requireNamespace("remotes", quietly = TRUE)){
  install.packages("remotes", ask = FALSE)
}
require("remotes", character.only = TRUE)

#Install (if not yet installed) and load the required packages: 
for (pkg in 1:nrow(CRANpackages)) {
  
  # Install latest version
  if (CRANpackages$direction[pkg] == "smaller"){
    
    # Install package if not installed
    if (!requireNamespace(CRANpackages$name[pkg], quietly = TRUE)){
      install.packages(CRANpackages$name[pkg], 
                       ask = FALSE,
                       repos = "https://cloud.r-project.org")
    } else {
      
      #Install package if package version is too low:
      if (packageVersion(CRANpackages$name[pkg]) < CRANpackages$version[pkg]){
        install.packages(CRANpackages$name[pkg], 
                         ask = FALSE,
                         repos = "https://cloud.r-project.org")
      }
    }
  }
  
  # Install specific version (not needed yet)
  if (CRANpackages$direction[pkg] == "unequal"){
    
    # Install package if not installed
    if (!requireNamespace(CRANpackages$name[pkg], quietly = TRUE)){
      remotes::install_version(CRANpackages$name[pkg],
                               CRANpackages$version[pkg],
                               repos = "https://cloud.r-project.org")
    } else {
      
      #Install package if package version is not correct
      if (packageVersion(CRANpackages$name[pkg]) != CRANpackages$version[pkg]){
        remotes::install_version(CRANpackages$name[pkg],
                                 CRANpackages$version[pkg],
                                 repos = "https://cloud.r-project.org")
      }
    }
  }
  
  require(as.character(CRANpackages$name[pkg]), character.only = TRUE)
}

#******************************************************************************#
#Bioconductor packages
#******************************************************************************#

# Get required Bioconductor packages:
BiocPackages <- read.table("Bioconductorpackages.txt", header = TRUE)

for (pkg in 1:nrow(BiocPackages)) {
  if (!requireNamespace(BiocPackages$name[pkg], quietly = TRUE)){
    BiocManager::install(BiocPackages$name[pkg], ask = FALSE)
  } else{
    if (packageVersion(BiocPackages$name[pkg]) < BiocPackages$version[pkg]){
      BiocManager::install(BiocPackages$name[pkg], ask = FALSE)
    }
  }
  require(as.character(BiocPackages$name[pkg]), character.only = TRUE)
}

