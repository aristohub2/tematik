<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Company</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
  <!-- <link rel="stylesheet" href="assets/css/style-scribble.css"> -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
  <!-- <script src="assets/lib/jquery/jquery.min.js"></script> -->

  <?php 
    echo $css;
  ?>
</head>

<style>

</style>

<body id="page-top">

  <!--/ Nav Start /-->
    <?php 
    echo $nav;
  ?>
  <!--/ Nav End /-->


  <!--/ Intro Skew Star /-->
  <div id="home" class="intro route bg-image" style="background-image: url(<?php echo base_url($banner); ?>)">
    <div class="overlay-itro"></div>
    <div class="intro-content display-table">
      <div class="table-cell">
        <div class="container">
          <!--<p class="display-6 color-d">Hello, world!</p>-->
          <h1 class="intro-title mb-4">"Passion Prive"</h1>
        </div>
      </div>
    </div>
  </div>

  <section id="about" class="about-mf sect-pt4 route">
    <div class="container">
      <h3 style="color:#B8860B;"><p align="center"><strong>ABOUT US</strong></p></h3>
      <p style="text-align: justify;">
        <?php echo $about; ?>
      </p>
    </div>
  </section>
  <!-- <br><br> -->
  <hr class="line-separator">
  <section id="about" class="about-mf sect-pt4 route">
    <div class="container">
    <h3 style="color:#B8860B;"><p align="center"><strong>OUR HISTORY</strong></p></h3>
      <ul class="timeline">
        <?php echo $timeline; ?>
      </ul>
    </div>
  </section>

  <section id="work" class="portfolio-mf sect-pt4 route">
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <div class="title-box text-center">
            <h3 class="title-a">
              Our Products
            </h3>
            <p class="subtitle-a">
              Luxury beyond limits.
            </p>
            <div class="line-mf"></div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6">
          <div class="work-box">
            <a href="<?php echo base_url('index.php/Products_bracelets')?>">
              <div class="work-img">
                <img src="<?php echo base_url($f_bracelet); ?>" alt="" class="img-fluid">
              </div>
              <div class="work-content">
                <div class="row">
                  <div class="col-sm-12">
                    <h2 class="w-title">Bracelets</h2>
                  </div>
                </div>
              </div>
            </a>
          </div>
        </div>
        <div class="col-md-6">
          <div class="work-box">
            <a href="<?php echo base_url('index.php/Products_earrings')?>">
              <div class="work-img">
                <img src="<?php echo base_url($f_earring); ?>" alt="" class="img-fluid">
              </div>
              <div class="work-content">
                <div class="row">
                  <div class="col-sm-12">
                    <h2 class="w-title">Earrings</h2>
                  </div>
                </div>
              </div>
            </a>
          </div>
        </div>
        <div class="col-md-6">
          <div class="work-box">
            <a href="<?php echo base_url('index.php/Products_pendants')?>">
              <div class="work-img">
                <img src="<?php echo base_url($f_pendant); ?>" alt="" class="img-fluid">
              </div>
              <div class="work-content">
                <div class="row">
                  <div class="col-sm-12">
                    <h2 class="w-title">Pendants</h2>
                  </div>
                </div>
              </div>
            </a>
          </div>
        </div>
        <div class="col-md-6">
          <div class="work-box">
            <a href="<?php echo base_url('index.php/Products_rings')?>">
              <div class="work-img">
                <img src="<?php echo base_url($f_ring); ?>" alt="" class="img-fluid">
              </div>
              <div class="work-content">
                <div class="row">
                  <div class="col-sm-12">
                    <h2 class="w-title">Rings</h2>
                  </div>
                </div>
              </div>
            </a>
          </div>
        </div>        
      </div>
    </div>
  
  </section>

  <!-- Footer -->
  <section class="paralax-mf footer-paralax bg-image sect-mt4 route" style="background-image: url(<?php echo base_url('assets/'); ?>img/)">
    <div class="overlay-mf"></div>
    <?php 
      echo $footer; 
    ?>
  </section>

  <?php
    echo $js;
  ?>

  

</body>
</html>
