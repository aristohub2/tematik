<?php 

class mf_about extends CI_Model 
{ 
	public function __construct() 
	{ 
		$this->load->database();
	} 

	public function get_banner(){

		$query = "SELECT * FROM tmtk_banner WHERE IdBanner LIKE '2'";

		$query_res = $this->db->query($query);

		foreach ($query_res->result_array() as $key) {
			return $key['BannerPath'];
		}
	}

	public function get_company_about(){

		$query = "SELECT * FROM tmtk_company WHERE id_number LIKE '0'";

		$query_res = $this->db->query($query);

		foreach ($query_res->result_array() as $key) {
			return $key['description'];
		}
	}

	public function get_company_timeline(){

		$query = "SELECT *, YEAR(`year`) as year FROM tmtk_company WHERE id_number NOT LIKE '0'";

		$query_res = $this->db->query($query);

		$sReturn=null;

		if($query_res->num_rows()>0){
			foreach ($query_res->result_array() as $row)
			{
		        $sReturn.='
		        <li class="timeline-event">
		          <label class="timeline-event-icon"></label>
		          <div class="timeline-event-copy">
		            <p class="timeline-event-thumbnail">'.$row['year'].'</p>
		            <p class="content" align="justify">'.$row['description'].'</p>
		          </div>
		        </li>';
			}
		}

		return $sReturn;
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