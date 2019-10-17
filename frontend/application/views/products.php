<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Products</title>
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
  <div id="home" class="intro route bg-image" style="background-image: url(<?php echo base_url('assets/'); ?>img/test1.jpg)">
    <div class="overlay-itro"></div>
    <div class="intro-content display-table">
      <div class="table-cell">
        <div class="container">
          <!--<p class="display-6 color-d">Hello, world!</p>-->
          <h1 class="intro-title mb-4">Passion Prive</h1>
          <p class="intro-subtitle"><span class="text-slider-items">alvin,timi,aristo,alex,leon</span><strong class="text-slider"></strong></p>
          <!-- <p class="pt-3"><a class="btn btn-primary btn js-scroll px-4" href="#about" role="button">Learn More</a></p> -->
        </div>
      </div>
    </div>
  </div>

  <!--/ Section Portfolio Star /-->
  <section id="work" class="portfolio-mf sect-pt4 route">
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <div class="title-box text-center">
            <h3 class="title-a">
              Products
            </h3>
            <p class="subtitle-a">
              Lorem ipsum, dolor sit amet consectetur adipisicing elit.
            </p>
            <div class="line-mf"></div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6">
          <div class="work-box">
            <a href="<?php echo base_url('assets/'); ?>img/work-1.jpg" data-lightbox="gallery-mf">
              <div class="work-img">
                <img src="<?php echo base_url('assets/'); ?>img/work-1.jpg" alt="" class="img-fluid">
              </div>
              <div class="work-content">
                <div class="row">
                  <div class="col-sm-12">
                    <h2 class="w-title">Lorem impsum dolor</h2>
                  </div>
                </div>
              </div>
            </a>
          </div>
        </div>
        <div class="col-md-6">
          <div class="work-box">
            <a href="<?php echo base_url('assets/'); ?>img/work-2.jpg" data-lightbox="gallery-mf">
              <div class="work-img">
                <img src="<?php echo base_url('assets/'); ?>img/work-2.jpg" alt="" class="img-fluid">
              </div>
              <div class="work-content">
                <div class="row">
                  <div class="col-sm-12">
                    <h2 class="w-title">Lorem impsum dolor</h2>
                  </div>
                </div>
              </div>
            </a>
          </div>
        </div>
        <div class="col-md-6">
          <div class="work-box">
            <a href="<?php echo base_url('assets/'); ?>img/work-3.jpg" data-lightbox="gallery-mf">
              <div class="work-img">
                <img src="<?php echo base_url('assets/'); ?>img/work-3.jpg" alt="" class="img-fluid">
              </div>
              <div class="work-content">
                <div class="row">
                  <div class="col-sm-12">
                    <h2 class="w-title">Lorem impsum dolor</h2>
                  </div>
                </div>
              </div>
            </a>
          </div>
        </div>
        <div class="col-md-6">
          <div class="work-box">
            <a href="<?php echo base_url('assets/'); ?>img/work-4.jpg" data-lightbox="gallery-mf">
              <div class="work-img">
                <img src="<?php echo base_url('assets/'); ?>img/work-4.jpg" alt="" class="img-fluid">
              </div>
              <div class="work-content">
                <div class="row">
                  <div class="col-sm-12">
                    <h2 class="w-title">Lorem impsum dolor</h2>
                  </div>
                </div>
              </div>
            </a>
          </div>
        </div>        
      </div>
    </div>
  </section>
  <!--/ Section Portfolio End /-->

  <?php
    echo $footer; 
    echo $js;
  ?>

  <script>
    $(document).ready(function(){
      $("p").click(function(){
        $(this).hide();
      });
    });
  </script>

</body>
</html>
