<?php 

class mf_welcome extends CI_Model 
{ 
	public function __construct() 
	{ 
		$this->load->database();
	} 

	public function get_banner(){

		$query = $this->db->query("SELECT * FROM tmtk_banner WHERE IdBanner = 1 LIMIT 1");

		foreach ($query->result_array() as $key) {
			return $key["BannerPath"];
		}
	}

	public function get_banner_vid(){

		$query = $this->db->query("SELECT * FROM tmtk_banner WHERE IdBanner = 0 LIMIT 1");

		foreach ($query->result_array() as $key) {
			return $key["BannerPath"];
		}
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