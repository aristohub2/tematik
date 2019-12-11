
<?php $this->load->view("backend/src/include/Sidebar.php") ?>
<?php echo $css; ?>

    
        <!-- tiap page berbeda mainnya disini aja -->
        <!-- page-content  -->
        <main class="page-content pt-2">
            <div id="overlay" class="overlay"></div>
            <div class="container-fluid p-5">
                <div class="row">
                    <div class="form-group col-md-12">
                        <h2>Necklaces setting</h2>
                    </div>

                  
                </div>


                <hr>
                <!-- ini open div row -->


                <?php echo form_open_multipart('c_necklaces/gf_transact');?>
                    

                    <div class="form-group col-md-6">
                         <label>Necklaces Id</label>
                         <input allow-empty="false" type="text" placeholder="Id Necklaces" name="NecklacesId" id="NecklacesId" class="form-control" maxlength="50" value="Auto" readonly>
                    </div>


                    <div class="form-group col-md-6">
                        <label>Necklaces Name</label>
                        <input allow-empty="false" type="text" placeholder="Necklaces Title" name="NecklacesName" id="NecklacesName" class="form-control" maxlength="50" value="" >
                    </div>

                     <div class="form-group col-md-6">
                        <label>Necklaces Description</label>
                        <input allow-empty="false" type="text" placeholder="Necklaces Description" name="NecklacesDescription" id="NecklacesDescription" class="form-control" maxlength="50" value="" >
                    </div>

                    <div class="form-group col-md-6">
                     <input type="file" name="berkas[]" multiple  />
                    </div>

                    <input type="hidden" name="hideMode" id="hideMode" value="I" />

                    <div class="form-group col-md-6 text-right">
                     <input type="submit" class="btn btn-primary" value="upload" />
                    </div>
                    
                 
                </form>

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

</style>
</html>