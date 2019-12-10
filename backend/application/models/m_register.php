<?php 

class m_register extends CI_Model 
{ 
	public function __construct() 
	{ 
		$this->load->database();
	}

	function create_acc(){
		$user=$this->input->post('username', TRUE);
		$password=md5($this->input->post('password', TRUE));

		$is_exist = $this->db->query("SELECT * FROM tmtk_login WHERE user = '".$user."'")->num_rows();

		if($is_exist==0){
			$id = $this->db->query("SELECT CASE WHEN COUNT(1) = 0 THEN 1 ELSE MAX(id_user) + 1 END AS a FROM tmtk_login ")->result_array();
			$newid = $id[0]['a'];

			$query = $this->db->query("INSERT INTO `tmtk_login` (id_user,user,password) VALUES ('".$newid."','".$user."','".$password."')");
		}		

		return $is_exist;
	}

	
}
?>