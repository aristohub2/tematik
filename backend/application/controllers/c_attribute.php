<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class c_attribute extends CI_Controller {

	public function __construct() 
	{ 
		parent::__construct(); 
		$this->load->model(array('m_attribute'));
		//ini buat upload
		if($_SESSION['status'] != 1 ){
			header('Location: '.base_url("index.php/c_login").'');
		}
	} 
	 
	public function index()
	{
		$data['js'] = $this->load->view('backend/src/include/js.php',NULL,TRUE);
		$data['css'] = $this->load->view('backend/src/include/css.php',NULL,TRUE);
		$data['list'] = $this->m_attribute->load_list();
		$this->load->view('backend/src/v_attribute',$data);
	}
	public function gf_transact() 
	{ 
		// print_r($_FILES['berkas']);
		
		// $file_uploaded=array();
		// $file_uploaded =$_FILES["berkas"];
 	// 	$filesCount = count($_FILES['berkas']['name']);

 		// var_dump($file_uploaded);
 		$this->m_attribute->gf_transact();
 	// 	$upload_id=$this->m_attribute->gf_transact();
		// for($i = 0; $i < $filesCount; $i++){
  //           $_FILES['berkas']['name']     = $file_uploaded["name"][$i];
  //           $_FILES['berkas']['type']     = $file_uploaded["type"][$i];
  //           $_FILES['berkas']['tmp_name'] = $file_uploaded["tmp_name"][$i];
  //           $_FILES['berkas']['error']     = $file_uploaded["error"][$i];
  //           $_FILES['berkas']['size']     = $file_uploaded["size"][$i];
  //           // var_dump( $_FILES);
  //           // File upload configuration
  //           $config['upload_path']          = '../frontend/uploads/attribute/';
		// 	$config['allowed_types']        = 'gif|jpg|png';
		// 	$config['max_size']             = 10000;
		// 	$config['max_width']            = 100000;
		// 	$config['max_height']           = 100000;
	 // 		$config['encrypt_name'] 		= TRUE;
            
  //           // Load and initialize upload library
  //           $this->load->library('upload', $config);
  //           $this->upload->initialize($config);


  //           if ( ! $this->upload->do_upload('berkas')){
		// 		$error = array('error' => $this->upload->display_errors());
		// 	// var_dump($error);
		// 	}else{
		// 		$data = array('upload_data' => $this->upload->data());
		// 		// var_dump($data);
		// 		$this->m_attribute->gf_transact_uploads($data,$upload_id);
		// 	}


			
		// 	// // $this->load->view('backend/src/index',$data);
		// 	// // header('Location: '.base_url('index.php/c_attribute').'');
         
  //       }

		// $this->load->view('backend/src/index',$data);
		header('Location: '.base_url('index.php/c_attribute').'');

	}
}
