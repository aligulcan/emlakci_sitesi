<?php 
class Product_model extends CI_Model{

public $tableName = "advertisement";

    public function __construct()
{
    parent::__construct();

}
public function get($where = array()){
    return $this->db->where($where)->get($this->tableName)->row();  //Row dersek bize 1 kayıt getirir.  result hepsini getirir.
    // tek bir şart koşmak istersem where("id", $id) şeklinde de kullanabilirdim
}

/**tüm kayıtları getirecek olan metot.. */
public function get_all($where = array(), $order = "id ASC"){

return ($this->db->where($where)->order_by($order)->join("sehir", "sehir.sehir_id=advertisement.city_id", "left")->get($this->tableName)->result());

}

//insert kullanımı : nereye - neyi ? kaydediyim şeklinde olacak.
//
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