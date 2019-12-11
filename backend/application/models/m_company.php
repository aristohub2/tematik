<?php 

class m_company extends CI_Model 
{ 
	public function __construct() 
	{ 
		$this->load->database();
	}

	function load_about(){

		$query = $this->db->query("SELECT * FROM tmtk_company WHERE id_number = 0")->result_array();

		return $query[0]['description'];
	}

	function load_list(){
		$sql = "SELECT * from tmtk_company WHERE id_number > 0 and sStatusDelete is null ORDER BY 1";
		$result= $this->db->query($sql);
		$sReturn=null;
		$counter = 1;
		if($result->num_rows()>0){
			foreach ($result->result_array() as $row)
			{
			        $sReturn.='
			        <tr>
			        	<th scope="row">'.$counter.'</th>
                      	<th scope="row">'.date ( "d-m-Y" , strtotime ( $row['year'] )).'</th>
                      	<td>'.$row['description'].'</td>
                      	<td class="mid"><button class="btn btn-primary" type="button" onclick="edit('.$row['id_number'].',\''.$row['year'].'\',\''.$row['description'].'\')"><span><i class="fa fa-pen" aria-hidden="true"></i> Edit</span></button>
                      	<button class="btn btn-danger" type="button" data-toggle="modal" data-target="#editmodal" onclick="show_modal('.$row['id_number'].')"><span><i class="fa fa-trash" aria-hidden="true"></i> Delete</span></button></td>  
                    </tr>';
                    $counter++;
			}
		}
		// var_dump($sReturn);
		return $sReturn;
		
	}
	function gf_transact_timeline() 
	{ 
		// var_dump($_POST);

		$hideMode = $this->input->post('hideMode', TRUE);
		$year_tl = $this->input->post('year_tl', TRUE);
		$desc_abt = $this->input->post('desc_tl', TRUE);
		$id_tl = $this->input->post('id_tl', TRUE);


		//query product
		$sql = "call sp_tmtk_timeline('".$hideMode."','".$id_tl."','".$year_tl."','".$desc_abt."');";

		$this->db->query($sql);
		

		return $sReturn; 
	}



	function gf_transact_about() 
	{ 
		$hideMode = $this->input->post('hideMode', TRUE);

		$id_abt = 0;
		$desc_abt =  $this->input->post('desc_abt', TRUE);

		// $attribute_id = $this->input->post('attributeId', TRUE); 
		// $attribute_name = $this->input->post('attributeName', TRUE); 
		// $attribute_description = $this->input->post('attributeDescription', TRUE);
		// $upload_id = uniqid();
		// $upload_id = $data['upload_data']['raw_name'];
		// var_dump($data);



		//query product
		$sql = "call sp_tmtk_about('".$hideMode."','null','null','".$desc_abt."');";

		$this->db->query($sql);
		

		return $sReturn; 
	}

	function delete(){
		$id = $this->input->post('id_data', TRUE);
		$sql = "call sp_tmtk_timeline('D','".$id."','null','null');";
		$this->db->query($sql);
		return null;
	}
}
?>