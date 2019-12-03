
<?php $this->load->view("backend/src/include/Sidebar.php") ?>
<?php echo $css; ?>
<?php echo $js; ?>

    
        <!-- tiap page berbeda mainnya disini aja -->
        <!-- page-content  -->
        <main class="page-content pt-2">
            <div id="overlay" class="overlay"></div>
            <div class="container-fluid p-5">
                <div class="row">
                    <div class="form-group col-md-12">
                        <h2>Bracelet setting</h2>
                    </div>

                  
                </div>


                <hr>
                <!-- ini open div row -->

                <div class="tab">
                  <button class="tablinks" onclick="openCity(event, 'London')">List</button>
                  <button class="tablinks" onclick="openCity(event, 'Paris')">Add</button>
                </div>

                <div id="London" class="tabcontent">
                    <table id="table" class="table table-striped table-bordered" style="width:100%">
                        <thead>
                            <tr>
                                <th class="mid">No.</th>
                                <th class="mid">Name</th>
                                <th class="mid">Description</th>
                                <th class="mid">Created On</th>
                                <th class="mid">Photos</th>
                                <th class="mid">Edit</th>
                                <th class="mid">Delete</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            <!-- foreach -->
                            <tr>
                                <td class="mid">echo</td>
                                <td class="mid">echo</td>
                                <td class="mid">echo</td>
                                <td class="mid">echo</td>
                                <td class="mid">kosongin dulu</td>
                                <td class="mid"><button class="btn btn-primary" type="button"><span><i class="fa fa-pen" aria-hidden="true"></i> Edit</span></button></td>
                                <td class="mid"><button class="btn btn-danger" type="button"><span><i class="fa fa-trash" aria-hidden="true"></i> Delete</span></button></td>                             
                                
                            </tr>
                            <tr>
                                <td class="mid">echo</td>
                                <td class="mid">echo</td>
                                <td class="mid">echo</td>
                                <td class="mid">echo</td>
                                <td class="mid">kosongin dulu</td>
                                <td class="mid"><button class="btn btn-primary" type="button"><span><i class="fa fa-pen" aria-hidden="true"></i> Edit</span></button></td>
                                <td class="mid"><button class="btn btn-danger" type="button"><span><i class="fa fa-trash" aria-hidden="true"></i> Delete</span></button></td>                             
                                
                            </tr>
                        </tbody>
                    </table>

           
                </div>


                <div id="Paris" class="tabcontent">
                    
                    <?php echo form_open_multipart('c_bracelet/gf_transact');?>
                    

                        <div class="form-group col-md-6">
                             <label>Bracelet Id</label>
                             <input allow-empty="false" type="text" placeholder="Id Bracelet" name="BraceletId" id="BraceletId" class="form-control" maxlength="50" value="Auto" readonly>
                        </div>


                        <div class="form-group col-md-6">
                            <label>Bracelet Name</label>
                            <input allow-empty="false" type="text" placeholder="Bracelet Name" name="BraceletName" id="BraceletName" class="form-control" maxlength="50" value="" >
                        </div>

                         <div class="form-group col-md-6">
                            <label>Bracelet Description</label>
                            <textarea name="BraceletDescription" rows="10" cols="30" class="form-control">Banner Description</textarea>
                            <!-- <input allow-empty="false" type="text" placeholder="Bracelet Description" name="BraceletDescription" id="BraceletDescription" class="form-control" maxlength="50" value="" > -->
                        </div>
                          <!-- <textarea name="message" rows="10" cols="30">The cat was playing in the garden.</textarea> -->

                        <div class="form-group col-md-6">
                         <input type="file" name="berkas[]" multiple  />
                        </div>

                        <input type="hidden" name="hideMode" id="hideMode" value="I" />

                        <div class="form-group col-md-6 text-right">
                         <input type="submit" class="btn btn-primary" value="upload" />
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

<script type="text/javascript">
    
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

    $(document).ready(function(){
        openCity(event, 'London');

    });
</script>
</html>