<?php 

class mf_promo extends CI_Model 
{ 
	public function __construct() 
	{ 
		$this->load->database();
	} 

	public function get_banner($id){

		$id += 10;

		$query = "SELECT * FROM tmtk_banner WHERE IdBanner LIKE '".$id."'";

		$query_res = $this->db->query($query);

		return $query_res->result_array();
	}
}
?>
