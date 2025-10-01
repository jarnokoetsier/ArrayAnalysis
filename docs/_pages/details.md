---
title: "About ArrayAnalysis"
permalink: /details
layout: details
---

<div id="header">
<h1 class="title toc-ignore" style="color: #004080;"><b>ArrayAnalysis Documentation</b></h1>
<p></p>
</div>
<br>

<div id="mr" class="section level1">
<h1><b>Microarray Analysis</b></h1>
</div>
<hr>
<div id="mr" class="section level2">
<h1>CEL files</h1>
</div>

<div id="mr_upload" class="section level2">
<h3>Data upload</h3>
<p><h4><b>Input</b></h4></p>
<p>To begin the analysis, upload the following two files:</p>
<p><b>1. CEL files (.zip)</b></p>
<ul>
  <li>Provide a <code>.zip</code> archive containing <code>.CEL</code> or <code>.CEL.gz</code> files.</li>
  <li>The filenames of the CEL files must match the sample names in the metadata file.</li>
  <li>ArrayAnalysis will automatically detect the column in the metadata that corresponds to the CEL filenames.</li>
</ul>
<p><b>2. Metadata file</b></p>
<ul>
<li>The metadata table can be provided as a <code>.tsv</code> or <code>.csv</code> file or as a <code>Series Matrix File</code> available from the 
<a href="https://www.ncbi.nlm.nih.gov/geo/" target="_blank">GEO website</a>.</li> 
<li>Ensure that the metadata includes a column of sample names that match the CEL file names without file extension.</li>
</ul>
<br>
<p>👉 You can analyse an <b>example dataset</b> (<a href="https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE6955" target="_blank">GSE6955</a>) by clicking on <i>Run example</i>.</p>
<br>
<p><h4><b>Output</b></h4></p>
<p>After uploading, a preview of both the expression matrix and the metadata table will be displayed. This allows you to verify that the data has been uploaded correctly.</p>
</div>
<br>

<div id="mr_preprocessing" class="section level2">
<h3>Pre-processing</h3>
<p><h4><b>Input</b></h4></p>
<p>For the data preprocessing, you can provide the following inputs:</p>
<p><b>1. Remove samples (optional) 🗑️</b> Use this option to exclude outliers or other samples you do not want included in the analysis.</p>

<p><b>2. Select experimental group 👥</b> The experimental group is the variable that defines the cases and controls (<i>e.g.</i>, disease status). 
By selecting more than one variable, you can combine multiple variables into a single experimental variable. This can be useful if you, for example, want to compare cases and controls 
for different tissues (<i>e.g.</i>, liver and brain). As such, you can create four different experimental groups: <i>case_brain</i>, <i>control_brain</i>, <i>case_liver</i>, and <i>control_liver</i>. 
The selection of the experimental group will be used for the normalization (if <i>normalization per experimental group</i> selected) and for the statistical analysis in the next tab.</p>

<p><b>3. Select normalization method 🔧</b> The default normalization method is <a href = "https://doi.org/10.1093/biostatistics/4.2.249" target="_blank">RMA</a>, 
but you can also choose for <a href = "https://doi.org/10.1198/016214504000000683" target="_blank">GCRMA</a> and 
<a href = "https://assets.thermofisher.com/TFS-Assets/LSG/brochures/plier_technote.pdf" target="_blank">PLIER</a>.</p>

<p><b>4. Select probeset annotation 🏷️</b> By default, ArrayAnalysis uses the custom ENTREZ gene annotation from <a href ="http://brainarray.mbni.med.umich.edu/Brainarray/Database/CustomCDF/CDF_download.asp" target="_blank">brainarray</a>. 
If you select <i>No annotation</i>, the standard Affymatrix probeset annotation will be used.</p>

<br>
<p>👉 ArrayAnalysis automatically checks for potential outliers and will display a warning if any are detected. 
Please always check the QC plots carefully to decide whether samples should be excluded from further analysis.</p>
<br>

<p><h4><b>Output</b></h4></p>
<p>Data and preprocessing quality can be checked in the different output tables and figures:</p>
<p><b>1. Normalized expression matrix.</b> A table of normalized expression values is provided and can be downloaded. 
You can view the expression profile of individual genes by clicking on the table. 
Click <a href = "https://arrayanalysis.org/explain/Geneboxplot" target="_blank">here</a> for more information on this figure.</p></p>

<p><b>2. Boxplots.</b> The boxplots show the distribution of expression values across all samples. 
Click <a href = "https://arrayanalysis.org/explain/Sampleboxplot" target="_blank">here</a> for more information on this figure.</p>

<p><b>3. Density plots.</b> Similar to the boxplots, the density plot shows the distribution of expression values across all samples. 
Click <a href = "https://arrayanalysis.org/explain/Densityplot" target="_blank">here</a> for more information on this figure.</p>

<p><b>4. Sample-sample correlation heatmap.</b> The heatmap shows the sample-wise correlations based on the normalized expression profiles.
Click <a href = "https://arrayanalysis.org/explain/Sampleheatmap" target="_blank">here</a> for more information on this figure.</p>

<p><b>5. PCA plot.</b> 2D and 3D PCA plots can be viewed to assess data quality and identify potential outliers.
Click <a href = "https://arrayanalysis.org/explain/PCA" target="_blank">here</a> for more information on this figure.</p>

<p><b>6. Settings.</b> Download the overview of pre-processing settings and the session info to ensure reproducibility.</p>  
</div>
<br>

