---
title: "Sample-wise Expression Boxplot"
permalink: /explain/Sampleboxplot
layout: default
---
<br>
<br>
<div class="container px-1">
<div class="row">
  <div class="col-sm-12 px-3">
	  <div class="jumbotron p-5 h-100" style="text-align: justify">
		  <h1><b>Sample-wise Expression Boxplot</b></h1>
		    <p>This plot shows the distribution of normalized log-transformed expression values for all genes in each sample. 
		    Each box represents one sample, colored by experimental group. The line in the middle of each box indicates the median gene expression for that sample, 
		    and the box edges show the 25th and 75th percentiles.
		    This plot is used as a quality control check to assess whether the overall expression distributions are similar across samples and groups, 
		    which indicates adequate library preparation and normalization.</p>
	  </div>
  </div>
 </div>
<br>
<div class="row">
  <div class="col-sm-6 px-3">
	     <div class="jumbotron p-5 h-100 bg-white border">
	     <h3><span style="color:green">&#10003;</span> Good quality data</h3>
      <img 
        src="{{ '/assets/img/ExplainFigure/SampleBoxplot_good.png' | relative_url }}" 
        alt = "Good Sample-wise Expression Boxplot"
        style="width: 100%;border: none;" 
        title="Good Sample-wise Expression Boxplot">
    </div>
  </div>
   <div class="col-sm-6 px-3">
	     <div class="jumbotron p-5 h-100 bg-white border">
	     <h3><span style="color:red">&#10007;</span> One outlying sample</h3>
      <img 
        src="{{ '/assets/img/ExplainFigure/SampleBoxplot_bad.png' | relative_url }}" 
        alt = "Bad Sample-wise Expression Boxplot"
        style="width: 100%;border: none;" 
        title="Bad Sample-wise Expression Boxplot">
    </div>
  </div>
</div>
</div>
<br>




