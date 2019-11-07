<!DOCTYPE html>
<html lang="en">
<head>
  <title>Catalogue</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> -->
  <?php 
    echo $css;
  ?>
  <link href="<?php echo base_url('assets/'); ?>css/style-catalogue.css" rel="stylesheet">
  <style>
        .work-box:hover img {
            -webkit-transform: scale(1.3);
            transform: scale(1.0);
        }
  </style>
</head>

<body>
    <?php 
        echo $nav;
    ?>
  <div class="container-fluid">
    <div id="myCarousel" class="carousel slide" data-interval="5000">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner">

        <div class="carousel-item active">
          <img src="<?php echo base_url('assets/'); ?>img/slideshow1.jpg" alt="Chania" width="100%" height="75%">
          <div class="carousel-caption">
            <h3 style="color: white;">Chania</h3>
            <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
          </div>
        </div>

        <div class="carousel-item">
          <img src="<?php echo base_url('assets/'); ?>img/slideshow2.jpg" alt="Chania" width="100%" height="75%">
          <div class="carousel-caption">
            <h3 style="color: white;">Florence</h3>
            <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
          </div>
        </div>
      
        <div class="carousel-item">
          <img src="<?php echo base_url('assets/'); ?>img/slideshow3.jpg" alt="Chania" width="100%" height="75%">
          <div class="carousel-caption">
            <h3 style="color: white;">Crete</h3>
            <p>Beautiful flowers in Kolymbari, Crete.</p>
          </div>
        </div>

        <div class="carousel-item">
          <img src="<?php echo base_url('assets/'); ?>img/slideshow4.jpg" alt="Chania" width="100%" height="75%">
          <div class="carousel-caption">
            <h3 style="color: white;">Kolymbari</h3>
            <p>Beautiful flowers in Kolymbari, Crete.</p>
          </div>
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
              Catalogue
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
            <a href="<?php echo base_url('index.php/Products')?>">
              <div class="work-img">
                <img src="<?php echo base_url('assets/'); ?>img/img1.jpg" alt="" class="img-fluid">
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
            <a href="<?php echo base_url('index.php/Products')?>">
              <div class="work-img">
                <img src="<?php echo base_url('assets/'); ?>img/img2.jpg" alt="" class="img-fluid">
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
            <a href="<?php echo base_url('index.php/Products')?>">
              <div class="work-img">
                <img src="<?php echo base_url('assets/'); ?>img/img3.jpg" alt="" class="img-fluid">
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
            <a href="<?php echo base_url('index.php/Products')?>">
              <div class="work-img">
                <img src="<?php echo base_url('assets/'); ?>img/img4.jpg" alt="" class="img-fluid">
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

    <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  
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
    <script src="<?php echo base_url('assets/'); ?>js/catalogue.js"></script>

</body>
</html>
