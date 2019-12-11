<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Company</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
  <!-- <link rel="stylesheet" href="assets/css/style-scribble.css"> -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
  <!-- <script src="assets/lib/jquery/jquery.min.js"></script> -->

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
  <div id="home" class="intro route bg-image" style="background-image: url(<?php echo base_url($banner); ?>)">
    <div class="overlay-itro"></div>
    <div class="intro-content display-table">
      <div class="table-cell">
        <div class="container">
          <!--<p class="display-6 color-d">Hello, world!</p>-->
          <h1 class="intro-title mb-4"><?php echo $title; ?></h1>
        </div>
      </div>
    </div>
  </div>

  <section id="about" class="about-mf sect-pt4 route">
    <div class="container">
      <h3 style="color:#B8860B;"><p align="center"><strong><?php echo $title; ?></strong></p></h3>
      <p style="text-align: center;">
        <?php echo $desc; ?>
      </p>
    </div>
  </section>
  <!-- <br><br> -->
  <hr class="line-separator">
  <section id="about" class="about-mf sect-pt4 route">
    
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

  

</body>
</html>
