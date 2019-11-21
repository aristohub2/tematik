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
  <div id="home" class="intro route bg-image" style="background-image: url(<?php echo base_url('assets/'); ?>img/earring1.jpg)">
    <div class="overlay-itro"></div>
    <div class="intro-content display-table">
      <div class="table-cell">
        <div class="container">
          <!--<p class="display-6 color-d">Hello, world!</p>-->
          <h1 class="intro-title mb-4">Earrings</h1>
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
        <!-- start for each -->
        <div class="col-md-12">
          <div class="work-box">
            <a href="<?php echo base_url('index.php/Individual_Product')?>">
              <div class="work-img">
                <img src="<?php echo base_url('assets/'); ?>img/earring2.jpg" alt="" class="img-fluid">
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
            <a href="<?php echo base_url('index.php/Individual_Product')?>">
              <div class="work-img">
                <img src="<?php echo base_url('assets/'); ?>img/earring3.jpg" alt="" class="img-fluid">
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
            <a href="<?php echo base_url('index.php/Individual_Product')?>">
              <div class="work-img">
                <img src="<?php echo base_url('assets/'); ?>img/earring4.jpg" alt="" class="img-fluid">
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

        <?php 
          foreach ($products as $key) {
            echo "
              <div class='col-md-6'>
                <div class='work-box'>
                  <a href='". base_url('index.php/Individual_Product') ."'>
                    <div class='work-img'>
                      <img src='". base_url($key['ProductPath']) ."' alt='' class='img-fluid'>
                    </div>
                    <div class='work-content'>
                      <div class='row'>
                        <div class='col-sm-12'>
                          <h2 class='w-title'>Lorem impsum dolor</h2>
                        </div>
                      </div>
                    </div>
                  </a>
                </div>
              </div>
            ";
          }
        ?>
       <!-- end foreach  -->
      </div>
    </div>
  </section>
  <!--/ Section Portfolio End /-->

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

  <script>
    $(document).ready(function(){
      $("p").click(function(){
        $(this).hide();
      });
    });
  </script>

</body>
</html>
