<?php 
class Message_model extends CI_Model{

    public $tableName = "messages";
    public $tableName2 = "advertisement";
        public function __construct()
    {
        parent::__construct();

    }

    public function get($where = array()){
        return $this->db->where($where)->get($this->tableName)->row();
    }


    public function get_all($where = array())
    {
    
    // return $this->db->where($where)->order_by($order)->get($this->tableName)->result();

    // return ($this->db->where($where)->order_by($order)->join("advertisement", "messages.advertisement_id=advertisement.id", "left")->get($this->tableName)->result());
    return ($this->db->where($where)->join("advertisement", "messages.advertisement_id=advertisement.id", "left")->get($this->tableName)->result());
            

    }
        

}
?>