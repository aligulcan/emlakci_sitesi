
<!-- slider başlangıç -->
<div class="slide-one-item home-slider owl-carousel">

	<div class="site-blocks-cover overlay" style="background-image: url(<?php echo base_url("assets"); ?>/images/hero_bg_1.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">

	</div>  
	<div class="site-blocks-cover overlay" style="background-image: url(<?php echo base_url("assets"); ?>/images/hero_bg_2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">

	</div>  

</div>
<!-- slider bitiş -->

<!-- blabla başlangıç -->
<div class="site-section site-section-sm pb-0">
    <div class="container">
        <div class="row">
            <form class="form-search col-md-12" style="margin-top: -100px;">
                <div class="row  align-items-end">
                    <div class="col-md-3">
                        <label for="list-types">Konut Tipi</label>
                        <div class="select-wrap">
                        <span class="icon icon-arrow_drop_down"></span>
                        <select name="list-types" id="list-types" class="form-control d-block rounded-0">
                            <option value="">Condo</option>
                            <option value="">Commercial Building</option>
                            <option value="">Land Property</option>
                        </select>
                        </div>
                    </div>
                
                    <div class="col-md-3">
                        <label for="select-city">Şehir Seç</label>
                        <div class="select-wrap">
                        <span class="icon icon-arrow_drop_down"></span>
                        <select name="select-city" id="select-city" class="form-control d-block rounded-0">
                            <option value="">New York</option>
                            <option value="">Brooklyn</option>
                            <option value="">London</option>
                            <option value="">Japan</option>
                            <option value="">Philippines</option>
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
                            <select class="form-control form-control-sm d-block rounded-0">
                                <option value="">Sıralama</option>
                                <option value="">Artan Fiyat</option>
                                <option value="">Azalan Fiyat</option>
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
            <?php foreach($products as $product ){?>
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
                            <span class="property-location d-block mb-3"><span class="property-icon icon-room"></span> 625 S. Berendo St Unit 607 Los Angeles, CA 90005</span>
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