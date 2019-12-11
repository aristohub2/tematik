<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Responsive sidebar template with sliding effect and dropdown menu based on bootstrap 3">
    <title>Backend</title>

    <?php echo $css; ?>
    <?php echo $js; ?>

    <style type="text/css">
      ::-webkit-file-upload-button
      {
        background: #007bff;
        color: white;
        border: 1px solid #007bff;
        padding: 8px;
        border-radius: 5px;
      }

      ::-webkit-file-upload-button:hover {
        cursor: pointer;
        background: #005bdf;
      }


      /* Style the tab */
      .tab {
        overflow: hidden;
        border: 1px solid #ccc;
        background-color: #f1f1f1;
      }

      /* Style the buttons that are used to open the tab content */
      .tab button {
        background-color: inherit;
        float: left;
        border: none;
        outline: none;
        cursor: pointer;
        padding: 14px 16px;
        transition: 0.3s;
      }

      /* Change background color of buttons on hover */
      .tab button:hover {
        background-color: #ddd;
      }

      /* Create an active/current tablink class */
      .tab button.active {
        background-color: #ccc;
      }

      /* Style the tab content */
      .tabcontent {
        display: none;
        padding: 6px 12px;
        border: 1px solid #ccc;
        border-top: none;
      }

      .mid{
        text-align: center;
      }

    </style>    
</head>

<body>

<?php $this->load->view("backend/src/include/Sidebar.php") ?>
        <!-- page-content  -->
        <main class="page-content pt-2">
            <div id="overlay" class="overlay"></div>
            <div class="container-fluid p-5">
                <div class="row">
                    <div class="form-group col-md-12">
                        <h2>Home Page Banner setting</h2>
                    </div>


                </div>

                <div class="modal fade" id="editmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Delete This Data?</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body" id="showid">

                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                        <a href="<?php echo base_url('index.php/c_welcome/remove_vid') ?>"><button type="button" class="btn btn-danger">Remove</button></a>
                      </div>
                    </div>
                  </div>
                </div>






                <hr>
                <div class="tab">
                  <button class="tablinks" onclick="NavTab(event, 'preview')">View</button>
                  <button class="tablinks" onclick="NavTab(event, 'change_img')">Change Image</button>
                  <button class="tablinks" onclick="NavTab(event, 'change_vid')">Change Video</button>
                  
                </div>

                <!-- Tab content -->
                <div id="preview" class="tabcontent">
                  <div class="row">
                    <div class="col-md-5">
                        <h3>Current Image</h3>
                        <hr>
                        <img src="<?php echo base_url('./../frontend/'.$img[0]['BannerPath']); ?>" style="max-width: 100%">
                        <hr>
                        <p> Image Title : <?php echo $img[0]['BannerTitle'] ?> </p>
                        <p> Image Description : <?php echo $img[0]['BannerDescription'] ?> </p>
                    </div>

                    <div class="offset-md-1 col-md-5">
                        <h3>Current Video</h3>
                        <hr>
                        <video autoplay loop muted style="max-width: 100%;">
                          <source src="<?php echo base_url('./../frontend/'.$vid[0]['BannerPath']); ?>" type="video/mp4">
                        </video>
                        <hr>
                        <p> Video Title : <?php echo $vid[0]['BannerTitle'] ?> </p>
                        <p> Video Description : <?php echo $vid[0]['BannerDescription'] ?> </p>
                        <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#editmodal" onclick="show_modal()">Remove</button>
                    </div>
                  </div>                            
                </div>

                <div id="change_img" class="tabcontent">

                  <?php echo form_open_multipart('c_welcome/gf_transact');?>
                      

                      <div class="form-group col-md-6">
                           <label>Banner Id</label>
                           <input allow-empty="false" type="text" placeholder="Id Attribute" name="BannerId" id="BannerId" class="form-control" maxlength="50" value="1" readonly>
                      </div>

                      <div class="form-group col-md-6">
                          <label>Banner Title</label>
                          <input allow-empty="false" type="text" placeholder="Banner Title" name="BannerTitle" id="BannerTitle" class="form-control" maxlength="50" value="" >
                      </div>

                       <div class="form-group col-md-6">
                          <label>Banner Description</label>
                          <textarea name="BannerDescription" placeholder="Banner Description" rows="10" cols="30" class="form-control"></textarea>
                      </div>

                      <div class="form-group col-md-6">
                       <input type="file" name="berkas" accept="image/png,image/jpeg,image/gif" />
                      </div>

                      <input type="hidden" name="hideMode" id="hideMode" value="U" />

                      <div class="form-group col-md-6 text-right">
                       <input type="submit" class="btn btn-primary" value="upload" />
                      </div>
                      
                   
                  </form>

           
                </div>

                <div id="change_vid" class="tabcontent">

                  <?php echo form_open_multipart('c_welcome/gf_transact_vid');?>
                      
                      <div class="form-group col-md-6" style="color: red">
                           <h1>NOTE :</h1><label>To use image as a background, remove the video.</label>
                      </div>

                      <div class="form-group col-md-6">
                           <label>Banner Id</label>
                           <input allow-empty="false" type="text" placeholder="Id Attribute" name="BannerId" id="BannerId" class="form-control" maxlength="50" value="0" readonly>
                      </div>

                      <div class="form-group col-md-6">
                          <label>Banner Title</label>
                          <input allow-empty="false" type="text" placeholder="Banner Title" name="BannerTitle" id="BannerTitle" class="form-control" maxlength="50" value="" >
                      </div>

                       <div class="form-group col-md-6">
                          <label>Banner Description</label>
                          <textarea name="BannerDescription" placeholder="Banner Description" rows="10" cols="30" class="form-control"></textarea>
                      </div>

                      <div class="form-group col-md-6">
                       <input type="file" name="berkas" accept="video/mp4" />
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
  function show_modal(){
   $("#showid").html("Are you sure ?");
  }

  $(function(){ 
      NavTab(event,'preview');
      activate(0);
      
  });
</script>
</html>