---
title: "Volcano Plot"
permalink: /explain/Volcanoplot
layout: default
---
<br>
<br>
<div class="container px-1">
<div class="row">
  <div class="col-sm-12 px-3">
	  <div class="jumbotron p-5 h-100" style="text-align: justify">
		  <h1><b>Volcano Plot</b></h1>
		    <p>This plot visualizes the results of differential expression analysis, 
		    highlighting both the magnitude of change and statistical significance for each gene. 
		    Each point represents a gene: the x-axis shows the log<sub>2</sub> fold change between groups (indicating up- or downregulation), 
		    and the y-axis shows the –log<sub>10</sub> of the p-value (indicating significance). 
		    Genes farther from the center (larger fold changes) and higher on the plot (more significant) are more strongly differentially expressed. 
		    Significantly upregulated and downregulated genes are colored in red and blue, respectively.</p>
	  </div>
  </div>
 </div>
<br>
<div class="row">
  <div class="col-sm-12 px-3">
	     <div class="jumbotron p-5 h-100 bg-white border">
      <img 
        src="{{ '/assets/img/ExplainFigure/VolcanoPlot.png' | relative_url }}" 
        alt = "Volcano Plot"
        style="width: 100%; border: none;" 
        title="Volcano Plot">
    </div>
  </div>
</div>
</div>
<br>




