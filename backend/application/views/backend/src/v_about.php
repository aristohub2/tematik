<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Responsive sidebar template with sliding effect and dropdown menu based on bootstrap 3">
    <title>About Banner - Backend </title>

    <?php echo $css; ?>
    <?php echo $js; ?>

</head>

<body>

<?php $this->load->view("backend/src/include/Sidebar.php") ?>
        <!-- page-content  -->
        <main class="page-content pt-2">
            <div id="overlay" class="overlay"></div>
            <div class="container-fluid p-5">
                <div class="row">
                    <div class="form-group col-md-12">
                        <h2>About Page Banner setting</h2>
                    </div>
                </div>

                <hr>

                <!-- Tab Links -->
                <div class="tab">
                  <button class="tablinks" onclick="NavTab(event, 'preview')">View</button>
                  <button class="tablinks" onclick="NavTab(event, 'edit')">Change</button>
                </div>

                <!-- Tab content -->
                <div id="preview" class="tabcontent">
                  <h3>Current Image</h3>
                  <hr>
                  <img src="<?php echo base_url('./../frontend/'.$img[0]['BannerPath']); ?>" style="width: 100% ; max-width: 800px;">
                  <hr>
                  <p> Image Title : <?php echo $img[0]['BannerTitle'] ?> </p>
                  <p> Image Description : <?php echo $img[0]['BannerDescription'] ?> </p>
                </div>

                <div id="edit" class="tabcontent">

                  <?php echo form_open_multipart('c_about/gf_transact');?>                      

                      <div class="form-group col-md-6">
                           <label>Banner Id</label>
                           <input allow-empty="false" type="text" placeholder="Id Attribute" name="BannerId" id="BannerId" class="form-control" maxlength="50" value="2" readonly>
                      </div>

                      <div class="form-group col-md-6">
                          <label>Banner Title</label>
                          <input allow-empty="false" type="text" placeholder="Banner Title" name="BannerTitle" id="BannerTitle" class="form-control" maxlength="50" value="" >
                      </div>

                       <div class="form-group col-md-6">
                          <label>Banner Description</label>
                          <textarea name="BannerDescription" rows="10" cols="30" class="form-control" placeholder="Banner Description"></textarea>
                      </div>

                      <div class="form-group col-md-6">
                       <input type="file" name="berkas"  />
                      </div>

                      <input type="hidden" name="hideMode" id="hideMode" value="U" />

                      <div class="form-group col-md-6 text-right">
                       <input type="submit" class="btn btn-primary" value="upload" />
                      </div>   

                  </form>
           
                </div>
            </div>
        </main>
    </div>
</body>

<script type="text/javascript">

    function NavTab(evt, action) {
      // Declare all variables
      var i, tabcontent, tablinks;

      // Get all elements with class="tabcontent" and hide them
      tabcontent = document.getElementsByClassName("tabcontent");
      for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
      }

      // Get all elements with class="tablinks" and remove the class "active"
      tablinks = document.getElementsByClassName("tablinks");
      for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
      }

      // Show the current tab, and add an "active" class to the button that opened the tab
      document.getElementById(action).style.display = "block";
      evt.currentTarget.className += " active";      
  }

  function activate(tab){
    var counter = 0;
    $('.tablinks').each(function(){
        if(counter == tab){
          $(this).addClass('active');
        }
        counter++;
      });
  }

  $(function(){ 
      NavTab(event,'preview');
      activate(0);
      
  });


</script>
</script>
</html>