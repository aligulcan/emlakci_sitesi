<?php 
class message_model extends CI_Model{

public $tableName = "advertisement";
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


return ($this->db->where($where)->order_by($order)->join("sehir", "sehir.sehir_id=advertisement.city_id", "left")->get($this->tableName)->result());


}


public function message_add($data = array()){
    return $this->db->insert($this->message_table,$data);
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