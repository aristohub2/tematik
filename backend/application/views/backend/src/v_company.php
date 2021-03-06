<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Responsive sidebar template with sliding effect and dropdown menu based on bootstrap 3">
    <title>Company - Backend</title>

    <?php echo $css; ?>
    <?php echo $js; ?>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
                        <h2>Company setting</h2>
                    </div>

                  
                </div>


                <hr>
                <!-- ini open div row -->

                <div class="tab">
                  <button class="tablinks" onclick="NavTab(event, 'preview')">Preview</button>
                  <button class="tablinks" onclick="NavTab(event, 'about')">About</button>
                  <button class="tablinks" onclick="NavTab(event, 'timeline')">Timeline</button>
                  
                </div>

                <div id="preview" class="tabcontent">

                    <div>
                      <h1>About Us :</h1>
                      <hr>
                      <p style="text-indent: 70px; text-align: justify;"><?php echo $about ?></p>
                    </div>

                    <hr style="border: 1px solid black">
                    
                    <h1>Timeline :</h1>
                    <table class="table border-bottom">
                      <thead>
                        <tr>
                          <th >No.</th>
                          <th >Year</th>
                          <th >Description</th>
                          <th class="mid">Edit</th>
                          <th class="mid">Delete</th>                           
                        </tr>
                      </thead>
                      <tbody>
                        <?php echo $list ?>
                      </tbody>
                    </table>
                </div>

                <div id="about" class="tabcontent">

                    <?php echo form_open_multipart('c_company/about');?>                    

                      <div class="form-group col-md-6">
                           <label>Id</label>
                           <input allow-empty="false" type="text" placeholder="Id" name="id_abt" id="id_abt" class="form-control" maxlength="50" value="0" readonly>
                      </div>

                      <input allow-empty="false" type="hidden" placeholder="Year" name="year_abt" id="year_abt" class="form-control" maxlength="50" value="" >                      

                      <div class="form-group col-md-6">
                          <label> Description</label>
                          <textarea id="desc_abt" name="desc_abt" rows="10" cols="30" class="form-control" placeholder="Description" required><?php echo $about; ?></textarea>
                      </div>

                      <div class="form-group col-md-6 text-right">
                       <input type="submit" class="btn btn-primary" />
                      </div>

                      

                    </form>
                </div>

                <div id="timeline" class="tabcontent">
                  
                    <?php echo form_open_multipart('c_company/timeline');?>                    

                      <div class="form-group col-md-6">
                           <label>Id</label>
                           <input allow-empty="false" type="text" placeholder="Id" name="id_tl" id="id_tl" class="form-control" maxlength="50" value="Auto" readonly>                           
                      </div>

                      <div class="form-group col-md-6 text-right">
                       <button id="canceledit" type="button" class="btn btn-primary" onclick="flush()"> Cancel Edit </button>
                      </div>                      
                      <div class="form-group col-md-6">
                          <label>Year</label>

                          <input allow-empty="false" type="text"  placeholder="Year" name="year_tl" id="year_tl"  class="form-control" maxlength="50" value="" >
                      </div>

                      <div class="form-group col-md-6">
                          <label> Description</label>
                          <textarea id="desc_tl" name="desc_tl" rows="10" cols="30" class="form-control" placeholder="Description" required></textarea>
                      </div>

                      <input type="hidden" name="hideMode" id="hideMode" value="I" />

                      <div class="form-group col-md-6 text-right">
                       <input type="submit" class="btn btn-primary" />
                      </div>
                      
                    </form>
                </div>

            </div>
        </main>
        <!-- page-content" -->



    </div>
    <!-- page-wrapper -->



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
      $('#canceledit').hide();
      $( "#year_tl" ).datepicker({dateFormat: 'yy',  changeYear: true,  changeMonth: false})
 
      
  });

  function edit(id,year){
    NavTab(event, 'timeline');
    activate(2);
    $('#canceledit').show();
    // $('#id'+id_tl);
    $("#id_tl").val(id);
    $("#year_tl").val(year);
    $("#desc_tl").val($('#id'+id).val());
    
    $("#hideMode").val("U");
  }

  function flush(){
    $("#id_tl").val("Auto");
    $("#hideMode").val("I");
    $('#canceledit').hide();
  }

  function show_modal(id){
      $("#showid").html("You are going to delete data with ID "+id);
      $("#target").val(id);
  }

  function delete_data(){
      id=$("#target").val();
      $.post("<?php echo base_url('index.php/c_company/gf_delete'); ?>",
      {
        id_data:id
      },
      function(data,status){
        location.reload();
      });
  }


</script>
</style>

</html>