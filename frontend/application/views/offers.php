<!DOCTYPE html>
<html lang="en">
<head>
  <title>Offers</title>
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

        h1{
          font-weight: bold;
          font-size: 60px;
          -webkit-text-stroke: 2px black;
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
        
        <?php 
          $counter = 0;

          foreach ($banner as $key) {

            if($counter==0){
              echo "
              <div class='carousel-item active'>
                <a href='". base_url('index.php/Promo') ."?p=".($counter+1)."'><img src='". base_url($key['BannerPath']) ."' alt='Chania' width='100%'></a>
                <div class='carousel-caption'>
                  <h1 style='color: white;'>".$key['BannerTitle']."</h1>
                  <p>".$key['BannerDescription']."</p>
                </div>
              </div>
            ";
            }else
            {
              echo "
              <div class='carousel-item'>
                <a href='". base_url('index.php/Promo') ."?p=".($counter+1)."'><img src='". base_url($key['BannerPath']) ."' alt='Chania' width='100%'></a>
                <div class='carousel-caption'>
                  <h1 style='color: white;'>".$key['BannerTitle']."</h1>
                  <p>".$key['BannerDescription']."</p>
                </div>
              </div>
            ";
            }            
            $counter++;
          }
        ?>    
      </div>

    </div>
  </div>

  <!--/ Offering /-->
  <section id="work" class="portfolio-mf sect-pt4 route">
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <div class="title-box text-center">
            <h3 class="title-a">
              Offers
            </h3>
            <p class="subtitle-a">
              November 2019 promo.
            </p>
            <div class="line-mf"></div>
          </div>
        </div>
      </div>
      <div class="row">

        <?php 
          $counter = 0;

          foreach ($banner as $key) {

            echo '
            <div class="col-md-12">
              <div class="work-box">
                <a href="'. base_url('index.php/Promo') .'?p='.($counter+1).'">
                  <div class="work-img">
                    <img src="'. base_url($key['BannerPath']) .'" alt="" class="img-fluid">
                  </div>
                  <div class="work-content">
                    <div class="row">
                      <div class="col-sm-12">
                        <h2 class="w-title">'. $key['BannerTitle'] .'</h2>
                      </div>
                    </div>
                  </div>
                </a>
              </div>
            </div>
            ';
                    
            $counter++;
          }
        ?> 

        

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
