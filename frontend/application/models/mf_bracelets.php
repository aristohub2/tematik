<?php 

class mf_earrings extends CI_Model 
{ 
	public function __construct() 
	{ 
		$this->load->database();
	} 

	public function get_products(){

		$query = "SELECT * FROM tmtk_earrings";

		$this->db->query($query);

		$arr = [];

		foreach ($query->result_array() as $key) {
			array_push($arr, $key['UploadFk']);
		}

		//ini harus di ambil lagi fotonya di product _upload


	}

	public function get_featured_products(){

		$query = "SELECT * FROM tmtk_earrings where";

		$this->db->query($query);

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