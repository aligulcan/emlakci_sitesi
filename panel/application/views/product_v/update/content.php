<div class="row">
    <div class="col-md-12">
       <?php echo "<b>$item->title</b> kaydını düzenliyorsunuz"; ?>
    </div>      
    <div class="col-md-12">
    <div class="widget">	
					<div class="widget-body">		
						<form action="<?php echo base_url("product/update/$item->id"); ?>" method="post">
							<div class="form-group">
								<label>Başlık</label>
								<input type="text" class="form-control" name="title" value="<?php echo $item->title; ?>" >
                                <?php if(isset($form_error)) { ?>
                                        <small class="pull-right input-form-error">
										<?php echo form_error("title"); ?>
										</small>
                                <?php } ?>
                            
							</div>
							<div class="form-group">
								<label>Açıklama</label>
								<textarea name="description" class="m-0" data-plugin="summernote" data-options="{height: 250}">
								<?php echo $item->description; ?>
								</textarea>
							</div>
																		
							<div class="form-group">
								
								<label>Şehir</label>
									<select name="sehir_id" id="select-city" class="form-control" data-plugin="select2">
										<?php foreach($cities as $city ){ ?>
					<option  value="<?php echo $city->sehir_id; ?>">
											<?php echo $city->sehir_title; ?>
					</option>
										<?php } ?>
									</select>
								
							</div>

							<div class="form-group">

								<label>Adres</label>
								<input type="text" class="form-control" name="address" value="<?php echo $item->address; ?>">
								<label>Fiyat</label>
								<input type="text" class="form-control" name="price" value="<?php echo $item->price; ?>">
								<label>Alanı</label>
								<input type="text" class="form-control" name="area" value="<?php echo $item->area; ?>">
								<label>Oda Sayısı</label>
								<input type="text" class="form-control" name="numberOfRooms" value="<?php echo $item->numberOfRooms; ?>" >		
							</div>
						
							<button type="submit" class="btn btn-primary btn-md btn-outline">Güncelle</button>
                            <a href="<?php echo base_url("product"); ?>"  class="btn btn-md btn-danger btn-outline">İptal</a>
						</form>
					</div><!-- .widget-body -->
				</div><!-- .widget -->
     </div>
</div>




