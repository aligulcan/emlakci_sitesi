
<?php foreach($items as $item) { ?>	
<div class="mail-view">
					<div class="divid"></div>
					
					<div class="media">
						<div class="media-left">
							<div class="avatar avatar-lg avatar-circle">
							<input type="checkbox" id="custome-checkbox2" checked/>
									<label for="custome-checkbox2">Okundu Durumu</label>
							</div>
						</div>
						<div class="media-body">
							<div class="m-b-sm">
								<h4 class="m-0 inline-block m-r-lg">
									<a href="#" class="title-color">Gönderici Ad Soyad = <?php echo $item->full_name; ?></a>
								</h4>
							</div>
							<p><b>Gönderim Zamanı : </b><?php echo $item->createdAt; ?></p>
							<p><b>İlan Adı : </b><?php echo $item->title; ?></p>
							<p><b>Telefon : </b><?php echo $item->tel; ?></p>
						</div>
					</div>
			

					<div class="row">
						<div class="col-md-12">
						<h4 class="m-0 inline-block m-r-lg">
									Mesaj
								</h4>
						
								<p><?php echo $item->message; ?><p>

							
						</div>
					</div>
				</div>
				<?php } ?>



