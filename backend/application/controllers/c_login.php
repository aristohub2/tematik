<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class c_login extends CI_Controller {

	public function __construct() 
	{ 
		parent::__construct(); 
		$this->load->model(array('m_login'));
		//ini buat upload
		$this->load->helper(array('form', 'url'));
		$this->load->library('session');
	} 
	 
	public function index()
	{
		$data['js'] = $this->load->view('backend/src/include/js.php',NULL,TRUE);
		$data['css'] = $this->load->view('backend/src/include/css.php',NULL,TRUE);
		$data['error'] = null;
		$data['error'] = $this->m_login->gf_check_login();
		// $_SESSION['login_status']=1;
		// var_dump($_SESSION['login_status']);
		// var_dump($this->session->userdata('login_status'));
		
		$this->load->view('backend/src/v_login',$data);
	}

	// function check(){
	// 	$data['js'] = $this->load->view('backend/src/include/js.php',NULL,TRUE);
	// 	$data['css'] = $this->load->view('backend/src/include/css.php',NULL,TRUE);
	// 	$data['error'] = $this->m_login->gf_check_login();
	// 	// if(){
	// 	// 	$this->load->view('backend/src/v_login',$data);
	// 	// }
	// 	// else{

	// 	// }
	// 	$this->load->view('backend/src/v_login',$data);
	// }


}