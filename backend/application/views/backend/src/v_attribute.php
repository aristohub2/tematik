
<?php $this->load->view("backend/src/include/Sidebar.php") ?>
<?php echo $css; ?>

    
        <!-- tiap page berbeda mainnya disini aja -->
        <!-- page-content  -->
        <main class="page-content pt-2">
            <div id="overlay" class="overlay"></div>
            <div class="container-fluid p-5">
                <div class="row">
                    <div class="form-group col-md-12">
                        <h2>attribute setting</h2>
                    </div>

                  
                </div>


                <hr>
                <!-- ini open div row -->

                <div class="tab">
                  <button class="tablinks" onclick="openCity(event, 'London')">View</button>
                  <button class="tablinks" onclick="openCity(event, 'Paris')">Edit</button>
                </div>

                <div id="London" class="tabcontent">
                    <table class="table table-borderless">
                      <thead>
                        <tr>
                          <th scope="col">ID</th>
                          <th scope="col">Attribute Name</th>
                        </tr>
                      </thead>
                      <tbody>
                        <?php echo $list?>
                       
                      </tbody>
                    </table>
                </div>

                <div id="Paris" class="tabcontent">
                    <?php echo form_open_multipart('c_attribute/gf_transact');?>
                    

                    <div class="form-group col-md-6">
                         <label>attribute Id</label>
                         <input allow-empty="false" type="text" placeholder="Id attribute" name="attributeId" id="attributeId" class="form-control" maxlength="50" value="Auto" readonly>
                    </div>


                    <div class="form-group col-md-6">
                        <label>attribute Name</label>
                        <input allow-empty="false" type="text" placeholder="attribute Name" name="attributeName" id="attributeName" class="form-control" maxlength="50" value="" >
                    </div>

                    


                    <input type="hidden" name="hideMode" id="hideMode" value="I" />

                    <div class="form-group col-md-6 text-right">
                     <input type="submit" class="btn btn-primary" />
                    </div>
                    
                 
                    </form>
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
</style>

</html>