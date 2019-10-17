<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class c_necklaces extends CI_Controller {

	public function __construct() 
	{ 
		parent::__construct(); 
		$this->load->model(array('m_necklaces'));
		//ini buat upload
		$this->load->helper(array('form', 'url'));
	} 
	 
	public function index()
	{
		$data['js'] = $this->load->view('backend/src/include/js.php',NULL,TRUE);
		$data['css'] = $this->load->view('backend/src/include/css.php',NULL,TRUE);

		$this->load->view('backend/src/v_necklaces',$data);
	}
	public function gf_transact() 
	{ 
		// print_r($_FILES['berkas']);
		
		$file_uploaded=array();
		$file_uploaded =$_FILES["berkas"];
 		$filesCount = count($_FILES['berkas']['name']);

 		// var_dump($file_uploaded);
 		$upload_id=$this->m_necklaces->gf_transact();
		for($i = 0; $i < $filesCount; $i++){
            $_FILES['berkas']['name']     = $file_uploaded["name"][$i];
            $_FILES['berkas']['type']     = $file_uploaded["type"][$i];
            $_FILES['berkas']['tmp_name'] = $file_uploaded["tmp_name"][$i];
            $_FILES['berkas']['error']     = $file_uploaded["error"][$i];
            $_FILES['berkas']['size']     = $file_uploaded["size"][$i];
            // var_dump( $_FILES);
            // File upload configuration
            $config['upload_path']          = '../frontend/uploads/necklaces/';
			$config['allowed_types']        = 'gif|jpg|png';
			$config['max_size']             = 10000;
			$config['max_width']            = 100000;
			$config['max_height']           = 100000;
	 		$config['encrypt_name'] 		= TRUE;
            
            // Load and initialize upload library
            $this->load->library('upload', $config);
            $this->upload->initialize($config);


            if ( ! $this->upload->do_upload('berkas')){
				$error = array('error' => $this->upload->display_errors());
			var_dump($error);
			}else{
				$data = array('upload_data' => $this->upload->data());
				var_dump($data);
				$this->m_necklaces->gf_transact_uploads($data,$upload_id);
			}


			
			// // $this->load->view('backend/src/index',$data);
			// // header('Location: '.base_url('index.php/c_bracelet').'');
         
        }

		// $this->load->view('backend/src/index',$data);
		header('Location: '.base_url('index.php/c_Necklaces').'');

	}
}
