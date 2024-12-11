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
<h1>Starting from raw data</h1>
</div>

<div id="mr_upload" class="section level2">
<h3>Data upload</h3>
<p><b>Input</b></p>
<p>To start the analysis, the user should upload two files: </p>
<p>1. <b>.zip folder</b> with <i>.CEL</i> or <i>.CEL.gz</i> files. The filenames of the CEL files should match with the sample names in the meta data file. 
ArrayAnalysis will automatically look for the column in the metadata file that matches with the CEL filenames.</p>
<p>2. <b>Metadata file</b>. The metadata table can be provided as a <i>.tsv/.csv</i> file or as a <i>Series Matrix File</i> available from the 
<a href="https://www.ncbi.nlm.nih.gov/geo/" target="_blank">GEO website</a>. </p>
<p>You can analyse an <b>example dataset</b> (<a href="https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE6955" target="_blank">GSE6955</a>) by clicking on <i>Run example</i>.</p>
<br>
<p><b>Output</b></p>
A preview of the <b>expression matrix</b> and <b>metadata</b> table will be shown. This way, you can check whether the data has been correctly uploaded.
</div>
<br>

<div id="mr_preprocessing" class="section level2">
<h3>Pre-processing</h3>
<p><b>Input</b></p>
<p>For the data preprocessing, you can provide the following inputs:</p>
<p>1. <b>Remove samples</b> (optional). Via this option, you can remove outliers or samples from experimental groups that you would like to exclude from the analysis.</p>
<p>2. <b>Select experimental group</b>. The experimental group is the variable that defines the cases and controls (<i>e.g.</i>, disease status). 
By selecting more than one variable, you can combine multiple variables into a single experimental variable. This can be useful if you, for example, want to compare cases and controls 
for different tissues (<i>e.g.</i>, liver and brain). As such, you can create four different experimental groups: <i>case_brain</i>, <i>control_brain</i>, <i>case_liver</i>, and <i>control_liver</i>. 
The selection of the experimental group will be used for the normalization (if <i>normalization per experimental group</i> selected) and for the statistical analysis in the next tab.</p>
<p>3. <b>Select normalization method</b>. The default normalization method is <a href = "https://doi.org/10.1093/biostatistics/4.2.249" target="_blank">RMA</a>. 
However, you can also choose for <a href = "https://doi.org/10.1198/016214504000000683" target="_blank">GCRMA</a> and 
<a href = "https://assets.thermofisher.com/TFS-Assets/LSG/brochures/plier_technote.pdf" target="_blank">PLIER</a>.</p>
<p>4. <b>Select probeset annotation</b>. By default, ArrayAnalysis will use the custom ENTREZ gene annotation from <a href ="http://brainarray.mbni.med.umich.edu/Brainarray/Database/CustomCDF/CDF_download.asp" target="_blank">brainarray</a>. 
If you select <i>No annotation</i>, the Affymatrix probeset annotation will be used.</P>
<br>
<p><b>Output</b></p>
<p>Data and preprocessing quality can be checked in the different output tables and figures:</p>
<p>1. <b>Normalized expression matrix</b> (interactive). The table of normalized expression values is provided and can be downloaded. 
The expression profile of a gene can be viewed by clicking on the table.</p>
<p>2. <b>Boxplots</b> (static). The boxplots show the distribution of expression values for all samples.</p>
<p>3. <b>Density plots</b> (interactive). Similar to the boxplots, the density plot shows the distribution of expression values for all samples.</p>
<p>4. <b>Correlation plot</b> (interactive). The correlation plot shows the sample-wise correlations. You can choose between different linkage and clustering methods.</p>
<p>5. <b>PCA plot</b> (interactive). 2D and 3D PCA plots can be viewed to assess data quality.</p>
<p>6. <b>Table of pre-processing settings</b> (static). An overview of the selected pre-processing settings is provided and can be downloaded. This ensures reproducibility of your analysis.</p>
</div>
<br>

