
<?php $this->load->view("backend/src/include/Sidebar.php") ?>
<?php echo $css; ?>

    
        <!-- tiap page berbeda mainnya disini aja -->
        <!-- page-content  -->
        <main class="page-content pt-2">
            <div id="overlay" class="overlay"></div>
            <div class="container-fluid p-5">
                <div class="row">
                    <div class="form-group col-md-12">
                        <h2>Home Page Banner setting</h2>
                    </div>


                </div>


                <hr>
                <!-- ini open div row -->
                <div class="tab">
                  <button class="tablinks" onclick="openCity(event, 'London')">View</button>
                  <button class="tablinks" onclick="openCity(event, 'Paris')">Change</button>
                </div>

                <!-- Tab content -->
                <div id="London" class="tabcontent">

                  <div class="row">
                    <div class="col-sm-6">
                      <div class="card">
                        <img src="<?php echo base_url('./../frontend/'.$img1[0]['BannerPath']); ?>" class="card-img-top" alt="...">
                        <div class="card-body">
                          <h5 class="card-title">Banner Catalogue Title : <?php echo $img1[0]['BannerTitle'] ?></h5>
                          <p class="card-text">Banner Catalogue Description : <?php echo $img1[0]['BannerDescription'] ?></p>
                          <a href="#" class="btn btn-primary" onclick="change(7)">Edit This Banner</a>
                        </div>
                      </div>
                    </div>

                    <div class="col-sm-6">
                      <div class="card">
                        <img src="<?php echo base_url('./../frontend/'.$img2[0]['BannerPath']); ?>" class="card-img-top" alt="...">
                        <div class="card-body">
                          <h5 class="card-title">Banner Catalogue Title : <?php echo $img2[0]['BannerTitle'] ?></h5>
                          <p class="card-text">Banner Catalogue Description : <?php echo $img2[0]['BannerDescription'] ?></p>
                          <a href="#" class="btn btn-primary" onclick="change(8)">Edit This Banner</a>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="row">
                    <div class="col-sm-6">
                      <div class="card">
                        <img src="<?php echo base_url('./../frontend/'.$img3[0]['BannerPath']); ?>" class="card-img-top" alt="...">
                        <div class="card-body">
                          <h5 class="card-title">Banner Catalogue Title : <?php echo $img3[0]['BannerTitle'] ?></h5>
                          <p class="card-text">Banner Catalogue Description : <?php echo $img3[0]['BannerDescription'] ?></p>
                          <a href="#" class="btn btn-primary" onclick="change(9)">Edit This Banner</a>
                        </div>
                      </div>
                    </div>


                    <div class="col-sm-6">
                      <div class="card">
                        <img src="<?php echo base_url('./../frontend/'.$img4[0]['BannerPath']); ?>" class="card-img-top" alt="...">
                        <div class="card-body">
                          <h5 class="card-title">Banner Catalogue Title : <?php echo $img4[0]['BannerTitle'] ?></h5>
                          <p class="card-text">Banner Catalogue Description : <?php echo $img4[0]['BannerDescription'] ?></p>
                          <a href="#" class="btn btn-primary" onclick="change(10)">Edit This Banner</a>
                        </div>
                      </div>
                    </div>
                  </div>







                </div>

                <div id="Paris" class="tabcontent">

                            <?php echo form_open_multipart('c_catalogue_product/gf_transact');?>
                                

                                <div class="form-group col-md-6">
                                     <label>Banner Id</label>
                                     <input allow-empty="false" type="text" placeholder="Id Attribute" name="BannerId" id="BannerId" class="form-control" maxlength="50" value="Auto" readonly>
                                </div>

                                <div class="form-group col-md-6">
                                    <label>Banner Catalogue Title</label>
                                    <input allow-empty="false" type="text" placeholder="Banner Catalogue Title" name="BannerTitle" id="BannerTitle" class="form-control" maxlength="50" value="" >
                                </div>

                                 <div class="form-group col-md-6">
                                    <label>Banner Description</label>
                                    <!-- <input allow-empty="false" type="text" placeholder="Banner Description" name="BannerDescription" id="BannerDescription" class="form-control" maxlength="50" value="" > -->
                                    <textarea name="BannerDescription" rows="10" cols="30" class="form-control">Banner Description</textarea>
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

                <div id="Tokyo" class="tabcontent">
                  <h3>Tokyo</h3>
                  <p>Tokyo is the capital of Japan.</p>
                </div>



                <!-- ini close div row -->
                <!-- sampe sini -->

            </div>
        </main>
        <!-- page-content" -->



    </div>
    <!-- page-wrapper -->

    <?php echo $js?>


</body>
<style type="text/css">
    ::-webkit-file-upload-button {
  background: blue;
  color: white;
  border-radius: 25px;
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

</style>

<script type="text/javascript">

  function change(id){
    $("#BannerId").val(id);
  }

    function openCity(evt, cityName) {
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
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}
</script>
</html>