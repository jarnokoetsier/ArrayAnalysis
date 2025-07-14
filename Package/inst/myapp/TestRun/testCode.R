# Clear workspace and console
rm(list = ls())
cat("\014") 
gc()

setwd("C:/Users/jarno/OneDrive/Documents/GitHub/ArrayAnalysis_Shiny")
source("global.R")


celfiles <- getCELs("Data/Microarray/GSE6955_RAW.zip", shiny_upload = FALSE)
celfiles <- getCELs("C:/Users/jarno/Downloads/E-GEOD-19332.zip", shiny_upload = FALSE)
gxData <- readCELs(celfiles=celfiles, 
                   zippath = "C:/Users/jarno/Downloads/E-GEOD-19332.zip", 
                   rm = FALSE)

metaData <- getMetaData(path = "C:/Users/jarno/Downloads/E-GEOD-19332.csv",
                        celfiles = celfiles,
                        filetype = ".tsv/.csv file")

experimentFactor <- factor(metaData[,"Group"])
normData <- microarrayNormalization(gxData = gxData,
                                    experimentFactor = experimentFactor,
                                    normMeth = "RMA",
                                    CDFtype = "ENTREZG",
                                    species = "Homo sapiens",
                                    annotations = "Custom annotations",
                                    perGroup_name = "Use all arrays",
                                    annot_file_datapath = NULL)

normMatrix <- exprs(normData)
normMatrix <- normMatrix[,metaData$ID]
id_names <- as.character(str_remove(rownames(normMatrix),"_.*"))
normMatrix <- normMatrix[!duplicated(id_names),]
rownames(normMatrix) <- id_names[!duplicated(id_names)]

comparisons <- makeComparisons(make.names(unique(metaData[,3])))
filterList[["hsapiens_gene_ensembl"]]
top_table <- getStatistics(normMatrix = normMatrix, 
                           metaData = metaData, 
                           expFactor = "Group", 
                           covGroups_num = "Age",
                           covGroups_char = "Area",
                           comparisons = comparisons[1],
                           addAnnotation = FALSE,
                           biomart_dataset = "hsapiens_gene_ensembl",
                           biomart_attributes = c("ensembl_gene_id",
                                                  "entrezgene_id",
                                                  "gene_name",
                                                  "affy_hugene_2_0_st_v1" ),
                           biomart_filters = "affy_hugene_2_0_st_v1")



test <- top_table[[1]]


ORA_data <- ORA(top_table = test,
                geneset = "WikiPathways",
                geneID_col = "GeneID",
                geneID_type = "ENTREZID",
                organism = "Homo sapiens",
                rawadj = "raw",
                updown = "Both",
                p_thres = 0.05,
                logFC_thres = 0)

output[nchar(output$Description)>40] <- paste0(substring(output$Description[nchar(output$Description)>40],1,37),"...")

ORA_data <- ORA(top_table = test,
                geneset = "WikiPathways",
                geneID_col = colnames(test)[1],
                geneID_type = "ENTREZID",
                organism = "Homo sapiens",
                updown = "Both",
                topN = TRUE,
                N = 100,
                rawadj = "raw",
                p_thres = 0.05,
                logFC_thres = 0)

test1 <- top_table[[1]]


gene <- top_table[[1]]$GeneID[2]
normMatrix[as.character(rownames(normMatrix)) %in% as.character(gene),]



load("D:/ArrayAnalysis_Shiny/TestRun/metaData_fil.RData")
load("D:/ArrayAnalysis_Shiny/TestRun/normMatrix.RData")


comparisons <- makeComparisons(make.names(unique(metaData_fil[,"V1"])))
top_table <- getStatistics(normMatrix = normMatrix, 
                   metaData = metaData_fil, 
                   expFactor = "V1", 
                   covGroups_num = "age:ch1",
                   covGroups_char = "Sex:ch1",
                   comparisons = comparisons[1:3],
                   addAnnotation = TRUE,
                   biomart_dataset = "hsapiens_gene_ensembl",
                   biomart_attributes = c("ensembl_gene_id",
                                          "entrezgene_id",
                                          "hgnc_symbol"),
                   biomart_filters = "entrezgene_id")

