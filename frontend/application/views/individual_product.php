<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Single Products</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <?php echo $css; ?>
</head>

<style>
  .intro
  {
    height: 100%;
    padding: 20vh 5vw 0 5vw;
  }
  .work-box
  {
    background-color: rgba(255, 255, 255, 0.0);
  }
  .w-title
  {
    color: white;
    text-align: center;
  }
</style>

<body id="page-top">
<?php echo $nav; ?>
<!--/ bekgron /-->
<div id="home" class="intro route bg-image" style="background-image: url(<?php echo base_url('assets/'); ?>img/slideshow4.jpg);">
  <div class="overlay-itro"></div>
  <div id="main_content" class="container">
    <div class="row">
      <div id="product_imgs" class="col-left col-md-8 text-center" style="padding-top: 2.5vh;">
        <!-- foto produk -->
        <div class="work-box">
          <a href="<?php echo base_url('assets/'); ?>img/slideshow2.jpg" data-lightbox="gallery-mf">
            <div class="work-img">
              <img src="<?php echo base_url('assets/'); ?>img/slideshow2.jpg" class="img-fluid" style="margin-bottom: 4vh;" alt="Foto produk">
            </div>
          </a>
        </div>
        <!-- ~3 foto tambahan -->
        <div class="row justify-content-space-evenly">
          <div class="col-4">
            <div class="work-box">
              <a href="<?php echo base_url('assets/'); ?>img/ring1.jpg" data-lightbox="gallery-mf">
                <div class="work-img">
                  <img src="<?php echo base_url('assets/'); ?>img/ring1.jpg" alt="" class="img-fluid">
                </div>
              </a>
            </div>
          </div>
          
          <div class="col-4">
            <div class="work-box">
              <a href="<?php echo base_url('assets/'); ?>img/ring2.jpg" data-lightbox="gallery-mf">
                <div class="work-img">
                  <img src="<?php echo base_url('assets/'); ?>img/ring2.jpg" alt="" class="img-fluid">
                </div>
              </a>
            </div>
          </div>

          <div class="col-4">
            <div class="work-box">
              <a href="<?php echo base_url('assets/'); ?>img/ring3.jpg" data-lightbox="gallery-mf">
                <div class="work-img">
                  <img src="<?php echo base_url('assets/'); ?>img/ring3.jpg" alt="" class="img-fluid">
                </div>
              </a>
            </div>
          </div>
        </div>
      </div>

      <div id="product_info" class="col-right col-md-4" style="overflow-wrap: break-word;">
        <p class="h2">
          <?php
            $product_title = "Lorem ipsum dolor sit amet, consectetur adipiscing elit.";
            echo $product_title;
          ?>
        </p>
        <br />
        <p style="overflow-wrap: break-word; font-size: 13px; margin-bottom: 5vh;">
          <?php
            $product_desc =
            "Cras interdum purus vitae diam consequat, vitae feugiat lacus tempor.
            Integer ac erat vitae erat malesuada placerat. Mauris placerat dolor eget fringilla egestas.
            Mauris nisi tellus, bibendum at libero ut, pretium placerat nunc.
            Nam tempor efficitur sollicitudin. Proin cursus gravida erat sit amet auctor.
            Vivamus egestas lectus congue velit cursus, at rhoncus justo dapibus.";
            echo $product_desc;
          ?>
        </p>
      </div>
    </div>
  </div>

  <!--/ Section Portfolio Star /-->
  <div id="other_products" class="portfolio-mf sect-pt4 route">
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <div class="title-box text-center">
            <h2 style="color: white;">
              <b>See other products</b>
            </h2>
            <div class="line-mf"></div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4">
          <div class="work-box">
            <a href="<?php echo base_url('assets/'); ?>img/img1.jpg" data-lightbox="gallery-mf-o1">
              <div class="work-img">
                <img src="<?php echo base_url('assets/'); ?>img/img1.jpg" alt="" class="img-fluid">
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
        <div class="col-md-4">
          <div class="work-box">
            <a href="<?php echo base_url('assets/'); ?>img/img2.jpg" data-lightbox="gallery-mf-o2">
              <div class="work-img">
                <img src="<?php echo base_url('assets/'); ?>img/img2.jpg" alt="" class="img-fluid">
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
        <div class="col-md-4">
          <div class="work-box">
            <a href="<?php echo base_url('assets/'); ?>img/img3.jpg" data-lightbox="gallery-mf-o3">
              <div class="work-img">
                <img src="<?php echo base_url('assets/'); ?>img/img3.jpg" alt="" class="img-fluid">
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
  </div>
  <!--/ Section Portfolio End /-->
</div>

<?php 
  echo $footer;
  echo $js; 
?>
</body>
</html>
