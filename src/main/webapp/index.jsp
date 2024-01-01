<%@page import="java.util.List"%>
<%@page import="entity.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Pattern</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="assets/css/font.css" />
        <link type="text/css" rel="stylesheet" href="assets/css/swiper-bundle.min.css">
        <link type="text/css" rel="stylesheet" href="assets/css/header.css">
        <link type="text/css" rel="stylesheet" href="assets/css/footer.css">
        <link type="text/css" rel="stylesheet" href="assets/images/icons/icomoon/style.css" />
        <link type="text/css" rel="stylesheet" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
        <link type="text/css" rel="stylesheet" href="assets/css/index.css" />
    </head>

    <body>
        <script type="text/javascript" 
            src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
        <script type="text/javascript" 
            src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
        <script type="text/javascript"
            src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js">
        </script>
        <%@include file="/common/header.jsp" %>
        <div class="overlay hidden"></div>

        <a href="#top" class="go-top">
            <img src="assets/images/icons/arrow-up.png" alt="">
        </a>



        <div class="header-banner">
            <div class="header-banner__slider">

                <!-- <div class="button-explore-now">
            <a href="">
                <img src="assets/images/explore-now.png" alt="">
            </a>
        </div> -->

                <!-- img-banner -->
                <div class="header-banner__slides">
                    <input type="radio" name="radio-btn" id="radio1">
                    <input type="radio" name="radio-btn" id="radio2">
                    <input type="radio" name="radio-btn" id="radio3">
                    <input type="radio" name="radio-btn" id="radio4">

                    <div class="slide first">
                        <img src="assets/images/banners/B1.png" alt="">
                    </div>
                    <div class="slide">
                        <img src="assets/images/banners/B2.png" alt="">
                    </div>
                    <div class="slide">
                        <img src="assets/images/banners/B3.png" alt="">
                    </div>
                    <div class="slide">
                        <img src="assets/images/banners/B4.png" alt="">
                    </div>

                    <div class="navigation-auto">
                        <div class="auto-btn1"></div>
                        <div class="auto-btn2"></div>
                        <div class="auto-btn3"></div>
                        <div class="auto-btn4"></div>
                    </div>
                </div>

                <div class="navigation-manual">
                    <label for="radio1" class="manual-btn"></label>
                    <label for="radio2" class="manual-btn"></label>
                    <label for="radio3" class="manual-btn"></label>
                    <label for="radio4" class="manual-btn"></label>
                </div>
            </div>
        </div>



        <%
            List<Product> listproducts = (List<Product>) request.getAttribute("PRODUCT_LIST");
        %>
        <div class="container">
            <div class="new-arrivals-title">
                <p style="text-align: center;
                   font-weight: 400;
                   font-size: 64px;
                   line-height: 84px;">HÀNG MỚI VỀ</p>
                <p style="margin-top: 24px;
                   text-align: center;
                   font-weight: 400;
                   font-size: 20px;
                   line-height: 20px;">Cùng khám phá những sản phẩm mới nhất của nhà <span style="color: red;">Pattern</span>
                    nhé!</p>
            </div>
            
            <div class="slide-container">
                <div class="card-wrapper">
                    <% for(Product tempProduct : listproducts){ 
                        %>
                        <div class="card">
                            <div class="card-container">
                                <div class="image-content">
                                    <a href="product-detail?productId=<%= tempProduct.getProductId()%>">
                                        <img src="assets/images/products/newArrivals/<%= tempProduct.getProductImage()%>" alt="Front">
                                        
                                    </a>
                                </div>
                            </div>

                            <div class="card-category">
                                <div class="card-category__infor">
                                    <p style="font-weight: 400;
                                       font-size: 20px;
                                       line-height: 26px;">
                                       <%= tempProduct.getProductName()%></p>
                                    <p style="    margin-top: 8px;
                                       font-weight: 700;
                                       font-size: 22px;
                                       line-height: 22px;">
                                       <%= tempProduct.getProductCost()%> VNĐ</p>
                                </div>

                                <div class="card-category__color"
                                     style="display: flex; justify-content:space-between; gap: 8px;">
                                    <img src="assets/images/icons/Black.png" alt="" style="width: 24px; height:24px">
                                    <img src="assets/images/icons/Gray.png" alt="" style="width: 24px; height:24px">
                                    <img src="assets/images/icons/Brown.png" alt="" style="width: 24px; height:24px">
                                </div>
                            </div>
                        </div>
                    <% } %>
                </div>
            </div>

            <div class="button-watch-more">
                <a href=""><img src="assets/images/banners/see-more.png" alt=""></a>
            </div>

            <div class="new-arrivals-title">
                <p style="text-align: center;
                   font-weight: 400;
                   font-size: 64px;
                   line-height: 84px; color: var(--base-color);">SIÊU SALE LỄ HỘI</p>
                <p style="margin-top: 24px;
                   text-align: center;
                   font-weight: 400;
                   font-size: 20px;
                   line-height: 20px;">GIẢM GIÁ TOÀN BỘ CỬA HÀNG</p>
            </div>

            <!-- time coundown -->

            <div class="timecountdown">
                <span id="timecountdown"></span>
                <ul>
                    <li>ngày</li>
                    <li>giờ</li>
                    <li>phút</li>
                    <li>giây</li>
                </ul>
            </div>

            <div class="slide-container">
                <div class="card-wrapper">
                    <% for(Product tempProduct : listproducts){ 
                        %>
                        <div class="card">
                            <div class="card-container">
                                <div class="image-content">
                                    <a href="LoadProductDetail?Id=<%= tempProduct.getProductId()%>">
                                        <img src="assets/images/products/newArrivals/<%= tempProduct.getProductImage()%>" alt="Front">
                                        
                                    </a>
                                </div>
                            </div>

                            <div class="card-category">
                                <div class="card-category__infor">
                                    <p style="font-weight: 400;
                                       font-size: 20px;
                                       line-height: 26px;">
                                       <%= tempProduct.getProductName()%></p>
                                    <p style="    margin-top: 8px;
                                       font-weight: 700;
                                       font-size: 22px;
                                       line-height: 22px;">
                                       <%= tempProduct.getProductCost()%> VNĐ</p>
                                </div>

                                <div class="card-category__color"
                                     style="display: flex; justify-content:space-between; gap: 8px;">
                                    <img src="assets/images/icons/Black.png" alt="" style="width: 24px; height:24px">
                                    <img src="assets/images/icons/Gray.png" alt="" style="width: 24px; height:24px">
                                    <img src="assets/images/icons/Brown.png" alt="" style="width: 24px; height:24px">
                                </div>
                            </div>
                        </div>
                    <% } %>
                </div>
            </div>
            <div class="button-watch-more">
                <a href=""><img src="assets/images/banners/see-more.png" alt=""></a>
            </div>

            <!-- big banner -->
            <div class="banner-big">
                <div class="banner-big__image1">
                    <img src="assets/images/banners/B2 (1).png" alt="">
                    <div class="banner-big__btn">
                        <a href=""><img src="assets/images/buttons/watch-now.png" alt=""></a>
                    </div>
                </div>

                <div class="banner-big__image1">
                    <img src="assets/images/banners/B3 (1).png" alt="">
                </div>
            </div>

            <!-- collection -->
            <!-- <div class="collection">
                <div class="collection-list">
                    <div class="collection__item">
                        <div class="collection__item-img">
                            <img src="assets/images/collection/Rectangle 23.png" alt="ngu" style="width: 300px; height:300px">
                        </div>
                        <p>22 WINTER COLLECTION</p>
                        <a href=""><span class="colection-button-des">MUA NGAY</span></a>

                    </div>

                    <div class="collection__item">
                        <div class="collection__item-img">
                            <img src="assets/images/collection/Rectangle 23.png" alt="ngu" style="width: 300px; height:300px">
                        </div>
                        <p>22 WINTER COLLECTION
                        </p>
                        <a href=""><span class="colection-button-des">MUA NGAY</span></a>

                    </div>

                    <div class="collection__item">
                        <div class="collection__item-img">
                            <img src="assets/images/collection/Rectangle 23.png" alt="ngu" style="width: 300px; height:300px">
                        </div>
                        <p>22 WINTER COLLECTION
                        </p>
                        <a href=""><span class="colection-button-des">MUA NGAY</span></a>

                    </div>
                    
                </div>
            </div> -->

            <div class="checked-instagram">
                <div class="checked-instagram__title">
                    <p>
                        CHECK ngay
                        <span style="color: rgba(219, 64, 64, 1);">#patternboard</span>
                    </p>

                    <h5 class="checked-instagram__title-medium">
                        Hãy tag @pattern trên Instagram để chia sẻ những outfits lộng lẫy của bạn!
                    </h5>
                </div>
                <div class="checked-instagram__listitems">
                    <div class="checked-instagram__listitems-wrapper">
                        <div class="checked-instagram__item">
                            <img src="assets/images/checked-instargram/Rectangle 10.png" alt="">
                            <p>
                                @tzixltd
                            </p>
                        </div>

                        <div class="checked-instagram__item">
                            <img src="assets/images/checked-instargram/Rectangle 14.png" alt="">
                            <p>
                                @datfeed.2706
                            </p>
                        </div>

                        <div class="checked-instagram__item">
                            <img src="assets/images/checked-instargram/Rectangle 15.png" alt="">
                            <p>
                                @huynguyen
                            </p>
                        </div>

                        <div class="checked-instagram__item">
                            <img src="assets/images/checked-instargram/Rectangle 16.png" alt="">
                            <p>
                                @thanhdat
                            </p>
                        </div>
                    </div>

                    <div class="checked-instagram__listitems-wrapper">
                        <div class="checked-instagram__item">
                            <img src="assets/images/checked-instargram/Rectangle 10-1.png" alt="">
                            <p>
                                @tony_quocbao
                            </p>
                        </div>

                        <div class="checked-instagram__item">
                            <img src="assets/images/checked-instargram/Rectangle 14-1.png" alt="">
                            <p>
                                @dohoanghieu
                            </p>
                        </div>

                        <div class="checked-instagram__item">
                            <img src="assets/images/checked-instargram/Rectangle 15-1.png" alt="">
                            <p>
                                @stevenleo
                            </p>
                        </div>

                        <div class="checked-instagram__item">
                            <img src="assets/images/checked-instargram/Rectangle 16-1.png" alt="">
                            <p>
                                @n_duy1209
                            </p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="banner-bottom">
                <img src="assets/images/banners/voucher-front.png" alt="Gợi ý!">
                <a href="register.jsp"><img src="assets/images/buttons/watch-now.png" alt=""></a>
            </div>
        </div>

        <%@include file="/common/footer.jsp" %>

        <script src="assets/js/backtotop.js"></script>
        <script src="assets/js/index.js"></script>
        <script src="assets/js/overlay-hidden.js"></script>
        <script src="assets/js/swiper-newarrivals.js"></script>
        <script src="assets/js/next-product.js"></script>

        <script>
            function formatNumber(n) {
                return n < 10 ? '0' + n : n;
            }
            
            var countDownDate = new Date("Jan 4, 2024 15:37:25").getTime();
            var x = setInterval(function () {
                var now = new Date().getTime();
            
                var distance = countDownDate - now;
                var days = formatNumber(Math.floor(distance / (1000 * 60 * 60 * 24)));
                var hours = formatNumber(Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)));
                var minutes = formatNumber(Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60)));
                var seconds = formatNumber(Math.floor((distance % (1000 * 60)) / 1000));
                document.getElementById("timecountdown").innerHTML = days + " : " + hours + " : "
                    + minutes + " : " + seconds;
                if (distance < 0) {
                    clearInterval(x);
                    document.getElementById("timecountdown").innerHTML = "EXPIRED";
                }
            }, 1000);
        </script>
        <!-- <script>
            var size = '<%=request.getAttribute("PRODUCT_LIST")%>';
            console.log(size);
        </script> -->
    </body>

</html>