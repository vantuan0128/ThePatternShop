<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="topbar">
    <div class="topbar_des">
        Miễn phí vận chuyển với hóa đơn trên 1 triệu đến hết 1/1. <a href=""> Xem ngay!</a>
    </div>
</div>
<div class="overlay hidden">

</div>

<a href="#top" class="go-top">
    <img src="assets/images/icons/arrow-up.png" alt="">
</a>

<header class="header">
    <a href="/ThePatternShop" class="header__logo-shop"> <img src="assets/images/logo/logo.png" alt="logo"></a>
    <div class="header__navbar">
        <ul class="header__navbar-list" id="header__navbar-list">
            <li id="home" class="navbar-item"><a href="/ThePatternShop"><span>Trang chủ</span></a></li>
            <li id="products" class="navbar-item-active">
                <div class="hidden-item-active">
                    <a href="searchProduct">
                        <span>Sản phẩm</span>
                    </a>
                    <div class="submenu">
                        <ul class="nav-submenu" id="nav-submenu">
                            <li>
                                <ul class="nav-submenu-column">
                                    <!-- <li class="nav-submenu-column-title"><a href="">Ão</a></li> -->
                                    <div class="nav-submenu-column-title">
                                        <a href="shirt-product.html">Áo</a>
                                    </div>
                                    <li><a href="">Hàng mới về</a></li>
                                    <li><a href="">Áo khoác</a></li>
                                    <li><a href="">Áo sơ mi</a></li>
                                    <li><a href="">Áo phông và Polo</a></li>
                                    <li><a href="">Áo Sweater & hoodie</a></li>
                                </ul>
                            </li>
                            <li>
                                <ul class="nav-submenu-column">
                                    <!-- <li class="nav-submenu-column-title"><a href="">Quáº§n</a></li> -->
                                    <div class="nav-submenu-column-title">
                                        <a href="">Quần</a>
                                    </div>
                                    <li><a href="">Hàng mới về</a></li>
                                    <li><a href="">Quần short</a></li>
                                    <li><a href="">Quần dài</a></li>
                                    <li><a href="">Quần ngắn</a></li>

                                </ul>
                            </li>
                            <li>
                                <ul class="nav-submenu-column">
                                    <div class="nav-submenu-column-title">
                                        <a href="" style=" font-weight: 600;
                                           font-size: 20px;
                                           line-height: 20px;
                                           color: #DB4040;
                                           text-transform: uppercase;
                                           ">Sale</a>
                                    </div>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>

            </li>
            <li id="collections" class="navbar-item"><a href=""><span>Bộ sưu tập</span></a></li>
            <li id="aboutus" class="navbar-item"><a href="aboutus.jsp"><span>Về chúng tôi</span></a></li>
        </ul>
    </div>

    <div class="header__icon-list">
        <a href="searchProduct" class="icon-item"><i class="icon-Search"></i></a>
        <a href="mycart" class="icon-item"><i class="icon-Shopping-Bag"></i></a>
        <a href="profile" class="icon-item"><i class="icon-User"></i></a>
    </div>
</header>

<!-- <script>
    var currentPage = "home";
    document.getElementById(currentPage).classList.add("navbar-item-active");
    console.log(currentPage);
</script> -->