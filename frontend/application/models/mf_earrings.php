<?php 

class mf_earrings extends CI_Model 
{ 
	public function __construct() 
	{ 
		$this->load->database();
	} 

	public function get_products(){

		$query = "SELECT * FROM tmtk_product_uploads INNER JOIN tmtk_earrings ON tmtk_product_uploads.IdUpload=tmtk_earrings.UploadFK WHERE IdUpload IN (SELECT UploadFK FROM tmtk_earrings ) GROUP BY 1 ";

		$query_res = $this->db->query($query);

		return $query_res->result_array();


	}

	public function get_banner(){

		$query = "SELECT * FROM tmtk_banner WHERE IdBanner LIKE '8'";

		$query_res = $this->db->query($query);

		foreach ($query_res->result_array() as $key) {
			return $key['BannerPath'];
		}
	}

	public function get_featured_products(){

		$query = "SELECT * FROM tmtk_product_uploads WHERE IdUpload IN (SELECT UploadFK FROM tmtk_earrings ) GROUP BY 1 LIMIT 1";

		$query_res = $this->db->query($query);

		foreach ($query_res->result_array() as $key) {
			return $key['ProductPath'];
		}

		// return $output;
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