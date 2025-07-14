# runApp(launch.browser = TRUE)

# Clear workspace and console
rm(list = ls())
cat("\014") 
gc()

# Load packages
library(DESeq2)
library(apeglm) #bioconductor

# Set working directory
setwd("C:/Users/jarno/OneDrive/Documents/GitHub/ArrayAnalysis_Shiny")

# Load functions
source("FUNCTIONS.R")

# Get expression matrix
dataDir <- "C:/Users/jarno/OneDrive/Documents/GitHub/ArrayAnalysis_Shiny/Data/RNAseq/"
gxData <- readExprMatrix(path=paste0(dataDir,"normExpr_GSE128380.csv"))

# Get meta dat
metaData <- getMetaData(path = paste0(dataDir,"sampleInfo_GSE128380.csv"),
                        celfiles = colnames(gxData),
                        filetype = ".tsv/.csv file")

gxData <- gxData[,rownames(metaData)]

expFactor <- c("Genotype", "Tissue")

# Experiment factor
if(length(expFactor) > 1){
  experimentFactor <- factor(make.names(apply(metaData[,expFactor], 1, paste, collapse = "_" )))
} else{
  experimentFactor <- factor(make.names(metaData[,expFactor]))
}


getHeatmap_static(experimentFactor = experimentFactor,
                              legendColors = setNames(colorsByFactor(experimentFactor)$legendColors,
                                                      levels(experimentFactor)),
                              normMatrix = gxData,
                              clusterOption1 = "pearson",
                              clusterOption2 = "ward.D2",
                              theme = "Default",
                              width = 1000,
                              height = 1200,
                  file = "test.png")

top_table <- getStatistics_RNASeq(rawMatrix = gxData, 
                     metaData = metaData, 
                     expFactor = expFactor, 
                     covGroups_num = "Age", 
                     covGroups_char = NULL, 
                     comparisons =  makeComparisons(unique(experimentFactor))[1],
                     addAnnotation = FALSE,
                     biomart_dataset = "hsapiens_gene_ensembl",
                     biomart_attributes = c("ensembl_gene_id",
                                            "entrezgene_id",
                                            "gene_name"),
                     biomart_filters = "gene_name")



gxMatrix <- RNASeqNormalization(gxData = gxData,
                                metaData = metaData,
                                filterThres = 10,
                                smallestGroupSize = 3)


counts <- 2^gxMatrix - 1 
  
top_table <- getStatistics_RNASeq_processed(normMatrix = counts, 
                                            metaData = metaData, 
                                            expFactor = expFactor, 
                                            covGroups_num = "Age", 
                                            covGroups_char = NULL, 
                                            comparisons = makeComparisons(unique(experimentFactor))[1],
                                            addAnnotation = FALSE,
                                            biomart_dataset = "hsapiens_gene_ensembl",
                                            biomart_attributes = c("ensembl_gene_id",
                                                                   "entrezgene_id",
                                                                   "gene_name"),
                                            biomart_filters = "entrezgene_id")