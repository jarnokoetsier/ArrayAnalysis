# Clear workspace and console
rm(list = ls())
cat("\014") 
gc()

setwd("C:/Users/jarno/OneDrive/Documents/GitHub/ArrayAnalysis_Shiny")
source("global.R")

gxData <- readRNASeq(path="C:/Users/jarno/Downloads/GSE207680.csv")
metaData <- getMetaData(path = "C:/Users/jarno/Downloads/GSE207680_meta.csv",
                        celfiles = colnames(gxData),
                        filetype = ".tsv/.csv file")

outlier <- NULL
gxData_fil <- gxData[,setdiff(colnames(gxData),outlier)]
metaData_fil <- metaData[colnames(gxData_fil),]
experimentFactor <- factor(make.names(metaData_fil[,"Diagnosis"]))

filterThreshold = 10
normData <- RNASeqNormalization(gxData = gxData_fil,
                                metaData = metaData_fil,
                                filterThres = filterThreshold,
                                smallestGroupSize = length(unique(experimentFactor)))

comparison <- makeComparisons(make.names(unique(experimentFactor)))[1]
top_table <- getStatistics_RNASeq(rawMatrix = gxData_fil, 
                                  metaData = metaData_fil, 
                                  expFactor = "Diagnosis", 
                                  covGroups_num = "age.ch1",
                                  covGroups_char = NULL,
                                  comparisons = comparison,
                                  filterThres = filterThreshold,
                                  smallestGroupSize = length(unique(experimentFactor)),
                                  addAnnotation = FALSE,
                                  biomart_dataset = NULL,
                                  biomart_attributes = NULL,
                                  biomart_filters = NULL)

