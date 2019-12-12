<?php 

class mf_individual_product extends CI_Model 
{ 
	public function __construct() 
	{ 
		$this->load->database();
	} 

	public function get_product_info($id,$s){

		if($s==1){
			$query = "SELECT * FROM tmtk_bracelet WHERE IdProduct = '".$id."'";
		}
		else if($s==2){
			$query = "SELECT * FROM tmtk_earrings WHERE IdProduct = '".$id."'";
		}
		else if($s==3){
			$query = "SELECT * FROM tmtk_pendant WHERE IdProduct = '".$id."'";
		}
		else if($s==4){
			$query = "SELECT * FROM tmtk_ring WHERE IdProduct = '".$id."'";
		}
		

		$query_res = $this->db->query($query);

		return $query_res->result_array();

	}

	public function get_images($up_id){

		$query = "SELECT * FROM tmtk_product_uploads WHERE IdUpload = '".$up_id."'";

		$query_res = $this->db->query($query);

		return $query_res->result_array();

	}

	public function get_recommendation($id,$s){

		$query = $this->db->query("SELECT * FROM tmtk_tag WHERE IdProduct_fk = '2' AND ProductCategory ='1' AND sStatusDelete IS NULL");

		$ids = "('";
		foreach ($query->result_array() as $row) {
			$ids .= $row['IdAttribute_fk'];
			$ids .= "','";
		}
		$ids .= "')";

		$query_res = $this->db->query("SELECT * FROM tmtk_tag WHERE IdAttribute_fk IN ".$ids." AND sStatusDelete IS NULL GROUP BY 2,4 ORDER BY RAND()");

		$arr = [];
		foreach ($query_res->result_array() as $key) {
			if($key['ProductCategory'] == 1){
				$temp = $this->db->query("SELECT *,".$key['ProductCategory']." AS category FROM tmtk_product_uploads INNER JOIN tmtk_bracelet ON tmtk_product_uploads.IdUpload=tmtk_bracelet.UploadFK WHERE IdUpload IN (SELECT UploadFK FROM tmtk_bracelet WHERE IdProduct = '".$key['IdProduct_fk']."' AND sStatusDelete IS NULL ) GROUP BY 1")->result_array();
				array_push($arr, $temp);


			}else if($key['ProductCategory'] == 2){
				$temp = $this->db->query("SELECT *,".$key['ProductCategory']." AS category FROM tmtk_product_uploads INNER JOIN tmtk_earrings ON tmtk_product_uploads.IdUpload=tmtk_earrings.UploadFK WHERE IdUpload IN (SELECT UploadFK FROM tmtk_earrings WHERE IdProduct = '".$key['IdProduct_fk']."' AND sStatusDelete IS NULL ) GROUP BY 1")->result_array();
				array_push($arr, $temp);
			}
			else if($key['ProductCategory'] == 3){
				$temp = $this->db->query("SELECT *,".$key['ProductCategory']." AS category FROM tmtk_product_uploads INNER JOIN tmtk_pendant ON tmtk_product_uploads.IdUpload=tmtk_pendant.UploadFK WHERE IdUpload IN (SELECT UploadFK FROM tmtk_pendant WHERE IdProduct = '".$key['IdProduct_fk']."' AND sStatusDelete IS NULL ) GROUP BY 1")->result_array();
				array_push($arr, $temp);
			}
			else if($key['ProductCategory'] == 4){
				$temp = $this->db->query("SELECT *,".$key['ProductCategory']." AS category FROM tmtk_product_uploads INNER JOIN tmtk_ring ON tmtk_product_uploads.IdUpload=tmtk_ring.UploadFK WHERE IdUpload IN (SELECT UploadFK FROM tmtk_ring WHERE IdProduct = '".$key['IdProduct_fk']."' AND sStatusDelete IS NULL ) GROUP BY 1")->result_array();
				array_push($arr, $temp);
			}
		}
		//SELECT * FROM tmtk_product_uploads INNER JOIN tmtk_bracelet ON tmtk_product_uploads.IdUpload=tmtk_bracelet.UploadFK WHERE IdUpload IN (SELECT *,".$key['ProductCategory']." AS category FROM tmtk_ring WHERE IdProduct = '".$key['IdProduct_fk']."' AND sStatusDelete IS NULL ) GROUP BY 1 
		//SELECT * FROM tmtk_tag WHERE IdAttribute_fk = '5' AND sStatusDelete IS NULL GROUP BY 2,4
		// echo "<pre>";
		// var_dump($arr);
		return $arr;

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