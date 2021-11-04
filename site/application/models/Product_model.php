<?php 
class Product_model extends CI_Model{

public $tableName = "advertisement";
public $city_table = "sehir";
public $message_table = "messages";

    public function __construct()
{
    parent::__construct();

}
public function get($where = array()){
    return $this->db->where($where)->get($this->tableName)->row();  //Row dersek bize 1 kayıt getirir.  result hepsini getirir.
    // tek bir şart koşmak istersem where("id", $id) şeklinde de kullanabilirdim
}

/**tüm kayıtları getirecek olan metot.. */
public function get_all($where = array(), $order = "id ASC", $limit = array("count" => 0 , "start" => 0 )){

$this->db->where($where)->order_by($order);

if(!empty($limit))
$this->db->limit($limit["count"], $limit["start"]);




//return $this->db->get($this->tableName)->result();

return ($this->db->where($where)->order_by($order)->join("sehir", "sehir.sehir_id=advertisement.city_id", "left")->get($this->tableName)->result());


}

public function get_all_city($where = array()){

    return $this->db->get($this->city_table)->result();
    
    }


public function add($data = array()){
    return $this->db->insert($this->tableName,$data);
}
public function update($where = array(),$data = array()){

    return $this->db->where($where)->update($this->tableName, $data);
}
public function delete($where = array()){

    return $this->db->where($where)->delete($this->tableName);

}
}
?>