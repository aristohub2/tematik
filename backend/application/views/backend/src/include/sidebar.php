<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description"
        content="Responsive sidebar template with sliding effect and dropdown menu based on bootstrap 3">
    <title>Backend</title>

    
</head>

<body>
    <div class="page-wrapper default-theme sidebar-bg bg1 toggled">
        <nav id="sidebar" class="sidebar-wrapper">
            <div class="sidebar-content">
                <!-- sidebar-brand  -->
                <div class="sidebar-item sidebar-brand">
                    <a href="#">Passion Prive</a>
                </div>
                <!-- sidebar-header  -->
                <div class="sidebar-item sidebar-header d-flex flex-nowrap">
                    <div class="user-pic">
                        <img class="img-responsive img-rounded" src="<?php echo base_url('asset/img/user.jpg') ?>" alt="User picture">
                    </div>
                    <div class="user-info">
                        <span class="user-name">Admin
                        </span>
                        <span class="user-status">
                            <i class="fa fa-circle"></i>
                            <span>Online</span>
                        </span>
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
                    </ul>
                </div>
            </div>
        </nav>