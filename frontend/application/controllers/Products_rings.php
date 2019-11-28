<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Products_rings extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('mf_rings');
	}

	public function index()
	{
		$data['nav'] = $this->load->view('include/nav.php',NULL,TRUE);
		$data['js'] = $this->load->view('include/js.php',NULL,TRUE);
		$data['css'] = $this->load->view('include/css.php',NULL,TRUE);
		$data['footer'] = $this->load->view('include/footer.php',NULL,TRUE);

		$data['products'] = $this->mf_rings->get_products();
		$data['banner'] = $this->mf_rings->get_banner();

		$this->load->view('products_rings.php',$data);
	}


}


