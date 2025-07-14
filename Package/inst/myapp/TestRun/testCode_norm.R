


# Clear workspace and console
rm(list = ls())
cat("\014") 
gc()

setwd("D:/ArrayAnalysis_Shiny/")
source("D:/ArrayAnalysis_Shiny/global.R")


gxData <- getGEO(filename="D:/ArrayAnalysis_Shiny/Data/GSE6955_series_matrix.txt.gz")

metaData <- getMetaData(path = "D:/ArrayAnalysis_Shiny/Data/metaData_GSE6955.csv",
                        celfiles =  colnames(exprs(gxData)),
                        filetype = ".tsv/.csv file")

gxData <- ExpressionSet(assayData = exprs(gxData)[,rownames(metaData)])
experimentFactor <- metaData[,"Group"]


normData <- microarrayNormalization_processed(gxData = gxData,
                                              experimentFactor = experimentFactor,
                                              transMeth = "Log2-transformation",
                                              normMeth = "Quantile",
                                              perGroup_name = "Use all arrays")


normMatrix <- exprs(normData)
comparisons <- makeComparisons(make.names(unique(metaData[,"Group"])))[1]
filterList[["hsapiens_gene_ensembl"]]

top_table <- getStatistics(normMatrix = normMatrix, 
                              metaData = metaData, 
                              expFactor = "Group", 
                              covGroups_num = "Age",
                              covGroups_char = "Area",
                              comparisons = comparisons,
                              addAnnotation = TRUE,
                              biomart_dataset = "hsapiens_gene_ensembl",
                              biomart_attributes = c("affy_hg_u95a",
                                                     "ensembl_gene_id",
                                                     "entrezgene_id",
                                                     "gene_name"),
                              biomart_filters = "affy_hg_u95a")

