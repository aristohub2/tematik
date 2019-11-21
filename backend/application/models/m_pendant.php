<?php 

class m_pendant extends CI_Model 
{ 
	public function __construct() 
	{ 
		$this->load->database();
	} 
	function gf_transact() 
	{ 
		// var_dump($_POST);
		// var_dump($data);
		

		$hideMode = $this->input->post('hideMode', TRUE);


		$Earring_id = $this->input->post('pendantId', TRUE); 
		$Earring_name = $this->input->post('pendantName', TRUE); 
		$Earring_description = $this->input->post('pendantDescription', TRUE);
		$upload_id = uniqid();
		// $upload_id = $data['upload_data']['raw_name'];
		// var_dump($data);




		$sReturn = $upload_id; 
		$UUID = null;

		if(trim($hideMode) !== "I") 
			$UUID = trim($banner_id); 



		//query product
		$sql = "call sp_tmtk_pendant('".$hideMode."','".$Earring_id."','".$Earring_name."','".$Earring_description."','".$upload_id."');";

		$this->db->query($sql);
		

		return $sReturn; 
	}

	function gf_transact_uploads($data,$upload_id){
		$sReturn = null;
		$hideMode = $this->input->post('hideMode', TRUE);
		$sql = "call sp_tmtk_product_uploads('".$hideMode."','".$upload_id."','null','". "uploads/banner/".$data['upload_data']['file_name']."');";
		// var_dump($sql);
		$this->db->query($sql);
		return $sReturn; 
	}
}
?>