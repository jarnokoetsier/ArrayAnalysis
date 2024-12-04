# ArrayAnalysis

## Prerequisites
Before you can download and run ArrayAnalysis, please make sure to have [R](https://cran.r-project.org/) installed on your computer. 
If you are using Windows, you also need to install [Rtools](https://cran.r-project.org/bin/windows/Rtools/).

## Installation
You can choose to install ArrayAnalysis as a desktop app or as an R package.

### Desktop app (Windows)
You can download ArrayAnalysis for Windows [here](https://github.com/jarnokoetsier/ArrayAnalysis/raw/refs/heads/main/Files/ArrayAnalysis_windows.zip). Make sure to unzip the folder and click on the `ArrayAnalysis` file to run the app.

**Note!** Starting up ArrayAnalysis for the first time might take some time, because all packages still need to be installed. Don't worry! The second time you run the app, it will be way faster!

### Desktop app (MacOS/Linux)
Not available (yet).

### R package (Windows/MacOS/Linux)
Install the ArrayAnalysis package

```
# install "remotes" package
install.packages("remotes")

# Install ArrayAnalysis from GitHub
remotes::install_github("jarnokoetsier/ArrayAnalysis/Package") 
```

Run the ArrayAnalysis app directly from R:

```
# Run ArrayAnalysis
ArrayAnalysis::runArrayAnalysis()
```

