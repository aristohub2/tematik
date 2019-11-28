<?php 

class m_about extends CI_Model 
{ 
	public function __construct() 
	{ 
		$this->load->database();
	}

	function gf_load_data($id){
		// return $id;
		$sql= "select * from tmtk_banner where IdBanner = ".$id."";
		$sReturn=$this->db->query($sql);
		// var_dump($sReturn);
		return $sReturn->result_array();
	}

	function gf_transact($data) 
	{ 
		// var_dump($data);
		// var_dump($_POST);
		$hideMode = $this->input->post('hideMode', TRUE);
		$banner_id = 2; 
		$banner_title = $this->input->post('BannerTitle', TRUE); 
		$banner_description = $this->input->post('BannerDescription', TRUE);
		$banner_path = "uploads/banner/".$data['upload_data']['file_name'];
		$sReturn = null; 
		$UUID = null;
		// var_dump($data);
		// var_dump($data['upload_data']);
		// var_dump($banner_path);
		// var_dump($banner_title);

		if(trim($hideMode) !== "I") 
			$UUID = trim($banner_id); 

		// if(in_array(trim($hideMode), array("I", "U"))) 
		// { 
		// 	// if(strtolower(trim($nama_object_perbandingan_baru)) !== strtolower(trim($nama_object_perbandingan_lama))) 
		// 	// { 
		// 	// 	$sRet = json_decode($this->m_core_apps->gf_check_double_data_in_table(array("sTableName" => "nama_table", "sFieldName" => "nama_field", "sContent" => "nilai_object_perbandingan")), TRUE); 
		// 	// 	if(intVal($sRet['status']) === 1) 
		// 	// 	{ 
		// 	// 		$sReturn = json_encode(array("status" => -1, "message" => trim($sRet['message']))); 
		// 	// 		return $sReturn; 
		// 	// 		exit(0); 
		// 	// 	} 
		// 	// } 
		// } 
		// if(in_array(trim($hideMode), array("D"))) 
		// { 
		// 	$sRet = json_decode($this->m_core_apps->gf_check_foreign_key_use(array("sDatabaseName" => "gmsdb", "sFieldName" => "nama_field", "sContent" => "nilai_object_perbandingan", "sValueLabel" => "label_object_warning_ke_client")), TRUE); 
		// 	if(intVal($sRet['status']) === 1) 
		// 	{ 
		// 		$sReturn = json_encode(array("status" => -1, "message" => trim($sRet['message']))); 
		// 		return $sReturn; 
		// 		exit(0); 
		// 	} 
		// } 

		$sql = "call sp_tmtk_banner('".$hideMode."','".$banner_id."','".$banner_title."','".$banner_description."','".$banner_path."')";
		$hasil=$this->db->query($sql);
		var_dump($sql);
		// $this->db->trans_begin(); 
		// $this->db->query($sql); 
		// if ($this->db->trans_status() === FALSE) 
		// { 
		// 	$this->db->trans_rollback(); 
		// 	$sReturn = json_encode(array("status" => -1, "message" => "Failed"));
		// } 
		// else 
		// { 
		// 	$this->db->trans_commit(); 
		// 	$sReturn = json_encode(array("status" => 1, "message" => "Data has been Submitted.")); 
		// } 
		return $sReturn; 
	} 
}
?>