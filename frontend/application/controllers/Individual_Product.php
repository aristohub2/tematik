<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Individual_Product extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('mf_individual_product');
	}

	public function index()
	{
		$data['nav'] = $this->load->view('include/nav.php',NULL,TRUE);
		$data['js'] = $this->load->view('include/js.php',NULL,TRUE);
		$data['css'] = $this->load->view('include/css.php',NULL,TRUE);
		$data['footer'] = $this->load->view('include/footer.php',NULL,TRUE);

		$id=$_GET['p'];
		$s =$_GET['s'];

		$recommendation = $this->mf_individual_product->get_recommendation($id,$s);
		$query = $this->mf_individual_product->get_product_info($id,$s);

		$counter = 0;

		// $data['rcm_id'][0] = nul;
		// $data['rcm_path'][0] = null;
		// $data['rcm_ctg'][0] = null;
		// $data['rcm_name'][0] = null;

		foreach ($recommendation as $key => $value) {

			if($counter<3){
				// var_dump($value);
				if(count($value) == 1){
					if($counter == 1){
						//fornow
						// $data['rcm_id'][0] = $value[0]['IdProduct'];
						// $data['rcm_path'][0] = $value[0]['ProductPath'];
						// $data['rcm_ctg'][0] = $value[0]['category'];
						// $data['rcm_name'][0] = $value[0]['Name'];
						// $data['rcm_id'][1] = $value[0]['IdProduct'];
						// $data['rcm_path'][1] = $value[0]['ProductPath'];
						// $data['rcm_ctg'][1] = $value[0]['category'];
						// $data['rcm_name'][1] = $value[0]['Name'];
						// $data['rcm_id'][2] = $value[0]['IdProduct'];
						// $data['rcm_path'][2] = $value[0]['ProductPath'];
						// $data['rcm_ctg'][2] = $value[0]['category'];
						// $data['rcm_name'][2] = $value[0]['Name'];
					}
					$data['rcm_id'][$counter] = $value[0]['IdProduct'];
					$data['rcm_path'][$counter] = $value[0]['ProductPath'];
					$data['rcm_ctg'][$counter] = $value[0]['category'];
					$data['rcm_name'][$counter] = $value[0]['Name'];
					
					$counter++;
				}				
			}			
			else{
				break;
			}
		}
		// echo "<pre>";
		// var_dump($data);
		// die();

		foreach ($query as $key) {
			$data['p_name'] = $key['Name'];
			$data['p_desc'] = $key['Description'];
			$data['cover'] = $this->mf_individual_product->get_images($key['UploadFk']);
			
			$data['p_photo'] = $this->mf_individual_product->get_images($key['UploadFk']);					
		}		

		$this->load->view('individual_product.php',$data);
	}
}
