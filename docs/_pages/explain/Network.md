---
title: "Network"
permalink: /explain/Network
layout: default
---
<br>
<br>
<div class="container px-1">
<div class="row">
  <div class="col-sm-12 px-3">
	  <div class="jumbotron p-5 h-100" style="text-align: justify">
		  <h1><b>Gene Set Similarity Network</b></h1>
		    <p> This network visualizes the similarity between the top gene sets identified in the gene set analysis. 
		    Each node represents a gene set, and edges indicate similarity between gene sets, 
		    quantified by the Jaccard index — defined as the ratio of the number of shared genes (intersection) to the total number of unique genes (union) across the two sets. 
		    Higher Jaccard values correspond to greater overlap between gene sets.
		    For Overrepresentation Analysis (ORA) results, nodes are colored based on the number of significant genes contained within each gene set — darker or more intense colors indicate more significant genes.
		    For Gene Set Enrichment Analysis (GSEA) results, 
		    nodes are colored by the normalized enrichment score (NES): positive NES values indicate gene sets enriched among upregulated genes, 
		    while negative NES values indicate enrichment among downregulated genes. 
		    This plot helps you identify clusters of related gene sets and assess whether functionally similar pathways show consistent enrichment patterns.
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
        src="{{ '/assets/img/ExplainFigure/ORA_network.png' | relative_url }}" 
        alt = "ORA Bar Chart"
        style="width: 100%;border: none;" 
        title="ORA Bar Chart">
    </div>
  </div>
   <div class="col-sm-6 px-3">
	     <div class="jumbotron p-5 h-100 bg-white border">
	     <h3>GSEA</h3>
      <img 
        src="{{ '/assets/img/ExplainFigure/GSEA_network.png' | relative_url }}" 
        alt = "GSEA Bar Chart"
        style="width: 100%;border: none;" 
        title="GSEA Bar Chart">
    </div>
  </div>
</div>
</div>
<br>




