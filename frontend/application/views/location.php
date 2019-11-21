<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Our Boutique</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <?php 
    echo $css;
  ?>
  
</head>

<style>

  h5, h3, p{
    color: white;
  }

  #map{
    height: 100vh;
    width: 100%;
  }

  .card-block {
    font-size: 1em;
    position: relative;
    margin: 0;
    padding: 1em;
    box-shadow: none;
    background-color: #222;
    color: #ddd;
  }


  .cardClick {
    
  }

  .full{
    width: 100%;
    padding-right: 0;
    padding-left: 0;
  }

  .btn-gold{
    background-color: #D4AF37;
  }

  .detail{
    z-index: 10; 
    position: absolute; 
    top: 2%;
    height: 96%; 
    left: 26%;
    margin: auto;
    background-color: black;
  }
  
  .detail .card{
    width: 100%;
  }

</style>

<body id="page-top">

  <!--/ Section Portfolio Star /-->
  <section id="maps" class="">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-3 full">
          <div class="title-box text-center">
            <h3 class="title-a" style="padding-top: 10%">
              Our Location
            </h3>
            <p class="subtitle-a" style="color: #ddd">
              Passion Prive Location
            </p>
            <div class="line-mf"></div>
            <br>
            <!-- foreach card start-->

            <div class="card">
              <div class="row">
                <div class="col-sm-12">
                  <div class="card-block">
                    <h5>Passion Prive Plaza Indonesia</h5>
                    <p>Plaza Indonesia, Lantai 3, Galeria Grand Hyatt</p>
                    <!-- <button class="btn btn-gold btn-sm">Take me there !</button> -->
                  </div>
                </div>
              </div>
            </div>

            <!-- foreach card end-->


            <a href="<?php echo base_url('index.php/') ?>"><button class="btn btn-gold btn-sm" style="width: 80%; margin: 20px;">Back to Home</button></a>

          </div>
        </div>
        <!-- <div class="col-lg-3 detail">
          <div class="title-box text-center">
            <h3 class="title-a" style="padding-top: 10%">
              Passion Prive Plaza Indonesia
            </h3>

            <div class="line-mf"></div>
            <br>
            <!-- foreach card start


            <div class="card">
              <div class="row">
                <div class="col-sm-12">
                  <div class="card-block">
                    <h5>Passion Prive Plaza Indonesia</h5>
                    <p>Plaza Indonesia, Lantai 3, Galeria Grand Hyatt</p>
                    <button class="btn btn-gold btn-sm">Take me there !</button>
                  </div>
                </div>
              </div>
            </div>

            <!-- foreach card end

          </div>
        </div> -->
        <div class="col-lg-9">
          <div class="row">
            <img src="https://wallpapercave.com/wp/GoYcMqd.jpg" class="col-lg-12">
            
          </div>
          <div class="row">
            <h1 style="color:white; height: 10em;">Plaza Indonesia, Lantai 3, Galeria Grand Hyatt</h1>
          </div>
          
        </div>
      </div>

    </div>
  </section>
  <!--/ Section Portfolio End /-->

  <?php 
    echo $js;
  ?>

  <script>
    $(document).ready(function(){
      $('.detail').hide();
      var show = false;

        $('.cardClick').on('click', function(){
          if(show == false) {
            $('.detail').show();
            show = true;
          }
          else {
            show = false;
            $('.detail').hide();
          }
        });
      }
    )
    
  </script>

  <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyANXEvQ_WF-CUtpDoZfNWDEkpL2xi1Jxl0&callback=initMap">
  </script>

</body>
</html>
