<?php 

class Product extends CI_Controller{

    public $viewFolder="";

    public function __construct()
    {

        parent::__construct();  //ortak olarak yüklenmesini istediğimiz bütün aksiyonları buradan alıyoruz.
        $this->viewFolder="product_v";
        $this->load->model("product_model");
        $this->load->model("product_image_model");
 
        $this->load->model("table_model");

        if(!get_active_user()){
		
            redirect(base_url("login"));
    
        }

    }
    public function index(){

        $viewData = new stdClass();
     
        /** Tablodan verilerin getirilmesi */
        $items = $this->product_model->get_all(
            array(), "rank ASC"
        );

        /** view'e gönderilecek değişkenlerin set edilmesi... */
        $viewData->viewFolder = $this->viewFolder;
        $viewData->subViewFolder = "list";
        $viewData->items=$items;

        $this->load->view("$this->viewFolder/$viewData->subViewFolder/index", $viewData);
    }
    public function new_form(){ 

        $viewData = new stdCLass();

        $viewData->viewFolder = $this->viewFolder;
        $viewData->subViewFolder = "add";
        $viewData->cities = $this->table_model->get_sehir();

        
        $this->load->view("$viewData->viewFolder/$viewData->subViewFolder/index", $viewData);
     
    }
    public function save(){
        
        $this->load->library("form_validation");
        //kurallar yazılır
        $this->form_validation->set_rules("title","Başlık","required|trim");

        $this->form_validation->set_message(
            array(
                "required" =>"{field} alanı boş geçilemez !"
                )
            );
        //form validation çalıştırılır - TRUE - FALSE değeri döner
        $validate=$this->form_validation->run();
       
        if($validate){
             $insert = $this->product_model->add(
                array(
                    "url"=>convertToSeo($this->input->post("title")),
                    "title"=>$this->input->post("title"),
                    "description"=>$this->input->post("description"),
                    "city_id"=>$this->input->post("sehir_id"),
                    "address"=>$this->input->post("address"),
                    "price"=>$this->input->post("price"),
                    "area"=>$this->input->post("area"),
                    "numberOfRooms"=>$this->input->post("numberOfRooms"),
                    "isActive" =>1,
                    "createdAt"=>date("Y-m-d H:i:s")
                    
                    )
                );

                if($insert){
                    $alert = array(
                        "title" => "İşlem Başarılıdır",
                        "text" =>"Kayıt başarılı bir şekilde eklendi",
                        "type" => "success"
                    );
                    
                }else{
                    $alert = array(
                        "title" => "İşlem Başarısızdır",
                        "text" =>"Kayıt Eklenemedi",
                        "type" => "error"
                    );

                }
                //işlemin sonucunu session'a yazma işlemi
                $this->session->set_userdata("alert",$alert);

                redirect(base_url("product")); //yönlendirme -- session'un sonuna eklemeliyiz

        }else {
            $viewData = new stdCLass();

            $viewData->viewFolder = $this->viewFolder;
            $viewData->subViewFolder = "add";
            $viewData->form_error=true;
            $this->load->view("$viewData->viewFolder/$viewData->subViewFolder/index", $viewData);
        }
        //başarılı ise - kayıt işlemi başlar
        //başarısız ise - ekranda hata gösterilir
      
    }
    public function update_form($id){

        $viewData = new stdCLass();

        $item = $this->product_model->get(
            array(
                "id" => $id,
                "isActive" => 1
            )
        );        
   
        $viewData->cities = $this->table_model->get_sehir();
        
        $viewData->viewFolder = $this->viewFolder;
        $viewData->subViewFolder = "update";
        $viewData->item = $item;

        $this->load->view("$viewData->viewFolder/$viewData->subViewFolder/index", $viewData);


    }
    public function update($id){
        
        $this->load->library("form_validation");
        //kurallar yazılır
        $this->form_validation->set_rules("title","Başlık","required|trim");

        $this->form_validation->set_message(
            array(
                "required" =>"{field} alanı boş geçilemez !"
                )
            );
        //form validation çalıştırılır - TRUE - FALSE değeri döner
        $validate=$this->form_validation->run();
       
        if($validate){
             $update = $this->product_model->update(
                 array(
                     "id" => $id
                 ),
                array(
                    "url"=>convertToSeo($this->input->post("title")),
                    "title"=>$this->input->post("title"),
                    "description"=>$this->input->post("description"),
                    "city_id"=>$this->input->post("sehir_id"),
                    "address"=>$this->input->post("address"),
                    "price"=>$this->input->post("price"),
                    "area"=>$this->input->post("area"),
                    "numberOfRooms"=>$this->input->post("numberOfRooms"),
                    
                    )
                );
                //TODO ALERT SİSTEMİ EKLENECEK
                if($update){
                    redirect(base_url("product")); //yönlendirme
                }
        
                else{
                    redirect(base_url("product")); //yönlendirme
                }
        }else {
            $viewData = new stdCLass();

            $items = $this->product_model->get(
                array(
                    "id" => $id
                )
            );        

      

            $viewData->viewFolder = $this->viewFolder;
            $viewData->subViewFolder = "update";
            $viewData->form_error=true;
            $this->load->view("$viewData->viewFolder/$viewData->subViewFolder/index", $viewData);

            $viewData->item = $item;
        }
        //başarılı ise - kayıt işlemi başlar
        //başarısız ise - ekranda hata gösterilir
      
    }
    public function delete($id){

            $delete = $this->product_model->delete(
                array(
                    "id" => $id
                )
            );

            if($delete){
                redirect(base_url("product"));
            } else {
                redirect(base_url("product"));   
            }

    }
    public function imageDelete($id, $parent_id){

        $fileName = $this->product_image_model->get( //üst tarafta durmalı çünkü silinmiş bir yapıyı bulamayız.
            array(
                "id" => $id
            )
        );

        $delete = $this->product_image_model->delete(
            array(
                "id" => $id
            )
        );
    
        unlink("uploads/{$this->viewFolder}/$fileName->img_url");

        if($delete){
            redirect(base_url("product/image_form/$parent_id"));
        } else {
            redirect(base_url("product/image_form/$parent_id"));   
        }

}
    public function isActiveSetter($id){

        if($id){

            $isActive = ($this->input->post("data") === "true") ? 1 : 0;
            
            $this->product_model->update(
                array(
                    "id" => $id
                ),
                array(
                    "isActive" =>$isActive
                )
            );

        }

    }
    public function imageIsActiveSetter($id){

        if($id){

            $isActive = ($this->input->post("data") === "true") ? 1 : 0;
            
            $this->product_image_model->update(
                array(
                    "id" => $id
                ),
                array(
                    "isActive" =>$isActive
                )
            );

        }

    }
    public function isCoverSetter($id, $parent_id){

        if($id && $parent_id){

            $isCover = ($this->input->post("data") === "true") ? 1 : 0;
            
            //KAPAK YAPILMAK İSTENEN KAYIT
            $this->product_image_model->update(
                array(
                    "id" => $id,
                    "advertisement_id" => $parent_id
                ),
                array(
                    "isCover" => $isCover
                )
            );
            // KAPAK YAPILMAYAN DİĞER KAYITLAR
            $this->product_image_model->update(
                array(
                    "id !=" => $id,
                    "advertisement_id" => $parent_id
                ),
                array(
                    "isCover" => 0
                )
                
            );

            $viewData = new stdClass();

            /** View'e gönderilecek Değişkenlerin Set Edilmesi.. */
            $viewData->viewFolder = $this->viewFolder;
            $viewData->subViewFolder = "image";

            $viewData->item_image = $this->product_model->get(
                array(
                    "id" => $parent_id
                )
            );
            
            $viewData->item_image = $this->product_image_model->get_all(
                array(
                    "advertisement_id"    => $parent_id
                ),"rank ASC"
            );

            $render_html = $this->load->view("{$viewData->viewFolder}/{$viewData->subViewFolder}/render_elements/image_list_v", $viewData, true);
            echo $render_html;

        }

    }
    public function rankSetter(){
    
        
       $data =  $this->input->post("data");

       parse_str($data, $order);
       
       $items = $order["ord"];

       foreach($items as $rank =>$id){

        $this->product_model->update(
            array(
                "id" => $id,
                "rank !=" => $rank 
            ),
            array(
                "rank" => $rank
            )
            );

       }

    }
    public function imageRankSetter(){
    
        $data =  $this->input->post("data");
 
        parse_str($data, $order);
        
        $items = $order["ord"];
 
        foreach($items as $rank =>$id){
 
         $this->product_image_model->update(
             array(
                 "id" => $id,
                 "rank !=" => $rank 
             ),
             array(
                 "rank" => $rank
             )
             );
 
        }
 
     }

