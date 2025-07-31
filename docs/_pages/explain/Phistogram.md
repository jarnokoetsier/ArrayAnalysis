---
title: "P Value Histogram"
permalink: /explain/Phistogram
layout: default
---
<br>
<br>
<div class="container px-1">
<div class="row">
  <div class="col-sm-12 px-3">
	  <div class="jumbotron p-5 h-100" style="text-align: justify">
		  <h1><b>p-value Histogram</b></h1>
		    <p>This histogram shows the distribution of raw p-values for all genes tested in the differential expression analysis. 
		    The x-axis represents the p-value, and the y-axis shows the number of genes in each bin. 
		    A uniform distribution suggests that none or only a small percentage of genes are differentially expressed, 
		    while a peak near zero (i.e., anti-conservative p-values) indicates that some genes are truly differentially expressed. 
		    This plot is a quick way to evaluate the strength of the signal in your data.
		    </p>
	  </div>
  </div>
 </div>
<br>
<div class="row">
  <div class="col-sm-6 px-3">
	     <div class="jumbotron p-5 h-100 bg-white border">
	     <h3>Anti-conservative p-values</h3>
      <img 
        src="{{ '/assets/img/ExplainFigure/Phistogram_anticonservative.png' | relative_url }}" 
        alt = "Anti-conservative p-values"
        style="width: 100%;border: none;" 
        title="Anti-conservative p-values">
    </div>
  </div>
   <div class="col-sm-6 px-3">
	     <div class="jumbotron p-5 h-100 bg-white border">
	     <h3>Uniform p-values</h3>
      <img 
        src="{{ '/assets/img/ExplainFigure/Phistogram_uniform.png' | relative_url }}" 
        alt = "Uniform p-values"
        style="width: 100%;border: none;" 
        title="Uniform p-values">
    </div>
  </div>
</div>
</div>
<br>