<div id="mr_statanalysis" class="section level2">
<h3>Statistical Analysis</h3>
<p><b>Input</b></p>
<p> Statistical analysis is performed using the <a href = "https://doi.org/10.1093/nar/gkv007" target="_blank">limma</a> package. 
To perform statistical analysis, you can provide three inputs:</p>
<p>1. <b>Statistical comparison(s)</b>. You can select one or more statistical comparisons of interest. Note that the direction of the statistical comparison is usually defined 
as <b>Case - Control</b>.</p>
<p>2. <b>Covariates</b>. You can adjust for continuous (<i>e.g.</i>, age) and categorical (<i>e.g.</i>, sex, tissue) covariates.</p>
<p>3. <b>Gene annotation</b>. You can add gene annotations from the Ensembl database using the biomaRt package. For example, if you have ENTREZ gene IDs annotations, 
you can use this option to add gene symbols or Ensembl gene IDs to the statistics output. Please note that if you select this option, 
the time required for the statistical analysis will increase significantly.</p>
</br>
<p><b>Output</b></p>
<p>For each of the selected statistical comparisons, the following output are provided:</p>
<p>1. <b>Top table</b> (interactive). A table with the relevant statistics as calculated by <i>limma</i>.</p>
<p>2. <b>Histograms</b> (interactive) of the p-value and logFC distribution.</p>
<p>3. <b>Volcano plot</b> (interactive).</p>
</div>
<br>

<div id="mr_ora" class="section level2">
<h3>Overrepresentation Analysis</h3>
<p><b>Input</b></p>
<p>After the statistical analysis, you can perform geneset (<i>i.e.</i>, <a href = "https://geneontology.org/" target="_blank">Gene Ontology</a> and 
<a href = "https://www.wikipathways.org/" target="_blank">WikiPathways</a>) overrepresentation analysis (ORA). 
For this, you can select from various options:</p>
<p>1. <b>Statistical comparison</b>. Select the statistical comparison for which you want to perform ORA.</p>
<p>2. <b>Geneset collection</b>. Select from Gene Ontology (GO)-Biological Process (BP), -Cellular Component (CC), and -Molecular Function (MF), as well as WikiPathways geneset collections.</p>
<p>3. <b>Differentially expressed genes</b>. Indicate whether you want to perform ORA on up- and/or downregulated genes. 
Furhermore, you can also indicate whether the differentially expressed genes should be selected based on a p-value/logFC threshold 
or whether ORA should simply be performed on the top most significantly up/downregulated genes.</p>
<p>4. <b>Gene identifier</b>. Select which column contains the gene identifiers and what type of identifiers these are (<i>e.g.</i>, ENTREZG, Ensembl, or gene symbol). 
Furthermore, indicate to which organism the gene identifiers belong.</p>
</br>
<p><b>Output</b></p>
<p>Data and preprocessing quality can be checked in the different outputs and QC plots:</p>
<p>1. <b>ORA table</b>. Table with the statistics of the ORA. This table can be downloaded.</p>
<p>2. <b>Barchart</b> of the most significantly overrepresented genesets. You can select the number of genesets in the chart.</p>
<p>3. <b>Network</b> of the most significantly overrepresented genesets. The edge thickness is proportional to the Jaccard Index (<i>i.e.</i>, number of shared genes/total number of gene in both genesets). 
You can select the network layout and number of genesets in the network.</p> 
</div>
<hr>
<br>

<div id="mn" class="section level1">
<h1>Starting from processed data</h1>
</div>

<div id="mn_upload" class="section level2">
<h3>Data upload</h3>
<p><b>Input</b></p>
<p>To start the analysis, the user should upload two files: </p>
<p>1. Expression data in <b>Series Matrix File</b> format. <i>Series Matrix Files</i> can be downloaded from the 
<a href="https://www.ncbi.nlm.nih.gov/geo/" target="_blank">GEO website</a>.</p>
<p>2. <b>Metadata file</b>. The metadata table can be provided as a <i>.tsv/.csv</i> file or as a <i>Series Matrix File</i>. </p>
<p>You can analyse an <b>example dataset</b> (<a href="https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE6955" target="_blank">GSE6955</a>) by clicking on <i>Run example</i>.</p>
<br>
<p><b>Output</b></p>
A preview of the <b>expression matrix</b> and <b>metadata</b> table will be shown. This way, you can check whether the data has been correctly uploaded.
</div>
<br>

