<?php 

class mf_offers extends CI_Model 
{ 
	public function __construct() 
	{ 
		$this->load->database();
	}

	public function get_banners(){

		$query = $this->db->query("SELECT * FROM tmtk_banner WHERE IdBanner IN ('11','12','13','14') ORDER BY IdBanner");
		
		return $query->result_array();
	}
}
?>

<!-- 
1: welcome 
2: about
3: banner catalogue [ 0 ]
4: banner catalogue [ 1 ]
5: banner catalogue [ 2 ]
6: banner catalogue [ 3 ]
7: Bracelets 
8: Earrings 
9: Pendant 
10: Rings 

-->