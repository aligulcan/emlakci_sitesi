
<!-- slider başlangıç -->
<div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(<?php echo base_url("assets"); ?>/images/hero_bg_2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">
          <div class="col-md-10">
            <h1 class="mb-2">İlanlar</h1>
          </div>
        </div>
      </div>
    </div>
<!-- slider bitiş -->

<!-- blabla başlangıç -->
<div class="site-section site-section-sm pb-0">
    <div class="container">
        <div class="row">
            <form action="<?php echo base_url("urun-listesi"); ?>" method="post" class="form-search col-md-12" style="margin-top: -100px;">
                <div class="row  align-items-end"> 
                
                    <div class="col-md-3">
                        <label for="select-city">Şehir Seç</label>
                        <div class="select-wrap">
                        <span class="icon icon-arrow_drop_down"></span>
                        <select name="select-city" id="select-city" class="form-control d-block rounded-0">
                        <option>Seç</option>
                            <?php foreach($citys as $city ){ ?>
                            <option  value="<?php echo $city->sehir_id; ?>"><?php echo $city->sehir_title; ?></option>
                            <?php } ?>
                        </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <input type="submit" class="btn btn-success text-white btn-block rounded-0"  value="Ara">
                    </div>
                </div>
            </form>
        </div>  

        <div class="row">
            <div class="col-md-12">
                <div class="view-options bg-white py-3 px-3 d-md-flex align-items-center">
                    <div class="ml-auto d-flex align-items-center">
                        <div class="select-wrap">
                            <span class="icon icon-arrow_drop_down"></span>
                            <select onchange="window.location='<?php echo base_url(uri_string()); ?>'+this.options[this.selectedIndex].value" class="form-control form-control-sm d-block rounded-0" name="sorting" style="width:150px;">
                                <option <?php if($this->input->get('createdAt') and $this->input->get('createdAt')=="default"  ) {echo "selected";} ?> value="?price=default">Rastgele</option>
                                <option <?php if($this->input->get('price') and $this->input->get('price')=="lowtohigh"  ) {echo "selected";} ?> value="?price=lowtohigh">Artan Fiyat</option>
                                <option <?php if($this->input->get('price') and $this->input->get('price')=="hightolow"  ) {echo "selected";} ?> value="?price=hightolow">Azalan Fiyat</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- blabla başlangıç -->



<!-- ürünler burada başlıyor -->

<div class="site-section site-section-sm bg-light">
    <div class="container">
        <div class="row mb-5">
            <?php 

            foreach($products as $product ){

                ?>
                
                <div class="col-md-6 col-lg-4 mb-4">
                    <div class="property-entry h-100">
                        <a href="<?php echo base_url("urun-detay/$product->url"); ?>" class="property-thumbnail">
                            <?php 
                                $image = get_product_cover_image($product->id);
                                
                                $image =($image) ? base_url("../panel/uploads/product_v/$image") : base_url("assets/images/img_1.jpg");
                            ?>
                                <img src="<?php echo $image; ?>" alt="Image" class="img-fluid">
                            
                            <div class="p-4 property-body">
                                <h2 class="property-title"><?php echo strip_tags($product->title); ?></h2>
                        </a>    
                            <span class="property-location d-block mb-3"><span class="property-icon icon-room"></span><?php echo $product->sehir_title; ?></span>
                            <strong class="property-price text-primary mb-3 d-block text-success">
                                <?php 
                            $para = $product->price;
                            $para_birimi = number_format($para, 2, ',', '.');

                            echo $para_birimi."₺";
                            ?></strong>
                            <ul class="property-specs-wrap mb-3 mb-lg-0">

                                <li>
                                    <span class="property-specs">Oda Sayısı</span>
                                    <span class="property-specs-number"><?php echo $product->numberOfRooms; ?> <sup></sup></span>
                                    
                                </li>
                                <li>
                                    <span class="property-specs">m²</span>
                                    <span class="property-specs-number"><?php echo $product->area; ?> m²</span>
                                    
                                </li>
                                <li>
                                    <span class="property-specs">İlan Tarihi</span>
                                    <span class="property-specs-number">
                                        <?php 
                                        
                                            $tarih= $product->createdAt;

                                            $yil = substr($tarih, 0, 4);
                                            $ay = substr($tarih, 5, 2);
                                            $gun = substr($tarih, 8, 2);

                                            echo $gun.".".$ay.".".$yil;

                                        ?>
                                    </span>
                                    
                                </li>
                            </ul>
                        </div>
                    </div>
                </div> 
            <?php }?>                         
        </div>
    </div>
</div>
<!-- ürünler burada bitiyor -->