<div id="mn_preprocessing" class="section level2">
<h3>Pre-processing</h3>
<p><b>Input</b></p>
<p>For the data preprocessing, you can provide the following inputs:</p>
<p>1. <b>Remove samples</b> (optional). Via this option, you can remove outliers or samples from experimental groups that you would like to exclude from the analysis.</p>
<p>2. <b>Select experimental group</b>. The experimental group is the variable that defines the cases and controls (<i>e.g.</i>, disease status). 
By selecting more than one variable, you can combine multiple variables into a single experimental variable. This can be useful if you, for example, want to compare cases and controls 
for different tissues (<i>e.g.</i>, liver and brain). As such, you can create four different experimental groups: <i>case_brain</i>, <i>control_brain</i>, <i>case_liver</i>, and <i>control_liver</i>. 
The selection of the experimental group will be used for the normalization (if <i>normalization per experimental group</i> selected) and for the statistical analysis in the next tab.</p>
<p>3. <b>Select transformation method</b> (optional). You can perform log<sub>2</sub>-transformation to make the data more normally distributed.</p>
<p>4. <b>Select normalization method</b> (optional). You can perform quantile normalization to normalize the expression values across the samples.</p>


<br>
<p><b>Output</b></p>
<p>Data and preprocessing quality can be checked in the different output tables and figures:</p>
<p>1. <b>Normalized expression matrix</b> (interactive). The table of normalized expression values is provided and can be downloaded. 
The expression profile of a gene can be viewed by clicking on the table.</p>
<p>2. <b>Boxplots</b> (static). The boxplots show the distribution of expression values for all samples.</p>
<p>3. <b>Density plots</b> (interactive). Similar to the boxplots, the density plot shows the distribution of expression values for all samples.</p>
<p>4. <b>Correlation plot</b> (interactive). The correlation plot shows the sample-wise correlations. You can choose between different linkage and clustering methods.</p>
<p>5. <b>PCA plot</b> (interactive). 2D and 3D PCA plots can be viewed to assess data quality.</p>
<p>6. <b>Table of pre-processing settings</b> (static). An overview of the selected pre-processing settings is provided and can be downloaded. This ensures reproducibility of your analysis.</p>
</div>
<br>

<div id="mn_statanalysis" class="section level2">
<h3>Statistical Analysis</h3>
<p><b>Input</b></p>
<p> Statistical analysis is performed using the <a href = "https://doi.org/10.1093/nar/gkv007" target="_blank">limma</a> package. 
To perform statistical analysis, you can provide three inputs:</p>
<p>1. <b>Statistical comparison(s)</b>. You can select one or more statistical comparisons of interest. Note that the direction of the statistical comparison is usually defined 
as <b>Case - Control</b>.</p>
<p>2. <b>Covariates</b>. You can adjust for continuous (<i>e.g.</i>, age) and categorical (<i>e.g.</i>, sex, tissue) covariates.</p>
<p>3. <b>Gene annotation</b>. You can add gene annotations from the Ensembl database using the biomaRt package. For example, if you have ENTREZ gene IDs annotations, 
you can use this option to add gene symbols or Ensembl gene IDs to the statistics output. Please note that if you select this option, 
the time required for the statistical analysis will increase significantly.</p>
</br>
<p><b>Output</b></p>
<p>For each of the selected statistical comparisons, the following output are provided:</p>
<p>1. <b>Top table</b> (interactive). A table with the relevant statistics as calculated by <i>limma</i>.</p>
<p>2. <b>Histograms</b> (interactive) of the p-value and logFC distribution.</p>
<p>3. <b>Volcano plot</b> (interactive).</p>
</div>
<br>

