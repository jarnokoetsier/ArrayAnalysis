---
title: "ArrayAnalysis Installation"
permalink: /installation
layout: default
---
<br>
<br>
<div class="container px-1">

<!-- Desktop app -->
<h1><b>Desktop app</b></h1>

<div class="card-deck">

  <div class="card">
    <img src="{{ "/assets/img/icons/R_logo.png" | relative_url}}" class="card-img-top px-4 py-1" alt="sharing-icon">
    <div class="card-body">
      <h5 class="card-title">1. Install R</h5>
      <p class="card-text">If you don't have R (version 4.4.0 or higher) on your computer, please first install <a href = "https://cran.r-project.org/" target="_blank">R</a>.</p>
    </div>
  </div>
  
  <div class="card">
    <img src="{{ "/assets/img/icons/install_logo.png" | relative_url}}" class="card-img-top px-4 py-1" alt="inspiration-icon">
    <div class="card-body">
      <h5 class="card-title">2. Install ArrayAnalysis</h5>
      <p class="card-text">You can download ArrayAnalysis for
      <a href = "https://zenodo.org/records/15910769/files/ArrayAnalysis_unix_0.1.0.sh?download=1">Linux</a>,
      <a href = "https://zenodo.org/records/15910769/files/ArrayAnalysis_macos_0.1.0.dmg?download=1">MacOS</a>, and 
      <a href = "https://zenodo.org/records/15910769/files/ArrayAnalysis_windows-x64_0.1.0.exe?download=1">Windows</a>.</p>
      <hr>
      <p style="font-size: 12px">Does file security prevent you from running the file? Click <a href="{{ "/unblock" | relative_url}}">here</a> what to do.</p>
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

<!-- R package -->
<h1><b>R package</b></h1>

<div class="card-deck">

  <div class="card">
    <img src="{{ "/assets/img/icons/R_logo.png" | relative_url}}" class="card-img-top px-4 py-1" alt="sharing-icon">
    <div class="card-body">
      <h5 class="card-title">1. Install R</h5>
      <p class="card-text">If you don't have R (version 4.4.0 or higher) on your computer, please first install <a href = "https://cran.r-project.org/" target="_blank">R</a>. 
      If you work on a Windows system, you also need to 
      install <a href = "https://cran.r-project.org/bin/windows/Rtools/" target="_blank">Rtools</a>.</p> 
    </div>
  </div>
  
  <div class="card">
    <img src="{{ "/assets/img/icons/install_logo.png" | relative_url}}" class="card-img-top px-4 py-1" alt="inspiration-icon">
    <div class="card-body">
      <h5 class="card-title">2. Install ArrayAnalysis</h5>
      <p class="card-text">Use the following R code to install ArrayAnalysis:</p>
      <pre>
      <code class="language-R">
      # install "remotes" package
      install.packages("remotes")
      
      # Install ArrayAnalysis from GitHub
      remotes::install_github("ArrayAnalysis/ArrayAnalysis_Shiny/Package") 
      </code>
      </pre>
    </div>
  </div>
  
  <div class="card">
    <img src="{{ "/assets/img/icons/run_logo.png" | relative_url}}" class="card-img-top px-4 py-1" alt="chat-icon">
    <div class="card-body">
      <h5 class="card-title">3. Run ArrayAnalysis</h5>
            <p class="card-text">Use the following R code to run ArrayAnalysis:
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


<!-- Docker -->
<h1><b>Docker image</b></h1>

<div class="card-deck">

  <div class="card">
    <img src="{{ "/assets/img/icons/Docker_logo.png" | relative_url}}" class="card-img-top px-4 py-1" alt="sharing-icon">
    <div class="card-body">
      <h5 class="card-title">1. Install Docker Desktop</h5>
      <p class="card-text">If you haven't installed Docker Desktop on your computer, please first install <a href = "https://www.docker.com/get-started/" target="_blank">Docker Desktop</a>.</p> 
    </div>
  </div>
  
  <div class="card">
    <img src="{{ "/assets/img/icons/install_logo.png" | relative_url}}" class="card-img-top px-4 py-1" alt="inspiration-icon">
    <div class="card-body">
      <h5 class="card-title">2. Pull ArrayAnalysis</h5>
      <p class="card-text">Pull the ArrayAnalysis image with the following command:</p>
       <pre>
      <code>
     docker pull arrayanalysis/arrayanalysis_shiny:0.1.1
     </code>
      </pre>
    </div>
  </div>
  
  <div class="card">
    <img src="{{ "/assets/img/icons/run_logo.png" | relative_url}}" class="card-img-top px-4 py-1" alt="chat-icon">
    <div class="card-body">
      <h5 class="card-title">3. Run ArrayAnalysis</h5>
            <p class="card-text">Run ArrayAnalysis with the following command:</p>
      <pre>
      <code>
     docker run -d --rm -p 3838:3838 arrayanalysis/arrayanalysis_shiny:0.1.1
     </code>
      </pre>
    </div>
  </div>
  
</div>
<br>
<br>

<!-- Source file -->
<h1><b>Source files</b></h1>

<div class="card-deck">

  <div class="card">
    <img src="{{ "/assets/img/icons/R_logo.png" | relative_url}}" class="card-img-top px-4 py-1" alt="sharing-icon">
    <div class="card-body">
      <h5 class="card-title">1. Install R</h5>
      <p class="card-text">If you don't have R (version 4.4.0 or higher) on your computer, please first install <a href = "https://cran.r-project.org/" target="_blank">R</a>.</p> 
    </div>
  </div>
  
  <div class="card">
    <img src="{{ "/assets/img/icons/install_logo.png" | relative_url}}" class="card-img-top px-4 py-1" alt="inspiration-icon">
    <div class="card-body">
      <h5 class="card-title">2. Download ArrayAnalysis</h5>
      <p class="card-text">You can download the ArrayAnalysis zip file <a href = "https://zenodo.org/records/15879270/files/jarnokoetsier/ArrayAnalysis_Shiny-v0.1.0.zip?download=1">here</a>. Unzip the file.</p>
    </div>
  </div>
  
  <div class="card">
    <img src="{{ "/assets/img/icons/run_logo.png" | relative_url}}" class="card-img-top px-4 py-1" alt="chat-icon">
    <div class="card-body">
      <h5 class="card-title">3. Run ArrayAnalysis</h5>
            <p class="card-text">Use the following R code to run ArrayAnalysis:
      <pre>
      <code class="language-R">
     # Run ArrayAnalysis
     shiny::runApp("Path/to/ArrayAnalysis/folder")
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

