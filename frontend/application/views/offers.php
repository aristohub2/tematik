<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Offers</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

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
  <div class="container-fluid">
    <div id="home" class="intro route bg-image" style="background-image: url(<?php echo base_url('assets/'); ?>img/bg-about.jpg)">
      <div class="overlay-itro"></div>
      <div class="intro-content display-table">
        <div class="table-cell">
          <div class="container">
            <!--<p class="display-6 color-d">Hello, world!</p>-->
            <h1 class="intro-title mb-4">Offers</h1>
          </div>
        </div>
      </div>
    </div>
  <!-- <img src="<?php echo base_url('assets/'); ?>img/slideshow1.jpg" alt="Chania" width="100%" height="75%">
  <img src="<?php echo base_url('assets/'); ?>img/slideshow2.jpg" alt="Chania" width="100%" height="75%">
  <img src="<?php echo base_url('assets/'); ?>img/slideshow3.jpg" alt="Chania" width="100%" height="75%">
  <img src="<?php echo base_url('assets/'); ?>img/slideshow4.jpg" alt="Chania" width="100%" height="75%"> -->

  <!--/ Section Portfolio Star /-->
  <section id="work" class="portfolio-mf sect-pt4 route">
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <div class="title-box text-center">
            <h3 class="title-a">
              Our Offers
            </h3>
            <p class="subtitle-a">
              are as follows
            </p>
            <div class="line-mf"></div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6">
          <div class="work-box">
            <a href="<?php echo base_url('index.php/Products')?>">
              <div class="work-img">
                <img src="<?php echo base_url('assets/'); ?>img/img1.jpg" alt="" class="img-fluid">
              </div>
              <div class="work-content">
                <div class="row">
                  <div class="col-sm-12">
                    <h2 class="w-title">Offer</h2>
                  </div>
                </div>
              </div>
            </a>
          </div>
        </div>
        <div class="col-md-6">
          <div class="work-box">
            <a href="<?php echo base_url('index.php/Products')?>">
              <div class="work-img">
                <img src="<?php echo base_url('assets/'); ?>img/img2.jpg" alt="" class="img-fluid">
              </div>
              <div class="work-content">
                <div class="row">
                  <div class="col-sm-12">
                    <h2 class="w-title">Offer 1</h2>
                  </div>
                </div>
              </div>
            </a>
          </div>
        </div>
        <div class="col-md-6">
          <div class="work-box">
            <a href="<?php echo base_url('index.php/Products')?>">
              <div class="work-img">
                <img src="<?php echo base_url('assets/'); ?>img/img3.jpg" alt="" class="img-fluid">
              </div>
              <div class="work-content">
                <div class="row">
                  <div class="col-sm-12">
                    <h2 class="w-title">Offer 2</h2>
                  </div>
                </div>
              </div>
            </a>
          </div>
        </div>
        <div class="col-md-6">
          <div class="work-box">
            <a href="<?php echo base_url('index.php/Products')?>">
              <div class="work-img">
                <img src="<?php echo base_url('assets/'); ?>img/img4.jpg" alt="" class="img-fluid">
              </div>
              <div class="work-content">
                <div class="row">
                  <div class="col-sm-12">
                    <h2 class="w-title">Offer 3</h2>
                  </div>
                </div>
              </div>
            </a>
          </div>
        </div>        
      </div>
    </div>

  <section class="paralax-mf footer-paralax bg-image sect-mt4 route" style="background-image: url(<?php echo base_url('assets/'); ?>img/)">
    <div class="overlay-mf"></div>
    <?php 
      echo $footer; 
    ?>
  </section>

  <?php
    echo $js;
  ?>

  <script>
    
  </script>

</body>
</html>
