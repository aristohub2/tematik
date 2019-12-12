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
            <h2 class="card-title text-center">Register Account</h2>
            <?php echo form_open_multipart('c_register/');?>
              <div class="form-label-group">
                <label for="inputEmail">Username</label>
                <input type="Username" name="username" id="Username" class="form-control" placeholder="Username" required autofocus>
              </div>

              <div class="form-label-group">
                <label for="inputPassword">Password</label>
                <input type="password" name="password" id="Password" class="form-control" placeholder="Password" required>
              </div>

              <div class="form-label-group">
                <label for="inputPassword">Confirm Password</label>
                <input type="password" name="c_password" id="c_Password" class="form-control" placeholder="confirm Password" required>
              </div>

              <div class="custom-control custom-checkbox mb-3">

              </div>
              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Create Account</button>
            </form>
            <div>
              <a href=" <?php echo base_url('index.php/c_login') ?>">Login</a>  
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

      if(error == "1"){
        alert("Username already exist, please try again.");
      }else if(error == "2")
      {
        alert("Confirm Password doesn't match, please try again.");
      }else if(error == "0")
      {
        alert("Account Registered Succesfully.");
      }
  });
</script>
</html>