<div id="mn_ora" class="section level2">
<h3>Overrepresentation Analysis</h3>
<p><b>Input</b></p>
<p>After the statistical analysis, you can perform geneset (<i>i.e.</i>, <a href = "https://geneontology.org/" target="_blank">Gene Ontology</a> and 
<a href = "https://www.wikipathways.org/" target="_blank">WikiPathways</a>) overrepresentation analysis (ORA). 
For this, you can select from various options:</p>
<p>1. <b>Statistical comparison</b>. Select the statistical comparison for which you want to perform ORA.</p>
<p>2. <b>Geneset collection</b>. Select from Gene Ontology (GO)-Biological Process (BP), -Cellular Component (CC), and -Molecular Function (MF), as well as WikiPathways geneset collections.</p>
<p>3. <b>Differentially expressed genes</b>. Indicate whether you want to perform ORA on up- and/or downregulated genes. 
Furhermore, you can also indicate whether the differentially expressed genes should be selected based on a p-value/logFC threshold 
or whether ORA should simply be performed on the top most significantly up/downregulated genes.</p>
<p>4. <b>Gene identifier</b>. Select which column contains the gene identifiers and what type of identifiers these are (<i>e.g.</i>, ENTREZG, Ensembl, or gene symbol). 
Furthermore, indicate to which organism the gene identifiers belong.</p>
</br>
<p><b>Output</b></p>
<p>Data and preprocessing quality can be checked in the different outputs and QC plots:</p>
<p>1. <b>ORA table</b>. Table with the statistics of the ORA. This table can be downloaded.</p>
<p>2. <b>Barchart</b> of the most significantly overrepresented genesets. You can select the number of genesets in the chart.</p>
<p>3. <b>Network</b> of the most significantly overrepresented genesets. The edge thickness is proportional to the Jaccard Index (<i>i.e.</i>, number of shared genes/total number of gene in both genesets). 
You can select the network layout and number of genesets in the network.</p> 
</div>
<hr>
<br>


<div id="mr" class="section level1">
<h1><b>RNA-seq Analysis</b></h1>
</div>
<hr>
<div id="rr" class="section level1">
<h1>Starting from raw data</h1>
</div>

<div id="rr_upload" class="section level2">
<h3>Data upload</h3>
<p><b>Input</b></p>
<p>To start the analysis, the user should upload two files: </p>
<p>1. <b>Expression matrix</b>. This matrix can be provided as a <i>.tsv/.csv</i> file. 
ArrayAnalysis will automatically look for the column in the metadata file that matches with the column names of the matrix.</p>
<p>2. <b>Metadata file</b>. The metadata table can be provided as a <i>.tsv/.csv</i> file or as a <i>Series Matrix File</i> available from the 
<a href="https://www.ncbi.nlm.nih.gov/geo/" target="_blank">GEO website</a>. </p>
<p>You can analyse an <b>example dataset</b> (<a href="https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE128380" target="_blank">GSE128380</a>) by clicking on <i>Run example</i>.</p>
<br>
<p><b>Output</b></p>
A preview of the <b>expression matrix</b> and <b>metadata</b> table will be shown. This way, you can check whether the data has been correctly uploaded.
</div>
<br>

<div id="rr_preprocessing" class="section level2">
<h3>Pre-processing</h3>
<p><b>Input</b></p>
<p>The data preprocessing is performed using the <a href = "https://doi.org/10.1186/s13059-014-0550-8" target="_blank">DESeq2</a> package. For this, you can provide the following inputs:</p>
<p>1. <b>Remove samples</b> (optional). Via this option, you can remove outliers or samples from experimental groups that you would like to exclude from the analysis.</p>
<p>2. <b>Select experimental group</b>. The experimental group is the variable that defines the cases and controls (<i>e.g.</i>, disease status). 
By selecting more than one variable, you can combine multiple variables into a single experimental variable. This can be useful if you, for example, want to compare cases and controls 
for different tissues (<i>e.g.</i>, liver and brain). As such, you can create four different experimental groups: <i>case_brain</i>, <i>control_brain</i>, <i>case_liver</i>, and <i>control_liver</i>. 
The selection of the experimental group will be used for the normalization (if <i>normalization per experimental group</i> selected) and for the statistical analysis in the next tab.</p>
<p>3. <b>Select filtering threshold</b>. A gene is kept for the subsequent analysis if it has a count larger or equal to the selected filtering threshold in at least n samples, 
where n is the number of samples in the smallest experiment group.</p>


