---
title: "Density Plot"
permalink: /ExplainFigure/Densityplot
layout: default
---
<br>
<br>
<div class="container px-1">
<div class="row">
  <div class="col-sm-12 px-3">
	  <div class="jumbotron p-5 h-100" style="text-align: justify">
		  <h1><b>Density Plot</b></h1>
		    <p>This plot shows the distribution of normalized log-transformed gene expression values across all genes in each sample. 
		    Each curve represents one sample, colored by experimental group. The shape of the curves reflects how gene expression values are distributed in the sample. 
		    This plot is commonly used as a quality control check to ensure that the overall expression distributions are similar across samples and groups, 
		    which indicates consistent data quality and proper normalization.</p>
	  </div>
  </div>
 </div>
<br>
<div class="row">
  <div class="col-sm-6 px-3">
	     <div class="jumbotron p-5 h-100 bg-white border">
	     <h3><span style="color:green">&#10003;</span> Good quality data</h3>
      <img 
        src="{{ '/assets/img/ExplainFigure/DensityPlot_good.png' | relative_url }}" 
        alt = "Good Density Plot"
        style="width: 100%;border: none;" 
        title="Good Density Plot">
    </div>
  </div>
   <div class="col-sm-6 px-3">
	     <div class="jumbotron p-5 h-100 bg-white border">
	     <h3><span style="color:red">&#10007;</span> One outlying sample</h3>
      <img 
        src="{{ '/assets/img/ExplainFigure/DensityPlot_bad.png' | relative_url }}" 
        alt = "Bad Density Plot"
        style="width: 100%;border: none;" 
        title="Bad Density Plot">
    </div>
  </div>
</div>
</div>
<br>




