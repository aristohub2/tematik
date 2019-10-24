<?php 

class mf_index extends CI_Model 
{ 
	public function __construct() 
	{ 
		$this->load->database();
	} 

	public function get_banner(){

		$query = $this->db->query("SELECT * FROM tmtk_banner LIMIT 1");

		foreach ($query->result_array() as $key) {
			return $key["BannerPath"];
		}
	}
}
?>