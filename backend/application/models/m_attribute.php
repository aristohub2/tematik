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
                  	<td class="mid"><button class="btn btn-primary" type="button" onclick="edit(0,0,0)"><span><i class="fa fa-pen" aria-hidden="true"></i> Edit</span></button></td>
              		<td class="mid"><button class="btn btn-danger" type="button" data-toggle="modal" data-target="#editmodal" onclick="show_modal(0)"><span><i class="fa fa-trash" aria-hidden="true"></i> Delete</span></button></td>
                </tr>';
			}
		}

		return $sReturn;		
	}

	function gf_transact() 
	{ 
		$hideMode = $this->input->post('hideMode', TRUE);


		$attribute_id = $this->input->post('attributeId', TRUE); 
		$attribute_name = $this->input->post('attributeName', TRUE); 

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

}
?>