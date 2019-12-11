<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Promo extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('mf_promo');
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

		$arr = $this->mf_promo->get_banner($_GET['p']);

		foreach ($arr as $key) {
			$data['banner'] = $key['BannerPath'];
			$data['title'] = $key['BannerTitle'];
			$data['desc'] = $key['BannerDescription'];
				
		}

		$this->load->view('promo.php',$data);
	}
}
