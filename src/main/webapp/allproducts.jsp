<%-- 
    Document   : allproducts
    Created on : Dec 29, 2023, 1:53:22 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cart</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="assets/css/font.css" />
        <link type="text/css" rel="stylesheet" href="assets/css/swiper-bundle.min.css">
        <link type="text/css" rel="stylesheet" href="assets/css/header.css">
        <link type="text/css" rel="stylesheet" href="assets/css/footer.css">
        <link type="text/css" rel="stylesheet" href="assets/images/icons/icomoon/style.css" />
        <link type="text/css" rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
        <link type="text/css" rel="stylesheet" href="assets/css/allproducts.css" />
    </head>

    <body>
        <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
        <script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js">
        </script>


        <%@include file="/common/header.jsp" %>

        <div class="overlay hidden"></div>
        <a href="#top" class="go-top">
            <img src="assets/images/icons/arrow-up.png" alt="">
        </a>

        <div class="container">
            <section id="allproducts" class="allproducts">
                <div class="allproducts__detail">
                    <div class="allproducts__detail-control">
                        <ul class="detail__control-list">
                            <li>
                                <a href="/ThePatternShop">TRANG CHỦ</a>
                            </li>
                            <li>
                                <a href="#" style="color: #141414; font-weight: 600;">SẢN PHẨM</a>
                            </li>
                        </ul> 
                    </div>

                    <div class="allproducts__detail-banner">
                        <img src="assets/images/banners/allproducts.png" alt="">
            
                        <!-- <a href=""><img src="imgs/buy-now-button-red/Frame 54.png" alt=""></a> -->
                    </div>

                    <div class="allproducts__searchbox">
                        <form action="">
                            <input type="text" placeholder="Tìm kiếm sản phẩm.." name="search">
                            <button type="submit"><i class="icon-Search"></i></button>
                        </form>
                    </div>
                    <div class="allproducts__container">
                        <div class="allproducts__container-left">
                            <div class="allproducts__filtertype">
                                <ul>
                                    <li class="active"><a href=""><span style="color: black;">TẤT CẢ</span></a></li>
                                    <li><a href=""><span>QUẦN</span></a></li>
                                    <li><a href=""><span>ÁO</span></a></li>
                                    <li><a href=""><span>SALE</span></a></li>
                                </ul>
                            </div>


                            <div class="allproducts__filter">
                                <div class="allproducts__filter-title">
                                    <span>Bộ Lọc</span>
                                    <a href=""><span>Xóa</span></a>
                                </div>
                                <div class="allproducts__filter-sort">
                                    <h3>Sắp xếp theo</h3>
                                    <ul>
                                        <li><a href=""><span>Giá tăng dần</span></a></li>
                                        <li><a href=""><span>Giá giảm dần</span></a></li>
                                        <li><a href=""><span>A - Z</span></a></li>
                                        <li><a href=""><span>Z - A</span></a></li>
                                        <li><a href=""><span>Cũ nhất</span></a></li>
                                        <li><a href=""><span>Mới nhất</span></a></li>
                                    </ul>
                                </div>

                                <div class="allproducts__filter-colors">
                                    <h3>Màu sắc</h3>
                                    <ul>
                                        <li>
                                            <div class="allproducts__filter-colors-item color1"></div>
                                            <a href=""> <span>Màu đen</span></a>
                                        </li>

                                        <li>
                                            <div class="allproducts__filter-colors-item color2"></div>
                                            <a href=""> <span>Trắng</span></a>
                                        </li>

                                        <li>
                                            <div class="allproducts__filter-colors-item color3"></div>
                                            <a href=""> <span>Xám</span></a>
                                        </li>

                                        <li>
                                            <div class="allproducts__filter-colors-item color4"></div>
                                            <a href=""> <span>Xanh rêu</span></a>
                                        </li>

                                        <li>
                                            <div class="allproducts__filter-colors-item color5"></div>
                                            <a href=""> <span>Màu Be</span></a>
                                        </li>

                                        <li>
                                            <div class="allproducts__filter-colors-item color6"></div>
                                            <a href=""> <span>Màu nâu nhạt</span></a>
                                        </li>

                                        <li>
                                            <div class="allproducts__filter-colors-item color7"></div>
                                            <a href=""> <span>Màu nâu đậm</span></a>
                                        </li>
                                    </ul>
                                    
                                </div>
                                <div class="allproducts__filter-size">
                                    <h3>Kích cỡ</h3>
                                    <ul>
                                        <li><a href=""><span>S</span></a></li>
                                        <li><a href=""><span>M</span></a></li>
                                        <li><a href=""><span>L</span></a></li>
                                        <li><a href=""><span>XL</span></a></li>
                                        <li><a href=""><span>2XL</span></a></li>
                                    </ul>
                                </div>

                                <div class="allproducts__filter-cost">
                                    <h3>Mức giá</h3>
                                    <ul>
                                        <li><a href=""><span>Dưới 200.000 VNĐ</span></a></li>
                                        <li><a href=""><span>200.000 VNĐ - 400.000 VNĐ</span></a></li>
                                        <li><a href=""><span>Trên 400.000 VNĐ</span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="allproducts__container-right">
                            <div class="allproducts__container-wrapper">
                                <div class="card">
                                    <div class="card-container">
                                        <div class="image-content">
                                            <a href="">
                                                <img src="assets/images/products/newArrivals/A1.png" alt="Front">
                                            </a>
                                        </div>
                                    </div>
        
                                    <div class="card-category">
                                        <div class="card-category__infor">
                                            <p style="font-weight: 400;
                                               font-size: 20px;
                                               line-height: 26px;">
                                               TempName</p>
                                            <p style="    margin-top: 8px;
                                               font-weight: 700;
                                               font-size: 22px;
                                               line-height: 22px;">
                                               400000 VNĐ</p>
                                        </div>
        
                                        <div class="card-category__color"
                                             style="display: flex; justify-content:space-between; gap: 8px;">
                                            <img src="assets/images/icons/colors/Color_01.png" alt="" style="width: 24px; height:24px">
                                            <img src="assets/images/icons/colors/Color_02.png" alt="" style="width: 24px; height:24px">
                                            <img src="assets/images/icons/colors/Color_03.png" alt="" style="width: 24px; height:24px">
                                        </div>
                                    </div>
                                </div>


                                <div class="card">
                                    <div class="card-container">
                                        <div class="image-content">
                                            <a href="">
                                                <img src="assets/images/products/newArrivals/A1.png" alt="Front">
                                            </a>
                                        </div>
                                    </div>
        
                                    <div class="card-category">
                                        <div class="card-category__infor">
                                            <p style="font-weight: 400;
                                               font-size: 20px;
                                               line-height: 26px;">
                                               TempName</p>
                                            <p style="    margin-top: 8px;
                                               font-weight: 700;
                                               font-size: 22px;
                                               line-height: 22px;">
                                               400000 VNĐ</p>
                                        </div>
        
                                        <div class="card-category__color"
                                             style="display: flex; justify-content:space-between; gap: 8px;">
                                            <img src="assets/images/icons/colors/Color_01.png" alt="" style="width: 24px; height:24px">
                                            <img src="assets/images/icons/colors/Color_02.png" alt="" style="width: 24px; height:24px">
                                            <img src="assets/images/icons/colors/Color_03.png" alt="" style="width: 24px; height:24px">
                                        </div>
                                    </div>
                                </div>



                                <div class="card">
                                    <div class="card-container">
                                        <div class="image-content">
                                            <a href="">
                                                <img src="assets/images/products/newArrivals/A1.png" alt="Front">
                                            </a>
                                        </div>
                                    </div>
        
                                    <div class="card-category">
                                        <div class="card-category__infor">
                                            <p style="font-weight: 400;
                                               font-size: 20px;
                                               line-height: 26px;">
                                               TempName</p>
                                            <p style="    margin-top: 8px;
                                               font-weight: 700;
                                               font-size: 22px;
                                               line-height: 22px;">
                                               400000 VNĐ</p>
                                        </div>
        
                                        <div class="card-category__color"
                                             style="display: flex; justify-content:space-between; gap: 8px;">
                                            <img src="assets/images/icons/colors/Color_01.png" alt="" style="width: 24px; height:24px">
                                            <img src="assets/images/icons/colors/Color_02.png" alt="" style="width: 24px; height:24px">
                                            <img src="assets/images/icons/colors/Color_03.png" alt="" style="width: 24px; height:24px">
                                        </div>
                                    </div>
                                </div>



                                <div class="card">
                                    <div class="card-container">
                                        <div class="image-content">
                                            <a href="">
                                                <img src="assets/images/products/newArrivals/A1.png" alt="Front">
                                            </a>
                                        </div>
                                    </div>
        
                                    <div class="card-category">
                                        <div class="card-category__infor">
                                            <p style="font-weight: 400;
                                               font-size: 20px;
                                               line-height: 26px;">
                                               TempName</p>
                                            <p style="    margin-top: 8px;
                                               font-weight: 700;
                                               font-size: 22px;
                                               line-height: 22px;">
                                               400000 VNĐ</p>
                                        </div>
        
                                        <div class="card-category__color"
                                             style="display: flex; justify-content:space-between; gap: 8px;">
                                            <img src="assets/images/icons/colors/Color_01.png" alt="" style="width: 24px; height:24px">
                                            <img src="assets/images/icons/colors/Color_02.png" alt="" style="width: 24px; height:24px">
                                            <img src="assets/images/icons/colors/Color_03.png" alt="" style="width: 24px; height:24px">
                                        </div>
                                    </div>
                                </div>



                                <div class="card">
                                    <div class="card-container">
                                        <div class="image-content">
                                            <a href="">
                                                <img src="assets/images/products/newArrivals/A1.png" alt="Front">
                                            </a>
                                        </div>
                                    </div>
        
                                    <div class="card-category">
                                        <div class="card-category__infor">
                                            <p style="font-weight: 400;
                                               font-size: 20px;
                                               line-height: 26px;">
                                               TempName</p>
                                            <p style="    margin-top: 8px;
                                               font-weight: 700;
                                               font-size: 22px;
                                               line-height: 22px;">
                                               400000 VNĐ</p>
                                        </div>
        
                                        <div class="card-category__color"
                                             style="display: flex; justify-content:space-between; gap: 8px;">
                                            <img src="assets/images/icons/colors/Color_01.png" alt="" style="width: 24px; height:24px">
                                            <img src="assets/images/icons/colors/Color_02.png" alt="" style="width: 24px; height:24px">
                                            <img src="assets/images/icons/colors/Color_03.png" alt="" style="width: 24px; height:24px">
                                        </div>
                                    </div>
                                </div>



                                <div class="card">
                                    <div class="card-container">
                                        <div class="image-content">
                                            <a href="">
                                                <img src="assets/images/products/newArrivals/A1.png" alt="Front">
                                            </a>
                                        </div>
                                    </div>
        
                                    <div class="card-category">
                                        <div class="card-category__infor">
                                            <p style="font-weight: 400;
                                               font-size: 20px;
                                               line-height: 26px;">
                                               TempName</p>
                                            <p style="    margin-top: 8px;
                                               font-weight: 700;
                                               font-size: 22px;
                                               line-height: 22px;">
                                               400000 VNĐ</p>
                                        </div>
        
                                        <div class="card-category__color"
                                             style="display: flex; justify-content:space-between; gap: 8px;">
                                            <img src="assets/images/icons/colors/Color_01.png" alt="" style="width: 24px; height:24px">
                                            <img src="assets/images/icons/colors/Color_02.png" alt="" style="width: 24px; height:24px">
                                            <img src="assets/images/icons/colors/Color_03.png" alt="" style="width: 24px; height:24px">
                                        </div>
                                    </div>
                                </div>


                                <div class="card">
                                    <div class="card-container">
                                        <div class="image-content">
                                            <a href="">
                                                <img src="assets/images/products/newArrivals/A1.png" alt="Front">
                                            </a>
                                        </div>
                                    </div>
        
                                    <div class="card-category">
                                        <div class="card-category__infor">
                                            <p style="font-weight: 400;
                                               font-size: 20px;
                                               line-height: 26px;">
                                               TempName</p>
                                            <p style="    margin-top: 8px;
                                               font-weight: 700;
                                               font-size: 22px;
                                               line-height: 22px;">
                                               400000 VNĐ</p>
                                        </div>
        
                                        <div class="card-category__color"
                                             style="display: flex; justify-content:space-between; gap: 8px;">
                                            <img src="assets/images/icons/colors/Color_01.png" alt="" style="width: 24px; height:24px">
                                            <img src="assets/images/icons/colors/Color_02.png" alt="" style="width: 24px; height:24px">
                                            <img src="assets/images/icons/colors/Color_03.png" alt="" style="width: 24px; height:24px">
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-container">
                                        <div class="image-content">
                                            <a href="">
                                                <img src="assets/images/products/newArrivals/A1.png" alt="Front">
                                            </a>
                                        </div>
                                    </div>
        
                                    <div class="card-category">
                                        <div class="card-category__infor">
                                            <p style="font-weight: 400;
                                               font-size: 20px;
                                               line-height: 26px;">
                                               TempName</p>
                                            <p style="    margin-top: 8px;
                                               font-weight: 700;
                                               font-size: 22px;
                                               line-height: 22px;">
                                               400000 VNĐ</p>
                                        </div>
        
                                        <div class="card-category__color"
                                             style="display: flex; justify-content:space-between; gap: 8px;">
                                            <img src="assets/images/icons/colors/Color_01.png" alt="" style="width: 24px; height:24px">
                                            <img src="assets/images/icons/colors/Color_02.png" alt="" style="width: 24px; height:24px">
                                            <img src="assets/images/icons/colors/Color_03.png" alt="" style="width: 24px; height:24px">
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-container">
                                        <div class="image-content">
                                            <a href="">
                                                <img src="assets/images/products/newArrivals/A1.png" alt="Front">
                                            </a>
                                        </div>
                                    </div>
        
                                    <div class="card-category">
                                        <div class="card-category__infor">
                                            <p style="font-weight: 400;
                                               font-size: 20px;
                                               line-height: 26px;">
                                               TempName</p>
                                            <p style="    margin-top: 8px;
                                               font-weight: 700;
                                               font-size: 22px;
                                               line-height: 22px;">
                                               400000 VNĐ</p>
                                        </div>
        
                                        <div class="card-category__color"
                                             style="display: flex; justify-content:space-between; gap: 8px;">
                                            <img src="assets/images/icons/colors/Color_01.png" alt="" style="width: 24px; height:24px">
                                            <img src="assets/images/icons/colors/Color_02.png" alt="" style="width: 24px; height:24px">
                                            <img src="assets/images/icons/colors/Color_03.png" alt="" style="width: 24px; height:24px">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="allproducts_counterpage">
                                <ul>
                                    <li class="isloadactive"><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <%@include file="/common/footer.jsp" %>

        <script src="assets/js/backtotop.js"></script>
        <script src="assets/js/overlay-hidden.js"></script>
        <script>
            var liElements = document.querySelectorAll('.allproducts_counterpage ul li');

            for (var i = 0; i < liElements.length; i++) {
                liElements[i].addEventListener('click', function() {
                    for (var j = 0; j < liElements.length; j++) {
                        liElements[j].classList.remove('isloadactive');
                    }
                    this.classList.add('isloadactive');
                });
            }
        </script>
    </body>
</html>
