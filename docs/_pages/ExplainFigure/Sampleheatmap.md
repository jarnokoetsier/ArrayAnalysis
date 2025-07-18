---
title: "Sample-Sample Correlation Heatmap"
permalink: /ExplainFigure/Sampleheatmap
layout: default
---
<br>
<br>
<div class="container px-1">
<div class="row">
  <div class="col-sm-12 px-3">
	  <div class="jumbotron p-5 h-100" style="text-align: justify">
		  <h1><b>Sample-Sample Correlation Heatmap</b></h1>
		    <p>This heatmap shows the pairwise correlation coefficients between all samples, based on their normalized gene expression profiles. 
		    Each cell represents the similarity between two samples. 
		    High correlations within groups and consistent patterns between replicates indicate good data quality and experimental consistency. 
		    This plot is often used as a quality control step to detect potential outlier samples or batch effects.</p>
	  </div>
  </div>
 </div>
<br>
<div class="row">
  <div class="col-sm-6 px-3">
	     <div class="jumbotron p-5 h-100 bg-white border">
	     <h3><span style="color:green">&#10003;</span> High within-group correlations</h3>
      <img 
        src="{{ '/assets/img/ExplainFigure/SampleHeatmap_good.png' | relative_url }}" 
        alt = "Good Sample-Sample Correlation Heatmap"
        style="width: 100%;border: none;" 
        title="Good Sample-Sample Correlation Heatmap">
    </div>
  </div>
   <div class="col-sm-6 px-3">
	     <div class="jumbotron p-5 h-100 bg-white border">
	     <h3><span style="color:red">&#10007;</span> One outlying sample</h3>
      <img 
        src="{{ '/assets/img/ExplainFigure/SampleHeatmap_bad.png' | relative_url }}" 
        alt = "Bad Sample-Sample Correlation Heatmap"
        style="width: 100%;border: none;" 
        title="Bad Sample-Sample Correlation Heatmap">
    </div>
  </div>
</div>
</div>
<br>




