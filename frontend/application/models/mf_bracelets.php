<?php 

class mf_bracelet extends CI_Model 
{ 
	public function __construct() 
	{ 
		$this->load->database();
	} 

	public function get_products(){

		$query = "SELECT * FROM tmtk_bracelet";

		$this->db->query($query);

		$arr = [];

		foreach ($query->result_array() as $key) {
			array_push($arr, $key['UploadFk']);
		}

		//ini harus di ambil lagi fotonya di product _upload


	}

	public function get_featured_products(){

		$query = "SELECT * FROM tmtk_bracelet";

		$this->db->query($query);

		foreach ($query->result_array() as $key) {
			return $key["BannerPath"];
		}
	}
}
?>