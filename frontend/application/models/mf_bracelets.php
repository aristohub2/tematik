<?php 

class mf_bracelets extends CI_Model 
{ 
	public function __construct() 
	{ 
		$this->load->database();
	} 

	public function get_products(){

		$query = "SELECT * FROM tmtk_product_uploads INNER JOIN tmtk_bracelet ON tmtk_product_uploads.IdUpload=tmtk_bracelet.UploadFK WHERE IdUpload IN (SELECT UploadFK FROM tmtk_bracelet ) GROUP BY 1 ";
		// $query = "SELECT * FROM tmtk_bracelet WHERE"

		// var_dump($query);

		$query_res = $this->db->query($query);

		return $query_res->result_array();


	}

	public function get_banner(){

		$query = "SELECT * FROM tmtk_banner WHERE IdBanner LIKE '7'";

		$query_res = $this->db->query($query);

		foreach ($query_res->result_array() as $key) {
			return $key['BannerPath'];
		}
	}

	public function get_featured_products(){

		$query = "SELECT * FROM tmtk_bracelet";

		$output=$this->db->query($query);

		return $output;
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