<br>
<p><b>Output</b></p>
<p>Data and preprocessing quality can be checked in the different output tables and figures:</p>
<p>1. <b>Normalized expression matrix</b> (interactive). The table of normalized expression values is provided and can be downloaded. 
The expression profile of a gene can be viewed by clicking on the table.</p>
<p>2. <b>Boxplots</b> (static). The boxplots show the distribution of expression values for all samples.</p>
<p>3. <b>Density plots</b> (interactive). Similar to the boxplots, the density plot shows the distribution of expression values for all samples.</p>
<p>4. <b>Correlation plot</b> (interactive). The correlation plot shows the sample-wise correlations. You can choose between different linkage and clustering methods.</p>
<p>5. <b>PCA plot</b> (interactive). 2D and 3D PCA plots can be viewed to assess data quality.</p>
<p>6. <b>Table of pre-processing settings</b> (static). An overview of the selected pre-processing settings is provided and can be downloaded. This ensures reproducibility of your analysis.</p>
</div>
<br>

<div id="rr_statanalysis" class="section level2">
<h3>Statistical Analysis</h3>
<p><b>Input</b></p>
<p> Statistical analysis is performed using the <a href = "https://doi.org/10.1186/s13059-014-0550-8" target="_blank">DESeq2</a> package. 
To perform statistical analysis, you can provide three inputs:</p>
<p>1. <b>Statistical comparison(s)</b>. You can select one or more statistical comparisons of interest. Note that the direction of the statistical comparison is usually defined 
as <b>Case - Control</b>.</p>
<p>2. <b>Covariates</b>. You can adjust for continuous (<i>e.g.</i>, age) and categorical (<i>e.g.</i>, sex, tissue) covariates.</p>
<p>3. <b>Gene annotation</b>. You can add gene annotations from the Ensembl database using the biomaRt package. For example, if you have ENTREZ gene IDs annotations, 
you can use this option to add gene symbols or Ensembl gene IDs to the statistics output. Please note that if you select this option, 
the time required for the statistical analysis will increase significantly.</p>
</br>
<p><b>Output</b></p>
<p>For each of the selected statistical comparisons, the following output are provided:</p>
<p>1. <b>Top table</b> (interactive). A table with the relevant statistics as calculated by <i>DESeq2</i>. 
The log2FC estimates are shrunken using the <a href = "https://doi.org/10.1093/bioinformatics/bty895" target="_blank">apeglm</a> method.</p>
<p>2. <b>Histograms</b> (interactive) of the p-value and logFC distribution.</p>
<p>3. <b>Volcano plot</b> (interactive).</p>
</div>
<br>

<div id="rr_ora" class="section level2">
<h3>Overrepresentation Analysis</h3>
<p><b>Input</b></p>
<p>After the statistical analysis, you can perform geneset (<i>i.e.</i>, <a href = "https://geneontology.org/" target="_blank">Gene Ontology</a> and 
<a href = "https://www.wikipathways.org/" target="_blank">WikiPathways</a>) overrepresentation analysis (ORA). 
For this, you can select from various options:</p>
<p>1. <b>Statistical comparison</b>. Select the statistical comparison for which you want to perform ORA.</p>
<p>2. <b>Geneset collection</b>. Select from Gene Ontology (GO)-Biological Process (BP), -Cellular Component (CC), and -Molecular Function (MF), as well as WikiPathways geneset collections.</p>
<p>3. <b>Differentially expressed genes</b>. Indicate whether you want to perform ORA on up- and/or downregulated genes. 
Furhermore, you can also indicate whether the differentially expressed genes should be selected based on a p-value/logFC threshold 
or whether ORA should simply be performed on the top most significantly up/downregulated genes.</p>
<p>4. <b>Gene identifier</b>. Select which column contains the gene identifiers and what type of identifiers these are (<i>e.g.</i>, ENTREZG, Ensembl, or gene symbol). 
Furthermore, indicate to which organism the gene identifiers belong.</p>
</br>
<p><b>Output</b></p>
<p>Data and preprocessing quality can be checked in the different outputs and QC plots:</p>
<p>1. <b>ORA table</b>. Table with the statistics of the ORA. This table can be downloaded.</p>
<p>2. <b>Barchart</b> of the most significantly overrepresented genesets. You can select the number of genesets in the chart.</p>
<p>3. <b>Network</b> of the most significantly overrepresented genesets. The edge thickness is proportional to the Jaccard Index (<i>i.e.</i>, number of shared genes/total number of gene in both genesets). 
You can select the network layout and number of genesets in the network.</p> 
</div>
<hr>
<br>

