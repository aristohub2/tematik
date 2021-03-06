<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Offers extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('mf_offers');
			
	}

	public function index()
	{
		$data['nav'] = $this->load->view('include/nav.php',NULL,TRUE);
		$data['js'] = $this->load->view('include/js.php',NULL,TRUE);
		$data['css'] = $this->load->view('include/css.php',NULL,TRUE);
		$data['footer'] = $this->load->view('include/footer.php',NULL,TRUE);

		$data['banner'] = $this->mf_offers->get_banners();

		
		$this->load->view('offers.php',$data);
	}
}
