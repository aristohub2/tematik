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

      ::-webkit-file-upload-button {
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


<!-- Modal Buat Edit -->
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
                <button type="button" class="btn btn-danger" id="target" value="null" onclick="delete_data()">Delete</button>
              </div>
            </div>
          </div>
        </div>
    
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
                  <button class="tablinks" onclick="NavTab(event, 'product_list')">List</button>
                  <button class="tablinks" onclick="NavTab(event, 'change')">Changes/Add</button>
                </div>

                <div id="product_list" class="tabcontent">
                    <table id="table_id" class="table table-striped table-bordered" style="width:100%">
                        <thead>
                            <tr>
                                <th class="mid">No.</th>
                                <th class="mid">ID.</th>
                                <th class="mid">Name</th>
                                <th class="mid">Description</th>
                                <th class="mid">Created On</th>
                                <th class="mid">Photos</th>
                                <th class="mid">Tag</th>                                
                                <th class="mid">Edit</th>
                                <th class="mid">Delete</th>                                
                            </tr>
                        </thead>
                        <tbody>
                           <?php echo $list ?>
                        </tbody>
                    </table>           
                </div>

                <div id="change" class="tabcontent">
                    
                    <?php echo form_open_multipart('c_bracelet/gf_transact');?>                    

                        <div class="form-group col-md-6">
                             <label>Bracelet Id</label>
                             <input allow-empty="false" type="text" placeholder="Id Bracelet" name="BraceletId" id="BraceletId" class="form-control" maxlength="50" value="Auto" readonly required>
                        </div>

                        <div class="form-group col-md-6">
                            <label>Bracelet Name</label>
                            <input allow-empty="false" type="text" placeholder="Bracelet Name" name="BraceletName" id="BraceletName" class="form-control" maxlength="50" value="" required>
                        </div>

                         <div class="form-group col-md-6">
                            <label>Bracelet Description</label>
                            <textarea name="BraceletDescription" rows="10" cols="30" class="form-control" placeholder="Banner Description" required></textarea>
                        </div>

                        <div class="form-group col-md-6">
                            <label>Tag</label><br>                          
                            <select name="tag[]" id="tag" class="form-control select2" style="width: 100%" multiple="multiple" required>
                              <?php 
                                foreach($tag as $row)
                                  { 
                                    echo '<option>'.$row["AttributeName"].'</option>';
                                  }
                               ?>
                            </select>
                        </div>

                        <div class="form-group col-md-6">
                         <input type="file" name="berkas[]" accept="image/png,image/jpeg,image/gif" multiple required/>
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



</body>


<script>
    
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

  $(function(){ 
      NavTab(event, 'product_list');
      $("#tag").select2();
      $('#table_id').DataTable( {
        responsive: true
      } );
  });

    
  function show_modal(id){
      $("#showid").html("You are going to delete data with ID "+id);
      $("#target").val(id);
  }

  function delete_data(){
      id=$("#target").val();
      $.post("<?php echo base_url('index.php/c_bracelet/gf_delete'); ?>",
      {
        id_data:id
      },
      function(data,status){
        location.reload();
      });
  }

  function edit(id){
      NavTab(event, 'change');
      $("#BraceletId").val(id);
      $("#hideMode").val("U");
  }


</script>
</html>