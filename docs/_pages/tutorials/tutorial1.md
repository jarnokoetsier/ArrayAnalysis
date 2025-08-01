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
<h1><b>Tutorial 1:</b> ACTA2-mutant iPSC-derived smooth muscle cells</h1>
<h3>Introduction</h3>
<p><a href = "https://www.ncbi.nlm.nih.gov/pubmed/40378078">Ding <i>et al.</i> (GEO accession: GSE290426)</a> studied the transcriptomic profile of wildtype, heterozygous and homozygous ACTA2 (R179H) mutant, 
and CRISPR/Cas9-corrected iPSC-derived smooth muscle cells.
To follow the tutorial, please download the <a href = "{{ '/assets/tutorials/tutorial1/CountTable_tutorial1.tsv' | relative_url }}">raw RNA-seq expression matrix</a> and the 
<a href = "{{ '/assets/tutorials/tutorial1/Metadata_tutorial1.tsv' | relative_url }}">metadata</a> files.</p> 
</div>
</div>

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

<div class="row">
<div class="col-sm-12 px-3">
<h3>Pre-processing</h3>
<p>Perform pre-processing with default settings (Remove samples: "keep all samples", Select experimental group: "Group", Filtering: "10").</p>
<div class="jumbotron p-5 h-100 bg-white border">
 <img 
        src="{{ '/assets/tutorials/tutorial1/preprocessing.png' | relative_url }}"
        alt = "Pre-processing"
        style="width: 100%; border: none;" 
        title="Pre-processing">
</div>
</div>
</div>


<br>
<div class="row">
<div class="col-sm-12 px-3">
<div class="jumbotron p-5 h-100" style="text-align: justify">
<p><br>Question:</b> are there outliers? Do the samples cluster as expected?</p>
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