<div id="rn" class="section level1">
<h1>Starting from processed data</h1>
</div>

<div id="rn_upload" class="section level2">
<h3>Data upload</h3>
<p><b>Input</b></p>
<p>To start the analysis, the user should upload two files: </p>
<p>1. <b>Expression matrix</b>. This matrix can be provided as a <i>.tsv/.csv</i> file. 
ArrayAnalysis will automatically look for the column in the metadata file that matches with the column names of the matrix.</p>
<p>2. <b>Metadata file</b>. The metadata table can be provided as a <i>.tsv/.csv</i> file or as a <i>Series Matrix File</i> available from the 
<a href="https://www.ncbi.nlm.nih.gov/geo/" target="_blank">GEO website</a>. </p>
<p>You can analyse an <b>example dataset</b> (<a href="https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE128380" target="_blank">GSE128380</a>) by clicking on <i>Run example</i>.</p>
<br>
<p><b>Output</b></p>
A preview of the <b>expression matrix</b> and <b>metadata</b> table will be shown. This way, you can check whether the data has been correctly uploaded.
</div>
<br>

<div id="rn_preprocessing" class="section level2">
<h3>Pre-processing</h3>
<p><b>Input</b></p>
<p>For the data preprocessing, you can provide the following inputs:</p>
<p>1. <b>Remove samples</b> (optional). Via this option, you can remove outliers or samples from experimental groups that you would like to exclude from the analysis.</p>
<p>2. <b>Select experimental group</b>. The experimental group is the variable that defines the cases and controls (<i>e.g.</i>, disease status). 
By selecting more than one variable, you can combine multiple variables into a single experimental variable. This can be useful if you, for example, want to compare cases and controls 
for different tissues (<i>e.g.</i>, liver and brain). As such, you can create four different experimental groups: <i>case_brain</i>, <i>control_brain</i>, <i>case_liver</i>, and <i>control_liver</i>. 
The selection of the experimental group will be used for the normalization (if <i>normalization per experimental group</i> selected) and for the statistical analysis in the next tab.</p>
<p>3. <b>Select transformation method</b> (optional). You can perform log<sub>2</sub>-transformation to make the data more normally distributed.</p>
<p>3. <b>Select filtering threshold</b> (optional). If this option is selected, a gene is kept for the subsequent analysis if it has a count larger or equal to the selected filtering threshold in at least n samples, 
where n is the number of samples in the smallest experiment group.</p>
<p>4. <b>Select normalization method</b> (optional). You can perform quantile normalization to normalize the expression values across the samples.</p>

<br>
<p><b>Output</b></p>
<p>Data and preprocessing quality can be checked in the different output tables and figures:</p>
<p>1. <b>Normalized expression matrix</b> (interactive). The table of normalized expression values is provided and can be downloaded. 
The expression profile of a gene can be viewed by clicking on the table.</p>
<p>2. <b>Boxplots</b> (static). The boxplots show the distribution of expression values for all samples.</p>
<p>3. <b>Density plots</b> (interactive). Similar to the boxplots, the density plot shows the distribution of expression values for all samples.</p>
<p>4. <b>Correlation plot</b> (interactive). The correlation plot shows the sample-wise correlations. You can choose between different linkage and clustering methods.</p>
<p>5. <b>PCA plot</b> (interactive). 2D and 3D PCA plots can be viewed to assess data quality.</p>
<p>6. <b>Table of pre-processing settings</b> (static). An overview of the selected pre-processing settings is provided and can be downloaded. This ensures reproducibility of your analysis.</p>
</div>
<br>

