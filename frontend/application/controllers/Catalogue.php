<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Catalogue extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('mf_catalogue');
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

		$data['banner'] = $this->mf_catalogue->get_banners();
		$data['f_bracelet'] = $this->mf_bracelets->get_featured_products();
		$data['f_earring'] = $this->mf_earrings->get_featured_products();
		$data['f_pendant'] = $this->mf_pendants->get_featured_products();
		$data['f_ring'] = $this->mf_rings->get_featured_products();
		
		$this->load->view('catalogue.php',$data);
	}

	public function carousel()
	{
		$id = $_GET['p'];

		if($id==1){
			header('Location: '.base_url("index.php/Products_bracelets").'');
		}
		else if($id==2){
			header('Location: '.base_url("index.php/Products_earrings").'');
		}
		else if($id==3){
			header('Location: '.base_url("index.php/Products_pendants").'');
		}
		else {
			header('Location: '.base_url("index.php/Products_rings").'');
		}
		
		$this->load->view('catalogue.php',$data);
	}
}
