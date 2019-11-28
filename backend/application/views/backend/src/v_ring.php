
<?php $this->load->view("backend/src/include/Sidebar.php") ?>
<?php echo $css; ?>

    
        <!-- tiap page berbeda mainnya disini aja -->
        <!-- page-content  -->
        <main class="page-content pt-2">
            <div id="overlay" class="overlay"></div>
            <div class="container-fluid p-5">
                <div class="row">
                    <div class="form-group col-md-12">
                        <h2>Ring setting</h2>
                    </div>

                  
                </div>


                <hr>
                <!-- ini open div row -->


                <?php echo form_open_multipart('c_ring/gf_transact');?>
                    

                    <div class="form-group col-md-6">
                         <label>Ring Id</label>
                         <input allow-empty="false" type="text" placeholder="Id ring" name="ringId" id="ringId" class="form-control" maxlength="50" value="Auto" readonly>
                    </div>


                    <div class="form-group col-md-6">
                        <label>Ring Name</label>
                        <input allow-empty="false" type="text" placeholder="Ring Name" name="ringName" id="ringName" class="form-control" maxlength="50" value="" >
                    </div>

                     <div class="form-group col-md-6">
                        <label>Ring Description</label>
                        <!-- <input allow-empty="false" type="text" placeholder="Ring Description" name="ringDescription" id="ringDescription" class="form-control" maxlength="50" value="" > -->
                        <textarea name="ringDescription" rows="10" cols="30" class="form-control">Banner Description</textarea>
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