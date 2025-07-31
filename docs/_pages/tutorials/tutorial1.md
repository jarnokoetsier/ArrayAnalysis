---
title: "Tutorials"
permalink: /tutorials/tutorial1
layout: default
---

<h1>Tutorial 1: ACTA2 R179H mutation in iPSC-derived smooth muscle cells (GSE290426)</h1>
<h3>Introduction</h3>
<p><a href = "https://www.ncbi.nlm.nih.gov/pubmed/40378078">Ding <i>et al.</i></a> studied the transcriptomic profile of wildtype, heterozygous and homozygous ACTA2 (R179H) mutant, 
and CRISPR/Cas9-corrected iPSC-derived smooth muscle cells.
To follow the tutorial, please download the <a href = "{{ '/assets/tutorials/tutorial1/CountTable_tutorial1.tsv' | relative_url }}">raw RNA-seq expression matrix</a> and the 
<a href = "{{ '/assets/tutorials/tutorial1/Metadata_tutorial1.tsv' | relative_url }}">metadata</a> files.</p> 
<br>
<h3>Data upload</h3>
<p>Start the analysis of the data by clicking "Start Analysis" after selecting "RNA-Seq Analysis" and "Raw count". 
In the next tab, upload the expression matrix and metadata files and click "Read data".</p>
<img href = "{{ '/assets/tutorials/tutorial1/upload.png' | relative_url }}">
<p>After uploading the data, you can see the metadata and a preview of the count table. In the metadata, you can see that there are four experimental groups: 
<b>Wildtype</b> (2x wildtype ACTA2 allele), <b>Homozygous</b> (2x mutant ACTA2 allele), <b>Heterozygous</b> (mutant/wildtype ACTA2 allele), and <b>Corrected</b> (ACTA2 mutation corrected by CRISPR/Cas9).</p>
<br>
<h3>Pre-processing</h3>
<p>Perform pre-processing with default settings (Remove samples: "keep all samples", Select experimental group: "Group", Filtering: "10").</p>
<img href = "{{ '/assets/tutorials/tutorial1/preprocessing.png' | relative_url }}">
<br>
<p><br>Question:</b> are there outliers? Does the PCA plot look like expected?</p>
<details>
<summary>Show answer</summary>
<br>
<p>From the QC plots, there seems to be no outlier.</p>
</details>
