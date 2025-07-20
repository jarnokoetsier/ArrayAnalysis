---
title: "Top Table"
permalink: /ExplainFigure/Toptable
layout: default
---
<br>
<br>
<div class="container px-1">
<div class="row">
  <div class="col-sm-12 px-3">
	  <div class="jumbotron p-5 h-100" style="text-align: justify">
		  <h1><b>Top Table</b></h1>
		    <p>The top table summarizes the results of the differential expression analysis, 
		    listing genes ranked by evidence of differential expression between experimental groups. 
		    Each row corresponds to one gene, and the columns provide key statistics to interpret the results.
		    This table allows you to identify genes that are significantly differentially expressed, 
		    examine the magnitude and direction of changes, and assess the reliability of the estimates. 
		    Genes with small adjusted p-values and large absolute log<sub>2</sub>FC values are typically considered the most biologically relevant.</p>
	  </div>
  </div>
 </div>
<br>
<div class="row">
  <div class="col-sm-12 px-3">
	     <div class="jumbotron p-5 h-100 bg-white border">
	     <table>
  <tr>
    <th>GeneID</th>
    <td>The identifier for the gene.</td>
  </tr>
  <tr>
    <th>meanExpr</th>
    <td>The average (normalized) expression of the gene across all samples.</td>
  </tr>
  <tr>
    <th>log2FC</th>
    <td>he estimated log<sub>2</sub> fold change of the gene between the two groups. 
    Positive values indicate higher expression in the first group, while negative values indicate higher expression in the second group.</td>
  </tr>
  <tr>
    <th>log2FC SE</th>
    <td>The standard error of the log<sub>2</sub> fold change estimate, reflecting the uncertainty of the estimate. Smaller SE values indicate more precise estimates.</td>
  </tr>
  <tr>
    <th>p-value</th>
    <td>The unadjusted p-value from the statistical test, indicating how likely it is to observe the data if there were no true difference in expression. 
    Smaller values suggest stronger evidence of differential expression.</td>
  </tr>
  <tr>
    <th>adj. p-value</th>
    <td>The p-value adjusted for multiple testing (i.e., using the Benjamini–Hochberg procedure to control the false discovery rate, FDR). 
    This is the recommended value to use for determining significance.</td>
  </tr>
</table>
    </div>
  </div>
</div>
</div>
<br>