<div id="rn_statanalysis" class="section level2">
<h3>Statistical Analysis</h3>
<p><b>Input</b></p>
<p> Statistical analysis is performed using the <a href = "https://doi.org/10.1093/nar/gkv007" target="_blank">limma</a> package, 
including <a href = "https://doi.org/10.1186/gb-2014-15-2-r29" target="_blank">Voom transformation</a>. 
To perform statistical analysis, you can provide three inputs:</p>
<p>1. <b>Statistical comparison(s)</b>. You can select one or more statistical comparisons of interest. Note that the direction of the statistical comparison is usually defined 
as <b>Case - Control</b>.</p>
<p>2. <b>Covariates</b>. You can adjust for continuous (<i>e.g.</i>, age) and categorical (<i>e.g.</i>, sex, tissue) covariates.</p>
<p>3. <b>Gene annotation</b>. You can add gene annotations from the Ensembl database using the biomaRt package. For example, if you have ENTREZ gene IDs annotations, 
you can use this option to add gene symbols or Ensembl gene IDs to the statistics output. Please note that if you select this option, 
the time required for the statistical analysis will increase significantly.</p>
</br>
<p><b>Output</b></p>
<p>For each of the selected statistical comparisons, the following output are provided:</p>
<p>1. <b>Top table</b> (interactive). A table with the relevant statistics as calculated by <i>limma</i>.</p>
<p>2. <b>Histograms</b> (interactive) of the p-value and logFC distribution.</p>
<p>3. <b>Volcano plot</b> (interactive).</p>
</div>
<br>

<div id="rn_ora" class="section level2">
<h3>Overrepresentation Analysis</h3>
<p><b>Input</b></p>
<p>After the statistical analysis, you can perform geneset (<i>i.e.</i>, <a href = "https://geneontology.org/" target="_blank">Gene Ontology</a> and 
<a href = "https://www.wikipathways.org/" target="_blank">WikiPathways</a>) overrepresentation analysis (ORA). 
For this, you can select from various options:</p>
<p>1. <b>Statistical comparison</b>. Select the statistical comparison for which you want to perform ORA.</p>
<p>2. <b>Geneset collection</b>. Select from Gene Ontology (GO)-Biological Process (BP), -Cellular Component (CC), and -Molecular Function (MF), as well as WikiPathways geneset collections.</p>
<p>3. <b>Differentially expressed genes</b>. Indicate whether you want to perform ORA on up- and/or downregulated genes. 
Furhermore, you can also indicate whether the differentially expressed genes should be selected based on a p-value/logFC threshold 
or whether ORA should simply be performed on the top most significantly up/downregulated genes.</p>
<p>4. <b>Gene identifier</b>. Select which column contains the gene identifiers and what type of identifiers these are (<i>e.g.</i>, ENTREZG, Ensembl, or gene symbol). 
Furthermore, indicate to which organism the gene identifiers belong.</p>
</br>
<p><b>Output</b></p>
<p>Data and preprocessing quality can be checked in the different outputs and QC plots:</p>
<p>1. <b>ORA table</b>. Table with the statistics of the ORA. This table can be downloaded.</p>
<p>2. <b>Barchart</b> of the most significantly overrepresented genesets. You can select the number of genesets in the chart.</p>
<p>3. <b>Network</b> of the most significantly overrepresented genesets. The edge thickness is proportional to the Jaccard Index (<i>i.e.</i>, number of shared genes/total number of gene in both genesets). 
You can select the network layout and number of genesets in the network.</p> 
</div>
<hr>