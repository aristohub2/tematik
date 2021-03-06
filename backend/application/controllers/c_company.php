<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class c_company extends CI_Controller {

	public function __construct() 
	{ 
		parent::__construct(); 
		$this->load->model(array('m_company'));
		//ini buat upload
		if($_SESSION['status'] != 1 ){
			header('Location: '.base_url("index.php/c_login").'');
		}
	} 
	 
	public function index()
	{
		$data['js'] = $this->load->view('backend/src/include/js.php',NULL,TRUE);
		$data['css'] = $this->load->view('backend/src/include/css.php',NULL,TRUE);

		$data['about'] = $this->m_company->load_about();
		$data['list'] = $this->m_company->load_list();
		// var_dump($data['list']);
		$this->load->view('backend/src/v_company',$data);
	}




	public function about() 
	{ 
 		$this->m_company->gf_transact_about();

		header('Location: '.base_url('index.php/c_company').'');

	}

	public function timeline() 
	{ 
		
 		$this->m_company->gf_transact_timeline();

		header('Location: '.base_url('index.php/c_company').'');

	}
	function gf_delete(){
		 $this->m_company->delete();
	}
}
