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


  .card {
    
  }

  .full{
    width: 100%;
    padding-right: 0;
    padding-left: 0;
  }

  .btn-gold{
    background-color: #D4AF37;
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
              Lorem ipsum, dolor sit amet consectetur adipisicing elit.
            </p>
            <div class="line-mf"></div>
            <br>
            <!-- foreach card start-->

            <div class="card">
              <div class="row">
                <div class="col-sm-12 full">
                  <div class="card-block">
                    <h5>Passion Prive Thamrin</h5>
                    <p>Jl. M.H. Thamrin No.11, RT.9/RW.5, Kuningan, Kb. Kacang, Kecamatan Tanah Abang, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10240</p>
                    <button id="testbt" class="btn btn-gold btn-sm">Take me there !</button>
                  </div>
                </div>
              </div>
            </div>

            <div class="card">
              <div class="row">
                <div class="col-sm-12 full">
                  <div class="card-block">
                    <h5>Passion Prive Plaza Indonesia</h5>
                    <p>Plaza Indonesia Lantai 3 Galeria Grand Hyatt Blok H010-H010A, RT.1/RW.5, Duri Kosambi, Cengkareng, West Jakarta City, Jakarta 11750</p>
                    <button id="testpi" class="btn btn-gold btn-sm">Take me there !</button>
                  </div>
                </div>
              </div>
            </div>

            <!-- foreach card end-->


            <a href="<?php echo base_url('index.php/') ?>"><button class="btn btn-gold btn-sm" style="width: 80%; margin: 20px;">Back to Home</button></a>

          </div>
        </div>
        <div class="col-lg-9" id="map">
        </div>
      </div>

    </div>
  </section>
  <!--/ Section Portfolio End /-->

  <?php 
    echo $js;
  ?>

  <script>
    function initMap() 
    {
      // The location of Uluru
      var passionprive_PI = {lat: -6.193467, lng: 106.822107};
      var passionprive_Thamrin = {lat: -6.150348, lng:106.719386}
      // The map, centered at Uluru
      var map = new google.maps.Map(
          document.getElementById('map'), {zoom: 16, center: passionprive_PI});
      // The marker, positioned at Uluru
      var marker = new google.maps.Marker({position: passionprive_PI, 
        map: map,
        label: { color: '#000000', fontWeight: 'bold', fontSize: '22px', text: 'Passion Prive Plaza Indonesia'}});

      var marker = new google.maps.Marker({position: passionprive_Thamrin, 
        map: map,
        label: { color: '#000000', fontWeight: 'bold', fontSize: '22px', text: 'Passion Prive Thamrin'}});

      $('#testbt').on("click",function(){
        map.setCenter(passionprive_Thamrin)
        map.setZoom(22);
      });

      $('#testpi').on("click",function(){
        map.setCenter(passionprive_PI)
        map.setZoom(22);
      });
    }
  </script>

  <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyANXEvQ_WF-CUtpDoZfNWDEkpL2xi1Jxl0&callback=initMap">
  </script>

</body>
</html>