<div id="mr_statanalysis" class="section level2">
<h3>Statistical Analysis</h3>
<p><h4><b>Input</b></h4></p>
<p> Statistical analysis is performed using the <a href = "https://doi.org/10.1093/nar/gkv007" target="_blank">limma</a> package. 
To run the analysis, you can provide three inputs:</p>
<p><b>1. Statistical comparison(s) 📊</b> Select one or more statistical comparisons of interest. The direction of the statistical comparison is usually defined 
as <code>Case - Control</code>.</p>
<p><b>2. Covariates ⚙️</b> Adjust for continuous (<i>e.g.</i>, age) and categorical (<i>e.g.</i>, sex, tissue) covariates.</p>
<p><b>3. Gene annotation 🔖</b> Add gene annotations from the Ensembl database using the 
<a href = "https://bioconductor.org/packages/release/bioc/html/biomaRt.html" target = "_blank">biomaRt package</a>. For example, if your data uses ENTREZ gene IDs, 
you can use this option to add gene symbols or Ensembl gene IDs to the statistics output. Please note that enabling this option increases the runtime of the analysis</p>
<br>
<p><h4><b>Output</b></h4></p>
<p>For each of the selected statistical comparisons, the following output are provided:</p>
<p><b>1. Top table.</b> A table with the statistics from the differential expression analysis.
Click <a href = "https://arrayanalysis.org/explain/Toptable" target="_blank">here</a> for more information on this table.</p>
<p><b>2. p-value and log<sub>2</sub>FC histograms.</b> These plots show the distribution of p-values and log<sub>2</sub>FCs.
Click for more information on the <a href = "https://arrayanalysis.org/explain/Phistogram" target="_blank">p-value histogram</a> 
and <a href = "https://arrayanalysis.org/explain/logFChistogram" target="_blank">log<sub>2</sub>FC histogram</a>.</p>
<p><b>3. Volcano plot.</b> Scatter plot of log<sub>2</sub>FC versus -log<sub>10</sub> p-value. 
Click <a href = "https://arrayanalysis.org/explain/Volcanoplot" target="_blank">here</a> for more information on this figure.</p>
<p><b>4. MA plot.</b> Scatter plot of mean log<sub>2</sub> expression versus log<sub>2</sub>FC. 
Click <a href = "https://arrayanalysis.org/explain/MAplot" target="_blank">here</a> for more information on this figure.</p>
<p><b>5. Summary.</b> Get the number of differentially expressed genes for selected p-value and log<sub>2</sub>FC thresholds.</p>
<p><b>6. Settings.</b> Download the overview of statistical analysis settings and the session info to ensure reproducibility.</p>  
</div>
<br>

<div id="mr_gsa" class="section level2">
<h3>Gene Set Analysis</h3>
<p>After completing the statistical analysis, you can perform Gene Set Analysis (GSA) using various gene set collections, 
including <a href = "https://geneontology.org/" target="_blank">Gene Ontology (GO)</a>, 
<a href = "https://www.genome.jp/kegg/pathway.html" target="_blank">KEGG</a>, 
and <a href = "https://www.wikipathways.org/" target="_blank">WikiPathways</a>. 
The <a href = "https://www.bioconductor.org/packages/release/bioc/html/clusterProfiler.html" target = "_blank">clusterProfiler</a> package is used for the analysis.
Two methods are available:</p>
<ul>
<li>Overrepresentation Analysis (ORA)</li>
<li>Gene Set Enrichment Analysis (GSEA)</li>
</ul>
<br>

<h4>Overrepresentation Analysis (ORA)</h4>
<p><h4><b>Input</b></h4></p>
<p><b>1. Statistical comparison 📊</b> Select the statistical comparison for which you want to perform ORA.</p>

<p><b>2. Geneset collection 📋</b> Select one of the following geneset collections: 
Gene Ontology-Biological Process (GO-BP), -Cellular Component (GO-CC), and -Molecular Function (GO-MF), KEGG, and WikiPathways geneset collections.</p>

<p><b>3. Input genes 🧬</b> Specify whether ORA should be performed on upregulated, downregulated, or both sets of genes. You can define input genes by:
<ul>
<li>Applying a p-value and log<sub>2</sub>FC threshold, or</li>
<li>Selecting the top N most significantly up/downregulated genes.</li>
</ul>
<p>👉 The background gene list includes all genes that passed QC.</p>

<p><b>4. Gene identifier 🔖</b> Select which column in the statistics table contains the gene identifiers, 
and specify the identifier type (<i>e.g.</i>, Entrez Gene, Ensembl Gene, or Gene Symbol) and organism.</p>
<br>

<p><h4><b>Output</b></h4></p>
<p>Data and preprocessing quality can be checked in the different outputs and QC plots:</p>
<p><b>1. ORA table.</b> Table with the statistics of the overrepresentation analysis. 
Click <a href = "https://arrayanalysis.org/explain/ORAtable" target="_blank">here</a> for more information on this table.</p>

<p><b>2. Barchart.</b> The plot displays statistics of the most top overrepresented genesets.
Click <a href = "https://arrayanalysis.org/explain/Barchart" target="_blank">here</a> for more information on this figure.</p>

<p><b>3. Network.</b> The network visualizes the relationship between the most significantly overrepresented genesets. 
The edge thickness is proportional to the Jaccard Index (<i>i.e.</i>, number of shared genes/total number of gene in both genesets). 
Click <a href = "https://arrayanalysis.org/explain/Network" target="_blank">here</a> for more information on this figure.</p>

<p><b>4. Settings.</b> Download the overview of the ORA settings and session info to ensure reproducibility.</p>  

<br>

<h4>Gene Set Enrichment Analysis (GSEA)</h4>
<p><h4><b>Input</b></h4></p>
<p><b>1. Statistical comparison 📊</b> Select the statistical comparison for which you want to perform ORA.</p>

<p><b>2. Geneset collection 📋</b> Select one of the following geneset collections: 
Gene Ontology-Biological Process (GO-BP), -Cellular Component (GO-CC), and -Molecular Function (GO-MF), KEGG, and WikiPathways geneset collections.</p>

<p><b>3. Ranking variable 🔢</b> Specify which variable (log<sub>2</sub>FC, -log<sub>10</sub> P value, or signed -log<sub>10</sub> P value) will be used to rank genes for the GSEA.</p>

<p><b>4. Gene identifier 🔖</b> Select which column in the statistics table contains the gene identifiers, 
and specify the identifier type (<i>e.g.</i>, Entrez Gene, Ensembl Gene, or Gene Symbol) and organism.</p>

<br>
<p><h4><b>Output</b></h4></p>
<p>Data and preprocessing quality can be checked in the different outputs and QC plots:</p>
<p><b>1. GSEA table.</b> Table with the statistics of the gene set enrichment analysis. 
Click <a href = "https://arrayanalysis.org/explain/GSEAtable" target="_blank">here</a> for more information on this table.</p>

<p><b>2. Barchart.</b> The plot displays statistics of the most top enriched genesets.
Click <a href = "https://arrayanalysis.org/explain/Barchart" target="_blank">here</a> for more information on this figure.</p>

