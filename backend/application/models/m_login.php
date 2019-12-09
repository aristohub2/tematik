<?php 

class m_login extends CI_Model 
{ 
	public function __construct() 
	{ 
		$this->load->database();
	}

	function gf_check_login(){
		$user=$this->input->post('username', TRUE);
		$password=md5($this->input->post('password', TRUE));

		$query = $this->db->query("SELECT * FROM tmtk_login WHERE user = '".$user."' AND password = '".$password."'");
		// var_dump($user . " " . $password);

		// $_SESSION['login_status']=1;
		// var_dump($_SESSION['login_status']);
		return $query;
	}

	
}
?>