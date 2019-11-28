<?php 

class mf_individual_product extends CI_Model 
{ 
	public function __construct() 
	{ 
		$this->load->database();
	} 

	public function get_product_info(){

		$query = "SELECT * FROM tmtk_product_uploads WHERE IdUpload IN (SELECT UploadFK FROM tmtk_earrings )";

		$query_res = $this->db->query($query);

		return $query_res->result_array();

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