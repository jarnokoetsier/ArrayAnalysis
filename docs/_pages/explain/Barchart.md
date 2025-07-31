---
title: "Bar Chart"
permalink: /explain/Barchart
layout: default
---
<br>
<br>
<div class="container px-1">
<div class="row">
  <div class="col-sm-12 px-3">
	  <div class="jumbotron p-5 h-100" style="text-align: justify">
		  <h1><b>Gene Set Analysis Bar Chart</b></h1>
		    <p>The bar chart summarizes the results of the gene set analysis. Each bar represents a gene set, with longer bars indicating higher levels of statistical significance.
For the Overrepresentation Analysis (ORA), bars are colored according to the number of significant genes within the gene set.
For the Gene Set Enrichment Analysis (GSEA), bars are colored by the normalized enrichment score (NES), 
where positive scores indicate upregulation and negative scores indicate downregulation of the gene set.
		    </p>
	  </div>
  </div>
 </div>
<br>
<div class="row">
  <div class="col-sm-6 px-3">
	     <div class="jumbotron p-5 h-100 bg-white border">
	     <h3>ORA</h3>
      <img 
        src="{{ '/assets/img/ExplainFigure/ORA_barchart.png' | relative_url }}" 
        alt = "ORA Bar Chart"
        style="width: 100%;border: none;" 
        title="ORA Bar Chart">
    </div>
  </div>
   <div class="col-sm-6 px-3">
	     <div class="jumbotron p-5 h-100 bg-white border">
	     <h3>GSEA</h3>
      <img 
        src="{{ '/assets/img/ExplainFigure/GSEA_barchart.png' | relative_url }}" 
        alt = "GSEA Bar Chart"
        style="width: 100%;border: none;" 
        title="GSEA Bar Chart">
    </div>
  </div>
</div>
</div>
<br>




