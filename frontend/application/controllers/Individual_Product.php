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

		var_dump($s);

		$query = $this->mf_individual_product->get_product_info($id,$s);

		foreach ($query as $key) {
			$data['p_name'] = 
		}

		$this->load->view('individual_product.php',$data);
	}
}
