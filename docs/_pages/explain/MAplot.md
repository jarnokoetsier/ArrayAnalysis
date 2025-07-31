---
title: "MA Plot"
permalink: /explain/MAplot
layout: default
---
<br>
<br>
<div class="container px-1">
<div class="row">
  <div class="col-sm-12 px-3">
	  <div class="jumbotron p-5 h-100" style="text-align: justify">
		  <h1><b>MA Plot</b></h1>
		    <p>This plot shows the relationship between gene expression level and fold change in the differential expression analysis. 
		    Each point represents a gene: the x-axis shows the average expression level (log-transformed) across all samples, 
		    and the y-axis shows the log<sub>2</sub> fold change between groups. 
		    This helps identify genes with large fold changes that are not simply due to low expression levels. 
		    Genes with significant differential expression are highlighted in color.</p>
	  </div>
  </div>
 </div>
<br>
<div class="row">
  <div class="col-sm-12 px-3">
	     <div class="jumbotron p-5 h-100 bg-white border">
      <img 
        src="{{ '/assets/img/ExplainFigure/MAplot.png' | relative_url }}" 
        alt = "MA Plot"
        style="width: 100%; border: none;" 
        title="MA Plot">
    </div>
  </div>
</div>
</div>
<br>




