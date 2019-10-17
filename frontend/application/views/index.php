<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Passion Prive</title>
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
  <div id="home" class="intro route bg-image" style="background-image: url(<?php echo base_url('assets/img/bg-index.jpg'); ?>)">
    <div class="overlay-itro"></div>
    <div class="intro-content display-table">
      <div class="table-cell">
        <div class="container">
          <!--<p class="display-6 color-d">Hello, world!</p>-->
          <h1 class="intro-title mb-4">Passion Prive</h1>
          <p class="intro-subtitle"></p>
          <!-- <p class="intro-subtitle"><span class="text-slider-items">alvin,timi,aristo,alex,leon</span><strong class="text-slider"></strong></p> -->
          <!-- <p class="pt-3"><a class="btn btn-primary btn js-scroll px-4" href="#about" role="button">Learn More</a></p> -->
        </div>
      </div>
    </div>
  </div>


  <?php
    echo $js;
  ?>

  <script>
    $( document ).ready(function(){
      $('#logo-company').hide();
    });
  </script>

</body>
</html>
