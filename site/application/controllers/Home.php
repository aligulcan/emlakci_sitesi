<?php

class Home extends CI_Controller {

    public $viewFolder = "";

	public function __construct()
	
	{
        parent::__construct();

        $this->viewFolder ="homepage";
        $this->load->model("message_model");
        $this->viewFolder="product_v";

    }
    public function index(){

        $viewData = new stdClass();
        $viewData->viewFolder ="home_v";
          
        $this->load->model("home_model");
        $this->load->model("message_model");
      //  $this->load->view("home_v/content");

        $viewData->products = $this->home_model->get_all(
            array(
                "isActive" => 1
            ),"rank ASC"
        );


        $this->load->view($viewData->viewFolder, $viewData);
    
    }
    public function product_list(){

        $viewData = new stdClass();
        $viewData->viewFolder ="product_list_v";
        
        $this->load->model("product_model");

      //Sıralama Başlangıç
        $elma = "ASC";
        $armut ="createdAt";


        $siralama = $this->input->get('price');

        if($siralama){

            switch ($siralama) {
                case 'hightolow':    
                    $elma = "DESC";
                    $armut = "price";
                    break;

                case 'lowtohigh':   
                    $elma = "ASC";
                    $armut = "price";
                    break;
                case 'default':   
                    $elma = "ASC";
                    $armut = "createdAt";
                    break;

                default:
                break;
                }
                  
        }

        $city = $this->input->post("select-city");

        if ($city == "") {
            $viewData->products = $this->product_model->get_all(
                array(
                    "isActive" => 1
                ),$armut." ".$elma 
            );
        }
        else {
            $viewData->products = $this->product_model->get_all(
                array(
                    "isActive" => 1,
                    "city_id"  => $city
                ),$armut." ".$elma
            );
            }

        // Sıralama Bitiş
		
        //Şehirler Başlangıç

        $viewData->citys = $this->product_model->get_all_city(array());

        //Şehirler Bitiş


        $this->load->view($viewData->viewFolder, $viewData);

    }
   

    public function product_detail($url = ""){

        $viewData = new stdClass();
        $viewData->viewFolder ="product_v";

        $this->load->model("product_model");
        $this->load->model("product_image_model");
        $viewData->product = $this->product_model->get(
            array(
                "isActive" => 1,
                "url" => $url
            )
        );

        $viewData->product_images = $this->product_image_model->get_all(
            array(
                "isActive" => 1,
                "advertisement_id" =>$viewData->product->id,
            ), "rank ASC"
        );

        $viewData->other_products = $this->product_model->get_all(
            array(
                "isActive" => 1,
                "id !=" => $viewData->product->id,
            ),"rand() ASC",array("start" => 0 , "count" =>3)
        );





        
        $this->load->view($viewData->viewFolder, $viewData);

    }

    public function mesaj_gonder(){

        $viewData = new stdClass();
        $viewData->viewFolder ="product_v";
        $this->load->model("message_model");
     
        $insert = $this->message_model->message_add(
            array(
                'full_name' =>  $this->input->post("full_name"),
                'tel' => $this->input->post("tel"),
                'message' => $this->input->post("message"),
                'advertisement_id' =>$this->input->post("advertisement"),
                'read_status' =>0,
                "createdAt"     => date("Y-m-d H:i:s")
            )
            );

        /** View'e gönderilecek Değişkenlerin Set Edilmesi.. */
        $viewData->subViewFolder = "product_v";
        $this->load->view($viewData->viewFolder, $viewData);
        redirect('urun-listesi');

    }


    
    public function contact(){

        $viewData = new stdClass();
        $viewData->viewFolder ="contact_v";
          
        $this->load->model("contact_model");

        $viewData->products = $this->contact_model->get_all(
            array(
                "isActive" => 1
            ),"rank ASC"
        );


        $this->load->view($viewData->viewFolder, $viewData);

    }
    public function about(){

        $viewData = new stdClass();
        $viewData->viewFolder ="about_v";
          
        $this->load->model("about_model");

        $viewData->products = $this->about_model->get_all(
            array(
                "isActive" => 1
            )
        );


        $this->load->view($viewData->viewFolder, $viewData);

    }
    public function home(){

        $viewData = new stdClass();
        $viewData->viewFolder ="blank_v";
          
        $this->load->model("home_model");

        $viewData->products = $this->home_model->get_all(
            array(
                "isActive" => 1
            )
        );


        $this->load->view($viewData->viewFolder, $viewData);

    }



}