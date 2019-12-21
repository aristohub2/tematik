<?php 

class m_ring extends CI_Model 
{ 
	public function __construct() 
	{ 
		$this->load->database();
	}

	function load_list(){
	$sql = "SELECT DISTINCT * FROM tmtk_ring a INNER JOIN tmtk_product_uploads b WHERE b.IdUpload=a.UploadFk AND a.sStatusDelete IS NULL AND b.sStatusDelete IS NULL GROUP BY 1";
	$result= $this->db->query($sql);
	$counter=1;
	$sReturn=null;


	// var_dump($sql);
	if($result->num_rows()>0){
		foreach ($result->result_array() as $row)
		{
			$query_tag = $this->db->query("SELECT DISTINCT AttributeName FROM tmtk_attribute a INNER JOIN tmtk_tag b ON IdAttribute_fk = IdAttribute WHERE b.IdProduct_fk = '".$row['IdProduct']."' AND b.ProductCategory = 4 AND a.sStatusDelete IS NULL AND b.sStatusDelete IS NULL");

			$tag_arr = '';
			if($query_tag->num_rows()>0){
				foreach ($query_tag->result_array() as $key) {
					$tag_arr .= '<div class="pills">';
					$tag_arr .= $key['AttributeName'];
					$tag_arr .= '</div>';
				}
			}


			// $tag_query = $this->db->query("SELECT ");

	        $sReturn.=' <tr>
       						<td class="mid">'.$counter.'</td>
                            <td class="mid">'.$row['IdProduct'].'</td>
                            <td class="mid">'.$row['Name'].'</td>
                            <td class="mid">'.$row['Description'].'</td>
                            <td class="mid">'.$row['dCreateOn'].'</td>
                            <td class="mid"><a href="'.base_url('../frontend/'.$row['ProductPath'].'').'" target="_blank"><img class="img-top" src="'.base_url('../frontend/'.$row['ProductPath'].'').'"  class=" height="20%" width="20%" ;"></a></td>
                            <input id="id'.$row['IdProduct'].'" type="hidden" value="'.$row['Description'].'">
                            <td class="mid">'.substr($tag_arr, 0,-1).'</td>
                            <td class="mid"><button class="btn btn-primary" type="button" onclick="edit('.$row['IdProduct'].',\''.$row['Name'].'\')"><span><i class="fa fa-pen" aria-hidden="true"></i> Edit</span></button></td>
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
		$sql = "call sp_tmtk_ring('D','".$id."','null','null','null');";
		$this->db->query($sql);
		return null;
	}

	function gf_transact() 
	{ 
		// var_dump($_POST);
		// var_dump($data);
		

		$hideMode = $this->input->post('hideMode', TRUE);
		$ring_id = $this->input->post('RingId', TRUE); 
		$ring_name = $this->input->post('RingName', TRUE); 
		$ring_description = $this->input->post('RingDescription', TRUE);

		$tags = $this->input->post('tag', TRUE); 
		$upload_id = uniqid();
		// $upload_id = $data['upload_data']['raw_name'];
		// var_dump($tags);
		$sql = null;

		$sReturn = $upload_id; 
		$UUID = null;

		if($hideMode=="U"){
			$sql = "SELECT UploadFk FROM tmtk_ring WHERE IdProduct = ".$ring_id."";
			$result= $this->db->query($sql);
			$id_fk=$result->result_array();
			$sql2 = "call sp_tmtk_product_uploads('D','".$id_fk['0']['UploadFk']."','null','null');";
			// var_dump($sql2);
			$this->db->query($sql2);
		}


		$idmax= "SELECT CASE WHEN COUNT(1) = 0 THEN 1 ELSE MAX(IdProduct) + 1 END as max FROM tmtk_ring";
		$idmax=$this->db->query($idmax)->result_array();
		// var_dump($idmax[0]['max']);

		$sql ="call sp_tmtk_tag('D','null','".$ring_id."','null','4');";
		$this->db->query($sql);

		//query product
		if($hideMode=="U"){
			$sql = "call sp_tmtk_ring('".$hideMode."','".$ring_id."','".$ring_name."','".addslashes($ring_description)."','".$upload_id."');";
			$this->db->query($sql);
			foreach ($tags as $key) {
				$sql = "call sp_tmtk_tag('I','null','".$ring_id."','".$key."','4');";
				// var_dump($key);
				$this->db->query($sql);
				// var_dump($sql);
			}

		}
		else{
			$sql = "call sp_tmtk_ring('".$hideMode."','".$idmax[0]['max']."','".$ring_name."','".addslashes($ring_description)."','".$upload_id."');";
			$this->db->query($sql);
				foreach ($tags as $key) {
					$sql = "call sp_tmtk_tag('I','null','".$idmax[0]['max']."','".$key."','4');";
					// var_dump($key);
					$this->db->query($sql);
					// var_dump($sql);
				}
		}
		
	    // var_dump($sql);	
				

		return $sReturn; 
	}

	function gf_transact_uploads($data,$upload_id){
		$sReturn = null;
		// $sql  = "call sp_tmtk_product_uploads('D','".$id_fk['0']['UploadFk']."','null','"."uploads/rings/".$data['upload_data']['file_name']."');";
		$sql  = "call sp_tmtk_product_uploads('I','".$upload_id."','null','"."uploads/rings/".$data['upload_data']['file_name']."');";
		
		// var_dump($sql);
		$this->db->query($sql);

		return $sReturn; 
	}
	function get_tag_list($load){
		// kalo load = 0 dia cuma load list, kalo 1 dia load sesuai database
		$id_data = $this->input->post('id_data', TRUE);;
		$sReturn=null;
		$load_tag = null;
		$hit=0;// biar dia kgk duplikat
		$query = $this->db->query("SELECT * FROM tmtk_attribute where sStatusDelete is null");
		$tag= $query->result_array();



		if($load){
			$load_tag= $this->db->query("SELECT IdAttribute_fk FROM `tmtk_tag` where IdProduct_fk = ".$id_data." and ProductCategory=4 and sStatusDelete is null");
			$load_tag = $load_tag->result_array();
			// var_dump("SELECT IdAttribute_fk FROM `tmtk_tag` where IdProduct_fk = ".$id_data."");
			// foreach($load_tag as $row)
			// { 
			// 	var_dump($row["IdAttribute_fk"]);
	  //       }


			foreach($tag as $row)
			{ 
				$selected = "";
				foreach($load_tag as $key)
				{ 
					if($row["IdAttribute"]==$key["IdAttribute_fk"]){
						$selected='selected';
						break;
					}
		        }
		        $sReturn.='<option value="'.$row["IdAttribute"].'" '.$selected.'>'.$row["AttributeName"].'</option>';
		        
	        }
	        echo $sReturn;
		}
		else{
			foreach($tag as $row)
			{ 
				$sReturn.='<option value="'.$row["IdAttribute"].'">'.$row["AttributeName"].'</option>';
	        }
	        return $sReturn;
		}

		
		// var_dump($sReturn);
		
        
	}
}
?>