    public function image_form($id){

        $viewData = new stdClass();
    
        /** view'e gönderilecek değişkenlerin set edilmesi... */
        $viewData->viewFolder = $this->viewFolder;
        $viewData->subViewFolder = "image";

         $viewData->item = $this->product_model->get(
            array(
                "id" => $id
            )
        );

        $viewData->item_image = $this->product_image_model->get_all(
            array(
                "advertisement_id" => $id
            ), "rank ASC"

        );

       $this->load->view("$this->viewFolder/$viewData->subViewFolder/index", $viewData);
    
    }
    public  function image_upload($id){

        $file_name = convertToSeo(pathinfo($_FILES["file"]["name"],PATHINFO_FILENAME)).".".  pathinfo($_FILES["file"]["name"], PATHINFO_EXTENSION);

        $config["allowed_types"] = "jpg|jpeg|png";
        $config["upload_path"] = "uploads/$this->viewFolder/";
        $config["file_name"] = $file_name;

        $this->load->library("upload",$config);

        $upload = $this->upload->do_upload("file");

        if($upload){

            $uploaded_file = $this->upload->data("file_name");

            $this->product_image_model->add(
                array(
                    "advertisement_id " => $id,
                    "img_url" => $uploaded_file,
                    "rank" => 0,
                    "isActive" => 1,
                    "isCover" => 0,
                    "createdAt" => date("Y-m-d H:i:s")   
                ), "rank ASC"
            );
        }else{
            echo "başarısız";
        }
    }
    public function refresh_image_list($id){

        $viewData = new stdClass();  

        /** view'e gönderilecek değişkenlerin set edilmesi... */
        $viewData->viewFolder = $this->viewFolder;
        $viewData->subViewFolder = "image";

        $viewData->item = $this->product_image_model->get(
            array(
                "id" => $id

             )
        );

        $viewData->item_image = $this->product_image_model->get_all(
            array(
                "advertisement_id" => $id

             )
        );

        $render_html = $this->load->view("{$viewData->viewFolder}/{$viewData->subViewFolder}/render_elements/image_list_v", $viewData, true);
        
        echo $render_html;

    }
}