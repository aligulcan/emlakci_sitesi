<div class="row">
    <div class="col-md-12">
        <h4 class="m-b-lg">Ürün Listesi
		<a href="<?php echo base_url("product/new_form"); ?>" class="btn btn-outline btn-primary btn-xs pull-right"> <i class="fa fa-plus"></i>Yeni Ekle</a>
        </h4>
    <div class="col-md-12">
				<div class="widget p-lg">
                    <?php if(empty($items)) { ?>
                        <div class="alert alert-info">
                            <h5 class="alert-title">Kayıt Bulunamadı</h5>
                            <p>Burada Herhangi bir veri bulunmamaktadır.</p>
                        </div>
                    <?php } else{ ?>
                        <table class="table table-hover table-striped table-bordered content-container">
                            <thead>
                                <th><i class="fa fa-reorder"></i></th>
                                 <th>#id</th>
                                <th>url</th>
                                <th>Başlık</th>
                                <th>Açıklama</th>
                                <th>Şehir</th>
                                <th>Adres</th>
                                <th>Fiyat</th>
                                <th>Alan</th>
                                <th>Oda Sayısı</th>
                                <th>Durum</th>
                                <th>İşlem</th>
                            </thead>
                            <tbody class="sortable" data-url="<?php echo base_url("product/rankSetter"); ?>">
                                <?php foreach($items as $item) { ?>

                                    <tr id="ord-<?php echo $item->id; ?>">
                                        <td><i class="fa fa-reorder"></i></td>
                                        <td>#<?php echo $item->id; ?></td>
                                        <td><?php echo $item->url; ?></td>
                                        <td><?php echo $item->title; ?></td>
                                        <td><?php echo $item->description; ?></td>   
                                        <td><?php echo $item->sehir_title; ?></td>
                                        <td><?php echo $item->address; ?></td>
                                        <td><?php echo $item->price; ?></td>
                                        <td><?php echo $item->area; ?></td>
                                        <td><?php echo $item->numberOfRooms; ?></td>
                                        <td>	
                                    
                                            <input 
                                            data-url="<?php echo base_url("product/isActiveSetter/$item->id"); ?>"
                                            class="isActive"
                                            type="checkbox" 
                                            data-switchery data-color="#10c469" 
                                            <?php echo ($item->isActive) ? "checked" : ""; ?>
                                            
                                            
                                            />
                                        
                                        </td>
                                        <td>
                                            <a href="<?php echo base_url("product/update_form/$item->id"); ?>" 
                                            class="btn btn-sm btn-warning">
                                            <i class="fa fa-pencil-square-o"></i>Düzenle
                                            </a>
                                            
                                            <button 
                                            data-url="<?php echo base_url("product/delete/$item->id"); ?>"
                                            class="btn btn-sm btn-danger remove-btn">
                                            <i class="fa fa-trash"></i>Sil
                                            </button>
                                        

                                            <a href="<?php echo base_url("product/image_form/$item->id"); ?>" 
                                            class="btn btn-sm btn-dark">
                                            <i class="fa fa-image"></i>Resimler
                                            </a>

                                        </td>
                                    </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    <?php } ?>
		    <!-- .widget -->
		</div>
    </div>
	</div>    