test <- top_table[[1]]


ORA_data <- ORA(top_table = test,
             geneset = "GO-BP",
             geneID_col = "GeneID",
             geneID_type = "ENTREZID",
             organism = "Homo sapiens",
             rawadj = "raw",
             updown = "Both",
             p_thres = 0.05,
             logFC_thres = 0)

ORAgenes <- ORA_data@geneSets
ORAresults <- ORA_data@result

ORAgenes_fil <- ORAgenes[ORAresults$ID[1:10]]

library(igraph)
library(plotly)
library(ggraph)

JI <- function(x,y){length(intersect(x,y))/length(union(x,y))}

graph_matrix <- matrix(NA, nrow = length(ORAgenes_fil), ncol = length(ORAgenes_fil))
for (i in 1:length(ORAgenes_fil)){
  graph_matrix[i,] <- unlist(lapply(ORAgenes_fil,function(x){JI(x,ORAgenes_fil[[i]])}))
}
rownames(graph_matrix) <- names(ORAgenes_fil)
colnames(graph_matrix) <- names(ORAgenes_fil)



g <- graph_from_adjacency_matrix(graph_matrix, 
                                 mode = "lower", 
                                 weighted = "Jaccard Index", 
                                 diag = FALSE)

rownames(ORAresults) <- ORAresults$ID
V(g)$`-log10 p-value` <- (-log10(ORAresults[V(g),"p-value"]))
V(g)$label <- firstup(ORAresults[V(g),"Description"])

p <- ggraph(g, 'igraph', algorithm = 'kk') + 
  geom_edge_link0(aes(width = `Jaccard Index`), edge_alpha = 0.1) + 
  geom_node_point(aes(color = `-log10 p-value`), size = 7) + 
  geom_node_text(aes(label = label), color = 'black', 
                 size = 3, repel = TRUE) + 
  theme_void() +
  scale_color_continuous() +
  scale_color_gradient(low = "#6BAED6", high = "#FB6A4A")
  


ggplotly(p)

wc <- cluster_walktrap(g)
members <- membership(wc)

n <- igraph_to_networkD3(g, group = members, what = "both")

forceNetwork(Links = n$links, Nodes = n$nodes,
             Source = 'source', Target = 'target', NodeID = 'name',
             Group = 'group')


library(biomaRt)
ensembl <- useMart("ensembl")

biomaRt::listDatasets(ensembl)
datasetList <- c("hsapiens_gene_ensembl",
                 "btaurus_gene_ensembl",
                 "celegans_gene_ensembl",
                 "mmusculus_gene_ensembl",
                 "rnorvegicus_gene_ensembl")

ensembl <- useDataset("hsapiens_gene_ensembl", mart=ensembl)

all_filters <- biomaRt::listFilters(ensembl)
filterList <- c("ensembl_gene_id",
                "entrezgene_id",
                setdiff(all_filters$name[str_detect(all_filters$name,"affy")],
                        all_filters$name[str_detect(all_filters$name,"with")]))




getAttributes <- function(ensembl){
  
}

all_attributes <- biomaRt::listAttributes(ensembl)
attributeList <- c("ensembl_gene_id",
                   "entrezgene_id",
                   "hgnc_symbol")


annotations <- getBM(attributes=c("entrezgene_id",
                                  "ensembl_gene_id",
                                  "hgnc_symbol"), 
                     filters = "entrezgene_id",
                     values = test$GeneID,
                     mart = ensembl)


makeVolcano(top_table = top_table[[1]], 
            p = "raw", 
            p_threshold = 0.05, 
            logFC_threshold = 1)



normMatrix = normMatrix
metaData = metaData_fil 
expFactor = "V1"
covGroups = c("age:ch1","Sex:ch1")