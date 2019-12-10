<?php 

class m_bracelet extends CI_Model 
{ 
	public function __construct() 
	{ 
		$this->load->database();
	}
	function load_list(){
	$sql = "SELECT DISTINCT * FROM tmtk_bracelet a INNER JOIN tmtk_product_uploads b WHERE b.IdUpload=a.UploadFk AND a.sStatusDelete IS NULL AND b.sStatusDelete IS NULL GROUP BY 1";
	$result= $this->db->query($sql);
	$counter=1;
	$sReturn=null;
	if($result->num_rows()>0){
		foreach ($result->result_array() as $row)
		{
			// $tag_query = $this->db->query("SELECT ");

	        $sReturn.=' <tr>
       						<td class="mid">'.$counter.'</td>
                            <td class="mid">'.$row['IdProduct'].'</td>
                            <td class="mid">'.$row['Name'].'</td>
                            <td class="mid">'.$row['Description'].'</td>
                            <td class="mid">'.$row['dCreateOn'].'</td>
                            <td class="mid"><img src="'.base_url('../frontend/'.$row['ProductPath'].'').'"  class=" height="20%" width="20%" ;"></td>
                            <td class="mid">'.$row['dCreateOn'].'</td>
                            <td class="mid"><button class="btn btn-primary" type="button" onclick="edit('.$row['IdProduct'].')"><span><i class="fa fa-pen" aria-hidden="true"></i> Edit</span></button></td>
                            <td class="mid"><button class="btn btn-danger" type="button" data-toggle="modal" data-target="#editmodal" onclick="show_modal('.$row['IdProduct'].')"><span><i class="fa fa-trash" aria-hidden="true"></i> Delete</span></button></td>                             
                        </tr>';
            $counter++;
		}
	}
	// var_dump($sReturn);
	return $sReturn;

	}
	function delete(){
		$id = $this->input->post('id_data', TRUE);
		$sql = "call sp_tmtk_bracelet('D','".$id."','null','null','null');";
		$this->db->query($sql);
		return null;
	}
	function gf_transact() 
	{ 
		// var_dump($_POST);
		// var_dump($data);
		

		$hideMode = $this->input->post('hideMode', TRUE);
		$bracelet_id = $this->input->post('BraceletId', TRUE); 
		$bracelet_name = $this->input->post('BraceletName', TRUE); 
		$bracelet_description = $this->input->post('BraceletDescription', TRUE);
		$upload_id = uniqid();
		// $upload_id = $data['upload_data']['raw_name'];
		// var_dump($data);


		$sReturn = $upload_id; 
		$UUID = null;

		if($hideMode=="U"){
			$sql = "SELECT UploadFk FROM tmtk_bracelet WHERE IdProduct = ".$bracelet_id."";
			$result= $this->db->query($sql);
			$id_fk=$result->result_array();
			$sql2 = "call sp_tmtk_product_uploads('D','".$id_fk['0']['UploadFk']."','null','null');";
			$this->db->query($sql2);
		}

		//query product
		$sql = "call sp_tmtk_bracelet('".$hideMode."','".$bracelet_id."','".$bracelet_name."','".$bracelet_description."','".$upload_id."');";

		$this->db->query($sql);		

		return $sReturn; 
	}

	function gf_transact_uploads($data,$upload_id){
		$sReturn = null;
		// $sql  = "call sp_tmtk_product_uploads('D','".$id_fk['0']['UploadFk']."','null','"."uploads/bracelets/".$data['upload_data']['file_name']."');";
		$sql  = "call sp_tmtk_product_uploads('I','".$upload_id."','null','"."uploads/bracelets/".$data['upload_data']['file_name']."');";
		
		// var_dump($sql);
		$this->db->query($sql);

		return $sReturn; 
	}
}
?>