<p><b>3. Network.</b> The network visualizes the relationship between the most significantly enriched genesets. 
The edge thickness is proportional to the Jaccard Index (<i>i.e.</i>, number of shared genes/total number of gene in both genesets). 
Click <a href = "https://arrayanalysis.org/explain/Network" target="_blank">here</a> for more information on this figure.</p>

<p><b>4. Settings.</b> Download the overview of the GSEA settings and session info to ensure reproducibility.</p>  

<hr>
<br>

<div id="mn" class="section level1">
<h1>Intensity matrix</h1>
</div>

<div id="mn_upload" class="section level2">
<h3>Data upload</h3>
<p><h4><b>Input</b></h4></p>
<p>To begin the analysis, upload the following two files:</p>
<p><b>1. Intensity matrix</b></p>
<ul>
  <li>Provide an intensity matrix as <code>.tsv</code> or <code>.csv</code> file. </li>
  <li>Alternatively, the intensity matrix can be provided in a <code>Series Matrix File</code> format, which can be downloaded from the 
<a href="https://www.ncbi.nlm.nih.gov/geo/" target="_blank">GEO website</a>.</li>
  <li>The column names of the intensity matrix must match the sample names in the metadata file.</li>
  <li>ArrayAnalysis will automatically detect the column in the metadata that corresponds to the sample names in the intensity matrix.</li>
</ul>
<p><b>2. Metadata file</b></p>
<ul>
<li>The metadata table can be provided as a <code>.tsv</code> or <code>.csv</code> file or as a <code>Series Matrix File</code> available from the 
<a href="https://www.ncbi.nlm.nih.gov/geo/" target="_blank">GEO website</a>.</li> 
<li>Ensure that the metadata includes a column of sample names that match the column names in the intensity matrix.</li>
</ul>
<br>
<p>👉 You can analyse an <b>example dataset</b> (<a href="https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE6955" target="_blank">GSE6955</a>) by clicking on <i>Run example</i>.</p>
<br>
<p><h4><b>Output</b></h4></p>
<p>After uploading, a preview of both the expression matrix and the metadata table will be displayed. This allows you to verify that the data has been uploaded correctly.</p>
</div>
<br>

<div id="mn_preprocessing" class="section level2">
<h3>Pre-processing</h3>
<p><h4><b>Input</b></h4></p>
<p>For the data preprocessing, you can provide the following inputs:</p>
<p><b>1. Remove samples (optional) 🗑️</b> Use this option to exclude outliers or other samples you do not want included in the analysis.</p>

<p><b>2. Select experimental group 👥</b> The experimental group is the variable that defines the cases and controls (<i>e.g.</i>, disease status). 
By selecting more than one variable, you can combine multiple variables into a single experimental variable. This can be useful if you, for example, want to compare cases and controls 
for different tissues (<i>e.g.</i>, liver and brain). As such, you can create four different experimental groups: <i>case_brain</i>, <i>control_brain</i>, <i>case_liver</i>, and <i>control_liver</i>. 
The selection of the experimental group will be used for the normalization (if <i>normalization per experimental group</i> selected) and for the statistical analysis in the next tab.</p>

<p><b>3. Select transformation method (optional) 🔧</b> If necessary, perform log<sub>2</sub>-transformation to make the data more normally distributed.</p>

<p><b>4. Select normalization method (optional) 🔧</b> If necessary, perform quantile normalization to normalize the expression values across the samples.</p>
<br>
<p>👉 ArrayAnalysis automatically checks for potential outliers and will display a warning if any are detected. 
Please always check the QC plots carefully to decide whether samples should be excluded from further analysis.</p>
<br>

<p><h4><b>Output</b></h4></p>
<p>Data and preprocessing quality can be checked in the different output tables and figures:</p>
<p><b>1. Normalized expression matrix.</b> A table of normalized expression values is provided and can be downloaded. 
You can view the expression profile of individual genes by clicking on the table. 
Click <a href = "https://arrayanalysis.org/explain/Geneboxplot" target="_blank">here</a> for more information on this figure.</p></p>

<p><b>2. Boxplots.</b> The boxplots show the distribution of expression values across all samples. 
Click <a href = "https://arrayanalysis.org/explain/Sampleboxplot" target="_blank">here</a> for more information on this figure.</p>

<p><b>3. Density plots.</b> Similar to the boxplots, the density plot shows the distribution of expression values across all samples. 
Click <a href = "https://arrayanalysis.org/explain/Densityplot" target="_blank">here</a> for more information on this figure.</p>

<p><b>4. Sample-sample correlation heatmap.</b> The heatmap shows the sample-wise correlations based on the normalized expression profiles.
Click <a href = "https://arrayanalysis.org/explain/Sampleheatmap" target="_blank">here</a> for more information on this figure.</p>

<p><b>5. PCA plot.</b> 2D and 3D PCA plots can be viewed to assess data quality and identify potential outliers.
Click <a href = "https://arrayanalysis.org/explain/PCA" target="_blank">here</a> for more information on this figure.</p>

<p><b>6. Settings.</b> Download the overview of pre-processing settings and the session info to ensure reproducibility.</p>  
</div>
<br>

<div id="mn_statanalysis" class="section level2">

