<?php $user= get_active_user(); ?>

<aside id="menubar" class="menubar light">
  <div class="app-user">
    <div class="media">
      <div class="media-left">
        <div class="avatar avatar-md avatar-circle">
          <a href="javascript:void(0)"><img class="img-responsive" src="<?php echo base_url("assets") ?>/assets/images/221.jpg" alt="avatar"/></a>
        </div><!-- .avatar -->
      </div>
      <div class="media-body">
        <div class="foldable">
          <h5><a href="javascript:void(0)" class="username"><?php echo $user->full_name; ?></a></h5>
          <ul>
            <li class="dropdown">
              <a href="javascript:void(0)" class="dropdown-toggle usertitle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <small>Seçenekler</small>
                <span class="caret"></span>
              </a>
              <ul class="dropdown-menu animated flipInY">
                <li>
                  <a class="text-color" href="<?php echo base_url(); ?>">
                    <span class="m-r-xs"><i class="fa fa-home"></i></span>
                    <span>Anasayfa</span>
                  </a>
                </li>
                <li>
                  <a class="text-color" href="<?php echo base_url("users/update_form/$user->id"); ?>" >
                    <span class="m-r-xs"><i class="fa fa-user"></i></span>
                    <span>Profilim</span>
                  </a>
                </li>
                <li role="separator" class="divider"></li>
                <li>
                  <a class="text-color" href="<?php echo base_url("logout"); ?>">
                    <span class="m-r-xs"><i class="fa fa-power-off"></i></span>
                    <span>Çıkış Yap</span>
                  </a>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </div><!-- .media-body -->
    </div><!-- .media -->
  </div><!-- .app-user -->

  <div class="menubar-scroll">
    <div class="menubar-scroll-inner">
      <ul class="app-menu">


        <li class="has-submenu">
          <a href="<?php echo base_url(); ?>">
            <i class="menu-icon zmdi zmdi-view-dashboard zmdi-hc-lg"></i>
            <span class="menu-text">Anasayfa</span>
          </a>
        </li>
 <!--
        <li>
          <a href="javascript:void(0)">
            <i class="menu-icon zmdi zmdi-settings zmdi-hc-lg"></i>
            <span class="menu-text">Ayarlar</span>
          </a>
        </li>
       
        <li class="has-submenu">
          <a href="javascript:void(0)" class="submenu-toggle">
            <i class="menu-icon zmdi zmdi-apps zmdi-hc-lg"></i>
            <span class="menu-text">Galeriler</span>
            <i class="menu-caret zmdi zmdi-hc-sm zmdi-chevron-right"></i>
          </a>
          <ul class="submenu">
            <li><a href="#"><span class="menu-text">Resim Galerisi</span></a></li>
            <li><a href="#"><span class="menu-text">Video Galerisi</span></a></li>
            <li><a href="#"><span class="menu-text">Dosya Galerisi</span></a></li>
          </ul>
        </li> -->

<!--
        <li>
          <a href="javascript:void(0)">
            <i class="menu-icon zmdi zmdi-layers zmdi-hc-lg"></i>
            <span class="menu-text">Slider</span>
          </a>
        </li>
       --> 
        <li>
          <a href="<?php echo base_url("product"); ?>">
           <i class="menu-icon zmdi zmdi-storage zmdi-hc-lg"></i>
            <span class="menu-text">İlanlar</span>
          </a>
        </li>
		   <li>
        <a href="<?php echo base_url("users"); ?>">
          <i class="menu-icon fa fa-user"></i>
            <span class="menu-text">Kullanıcılar</span>
          </a>
        </li>
<!--
        <li>
          <a href="javascript:void(0)">
            <i class="menu-icon fa fa-newspaper-o"></i>
            <span class="menu-text">Haberler</span>
          </a>
        </li>

        <li>
          <a href="javascript:void(0)">
            <i class="menu-icon fa fa-calendar"></i>
            <span class="menu-text">Eğitimler</span>
          </a>
        </li>

        <li>
          <a href="javascript:void(0)">
          <i class="menu-icon zmdi zmdi-inbox zmdi-hc-lg"></i>
            <span class="menu-text">Referanslar</span>
          </a>
        </li>

        <li>
          <a href="javascript:void(0)">
          <i class="menu-icon zmdi zmdi-puzzle-piece zmdi-hc-lg"></i>
            <span class="menu-text">Markalar</span>
          </a>
        </li>
        -->
        <li>
          <a href="<?php echo base_url("message"); ?>">
          <i class="menu-icon fa fa-users"></i>
            <span class="menu-text">Mesajlar</span>
          </a>
        </li>

     <!--


        <li>
          <a href="javascript:void(0)">
          <i class="menu-icon zmdi zmdi-lamp zmdi-hc-lg"></i>
            <span class="menu-text">Popup hizmeti</span>
          </a>
        </li>


        <li class="has-submenu">
          <a href="javascript:void(0)" class="submenu-toggle">
            <i class="menu-icon zmdi zmdi-pin zmdi-hc-lg"></i>
            <span class="menu-text">Maps</span>
            <i class="menu-caret zmdi zmdi-hc-sm zmdi-chevron-right"></i>
          </a>
          <ul class="submenu">
            <li><a href="map-google.html"><span class="menu-text">Google Maps</span></a></li>
            <li><a href="map-vector.html"><span class="menu-text">Vector Maps</span></a></li>
          </ul>
        </li>

-->

        <li class="menu-separator"><hr></li>

        <li class="has-submenu">
          <a href="http://localhost/emlak_cms/site/" target="_blank">
            <i class="menu-icon zmdi zmdi-view-web zmdi-hc-lg"></i>
            <span class="menu-text">Siteye Git</span>
          </a>
        </li>
        
      </ul><!-- .app-menu -->
    </div><!-- .menubar-scroll-inner -->
  </div><!-- .menubar-scroll -->
</aside>