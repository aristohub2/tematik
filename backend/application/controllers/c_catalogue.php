<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class c_catalogue extends CI_Controller {

	public function __construct() 
	{ 
		parent::__construct(); 
		$this->load->model(array('m_catalogue'));
		//ini buat upload
		$this->load->helper(array('form', 'url'));
	} 
	 
	public function index()
	{
		$data['js'] = $this->load->view('backend/src/include/js.php',NULL,TRUE);
		$data['css'] = $this->load->view('backend/src/include/css.php',NULL,TRUE);
		$data['img1'] = $this->m_catalogue->gf_load_data(3);
		$data['img2'] = $this->m_catalogue->gf_load_data(4);
		$data['img3'] = $this->m_catalogue->gf_load_data(5);
		$data['img4'] = $this->m_catalogue->gf_load_data(6);
		// var_dump($data['img']);
		$this->load->view('backend/src/v_catalogue',$data);
	}
	public function gf_transact() 
	{ 

		$config['upload_path']          = '../frontend/uploads/banner/';
		$config['allowed_types']        = 'gif|jpg|png|mp4';
		$config['max_size']             = 10000;
		$config['max_width']            = 100000;
		$config['max_height']           = 100000;
 		$config['encrypt_name'] 		= TRUE;
		$this->load->library('upload', $config);
		if ( ! $this->upload->do_upload('berkas')){
			$error = array('error' => $this->upload->display_errors());
			var_dump($error);
		}else{
			$data = array('upload_data' => $this->upload->data());
			var_dump($data);
		}


		$this->m_catalogue->gf_transact($data);
		// $this->load->view('backend/src/index',$data);
		header('Location: '.base_url().'index.php/c_catalogue/');
	}
	// public function aksi_upload(){
	// 	$config['upload_path']          = './uploads/';
	// 	$config['allowed_types']        = 'gif|jpg|png';
	// 	$config['max_size']             = 10000;
	// 	$config['max_width']            = 100000;
	// 	$config['max_height']           = 100000;
 
	// 	$this->load->library('upload', $config);
 
	// 	if ( ! $this->upload->do_upload('berkas')){
	// 		$error = array('error' => $this->upload->display_errors());
	// 		var_dump($error);
	// 	}else{
	// 		$data = array('upload_data' => $this->upload->data());
	// 		var_dump($error);
	// 	}
	// }
}
