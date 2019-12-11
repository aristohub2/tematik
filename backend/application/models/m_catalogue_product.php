<?php 

class m_catalogue_product extends CI_Model 
{ 
	public function __construct() 
	{ 
		$this->load->database();
	}

	function gf_load_data($id){
		$sql= "select * from tmtk_banner where IdBanner = ".$id."";
		$sReturn=$this->db->query($sql);
		return $sReturn->result_array();
	}

	function gf_transact($data) 
	{ 
		$hideMode = $this->input->post('hideMode', TRUE);
		$banner_id =  $this->input->post('BannerId', TRUE); 
		$banner_title = $this->input->post('BannerTitle', TRUE); 
		$banner_description = $this->input->post('BannerDescription', TRUE);
		$banner_path = "uploads/banner/".$data['upload_data']['file_name'];
		$sReturn = null; 
		$UUID = null;

		if(trim($hideMode) !== "I") 
			$UUID = trim($banner_id); 

		$sql = "call sp_tmtk_banner('".$hideMode."','".$banner_id."','".$banner_title."','".$banner_description."','".$banner_path."')";
		$hasil=$this->db->query($sql);
		var_dump($sql);
		
		return $sReturn; 
	} 
}
?>