<h3>Statistical Analysis</h3>
<p><h4><b>Input</b></h4></p>
<p> Statistical analysis is performed using the <a href = "https://doi.org/10.1093/nar/gkv007" target="_blank">limma</a> package. 
To run the analysis, you can provide three inputs:</p>
<p><b>1. Statistical comparison(s) 📊</b> Select one or more statistical comparisons of interest. The direction of the statistical comparison is usually defined 
as <code>Case - Control</code>.</p>
<p><b>2. Covariates ⚙️</b> Adjust for continuous (<i>e.g.</i>, age) and categorical (<i>e.g.</i>, sex, tissue) covariates.</p>
<p><b>3. Gene annotation 🔖</b> Add gene annotations from the Ensembl database using the 
<a href = "https://bioconductor.org/packages/release/bioc/html/biomaRt.html" target = "_blank">biomaRt package</a>. For example, if your data uses ENTREZ gene IDs, 
you can use this option to add gene symbols or Ensembl gene IDs to the statistics output. Please note that enabling this option increases the runtime of the analysis</p>
<br>
<p><h4><b>Output</b></h4></p>
<p>For each of the selected statistical comparisons, the following output are provided:</p>
<p><b>1. Top table.</b> A table with the statistics from the differential expression analysis.
Click <a href = "https://arrayanalysis.org/explain/Toptable" target="_blank">here</a> for more information on this table.</p>
<p><b>2. p-value and log<sub>2</sub>FC histograms.</b> These plots show the distribution of p-values and log<sub>2</sub>FCs.
Click for more information on the <a href = "https://arrayanalysis.org/explain/Phistogram" target="_blank">p-value histogram</a> 
and <a href = "https://arrayanalysis.org/explain/logFChistogram" target="_blank">log<sub>2</sub>FC histogram</a>.</p>
<p><b>3. Volcano plot.</b> Scatter plot of log<sub>2</sub>FC versus -log<sub>10</sub> p-value. 
Click <a href = "https://arrayanalysis.org/explain/Volcanoplot" target="_blank">here</a> for more information on this figure.</p>
<p><b>4. MA plot.</b> Scatter plot of mean log<sub>2</sub> expression versus log<sub>2</sub>FC. 
Click <a href = "https://arrayanalysis.org/explain/MAplot" target="_blank">here</a> for more information on this figure.</p>
<p><b>5. Summary.</b> Get the number of differentially expressed genes for selected p-value and log<sub>2</sub>FC thresholds.</p>
<p><b>6. Settings.</b> Download the overview of statistical analysis settings and the session info to ensure reproducibility.</p>  

</div>
<br>

<div id="mn_gsa" class="section level2">
<h3>Gene Set Analysis</h3>
<p>After completing the statistical analysis, you can perform Gene Set Analysis (GSA) using various gene set collections, 
including <a href = "https://geneontology.org/" target="_blank">Gene Ontology (GO)</a>, 
<a href = "https://www.genome.jp/kegg/pathway.html" target="_blank">KEGG</a>, 
and <a href = "https://www.wikipathways.org/" target="_blank">WikiPathways</a>. 
The <a href = "https://www.bioconductor.org/packages/release/bioc/html/clusterProfiler.html" target = "_blank">clusterProfiler</a> package is used for the analysis.
Two methods are available:</p>
<ul>
<li>Overrepresentation Analysis (ORA)</li>
<li>Gene Set Enrichment Analysis (GSEA)</li>
</ul>
<br>

<h4>Overrepresentation Analysis (ORA)</h4>
<p><h4><b>Input</b></h4></p>
<p><b>1. Statistical comparison 📊</b> Select the statistical comparison for which you want to perform ORA.</p>

<p><b>2. Geneset collection 📋</b> Select one of the following geneset collections: 
Gene Ontology-Biological Process (GO-BP), -Cellular Component (GO-CC), and -Molecular Function (GO-MF), KEGG, and WikiPathways geneset collections.</p>

<p><b>3. Input genes 🧬</b> Specify whether ORA should be performed on upregulated, downregulated, or both sets of genes. You can define input genes by:
<ul>
<li>Applying a p-value and log<sub>2</sub>FC threshold, or</li>
<li>Selecting the top N most significantly up/downregulated genes.</li>
</ul>
<p>👉 The background gene list includes all genes that passed QC.</p>

<p><b>4. Gene identifier 🔖</b> Select which column in the statistics table contains the gene identifiers, 
and specify the identifier type (<i>e.g.</i>, Entrez Gene, Ensembl Gene, or Gene Symbol) and organism.</p>
<br>

<p><h4><b>Output</b></h4></p>
<p>Data and preprocessing quality can be checked in the different outputs and QC plots:</p>
<p><b>1. ORA table.</b> Table with the statistics of the overrepresentation analysis. 
Click <a href = "https://arrayanalysis.org/explain/ORAtable" target="_blank">here</a> for more information on this table.</p>

<p><b>2. Barchart.</b> The plot displays statistics of the most top overrepresented genesets.
Click <a href = "https://arrayanalysis.org/explain/Barchart" target="_blank">here</a> for more information on this figure.</p>

<p><b>3. Network.</b> The network visualizes the relationship between the most significantly overrepresented genesets. 
The edge thickness is proportional to the Jaccard Index (<i>i.e.</i>, number of shared genes/total number of gene in both genesets). 
Click <a href = "https://arrayanalysis.org/explain/Network" target="_blank">here</a> for more information on this figure.</p>

<p><b>4. Settings.</b> Download the overview of the ORA settings and session info to ensure reproducibility.</p>  

<br>

<h4>Gene Set Enrichment Analysis (GSEA)</h4>
<p><h4><b>Input</b></h4></p>
<p><b>1. Statistical comparison 📊</b> Select the statistical comparison for which you want to perform ORA.</p>

<p><b>2. Geneset collection 📋</b> Select one of the following geneset collections: 
Gene Ontology-Biological Process (GO-BP), -Cellular Component (GO-CC), and -Molecular Function (GO-MF), KEGG, and WikiPathways geneset collections.</p>

<p><b>3. Ranking variable 🔢</b> Specify which variable (log<sub>2</sub>FC, -log<sub>10</sub> P value, or signed -log<sub>10</sub> P value) will be used to rank genes for the GSEA.</p>

<p><b>4. Gene identifier 🔖</b> Select which column in the statistics table contains the gene identifiers, 
and specify the identifier type (<i>e.g.</i>, Entrez Gene, Ensembl Gene, or Gene Symbol) and organism.</p>

<br>
<p><h4><b>Output</b></h4></p>
<p>Data and preprocessing quality can be checked in the different outputs and QC plots:</p>
<p><b>1. GSEA table.</b> Table with the statistics of the gene set enrichment analysis. 
Click <a href = "https://arrayanalysis.org/explain/GSEAtable" target="_blank">here</a> for more information on this table.</p>

<p><b>2. Barchart.</b> The plot displays statistics of the most top enriched genesets.
Click <a href = "https://arrayanalysis.org/explain/Barchart" target="_blank">here</a> for more information on this figure.</p>

<p><b>3. Network.</b> The network visualizes the relationship between the most significantly enriched genesets. 
The edge thickness is proportional to the Jaccard Index (<i>i.e.</i>, number of shared genes/total number of gene in both genesets). 
Click <a href = "https://arrayanalysis.org/explain/Network" target="_blank">here</a> for more information on this figure.</p>

<p><b>4. Settings.</b> Download the overview of the GSEA settings and session info to ensure reproducibility.</p>

