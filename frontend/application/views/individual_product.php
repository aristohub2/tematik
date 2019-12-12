<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title><?php echo $p_name; ?></title>
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
<!-- <div id="home" class="intro route bg-image" style="background-image: url(<?php echo base_url('assets/'); ?>img/slideshow4.jpg);"> -->
<div id="home" class="intro route bg-image" style="background:#555555;">  
  <div class="overlay-itro"></div>
  <div id="main_content" class="container">
    <div class="row">
      <div id="product_imgs" class="col-md-8" style="padding: 2.5vh 2vw 0 2vw;">
        <div class="row">
            <?php
              $counter = 0;

              foreach ($p_photo as $key) {
                if($counter==0){
                  echo "
                    <div class='col-left col-lg-10 text-center' style='padding: 0 2vw 0 0;'>
                      <!-- foto produk -->
                      <div class='work-box'>
                        <a href='". base_url($key['ProductPath']) ."' data-lightbox='gallery-mf'>
                          <div class='work-img'>
                            <img src='". base_url($key['ProductPath']) ."' class='img-fluid' alt='Foto produk'>
                          </div>
                        </a>
                      </div>
                    </div>

                    <!-- foto2 tambahan -->
                    <div class='hide-scroll col-2 text-center justify-content-space-evenly' style='max-height: 55vh; overflow-y: scroll;'>
                  ";
                }
                else{
                  echo "
                    <div class='row'>
                      <div class='work-box' style='margin-bottom: 3vh;'>
                        <a href='". base_url($key['ProductPath']) ."' data-lightbox='gallery-mf'>
                          <div class='work-img'>
                            <img src='". base_url($key['ProductPath']) ."' alt='' class='img-fluid'>
                          </div>
                        </a>
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

      <div id="product_info" class="col-right col-md-4" style="overflow-wrap: break-word;">
        <p class="h2">
          <?php
            echo $p_name;
          ?>
        </p>
        <br />
        <p style="overflow-wrap: break-word; font-size: 13px; margin-bottom: 5vh;">
          <?php
            echo $p_desc;
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
              <b>Related products</b>
            </h2>
            <div class="line-mf"></div>
          </div>
        </div>
      </div>
      <div class="row">

        <?php

            $id = [];
            array_push($id,$rcm_id_0);
            array_push($id,$rcm_id_1);
            array_push($id,$rcm_id_2);

            $ctg = [];
            array_push($ctg,$rcm_ctg_0);
            array_push($ctg,$rcm_ctg_1);
            array_push($ctg,$rcm_ctg_2);

            $path = [];
            array_push($path,$rcm_path_0);
            array_push($path,$rcm_path_1);
            array_push($path,$rcm_path_2);

            $name = [];
            array_push($name,$rcm_name_0);
            array_push($name,$rcm_name_1);
            array_push($name,$rcm_name_2);

          for($counter = 0 ; $counter < 3 ; $counter++) {  
            echo "
              <div class='col-md-4'>
                <div class='work-box'>
                  <a href='". base_url('index.php/Individual_Product') ."?p=".$id[$counter]."&s=".$ctg[$counter]."'>
                    <div class='work-img'>
                      <img src='". base_url($path[$counter]) ."' alt='' class='img-fluid'>
                    </div>
                    <div class='work-content'>
                      <div class='row'>
                        <div class='col-sm-12'>
                          <h2 class='w-title'>".$name[$co] ."</h2>
                        </div>
                      </div>
                    </div>
                  </a>
                </div>
              </div>
            ";
          }
        ?>

      </div>
    </div>
  </div>
  <!--/ Section Portfolio End /-->
</div>

  <!-- Footer -->
  <section class="paralax-mf footer-paralax bg-image route" style="background-image: url(<?php echo base_url('assets/'); ?>img/)">
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
