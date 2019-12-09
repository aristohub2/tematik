<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class c_login extends CI_Controller {

	public function __construct() 
	{ 
		parent::__construct(); 
		$this->load->model(array('m_login'));
		//ini buat upload

	} 
	 
	public function index()
	{
		$data['js'] = $this->load->view('backend/src/include/js.php',NULL,TRUE);
		$data['css'] = $this->load->view('backend/src/include/css.php',NULL,TRUE);
		$data['error'] = null;
		
		if(isset($_POST['username']) && isset($_POST['password'])){
			$query = $this->m_login->gf_check_login();
			$login = $query->num_rows();

			$data['error'] = $login;

			if($login != 0){
				//session timeout bisa di cek di 'application/config/config.php' line 382

				$_SESSION['status']=1;
				foreach ($query->result_array() as $key) {
					$_SESSION['id']=$key['id_user'];
					$_SESSION['user']=$key['user'];		
				}
				header('Location: '.base_url("index.php").'');
			}
		}

		$this->load->view('backend/src/v_login',$data);
	}
}