<hr>
<br>


<div id="mr" class="section level1">
<h1><b>RNA-seq Analysis</b></h1>
</div>
<hr>
<div id="rr" class="section level1">
<h1>Raw count matrix</h1>
</div>

<div id="rr_upload" class="section level2">
<h3>Data upload</h3>
<p><h4><b>Input</b></h4></p>
<p>To begin the analysis, upload the following two files:</p>
<p><b>1. Count matrix</b></p>
<ul>
  <li>Provide a raw count matrix as <code>.tsv</code> or <code>.csv</code> file. </li>
  <li>The column names of the count matrix must match the sample names in the metadata file.</li>
  <li>ArrayAnalysis will automatically detect the column in the metadata that corresponds to the sample names in the count matrix.</li>
</ul>
<p><b>2. Metadata file</b></p>
<ul>
<li>The metadata table can be provided as a <code>.tsv</code> or <code>.csv</code> file or as a <code>Series Matrix File</code> available from the 
<a href="https://www.ncbi.nlm.nih.gov/geo/" target="_blank">GEO website</a>.</li> 
<li>Ensure that the metadata includes a column of sample names that match the column names in the count matrix.</li>
</ul>
<br>
<p>👉 You can analyse an <b>example dataset</b>  (<a href="https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE128380" target="_blank">GSE128380</a>) by clicking on <i>Run example</i>.</p>
<br>
<p><h4><b>Output</b></h4></p>
<p>After uploading, a preview of both the expression matrix and the metadata table will be displayed. This allows you to verify that the data has been uploaded correctly.</p>
</div>
<br>

<div id="rr_preprocessing" class="section level2">
<h3>Pre-processing</h3>
<p><h4><b>Input</b></h4></p>
<p>The data preprocessing is performed using the <a href = "https://doi.org/10.1186/s13059-014-0550-8" target="_blank">DESeq2</a> package. 
The data undergoes DESeq2 normalization and additional correlation unblinded variance stabilizing transformation is performed to generate the sample-sample correlation heatmap and PCA plot.
For the preprocessing, you can provide the following inputs:</p>
<p><b>1. Remove samples (optional) 🗑️</b> Use this option to exclude outliers or other samples you do not want included in the analysis.</p>

<p><b>2. Select experimental group 👥</b> The experimental group is the variable that defines the cases and controls (<i>e.g.</i>, disease status). 
By selecting more than one variable, you can combine multiple variables into a single experimental variable. This can be useful if you, for example, want to compare cases and controls 
for different tissues (<i>e.g.</i>, liver and brain). As such, you can create four different experimental groups: <i>case_brain</i>, <i>control_brain</i>, <i>case_liver</i>, and <i>control_liver</i>. 
The selection of the experimental group will be used for the normalization (if <i>normalization per experimental group</i> selected) and for the statistical analysis in the next tab.</p>

<p><b>3. Select filtering threshold ✂️</b> A gene is kept for the subsequent analysis if it has a count larger or equal to the selected filtering threshold in at least n samples, 
where n is the number of samples in the smallest experiment group.</p>
<br>
<p>👉 ArrayAnalysis automatically checks for potential outliers and will display a warning if any are detected. 
Please always check the QC plots carefully to decide whether samples should be excluded from further analysis.</p>
<br>

<p><h4><b>Output</b></h4></p>
<p>Data and preprocessing quality can be checked in the different output tables and figures:</p>
<p><b>1. Normalized expression matrix.</b> A table of normalized expression values is provided and can be downloaded. 
You can view the expression profile of individual genes by clicking on the table. 
Click <a href = "https://arrayanalysis.org/explain/Geneboxplot" target="_blank">here</a> for more information on this figure.</p>

<p><b>2. Boxplots.</b> The boxplots show the distribution of expression values across all samples. 
Click <a href = "https://arrayanalysis.org/explain/Sampleboxplot" target="_blank">here</a> for more information on this figure.</p>

<p><b>3. Density plots.</b> Similar to the boxplots, the density plot shows the distribution of expression values across all samples. 
Click <a href = "https://arrayanalysis.org/explain/Densityplot" target="_blank">here</a> for more information on this figure.</p>

<p><b>4. Raw Read Counts.</b> The bar chart displays the total number of raw sequencing reads measured for each sample.
Click <a href = "https://arrayanalysis.org/explain/Readcount" target="_blank">here</a> for more information on this figure.</p>

<p><b>5. Sample-sample correlation heatmap.</b> The heatmap shows the sample-wise correlations based on the normalized expression profiles.
Click <a href = "https://arrayanalysis.org/explain/Sampleheatmap" target="_blank">here</a> for more information on this figure.</p>

<p><b>6. PCA plot.</b> 2D and 3D PCA plots can be viewed to assess data quality and identify potential outliers.
Click <a href = "https://arrayanalysis.org/explain/PCA" target="_blank">here</a> for more information on this figure.</p>

<p><b>6. Settings.</b> Download the overview of pre-processing settings and the session info to ensure reproducibility.</p>
</div>
<br>

<div id="rr_statanalysis" class="section level2">

