---
title: "Raw Read Counts"
permalink: /ExplainFigure/Readcount
layout: default
---
<br>
<br>
<div class="container px-1">
<div class="row">
  <div class="col-sm-12 px-3">
	  <div class="jumbotron p-5 h-100" style="text-align: justify">
		  <h1><b>Total Raw Read Counts</b></h1>
		    <p>This bar chart displays the total number of raw sequencing reads measured for each sample in the RNA-seq experiment. 
		    Each bar represents a single sample, and its height corresponds to the total count of reads mapped before any filtering or normalization. 
		    This plot is typically used as a quality control check, helping to identify samples with unusually low or high sequencing depth compared to others. 
		    Large differences in total read counts can indicate technical issues such as poor library preparation, sequencing failure, or overloading. 
		    Consistent read counts across samples suggest good experimental consistency and data quality.</p>
	  </div>
  </div>
 </div>
<br>
<div class="row">
  <div class="col-sm-12 px-3">
	     <div class="jumbotron p-5 h-100 bg-white border">
      <img 
        src="{{ '/assets/img/ExplainFigure/ReadCount.png' | relative_url }}" 
        alt = "Raw Read Counts"
        style="width: 100%; border: none;" 
        title="Raw Read Counts">
    </div>
  </div>
</div>
</div>
<br>




