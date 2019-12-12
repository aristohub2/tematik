<!DOCTYPE html>
<html>
<head>
  <title>Login</title>
</head>
<?php echo $css; ?>
<?php echo $js; ?>

<body>
  <div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h2 class="card-title text-center">Sign In</h2>
            <?php echo form_open_multipart('c_login/');?>
              <div class="form-label-group">
                <label for="inputEmail">Username</label>
                <input type="Username" name="username" id="Username" class="form-control" placeholder="Username" required autofocus>
              </div>

              <div class="form-label-group">
                <label for="inputPassword">Password</label>
                <input type="password" name="password" id="Password" class="form-control" placeholder="Password" required>
              </div>

              <div class="custom-control custom-checkbox mb-3">

              </div>
              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Sign in</button>
            </form>
            <div>
              <a href=" <?php echo base_url('index.php/c_register') ?>">Create Account</a>  
            </div>
            
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
<script type="text/javascript">
  $(function(){ 
      var error = '<?php echo $error; ?>';
      console.log(error);
      
      if(error == "0"){
        alert("Username and Password not exist or does not match, please try again.");
      }
    });

</script>
</html>