<h3>Statistical Analysis</h3>
<p><h4><b>Input</b></h4></p>
<p> Statistical analysis is performed using the <a href = "https://doi.org/10.1186/s13059-014-0550-8" target="_blank">DESeq2</a> package.
To run the analysis, you can provide three inputs:</p>
<p><b>1. Statistical comparison(s) 📊</b> Select one or more statistical comparisons of interest. The direction of the statistical comparison is usually defined 
as <code>Case - Control</code>.</p>
<p><b>2. Covariates ⚙️</b> Adjust for continuous (<i>e.g.</i>, age) and categorical (<i>e.g.</i>, sex, tissue) covariates.</p>
<p><b>3. log<sub>2</sub>FC shrinkage 📉</b> Shrink imprecise log<sub>2</sub>FCs towards 0 with the <a href = "https://doi.org/10.1093/bioinformatics/bty895" target="_blank">apeglm</a> method. 
This option is recommended to get more accurate log<sub>2</sub>FCs estimates.</p>
<p><b>4. Gene annotation 🔖</b> Add gene annotations from the Ensembl database using the 
<a href = "https://bioconductor.org/packages/release/bioc/html/biomaRt.html" target = "_blank">biomaRt package</a>. For example, if your data uses ENTREZ gene IDs, 
you can use this option to add gene symbols or Ensembl gene IDs to the statistics output. Please note that enabling this option increases the runtime of the analysis</p>
<br>
<p><h4><b>Output</b></h4></p>
<p>For each of the selected statistical comparisons, the following output are provided:</p>
<p><b>1. Top table.</b> A table with the statistics from the differential expression analysis.
Click <a href = "https://arrayanalysis.org/explain/Toptable" target="_blank">here</a> for more information on this table.</p>
<p><b>2. p-value and log<sub>2</sub>FC histograms.</b> These plots show the distribution of p-values and log<sub>2</sub>FCs.
Click for more information on the <a href = "https://arrayanalysis.org/explain/Phistogram" target="_blank">p-value histogram</a> 
and <a href = "https://arrayanalysis.org/explain/logFChistogram" target="_blank">log<sub>2</sub>FC histogram</a>.</p>
<p><b>3. Volcano plot.</b> Scatter plot of log<sub>2</sub>FC versus -log<sub>10</sub> p-value. 
Click <a href = "https://arrayanalysis.org/explain/Volcanoplot" target="_blank">here</a> for more information on this figure.</p>
<p><b>4. MA plot.</b> Scatter plot of mean log<sub>2</sub> expression versus log<sub>2</sub>FC. 
Click <a href = "https://arrayanalysis.org/explain/MAplot" target="_blank">here</a> for more information on this figure.</p>
<p><b>5. Summary.</b> Get the number of differentially expressed genes for selected p-value and log<sub>2</sub>FC thresholds.</p>
<p><b>6. Settings.</b> Download the overview of statistical analysis settings and the session info to ensure reproducibility.</p> 

</div>
<br>

<div id="rr_gsa" class="section level2">
<h3>Gene Set Analysis</h3>
<p>After completing the statistical analysis, you can perform Gene Set Analysis (GSA) using various gene set collections, 
including <a href = "https://geneontology.org/" target="_blank">Gene Ontology (GO)</a>, 
<a href = "https://www.genome.jp/kegg/pathway.html" target="_blank">KEGG</a>, 
and <a href = "https://www.wikipathways.org/" target="_blank">WikiPathways</a>. 
The <a href = "https://www.bioconductor.org/packages/release/bioc/html/clusterProfiler.html" target = "_blank">clusterProfiler</a> package is used for the analysis.
Two methods are available:</p>
<ul>
<li>Overrepresentation Analysis (ORA)</li>
<li>Gene Set Enrichment Analysis (GSEA)</li>
</ul>
<br>

<h4>Overrepresentation Analysis (ORA)</h4>
<p><h4><b>Input</b></h4></p>
<p><b>1. Statistical comparison 📊</b> Select the statistical comparison for which you want to perform ORA.</p>

<p><b>2. Geneset collection 📋</b> Select one of the following geneset collections: 
Gene Ontology-Biological Process (GO-BP), -Cellular Component (GO-CC), and -Molecular Function (GO-MF), KEGG, and WikiPathways geneset collections.</p>

<p><b>3. Input genes 🧬</b> Specify whether ORA should be performed on upregulated, downregulated, or both sets of genes. You can define input genes by:
<ul>
<li>Applying a p-value and log<sub>2</sub>FC threshold, or</li>
<li>Selecting the top N most significantly up/downregulated genes.</li>
</ul>
<p>👉 The background gene list includes all genes that passed QC.</p>

<p><b>4. Gene identifier 🔖</b> Select which column in the statistics table contains the gene identifiers, 
and specify the identifier type (<i>e.g.</i>, Entrez Gene, Ensembl Gene, or Gene Symbol) and organism.</p>
<br>

<p><h4><b>Output</b></h4></p>
<p>Data and preprocessing quality can be checked in the different outputs and QC plots:</p>
<p><b>1. ORA table.</b> Table with the statistics of the overrepresentation analysis. 
Click <a href = "https://arrayanalysis.org/explain/ORAtable" target="_blank">here</a> for more information on this table.</p>

<p><b>2. Barchart.</b> The plot displays statistics of the most top overrepresented genesets.
Click <a href = "https://arrayanalysis.org/explain/Barchart" target="_blank">here</a> for more information on this figure.</p>

<p><b>3. Network.</b> The network visualizes the relationship between the most significantly overrepresented genesets. 
The edge thickness is proportional to the Jaccard Index (<i>i.e.</i>, number of shared genes/total number of gene in both genesets). 
Click <a href = "https://arrayanalysis.org/explain/Network" target="_blank">here</a> for more information on this figure.</p>

<p><b>4. Settings.</b> Download the overview of the ORA settings and session info to ensure reproducibility.</p>  

<br>

<h4>Gene Set Enrichment Analysis (GSEA)</h4>
<p><h4><b>Input</b></h4></p>
<p><b>1. Statistical comparison 📊</b> Select the statistical comparison for which you want to perform ORA.</p>

<p><b>2. Geneset collection 📋</b> Select one of the following geneset collections: 
Gene Ontology-Biological Process (GO-BP), -Cellular Component (GO-CC), and -Molecular Function (GO-MF), KEGG, and WikiPathways geneset collections.</p>

<p><b>3. Ranking variable 🔢</b> Specify which variable (log<sub>2</sub>FC, -log<sub>10</sub> P value, or signed -log<sub>10</sub> P value) will be used to rank genes for the GSEA.</p>

<p><b>4. Gene identifier 🔖</b> Select which column in the statistics table contains the gene identifiers, 
and specify the identifier type (<i>e.g.</i>, Entrez Gene, Ensembl Gene, or Gene Symbol) and organism.</p>

<br>
<p><h4><b>Output</b></h4></p>
<p>Data and preprocessing quality can be checked in the different outputs and QC plots:</p>
<p><b>1. GSEA table.</b> Table with the statistics of the gene set enrichment analysis. 
Click <a href = "https://arrayanalysis.org/explain/GSEAtable" target="_blank">here</a> for more information on this table.</p>

<p><b>2. Barchart.</b> The plot displays statistics of the most top enriched genesets.
Click <a href = "https://arrayanalysis.org/explain/Barchart" target="_blank">here</a> for more information on this figure.</p>

