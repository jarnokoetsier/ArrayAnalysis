---
title: "PCA"
permalink: /ExplainFigure/PCA
layout: default
---
<br>
<br>
<div class="container px-1">
<div class="row">
  <div class="col-sm-12 px-3">
	  <div class="jumbotron p-5 h-100" style="text-align: justify">
		  <h1><b>Principal Coordinate Analysis (PCA)</b></h1>
		    <p>The PCA score plot shows the samples projected onto principal components (e.g., PC1 and PC2), which capture the largest sources of variation in the gene expression data. 
		    Each point represents a sample, colored by experimental group. Samples that cluster close together have similar overall expression profiles. 
		    This plot helps to assess whether samples group according to biological conditions and to detect potential outliers or batch effects.

</p>
	  </div>
  </div>
 </div>
<br>
<div class="row">
  <div class="col-sm-6 px-3">
	     <div class="jumbotron p-5 h-100 bg-white border">
	     <h3><span style="color:green">&#10003;</span> High within-group similaries</h3>
      <img 
        src="{{ '/assets/img/ExplainFigure/PCA_good.png' | relative_url }}" 
        alt = "Good PCA"
        style="width: 100%;border: none;" 
        title="Good PCA">
    </div>
  </div>
   <div class="col-sm-6 px-3">
	     <div class="jumbotron p-5 h-100 bg-white border">
	     <h3><span style="color:red">&#10007;</span> One outlying sample</h3>
      <img 
        src="{{ '/assets/img/ExplainFigure/PCA_bad.png' | relative_url }}" 
        alt = "Bad PCA"
        style="width: 100%;border: none;" 
        title="Bad PCA">
    </div>
  </div>
</div>
</div>
<br>




