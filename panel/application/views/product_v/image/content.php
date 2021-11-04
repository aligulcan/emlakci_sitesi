<div class="row">
    <div class="col-md-12">
        <h4 class="m-b-lg">
        Ürüne Fotoğraf Ekle
        </h4>
    </div>      
    <div class="col-md-12">
		<div class="widget">
			<div class="widget-body">	
				<form data-url="<?php echo base_url("product/refresh_image_list/$item->id"); ?>" action="<?php echo base_url("product/image_upload/$item->id"); ?>" id="dropzone" class="dropzone" data-plugin="dropzone" data-options="{ url:'<?php echo base_url("product/image_upload/$item->id"); ?>'}">
					<div class="dz-message">
						<h3 class="m-h-lg">Fotoğraf Yükle.</h3>
						<p class="m-b-lg text-muted">(Fotoğraf yüklemek için tıkla veya sürükle)</p>
					</div>
			
				</form>
			</div>
		</div>
     </div>
</div>
<div class="row">
    <div class="col-md-12">
        <h4 class="m-b-lg">
      		<?php echo $item->title; ?> kaydına ait resimler
        </h4>
    </div>      
    <div class="col-md-12">
		<div class="widget">
			<div class="widget-body image_list_container">	

				<?php $this->load->view("{$viewFolder}/{$subViewFolder}/render_elements/image_list_v"); ?> 

			</div>
     	</div>
	</div>
</div>

