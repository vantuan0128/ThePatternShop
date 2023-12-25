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

        <link rel="stylesheet" href="assets/css/font.css" />
        <link rel="stylesheet" href="assets/css/header.css">
        <link rel="stylesheet" href="assets/css/footer.css">
        <link rel="stylesheet" href="assets/css/swiper-bundle.min.css">
        <link rel="stylesheet" href="assets/images/icons/icomoon/style.css" />
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
        <link rel="stylesheet" href="assets/css/index.css" />

    </head>

    <body>
        <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
        <script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
        <script type="text/javascript"
        src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
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
                    <c:forEach var="tempProduct" items="${listproducts}">
                        <div class="card">
                            <c:url var="tempLink" value="ProductServlet">
                                <c:param name="command" value="LOAD"/>
                                <c:param name="id" value="${tempProduct.getId()}"/>
                            </c:url>
                            
                            <div class="card-container">
                                <div class="image-content">
                                    <a href="product-details.jsp">
                                        <img src="assets/images/products/newArrivals/${tempProduct.getImage()}" alt="Front">
                                        <!-- <img src="assets/images/products/newArrivals/Fr1_02.png" alt="Back"
                                            class="image-content-back"> -->
                                    </a>
                                </div>
                            </div>

                            <div class="card-category">
                                <div class="card-category__infor">
                                    <p style="    font-weight: 400;
                                       font-size: 20px;
                                       line-height: 26px;">${tempProduct.getName()}</p>
                                    <p style="    margin-top: 8px;
                                       font-weight: 700;
                                       font-size: 22px;
                                       line-height: 22px;">${tempProduct.getCost()}</p>
                                </div>

                                <div class="card-category__color"
                                     style="display: flex; justify-content:space-between; gap: 8px;">
                                    <img src="assets/images/icons/colors/Color_01.png" alt="" style="width: 24px; height:24px">
                                    <img src="assets/images/icons/colors/Color_02.png" alt="" style="width: 24px; height:24px">
                                    <img src="assets/images/icons/colors/Color_03.png" alt="" style="width: 24px; height:24px">
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>

            <div class="button-watch-more">
                <a href="shirt-product.html"><img src="imgs/see-more.png" alt=""></a>
            </div>
        </div>

        <%@include file="/common/footer.jsp" %>
        <script src="assets/js/script.js"></script>
        <script src="assets/js/backtotop.js"></script>
        <!-- <script src="assets/js/swiper-newarrivals.js"></script> -->
        <script src="assets/js/next-product.js"></script>

        <script>
            var size = '<%=request.getAttribute("PRODUCT_LIST")%>';
            console.log(size);
        </script>
    </body>

</html>