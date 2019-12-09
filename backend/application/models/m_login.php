<?php 

class m_login extends CI_Model 
{ 
	public function __construct() 
	{ 
		$this->load->database();
	}

	function gf_check_login(){
		$user=$this->input->post('inputEmail', TRUE);
		$password=$this->input->post('inputPassword', TRUE);
		// $_SESSION['login_status']=1;
		// var_dump($_SESSION['login_status']);
	}

	
}
?>