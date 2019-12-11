 



    
        





    <div><nav class="navbar navbar-expand-md navbar-light bg-dark ">
            <div class="container-fluid">
            <button id="toggle-sidebar"  class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
                    <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
               <ul class="navbar-nav ml-auto " >

                        
                </ul>
            </div>
        </div>
    </div>

    <div class="page-wrapper default-theme sidebar-bg bg1 toggled">
        <nav id="sidebar" class="sidebar-wrapper">
            <div class="sidebar-content">
                <!-- sidebar-brand  -->
                <div class="sidebar-item sidebar-brand">
                    <a href="#">Passion Prive</a>
                </div>
                <!-- sidebar-header  -->
                <div class="sidebar-item sidebar-header d-flex flex-nowrap">
                    <!-- <div class="user-pic">
                        <img class="img-responsive img-rounded" src="<?php echo base_url('asset/img/user.jpg') ?>" alt="User picture">
                    </div> -->
                    <div class="user-info">
                        <span class="user-name">ID       : <?php echo $_SESSION['id']; ?></span>                        
                        <span class="user-name">Username : <?php echo $_SESSION['user']; ?></span>
                        <!-- <span class="user-status">
                            <i class="fa fa-circle"></i>
                            <span>Online</span>
                        </span> -->
                    </div>
                </div>

                <!-- sidebar-menu  -->
                <div class=" sidebar-item sidebar-menu">
                    <ul>
                        <li class="header-menu">
                            <span>Header</span>
                        </li>
                        <li class="sidebar-dropdown">
                            <a >
                                <i class="fa fa-tachometer-alt"></i>
                                <span class="menu-text">Banners</span>
                            </a>
                            <div class="sidebar-submenu">
                                <ul>
                                    <li>
                                        <a href=" <?php echo base_url('index.php/c_welcome') ?>">Home Banner
                                            <span class="badge badge-pill badge-success"></span>
                                        </a>
                                    </li>

                                     <li>
                                        <a href=" <?php echo base_url('index.php/c_about') ?>">About Banner
                                            <span class="badge badge-pill badge-success"></span>
                                        </a>
                                    </li>

                                     <li>
                                        <a href=" <?php echo base_url('index.php/c_catalogue') ?>">Catalogue Banner
                                            <span class="badge badge-pill badge-success"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href=" <?php echo base_url('index.php/c_catalogue_product') ?>">Catalogue Product Banner
                                            <span class="badge badge-pill badge-success"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href=" <?php echo base_url('index.php/c_offer') ?>">Offer Banner
                                            <span class="badge badge-pill badge-success"></span>
                                        </a>
                                    </li>
                                    <!-- <li>
                                        <a href="#">Dashboard 2</a>
                                    </li>
                                    <li>
                                        <a href="#">Dashboard 3</a>
                                    </li> -->
                                </ul>
                            </div>
                        </li>
                        <li class="header-menu">
                            <span>Products</span>
                        </li>
                        <li>
                            <a href=" <?php echo base_url('index.php/c_bracelet') ?>">
                                <i class="fa fa-calendar"></i>
                                <span class="menu-text">Bracelets</span>
                            </a>
                        </li>
                        <li>
                            <a href=" <?php echo base_url('index.php/c_earrings') ?>">
                                <i class="fa fa-calendar"></i>
                                <span class="menu-text">Earrings</span>
                            </a>
                        </li>
                        <li>
                            <a href=" <?php echo base_url('index.php/c_pendant') ?>">
                                <i class="fa fa-calendar"></i>
                                <span class="menu-text">Pendants</span>
                            </a>
                        </li>
                        <li>
                            <a href=" <?php echo base_url('index.php/c_ring') ?>">
                                <i class="fa fa-calendar"></i>
                                <span class="menu-text">Rings</span>
                            </a>
                        </li>
                        <li class="header-menu">
                            <span>Extra</span>
                        </li>
                         <li>
                            <a href=" <?php echo base_url('index.php/c_attribute') ?>">
                                <i class="fa fa-calendar"></i>
                                <span class="menu-text">Attributes</span>
                            </a>
                        </li>
                        <li>
                            <a href=" <?php echo base_url('index.php/c_company') ?>">
                                <i class="fa fa-calendar"></i>
                                <span class="menu-text">Company History</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- sidebar-footer  -->
            <div class="sidebar-footer">                
                <div>
                    <a href="<?php echo base_url("index.php/c_backend/logout") ?>">
                        Logout <i class="fa fa-sign-out-alt"></i>
                    </a>
                </div>
            </div>
        </nav>


       