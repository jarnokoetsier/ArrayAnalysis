---
title: "ArrayAnalysis Installation"
permalink: /installation
layout: default
---
<br>
<br>
<div class="container px-1">

<!-- Desktop app (Windows) -->
<h1><b>Desktop App</b> (Windows)</h1>

<div class="card-deck">

  <div class="card">
    <img src="{{ "/assets/img/icons/R_logo.png" | relative_url}}" class="card-img-top px-4 py-1" alt="sharing-icon">
    <div class="card-body">
      <h5 class="card-title">1. Install R</h5>
      <p class="card-text">If you don't have R on your computer, please first install <a href = "https://cran.r-project.org/" target="_blank">R</a>.</p>
    </div>
  </div>
  
  <div class="card">
    <img src="{{ "/assets/img/icons/install_logo.png" | relative_url}}" class="card-img-top px-4 py-1" alt="inspiration-icon">
    <div class="card-body">
      <h5 class="card-title">2. Install ArrayAnalysis</h5>
      <p class="card-text">You can download ArrayAnalysis for Windows 
      <a href = "https://github.com/jarnokoetsier/ArrayAnalysis/raw/refs/heads/main/Files/ArrayAnalysis_windows/ArrayAnalysis.exe">here</a>.</p>
      <hr>
      <p style="font-size: 12px">Does Windows security prevent you from running the file?</p>
      <p style="font-size: 12px"> 1. Right-click the <i>ArrayAnaysis.exe</i> file and then click <i>Properties</i>.</p>
      <p style="font-size: 12px"> 2. In the General tab, click <i>Unblock</i>.</p> 
      <p style="font-size: 12px"> 3. Now, click on <i>Apply</i> and then click <i>OK</i>.</p> 
      <p style="font-size: 12px">You can find a more detailed explanation <a href="{{ "/unblock" | relative_url}}">here</a>.</p>
    </div>
  </div>
  
  <div class="card">
    <img src="{{ "/assets/img/icons/run_logo.png" | relative_url}}" class="card-img-top px-4 py-1" alt="chat-icon">
    <div class="card-body">
      <h5 class="card-title">3. Run ArrayAnalysis</h5>
      <p class="card-text">Starting up ArrayAnalysis for the first time might take some time, 
      because all packages still need to be installed. Don't worry! The second time you run the app, it will be way faster!</p>
    </div>
  </div>
  
</div>
<br>
<br>
<br>

<!-- Desktop app (Windows) -->
<h1><b>R package</b> (Windows/MacOS/Linux)</h1>

<div class="card-deck">

  <div class="card">
    <img src="{{ "/assets/img/icons/R_logo.png" | relative_url}}" class="card-img-top px-4 py-1" alt="sharing-icon">
    <div class="card-body">
      <h5 class="card-title">1. Install R</h5>
      <p class="card-text">If you don't have R on your computer, please first install <a href = "https://cran.r-project.org/" target="_blank">R</a>. 
      If you work on a Windows system, you also need to 
      install <a href = "https://cran.r-project.org/bin/windows/Rtools/" target="_blank">Rtools</a>.</p> 
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
    <img src="{{ "/assets/img/icons/run_logo.png" | relative_url}}" class="card-img-top px-4 py-1" alt="chat-icon">
    <div class="card-body">
      <h5 class="card-title">3. Run ArrayAnalysis</h5>
            <p class="card-text">Run the following R code to run ArrayAnalysis:
      <pre>
      <code class="language-R">
     # Run ArrayAnalysis
     ArrayAnalysis::runArrayAnalysis()
     </code>
      </pre>
      Starting up ArrayAnalysis for the first time might take some time, 
      because all packages still need to be installed. Don't worry! The second time you run the app, it will be way faster!</p>
    </div>
  </div>
  
</div>
<br>
<br>

</div>

