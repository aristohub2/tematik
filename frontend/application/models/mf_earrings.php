<?php 

class mf_earrings extends CI_Model 
{ 
	public function __construct() 
	{ 
		$this->load->database();
	} 

	public function get_products(){

		$query = "SELECT * FROM tmtk_product_uploads WHERE IdUpload IN (SELECT UploadFK FROM tmtk_earrings )";

		$query_res = $this->db->query($query);

		return $query_res->result_array();


	}

	public function get_banner(){

		$query = "SELECT * FROM tmtk_banner WHERE IdBanner LIKE '2'";

		$query_res = $this->db->query($query);

		foreach ($query_res->result_array() as $key) {
			return $key['BannerPath'];
		}
	}

	public function get_featured_products(){

		$query = "SELECT * FROM tmtk_earrings";

		$output=$this->db->query($query);

		return $output;
	}
}
?>