<p><b>3. Network.</b> The network visualizes the relationship between the most significantly enriched genesets. 
The edge thickness is proportional to the Jaccard Index (<i>i.e.</i>, number of shared genes/total number of gene in both genesets). 
Click <a href = "https://arrayanalysis.org/explain/Network" target="_blank">here</a> for more information on this figure.</p>

<p><b>4. Settings.</b> Download the overview of the GSEA settings and session info to ensure reproducibility.</p>

<hr>
<br>

<div id="rn" class="section level1">
<h1>Processed count matrix</h1>
</div>

<div id="rn_upload" class="section level2">
<h3>Data upload</h3>
<p><h4><b>Input</b></h4></p>
<p>To begin the analysis, upload the following two files:</p>
<p><b>1. Count matrix</b></p>
<ul>
  <li>Provide a processed count matrix as <code>.tsv</code> or <code>.csv</code> file. </li>
  <li>The column names of the count matrix must match the sample names in the metadata file.</li>
  <li>ArrayAnalysis will automatically detect the column in the metadata that corresponds to the sample names in the count matrix.</li>
</ul>
<p><b>2. Metadata file</b></p>
<ul>
<li>The metadata table can be provided as a <code>.tsv</code> or <code>.csv</code> file or as a <code>Series Matrix File</code> available from the 
<a href="https://www.ncbi.nlm.nih.gov/geo/" target="_blank">GEO website</a>.</li> 
<li>Ensure that the metadata includes a column of sample names that match the column names in the count matrix.</li>
</ul>
<br>
<p>👉 You can analyse an <b>example dataset</b>  (<a href="https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE128380" target="_blank">GSE128380</a>) by clicking on <i>Run example</i>.</p>
<br>
<p><h4><b>Output</b></h4></p>
<p>After uploading, a preview of both the expression matrix and the metadata table will be displayed. This allows you to verify that the data has been uploaded correctly.</p>
</div>
<br>

<div id="rn_preprocessing" class="section level2">

<h3>Pre-processing</h3>
<p><h4><b>Input</b></h4></p>
<p>For the data preprocessing, you can provide the following inputs:</p>
<p><b>1. Remove samples (optional) 🗑️</b> Use this option to exclude outliers or other samples you do not want included in the analysis.</p>

<p><b>2. Select experimental group 👥</b> The experimental group is the variable that defines the cases and controls (<i>e.g.</i>, disease status). 
By selecting more than one variable, you can combine multiple variables into a single experimental variable. This can be useful if you, for example, want to compare cases and controls 
for different tissues (<i>e.g.</i>, liver and brain). As such, you can create four different experimental groups: <i>case_brain</i>, <i>control_brain</i>, <i>case_liver</i>, and <i>control_liver</i>. 
The selection of the experimental group will be used for the normalization (if <i>normalization per experimental group</i> selected) and for the statistical analysis in the next tab.</p>

<p><b>3. Select transformation method (optional) 🔧</b> If necessary, perform log<sub>2</sub>-transformation to make the data more normally distributed.</p>

<p><b>4. Select filtering threshold (optional) ✂️</b> If this option is selected, a gene is kept for the subsequent analysis if it has a count larger or equal to the selected filtering threshold in at least n samples, 
where n is the number of samples in the smallest experiment group.</p>

<p><b>5. Select normalization method (optional) 🔧</b> If necessary, perform quantile normalization to normalize the expression values across the samples.</p>
<br>
<p>👉 ArrayAnalysis automatically checks for potential outliers and will display a warning if any are detected. 
Please always check the QC plots carefully to decide whether samples should be excluded from further analysis.</p>
<br>

<p><h4><b>Output</b></h4></p>
<p>Data and preprocessing quality can be checked in the different output tables and figures:</p>
<p><b>1. Normalized expression matrix.</b> A table of normalized expression values is provided and can be downloaded. 
You can view the expression profile of individual genes by clicking on the table. 
Click <a href = "https://arrayanalysis.org/explain/Geneboxplot" target="_blank">here</a> for more information on this figure.</p></p>

<p><b>2. Boxplots.</b> The boxplots show the distribution of expression values across all samples. 
Click <a href = "https://arrayanalysis.org/explain/Sampleboxplot" target="_blank">here</a> for more information on this figure.</p>

<p><b>3. Density plots.</b> Similar to the boxplots, the density plot shows the distribution of expression values across all samples. 
Click <a href = "https://arrayanalysis.org/explain/Densityplot" target="_blank">here</a> for more information on this figure.</p>

<p><b>4. Sample-sample correlation heatmap.</b> The heatmap shows the sample-wise correlations based on the normalized expression profiles.
Click <a href = "https://arrayanalysis.org/explain/Sampleheatmap" target="_blank">here</a> for more information on this figure.</p>

<p><b>5. PCA plot.</b> 2D and 3D PCA plots can be viewed to assess data quality and identify potential outliers.
Click <a href = "https://arrayanalysis.org/explain/PCA" target="_blank">here</a> for more information on this figure.</p>

<p><b>6. Settings.</b> Download the overview of pre-processing settings and the session info to ensure reproducibility.</p> 
</div>
<br>

<div id="rn_statanalysis" class="section level2">

