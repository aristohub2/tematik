<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Catalogue extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('mf_index');
	}

	public function index()
	{
		$data['nav'] = $this->load->view('include/nav.php',NULL,TRUE);
		$data['js'] = $this->load->view('include/js.php',NULL,TRUE);
		$data['css'] = $this->load->view('include/css.php',NULL,TRUE);
		$data['footer'] = $this->load->view('include/footer.php',NULL,TRUE);

		$data['banner1'] = $this->mf_index->get_banner();
		$data['banner2'] = $this->mf_index->get_banner();
		$data['banner3'] = $this->mf_index->get_banner();
		$data['banner4'] = $this->mf_index->get_banner();
		
		$data['pic_earring'] = $this->mf_index->get_banner();
		$data['pic_bracelet'] = $this->mf_index->get_banner();
		$data['pic_pendant'] = $this->mf_index->get_banner();
		$data['pic_ring'] = $this->mf_index->get_banner();
		
		$this->load->view('catalogue.php',$data);
	}
}
