<?php 

class Table extends CI_Controller{

    public $viewFolder="";

    public function __construct()
    {
        $this->viewFolder = "message_v";

        $this->load->model("table_model");
        }

        public function Sehir(){

            $viewData = new stdClass();       

            $all_city = $this->table_model->get_all_city($where = array());
    
            return $this->db->get($this->city_table)->result();

        }


        public function Mesaj(){

            $viewData = new stdClass();
        
            $mesaj = $this->table_model->get_mesaj(
                array()
            );

            /** view'e gönderilecek değişkenlerin set edilmesi... */
            $viewData->viewFolder = $this->viewFolder;
            $viewData->subViewFolder = "list";
            $viewData->mesaj=$mesaj;

        }
    }