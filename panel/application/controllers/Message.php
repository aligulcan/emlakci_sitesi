<?php 

class Message extends CI_Controller{

    public $viewFolder="";

    public function __construct()
    {

        parent::__construct();  //ortak olarak yüklenmesini istediğimiz bütün aksiyonları buradan alıyoruz.
        $this->load->model("message_model");
        $this->viewFolder="message_v";
        
        
        if(!get_active_user()){
		
            redirect(base_url("login"));
    
        }

    }
    public function index(){

        $viewData = new stdClass();
     
        $items = $this->message_model->get_all(
            array()
     );

   
        /** view'e gönderilecek değişkenlerin set edilmesi... */
        $viewData->viewFolder = $this->viewFolder;
        $viewData->subViewFolder = "list";
        $viewData->items=$items;    
        /** Tablodan verilerin getirilmesi */
  
        $this->load->view("$this->viewFolder/$viewData->subViewFolder/index", $viewData);
    }


}