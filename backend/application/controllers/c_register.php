<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class c_register extends CI_Controller {

	public function __construct() 
	{ 
		parent::__construct(); 
		$this->load->model(array('m_register'));
		//ini buat upload

	} 
	 
	public function index()
	{
		$data['js'] = $this->load->view('backend/src/include/js.php',NULL,TRUE);
		$data['css'] = $this->load->view('backend/src/include/css.php',NULL,TRUE);
		$data['error'] = 3;
		
		if(isset($_POST['username']) && isset($_POST['password']) && isset($_POST['c_password']) ){

			// $is_exist = 0;

			if($_POST['password'] == $_POST['c_password']){

				$is_exist = $this->m_register->create_acc();

				if($is_exist == 0){
					$data['error'] = 0;
				}else{
					$data['error'] = 1;
				}
			}		
			else{
				$data['error'] = 2;
			}
		}

		// var_dump($data['error']);

		$this->load->view('backend/src/v_register',$data);
	}
}