<div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(<?php echo base_url("assets");?>/images/hero_bg_2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
   
<div class="container">
    <div class="row align-items-center justify-content-center text-center">
        <div class="col-md-10">
            <h1 class="mb-2">İlan Detayları</h1>
        </div>
    </div>
</div>

</div>
<div class="site-section site-section-sm">


    <div class="container">
        <div class="row">
            <div class="col-lg-8">

                <div class="bg-white property-body border-bottom border-left border-right">
                        <div class="row mb-5">
                            <div class="col-md-6">
                            <h2 class="property-title"><?php echo strip_tags($product->title); ?></h2>
                                
                            </div>
                            <div class="col-md-6">
                            <strong class="text-success h1 mb-3">
                            
                                <?php 
                                    $para = $product->price;
                                    $para_birimi = number_format($para, 2, ',', '.');

                                    echo $para_birimi."₺";
                                ?>
                            
                            </strong>
                            </div>
                        </div>

                        <div class="row mb-5">
                        
                        

                            <div class="col-md-6 col-lg-4 text-center border-bottom border-top py-3">
                            <span class="d-inline-block text-black mb-0 caption-text">Oda Sayısı</span>
                            <strong class="d-block"><?php echo $product->numberOfRooms; ?></strong>
                            </div>
                            <div class="col-md-6 col-lg-4 text-center border-bottom border-top py-3">
                            <span class="d-inline-block text-black mb-0 caption-text">m²</span>
                            <strong class="d-block"><?php echo $product->area; ?> m²</strong>
                            </div>
                            <div class="col-md-6 col-lg-4 text-center border-bottom border-top py-3">
                            <span class="d-inline-block text-black mb-0 caption-text">İlan Tarihi</span>
                            <strong class="d-block">
                            <?php                                        
                                $tarih= $product->createdAt;

                                $yil = substr($tarih, 0, 4);
                                $ay = substr($tarih, 5, 2);
                                $gun = substr($tarih, 8, 2);

                                echo $gun.".".$ay.".".$yil;

                            ?>
                            </strong>
                            </div>
                        
                        </div>

                        <h2 class="h4 text-black">Açıklama</h2>

                        <?php echo $product->description; ?>

                        <div class="row no-gutters mt-5">
                            <div class="col-12">
                            <h2 class="h4 text-black mb-3">Galeri</h2>
                            </div>
                            <?php foreach($product_images as $image){?>   
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                
                                    <a href="<?php echo base_url("../panel/uploads/product_v/$image->img_url"); ?>" class="image-popup gal-item">

                                        <img src="<?php echo base_url("../panel/uploads/product_v/$image->img_url"); ?>" alt="Image" class="img-fluid">
                    
                                    </a>
                                </div>
                            <?php } ?>
                        </div>

                    </div>
            </div>

            
            <div class="col-lg-4">

<div class="bg-white widget border rounded">

  <h3 class="h4 text-black widget-title mb-3">İlan hakkında bilgi al</h3>
  <br>
  <form action="<?php echo base_url("Home/mesaj_gonder"); ?>" method="post" class="form-contact-agent">
    <div class="form-group">
      <label for="name">Ad Soyad</label>
      <input type="text"  name="full_name" class="form-control">
    </div>
    <div class="form-group">
      <label for="phone">Telefon</label>
      <input type="text" name="tel" class="form-control">
    
    </div>
    <div class="form-group">
      <label for="phone">Mesaj</label>
   
      <textarea  name="message" class="form-control" style="height:150px;"> </textarea>

    </div>
    <br>
    <div class="form-group">
      <input type="submit" id="info" class="btn btn-primary" value="Mesaj Gönder">
    </div>
    <input type="hidden" name="advertisement" value="<?php echo $product->id; ?>">
  </form>
</div>


</div>
        </div>
    </div>
</div>