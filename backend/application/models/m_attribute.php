<?php 

class m_attribute extends CI_Model 
{ 
	public function __construct() 
	{ 
		$this->load->database();
	} 
	function load_list(){
		$sql = "SELECT * from tmtk_attribute where sStatusDelete is null";
		$result= $this->db->query($sql);
		$sReturn=null;
		if($result->num_rows()>0){
			foreach ($result->result_array() as $row)
			{
			        $sReturn.='
			        <tr>
                      <th scope="row">'.$row['IdAttribute'].'</th>
                      <td>'.$row['AttributeName'].'</td>
                    </tr>';
			}
		}
		// var_dump($sReturn);
		return $sReturn;
		
	}
	function gf_transact() 
	{ 
		// var_dump($_POST);
		// var_dump($data);
		

		$hideMode = $this->input->post('hideMode', TRUE);


		$attribute_id = $this->input->post('attributeId', TRUE); 
		$attribute_name = $this->input->post('attributeName', TRUE); 
		// $attribute_description = $this->input->post('attributeDescription', TRUE);
		// $upload_id = uniqid();
		// $upload_id = $data['upload_data']['raw_name'];
		// var_dump($data);


		if(trim($hideMode) !== "I") 
			$UUID = trim($banner_id); 



		//query product
		$sql = "call sp_tmtk_attribute('".$hideMode."','".$attribute_id."','".$attribute_name."');";

		$this->db->query($sql);
		

		return $sReturn; 
	}

	function get_tag_list(){
		$query = $this->db->query("SELECT * FROM `tmtk_attribute`");
		return $query->result_array();
	}

	// function gf_transact_uploads($data,$upload_id){
	// 	$sReturn = null;
	// 	$hideMode = $this->input->post('hideMode', TRUE);
	// 	$sql = "call sp_tmtk_product_uploads('".$hideMode."','".$upload_id."','null','"."uploads/attributes/".$data['upload_data']['file_name']."');";
	// 	$this->db->query($sql);
	// 	return $sReturn; 
	// }
}
?>