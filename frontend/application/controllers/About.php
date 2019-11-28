<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class About extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('mf_about');
		$this->load->model('mf_bracelets');
		$this->load->model('mf_earrings');
		$this->load->model('mf_pendants');
		$this->load->model('mf_rings');
	}

	public function index()
	{
		$data['nav'] = $this->load->view('include/nav.php',NULL,TRUE);
		$data['js'] = $this->load->view('include/js.php',NULL,TRUE);
		$data['css'] = $this->load->view('include/css.php',NULL,TRUE);
		$data['footer'] = $this->load->view('include/footer.php',NULL,TRUE);
		$data['banner'] = $this->mf_about->get_banner();

		$data['f_bracelet'] = $this->mf_bracelets->get_featured_products();
		$data['f_earring'] = $this->mf_earrings->get_featured_products();
		$data['f_pendant'] = $this->mf_pendants->get_featured_products();
		$data['f_ring'] = $this->mf_rings->get_featured_products();

		$this->load->view('about.php',$data);
	}
}
