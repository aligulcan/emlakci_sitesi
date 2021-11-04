<?php 
class Table_model extends CI_Model{

    public $ilanlar_tablo = "advertisement";
    public $sehir_tablo = "sehir";
    public $emlak_tur_tablo = "estatetype";
    public $ilce_tablo = "ilce";
    public $mesaj_tablo = "messages";

        public function __construct(){
        parent::__construct();

    }
    public function get_sehir($where = array()){

        return $this->db->get($this->sehir_tablo)->result();
   
    }

    public function get_ilan_sehir($where = array()){

        return $this->db->select('sehir.sehir_title')->from('sehir')->join('advertisement', 'advertisement.city_id = sehir.sehir_id')->get($this->city_table)->result();

        }


        public function get_ilan(){

        echo $this->db->get($this->ilanlar_tablo)->result();
        die();

        }

        public function get_mesaj(){

            return $this->db->get($this->mesaj_tablo)->result();

        }
 

}