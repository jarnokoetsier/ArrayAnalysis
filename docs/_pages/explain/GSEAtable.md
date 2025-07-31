---
title: "GSEA Statistics Table"
permalink: /explain/GSEAtable
layout: default
---
<br>
<br>
<div class="container px-1">
<div class="row">
  <div class="col-sm-12 px-3">
	  <div class="jumbotron p-5 h-100" style="text-align: justify">
		  <h1><b>GSEA Statistics Table</b></h1>
		    <p>The GSEA table summarizes the enrichment results for gene sets (e.g., pathways, GO terms) based on the ranked list of all genes, not just a predefined cutoff of significant genes. 
		    It identifies gene sets that are enriched toward the top (upregulated) or bottom (downregulated) of the ranked list. Each row represents one gene set.
		    This table helps you identify biological pathways or processes that are significantly enriched among genes showing coordinated upregulation or downregulation, 
		    without requiring an arbitrary significance cutoff at the gene level.</p>
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
    <th>NES</th>
    <td>The enrichment score for the gene set, normalized to account for differences in gene set size. 
    Positive NES values indicate enrichment among upregulated genes, while negative NES values indicate enrichment among downregulated genes. 
    The magnitude of the NES reflects the strength of enrichment.</td>
  </tr>
  <tr>
    <th>p-value</th>
    <td>The unadjusted p-value from the enrichment test, indicating the likelihood of observing an enrichment score as extreme as the one calculated, by chance. 
    Smaller values indicate stronger evidence of enrichment.</td>
  </tr>
  <tr>
    <th>adj. p-value</th>
    <td>The p-value adjusted for multiple testing (i.e., using the Benjamini–Hochberg method to control the false discovery rate, FDR). 
    This value should be used to assess statistical significance after accounting for multiple comparisons.</td>
  </tr>
</table>
    </div>
  </div>
</div>
</div>
<br>