<h3>Statistical Analysis</h3>
<p><h4><b>Input</b></h4></p>
<p> Statistical analysis is performed using the <a href = "https://doi.org/10.1093/nar/gkv007" target="_blank">limma</a> package (limma-trend). 
To run the analysis, you can provide three inputs:</p>
<p><b>1. Statistical comparison(s) 📊</b> Select one or more statistical comparisons of interest. The direction of the statistical comparison is usually defined 
as <code>Case - Control</code>.</p>
<p><b>2. Covariates ⚙️</b> Adjust for continuous (<i>e.g.</i>, age) and categorical (<i>e.g.</i>, sex, tissue) covariates.</p>
<p><b>3. Gene annotation 🔖</b> Add gene annotations from the Ensembl database using the 
<a href = "https://bioconductor.org/packages/release/bioc/html/biomaRt.html" target = "_blank">biomaRt package</a>. For example, if your data uses ENTREZ gene IDs, 
you can use this option to add gene symbols or Ensembl gene IDs to the statistics output. Please note that enabling this option increases the runtime of the analysis</p>
<br>
<p><h4><b>Output</b></h4></p>
<p>For each of the selected statistical comparisons, the following output are provided:</p>
<p><b>1. Top table.</b> A table with the statistics from the differential expression analysis.
Click <a href = "https://arrayanalysis.org/explain/Toptable" target="_blank">here</a> for more information on this table.</p>
<p><b>2. p-value and log<sub>2</sub>FC histograms.</b> These plots show the distribution of p-values and log<sub>2</sub>FCs.
Click for more information on the <a href = "https://arrayanalysis.org/explain/Phistogram" target="_blank">p-value histogram</a> 
and <a href = "https://arrayanalysis.org/explain/logFChistogram" target="_blank">log<sub>2</sub>FC histogram</a>.</p>
<p><b>3. Volcano plot.</b> Scatter plot of log<sub>2</sub>FC versus -log<sub>10</sub> p-value. 
Click <a href = "https://arrayanalysis.org/explain/Volcanoplot" target="_blank">here</a> for more information on this figure.</p>
<p><b>4. MA plot.</b> Scatter plot of mean log<sub>2</sub> expression versus log<sub>2</sub>FC. 
Click <a href = "https://arrayanalysis.org/explain/MAplot" target="_blank">here</a> for more information on this figure.</p>
<p><b>5. Summary.</b> Get the number of differentially expressed genes for selected p-value and log<sub>2</sub>FC thresholds.</p>
<p><b>6. Settings.</b> Download the overview of statistical analysis settings and the session info to ensure reproducibility.</p>  

</div>
<br>

<div id="rn_gsa" class="section level2">
<h3>Gene Set Analysis</h3>
<p>After completing the statistical analysis, you can perform Gene Set Analysis (GSA) using various gene set collections, 
including <a href = "https://geneontology.org/" target="_blank">Gene Ontology (GO)</a>, 
<a href = "https://www.genome.jp/kegg/pathway.html" target="_blank">KEGG</a>, 
and <a href = "https://www.wikipathways.org/" target="_blank">WikiPathways</a>. 
The <a href = "https://www.bioconductor.org/packages/release/bioc/html/clusterProfiler.html" target = "_blank">clusterProfiler</a> package is used for the analysis.
Two methods are available:</p>
<ul>
<li>Overrepresentation Analysis (ORA)</li>
<li>Gene Set Enrichment Analysis (GSEA)</li>
</ul>
<br>

<h4>Overrepresentation Analysis (ORA)</h4>
<p><h4><b>Input</b></h4></p>
<p><b>1. Statistical comparison 📊</b> Select the statistical comparison for which you want to perform ORA.</p>

<p><b>2. Geneset collection 📋</b> Select one of the following geneset collections: 
Gene Ontology-Biological Process (GO-BP), -Cellular Component (GO-CC), and -Molecular Function (GO-MF), KEGG, and WikiPathways geneset collections.</p>

<p><b>3. Input genes 🧬</b> Specify whether ORA should be performed on upregulated, downregulated, or both sets of genes. You can define input genes by:
<ul>
<li>Applying a p-value and log<sub>2</sub>FC threshold, or</li>
<li>Selecting the top N most significantly up/downregulated genes.</li>
</ul>
<p>👉 The background gene list includes all genes that passed QC.</p>

<p><b>4. Gene identifier 🔖</b> Select which column in the statistics table contains the gene identifiers, 
and specify the identifier type (<i>e.g.</i>, Entrez Gene, Ensembl Gene, or Gene Symbol) and organism.</p>
<br>

<p><h4><b>Output</b></h4></p>
<p>Data and preprocessing quality can be checked in the different outputs and QC plots:</p>
<p><b>1. ORA table.</b> Table with the statistics of the overrepresentation analysis. 
Click <a href = "https://arrayanalysis.org/explain/ORAtable" target="_blank">here</a> for more information on this table.</p>

<p><b>2. Barchart.</b> The plot displays statistics of the most top overrepresented genesets.
Click <a href = "https://arrayanalysis.org/explain/Barchart" target="_blank">here</a> for more information on this figure.</p>

<p><b>3. Network.</b> The network visualizes the relationship between the most significantly overrepresented genesets. 
The edge thickness is proportional to the Jaccard Index (<i>i.e.</i>, number of shared genes/total number of gene in both genesets). 
Click <a href = "https://arrayanalysis.org/explain/Network" target="_blank">here</a> for more information on this figure.</p>

<p><b>4. Settings.</b> Download the overview of the ORA settings and session info to ensure reproducibility.</p>  

<br>

<h4>Gene Set Enrichment Analysis (GSEA)</h4>
<p><h4><b>Input</b></h4></p>
<p><b>1. Statistical comparison 📊</b> Select the statistical comparison for which you want to perform ORA.</p>

<p><b>2. Geneset collection 📋</b> Select one of the following geneset collections: 
Gene Ontology-Biological Process (GO-BP), -Cellular Component (GO-CC), and -Molecular Function (GO-MF), KEGG, and WikiPathways geneset collections.</p>

<p><b>3. Ranking variable 🔢</b> Specify which variable (log<sub>2</sub>FC, -log<sub>10</sub> P value, or signed -log<sub>10</sub> P value) will be used to rank genes for the GSEA.</p>

<p><b>4. Gene identifier 🔖</b> Select which column in the statistics table contains the gene identifiers, 
and specify the identifier type (<i>e.g.</i>, Entrez Gene, Ensembl Gene, or Gene Symbol) and organism.</p>

<br>
<p><h4><b>Output</b></h4></p>
<p>Data and preprocessing quality can be checked in the different outputs and QC plots:</p>
<p><b>1. GSEA table.</b> Table with the statistics of the gene set enrichment analysis. 
Click <a href = "https://arrayanalysis.org/explain/GSEAtable" target="_blank">here</a> for more information on this table.</p>

<p><b>2. Barchart.</b> The plot displays statistics of the most top enriched genesets.
Click <a href = "https://arrayanalysis.org/explain/Barchart" target="_blank">here</a> for more information on this figure.</p>

<p><b>3. Network.</b> The network visualizes the relationship between the most significantly enriched genesets. 
The edge thickness is proportional to the Jaccard Index (<i>i.e.</i>, number of shared genes/total number of gene in both genesets). 
Click <a href = "https://arrayanalysis.org/explain/Network" target="_blank">here</a> for more information on this figure.</p>

<p><b>4. Settings.</b> Download the overview of the GSEA settings and session info to ensure reproducibility.</p>

<hr>