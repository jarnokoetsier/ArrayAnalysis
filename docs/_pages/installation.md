---
title: "About ArrayAnalysis"
permalink: /installation
layout: default
---
<br>
<br>
<div class="container px-1">

<!-- Desktop app (Windows) -->
<h1><b>DesktopApp</b> (Windows)</h1>

<div class="card-deck text-center">

  <div class="card">
    <img src="{{ "/assets/img/icons/R_logo.png" | relative_url}}" class="card-img-top px-4 py-1" alt="sharing-icon">
    <div class="card-body">
      <h5 class="card-title">1. Install R</h5>
      <p class="card-text">If you don't have R on your computer, please first install R on your computer before you can install ArrayAnalysis. 
      You can intall R by clicking on this <a href = "https://cran.r-project.org/">link</a></p>
    </div>
  </div>
  
  <div class="card">
    <img src="{{ "/assets/img/icons/install_logo.png" | relative_url}}" class="card-img-top px-4 py-1" alt="inspiration-icon">
    <div class="card-body">
      <h5 class="card-title">2. Install ArrayAnalysis</h5>
      <p class="card-text">You can download ArrayAnalysis for Windows 
      <a href = "https://github.com/jarnokoetsier/ArrayAnalysis/raw/refs/heads/main/Files/ArrayAnalysis_windows/ArrayAnalysis.exe">here</a>.</p>
    </div>
  </div>
  
  <div class="card">
    <img src="{{ "/assets/img/ArrayAnalysis_logo.png" | relative_url}}" class="card-img-top px-4 py-1" alt="chat-icon">
    <div class="card-body">
      <h5 class="card-title">3. Run ArrayAnalysis</h5>
      <p class="card-text">Starting up ArrayAnalysis for the first time might take some time, 
      because all packages still need to be installed. Don't worry! The second time you run the app, it will be way faster!</p>
    </div>
  </div>
  
</div>
<br>


<!-- Desktop app (Windows) -->
<h1><b>R package</b> (Windows/MacOS/Linux)</h1>

<div class="card-deck text-center">

  <div class="card">
    <img src="{{ "/assets/img/icons/R_logo.png" | relative_url}}" class="card-img-top px-4 py-1" alt="sharing-icon">
    <div class="card-body">
      <h5 class="card-title">1. Install R</h5>
      <p class="card-text">If you don't have R on your computer, please first install R on your computer before you can install ArrayAnalysis. 
      You can intall R by clicking on this <a href = "https://cran.r-project.org/">link</a>. If you work on a Windows system, you also need to 
      install <a href = "https://cran.r-project.org/bin/windows/Rtools/">Rtools</a>.</p> 
    </div>
  </div>
  
  <div class="card">
    <img src="{{ "/assets/img/icons/install_logo.png" | relative_url}}" class="card-img-top px-4 py-1" alt="inspiration-icon">
    <div class="card-body">
      <h5 class="card-title">2. Install ArrayAnalysis</h5>
      <p class="card-text">Run the following R code to install ArrayAnalysis:</p>
      <pre>
      <code class="language-R">
      # install "remotes" package
      install.packages("remotes")
      
      # Install ArrayAnalysis from GitHub
      remotes::install_github("jarnokoetsier/ArrayAnalysis/Package") 
      </code>
      </pre>
    </div>
  </div>
  
  <div class="card">
    <img src="{{ "/assets/img/ArrayAnalysis_logo.png" | relative_url}}" class="card-img-top px-4 py-1" alt="chat-icon">
    <div class="card-body">
      <h5 class="card-title">3. Run ArrayAnalysis</h5>
            <p class="card-text">Run the following R code to run ArrayAnalysis:</p>
      <pre>
      <code class="language-R">
     # Run ArrayAnalysis
     ArrayAnalysis::runArrayAnalysis()
     </code>
      </pre>
      <p class="card-text">Starting up ArrayAnalysis for the first time might take some time, 
      because all packages still need to be installed. Don't worry! The second time you run the app, it will be way faster!</p>
    </div>
  </div>
  
</div>
<br>


</div>

