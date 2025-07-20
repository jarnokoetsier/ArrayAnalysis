---
title: "P Value Histogram"
permalink: /ExplainFigure/Phistogram
layout: default
---
<br>
<br>
<div class="container px-1">
<div class="row">
  <div class="col-sm-12 px-3">
	  <div class="jumbotron p-5 h-100" style="text-align: justify">
		  <h1><b>P Value Histogram</b></h1>
		    <p>This histogram shows the distribution of raw p-values for all genes tested in the differential expression analysis. 
		    The x-axis represents the p-value, and the y-axis shows the number of genes in each bin. 
		    A uniform distribution suggests that none or only a small percentage of genes are differentially expressed, 
		    while a peak near zero (i.e., anti-conservative P values) indicates that some genes are truly differentially expressed. 
		    This plot is a quick way to evaluate the strength of the signal in your data.
		    </p>
	  </div>
  </div>
 </div>
<br>
<div class="row">
  <div class="col-sm-6 px-3">
	     <div class="jumbotron p-5 h-100 bg-white border">
	     <h3>Anti-conservative P values</h3>
      <img 
        src="{{ '/assets/img/ExplainFigure/Phistogram_anticonservative.png' | relative_url }}" 
        alt = "Anti-conservative P value"
        style="width: 100%;border: none;" 
        title="Anti-conservative P value">
    </div>
  </div>
   <div class="col-sm-6 px-3">
	     <div class="jumbotron p-5 h-100 bg-white border">
	     <h3>Uniform P values</h3>
      <img 
        src="{{ '/assets/img/ExplainFigure/Phistogram_uniform.png' | relative_url }}" 
        alt = "Uniform P values"
        style="width: 100%;border: none;" 
        title="Uniform P values">
    </div>
  </div>
</div>
</div>
<br>




