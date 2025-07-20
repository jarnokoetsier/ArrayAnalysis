---
title: "ORA Statistics Table"
permalink: /ExplainFigure/ORAtable
layout: default
---
<br>
<br>
<div class="container px-1">
<div class="row">
  <div class="col-sm-12 px-3">
	  <div class="jumbotron p-5 h-100" style="text-align: justify">
		  <h1><b>ORA Statistics Table</b></h1>
		    <p>The ORA table summarizes the enrichment results for predefined gene sets (e.g., pathways, GO terms) 
		    to identify biological processes or pathways that are statistically overrepresented among the significant genes in your dataset. 
		    Each row represents one gene set. 
		    This table helps you identify biological pathways or processes that are significantly enriched in your list of significant genes compared to what would be expected by chance.</p>
	  </div>
  </div>
 </div>
<br>
<div class="row">
  <div class="col-sm-12 px-3">
	     <div class="jumbotron p-5 h-100 bg-white border">
	     <table border = "1">
  <tr>
    <th>ID</th>
    <td>The unique identifier of the gene set, such as a GO term ID or pathway accession number.</td>
  </tr>
  <tr>
    <th>Description</th>
    <td>A short name or description of the gene set, explaining the biological process or pathway it represents.</td>
  </tr>
  <tr>
    <th>GeneRatio</th>
    <td>The proportion of significant genes in your dataset that belong to this gene set, 
    calculated as k/M, where k is the number of significant genes in the gene set and M is the total number of significant genes tested.</td>
  </tr>
  <tr>
    <th>BgRatio</th>
    <td>The proportion of all background genes (tested genes) that belong to this gene set, calculated as n/N, 
    where n is the number of background genes in the gene set and N is the total number of background genes.</td>
  </tr>
  <tr>
    <th>p-value</th>
    <td>The unadjusted p-value from the enrichment test, indicating the probability of observing at least k significant genes in the gene set by chance, given the background. 
    Smaller values indicate stronger evidence of enrichment.</td>
  </tr>
  <tr>
    <th>adj. p-value</th>
    <td>The p-value adjusted for multiple testing (i.e., using the Benjamini–Hochberg method to control the false discovery rate, FDR). 
    This value should be used to determine which gene sets are significantly enriched after correcting for the large number of tests.</td>
  </tr>
</table>
    </div>
  </div>
</div>
</div>
<br>




