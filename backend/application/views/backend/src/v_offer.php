<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Responsive sidebar template with sliding effect and dropdown menu based on bootstrap 3">
    <title>Offers - Backend </title>

    <?php echo $css; ?>
    <?php echo $js; ?>

</head>
<style type="text/css">

  .card-img{
    background: black;
  }

  .card-img-top {
    overflow:auto;
    object-fit: cover;
    height: 300px;
    width: 100%;
    border-top-left-radius: calc(.25rem - 1px);
    border-top-right-radius: calc(.25rem - 1px);
    transition: .5s ease;
  }

  .card-img-top:hover {
    opacity: 0.4;
  }

</style>
<body>

<?php $this->load->view("backend/src/include/Sidebar.php") ?>
        <!-- page-content  -->
        <main class="page-content pt-2">
            <div id="overlay" class="overlay"></div>
            <div class="container-fluid p-5">
                <div class="row">
                    <div class="form-group col-md-12">
                        <h2>Offers Page Banner setting</h2>
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
                  <div class="row" style="padding: 1em;">
                    <div class="col-sm-6">
                      <div class="card">
                        <div class="card-img">
                          <a href="<?php echo base_url('./../frontend/'.$img1[0]['BannerPath']); ?>" target="_blank">
                            <img src="<?php echo base_url('./../frontend/'.$img1[0]['BannerPath']); ?>" class="card-img-top" alt="...">
                          </a>
                        </div>                        
                        <div class="card-body">
                          <h5 class="card-title">Banner Title : <?php echo $img1[0]['BannerTitle'] ?></h5>
                          <p class="card-text">Banner Banner Description : <?php echo $img1[0]['BannerDescription'] ?></p>
                          <a href="#" class="btn btn-primary" onclick="change(11)">Edit This Banner</a>
                        </div>
                      </div>
                    </div>

                    <div class="col-sm-6">
                      <div class="card">
                        <div class="card-img">
                          <a href="<?php echo base_url('./../frontend/'.$img2[0]['BannerPath']); ?>" target="_blank">
                            <img src="<?php echo base_url('./../frontend/'.$img2[0]['BannerPath']); ?>" class="card-img-top" alt="...">
                          </a>
                        </div> 
                        <div class="card-body">
                          <h5 class="card-title">Banner Title : <?php echo $img2[0]['BannerTitle'] ?></h5>
                          <p class="card-text">Banner Banner Description : <?php echo $img2[0]['BannerDescription'] ?></p>
                          <a href="#" class="btn btn-primary" onclick="change(12)">Edit This Banner</a>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="row" style="padding: 1em;">
                    <div class="col-sm-6">
                      <div class="card">
                        <div class="card-img">
                          <a href="<?php echo base_url('./../frontend/'.$img3[0]['BannerPath']); ?>" target="_blank">
                            <img src="<?php echo base_url('./../frontend/'.$img3[0]['BannerPath']); ?>" class="card-img-top" alt="...">
                          </a>
                        </div> 
                        <div class="card-body">
                          <h5 class="card-title">Banner Title : <?php echo $img3[0]['BannerTitle'] ?></h5>
                          <p class="card-text">Banner Banner Description : <?php echo $img3[0]['BannerDescription'] ?></p>
                          <a href="#" class="btn btn-primary" onclick="change(13)">Edit This Banner</a>
                        </div>
                      </div>
                    </div>


                    <div class="col-sm-6">
                      <div class="card">
                        <div class="card-img">
                          <a href="<?php echo base_url('./../frontend/'.$img4[0]['BannerPath']); ?>" target="_blank">
                            <img src="<?php echo base_url('./../frontend/'.$img4[0]['BannerPath']); ?>" class="card-img-top" alt="...">
                          </a>
                        </div> 
                        <div class="card-body">
                          <h5 class="card-title">Banner Title : <?php echo $img4[0]['BannerTitle'] ?></h5>
                          <p class="card-text">Banner Banner Description : <?php echo $img4[0]['BannerDescription'] ?></p>
                          <a href="#" class="btn btn-primary" onclick="change(14)">Edit This Banner</a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <div id="edit" class="tabcontent">

                  <?php echo form_open_multipart('c_offer/gf_transact');?>                              

                    <div class="form-group col-md-6">
                         <label>Banner Id</label>
                         <input allow-empty="false" type="text" placeholder="Id Attribute" name="BannerId" id="BannerId" class="form-control" maxlength="50" value="Auto" readonly>
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
                     <input type="file" name="berkas" accept="image/png,image/jpeg,image/gif" />
                    </div>

                    <input type="hidden" name="hideMode" id="hideMode" value="U" />

                    <div class="form-group col-md-6 text-right">
                     <input id="submit" type="submit" class="btn btn-primary" value="upload" />
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

  function change(id){
    $("#BannerId").val(id);
    NavTab(event,'edit');
    activate(1);
    prevent_submit();
  }

  $(function(){ 
      NavTab(event,'preview');
      prevent_submit();
      activate(0);
      
  });

  function prevent_submit(){
    if($("#BannerId").val() == "Auto"){
      $('#submit').hide();
    }else{
      $('#submit').show();
    }
  }


</script>
</script>
</html>