---
title: "Tutorials"
permalink: /tutorials/tutorial1
layout: default
---
<br>
<br>
<div class="container px-1">

<div class="row">
<div class="col-sm-12 px-3">
<h1><b>Tutorial 1:</b> ACTA2-mutant smooth muscle cells</h1>
<br>
<h3>Introduction</h3>
<p><a href = "https://www.ncbi.nlm.nih.gov/pubmed/40378078" target = "_blank">Ding <i>et al.</i></a> (GEO accession: GSE290426) studied the transcriptomic profile of wildtype, 
heterozygous and homozygous ACTA2 (R179H) mutant, and CRISPR/Cas9 ABE-corrected iPSC-derived smooth muscle cells. The ACTA2 gene encodes an actin monomer in vascular smooth muscle cells. 
The ACTA2 R179H mutation causes multisystemic smooth muscle dysfunction syndrome (MSMDS).</p>
<br>
<p>To follow the tutorial, please download the <a href = "{{ '/assets/tutorials/tutorial1/CountTable_tutorial1.tsv' | relative_url }}">raw RNA-seq expression matrix</a> and the 
<a href = "{{ '/assets/tutorials/tutorial1/Metadata_tutorial1.tsv' | relative_url }}">metadata</a> files.</p> 
</div>
</div>

<br>
<hr>
<br>

<div class="row">
<div class="col-sm-12 px-3">
<h3>Data upload</h3>
<p>Start the analysis of the data by clicking "Start Analysis" after selecting "RNA-Seq Analysis" and "Raw count". 
In the next tab, upload the expression matrix and metadata files and click "Read data".</p>
 <img 
        src="{{ '/assets/tutorials/tutorial1/upload.png' | relative_url }}"
        alt = "Data upload"
        style="width: 100%; border: none;" 
        title="Data upload">
        
<p>After uploading the data, you can see the metadata and a preview of the count table. In the metadata, you can see that there are four experimental groups: 
<b>Wildtype</b> (2x wildtype ACTA2 allele), <b>Homozygous</b> (2x mutant ACTA2 allele), <b>Heterozygous</b> (mutant/wildtype ACTA2 allele), and <b>Corrected</b> (ACTA2 mutation corrected by CRISPR/Cas9).</p>
</div>
</div>

<br>
<hr>
<br>

<div class="row">
<div class="col-sm-12 px-3">
<h3>Pre-processing</h3>
<p>Perform pre-processing with default settings (Remove samples: "keep all samples", Select experimental group: "Group", Filtering: "10").</p>
 <img 
        src="{{ '/assets/tutorials/tutorial1/preprocessing.png' | relative_url }}"
        alt = "Pre-processing"
        style="width: 100%; border: none;" 
        title="Pre-processing">
</div>
</div>

<br>

<div class="row">
<div class="col-sm-12 px-3">
<div class="jumbotron p-5 h-100 bg-white border">
<h4><b>Question 1:</b> Are there outliers? Do the samples cluster as expected?</h4>
<details>
<summary>Show answer</summary>
<br>
<p>From the QC plots, there does not seem to be any outlier. However, something remarkable can be seen in the sample-sample correlation heatmap and PCA plot. 
In these plots, you can see that, compared to wildtype samples, heterozygous mutant samples exhibit a more deviating transcriptomic profile than homozygous mutant samples.</p>
 <img 
        src="{{ '/assets/tutorials/tutorial1/sampleclustering.png' | relative_url }}"
        alt = "Sample clustering"
        style="width: 100%; border: none;" 
        title="Sample clustering">
</details>
</div>
</div>
</div>

<br>
<hr>
<br>

<div class="row">
<div class="col-sm-12 px-3">
<h3>Differential gene expression analysis</h3>
<p>Given the observation in the pre-processing step, we would like to identify genes that are differentially expressed between homozygous mutant and heterozygous mutant. 
Select the comparison "Heterozygous - Homozygous". Furthermore, add gene symbols to the data, this will aid with the interpretation of the data:</p>
 <img 
        src="{{ '/assets/tutorials/tutorial1/geneannotation.png' | relative_url }}"
        alt = "Gene annotation"
        style="width: 100%; border: none;" 
        title="Gene annotation">
</div>
</div>

<br>

<div class="row">
<div class="col-sm-12 px-3">
<div class="jumbotron p-5 h-100 bg-white border">
<h4><b>Question 2:</b> How many genes are downregulated (adj. p-value &lt; 0.05 and log<sub>2</sub>FC &lt; 1) in heterozygous versus homozygous samples?</h4>
<details>
<summary>Show answer</summary>
<br>
<p>In the <i>Summary</i> tab you can calculate how many genes are up and downregulated for different p-value and log<sub>2</sub>FC thresholds. 
Here you can see that 1057 genes are downregulated.</p>
 <img 
        src="{{ '/assets/tutorials/tutorial1/downregulatedgenes.png' | relative_url }}"
        alt = "Downregulated genes"
        style="width: 100%; border: none;" 
        title="Downregulated genes">
</details>
</div>
</div>
</div>

<br>

<div class="row">
<div class="col-sm-12 px-3">
<div class="jumbotron p-5 h-100 bg-white border">
<h4><b>Question 3:</b> Does <i>MMP9</i> have more a deviating expression profile in homozygous or in heterozygous mutant samples?</h4>
<details>
<summary>Show answer</summary>
<br>
<p>You can look up <i>MMP9</i> in the Top table. In the boxplots, you can see that <i>MMP9</i> is stronger upregulated in heterozygous mutant samples.</p>
 <img 
        src="{{ '/assets/tutorials/tutorial1/MMP9.png' | relative_url }}"
        alt = "MMP9"
        style="width: 100%; border: none;" 
        title="MMP9">
</details>
</div>
</div>
</div>

<br>
<hr>
<br>

<div class="row">
<div class="col-sm-12 px-3">
<h3>Gene set analysis</h3>
<p>You can now perform gene set analysis to identify which biological processes and pathways are altered.</p>
</div>
</div>

<br>

<div class="row">
<div class="col-sm-12 px-3">
<div class="jumbotron p-5 h-100 bg-white border">
<h4><b>Question 3:<b/> Wich biological processes are downregulated in heterozygous mutant versus homozygous mutant?</h4>
<details>
<summary>Show answer</summary>
<br>
<p>You can identify downregulated processes by performing overrepresentation analysis (ORA) or Gene Set Enrichment Analysis (GSEA). 
With both methods, you will find that processes related to <b>cell division</b>, such as chromosome seperation, DNA replication, and mitosis, are downregulated.</p>
<br>
 <img 
        src="{{ '/assets/tutorials/tutorial1/genesetanalysis.png' | relative_url }}"
        alt = "Gene Set Analysis"
        style="width: 100%; border: none;" 
        title="Gene Set Analysis">
</details>
</div>
</div>
</div>
<br>