<%-- Document : payment Created on : Dec 26, 2023, 6:51:46 PM Author : admin --%>

<%@page import="dao.ProductDAO"%>
<%@page import="entity.Cart"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đặt Hàng</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link type="text/css" rel="stylesheet" href="assets/css/font.css" />
    <link type="text/css" rel="stylesheet" href="assets/css/swiper-bundle.min.css">
    <link type="text/css" rel="stylesheet" href="assets/css/header.css">
    <link type="text/css" rel="stylesheet" href="assets/css/footer.css">
    <link type="text/css" rel="stylesheet" href="assets/images/icons/icomoon/style.css" />
    <link type="text/css" rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
    <link type="text/css" rel="stylesheet" href="assets/css/payment.css" />
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
        <section class="delivery" id="delivery">
            <div class="delivery__detail-control">
                <ul class="detail__control-list">
                    <li>
                        <a href="#">TRANG CHỦ</a>
                    </li>
                    <li>
                        <a href="#">GIỎ HÀNG</a>
                    </li>
                    <li>
                        <a href="#" style="color: #141414; font-weight: 600;">THÔNG TIN GIAO HÀNG</a>
                    </li>
                </ul>
            </div>

            <div class="delivery__container">
                <!-- logo-delevery -->
                <!-- <img src="./imgs/payment/logo.png" alt="" class="img__logo">   -->
                <div class="delivery__content">
                    <div class="delivery__content-coll">
                        <div class="delivery__content-info">
                            <div>
                                <p class="delivery__content-head">THÔNG TIN GIAO HÀNG</p>
                                <!-- <p class="delivery__content-des">Bạn đã có tài khoản?
                                    <a href=""><span style="color: black;">Đăng nhập</span></a>
                                </p> -->
                            </div>
                            <form action="payment" method="post">
                                <div class="form__list">
                                    <input name="name" type="text" placeholder="Họ và tên" value="${sessionScope.name}">
                                    <input name="mobiPhone" type="tel" placeholder="Số điện thoại" value="${sessionScope.mobiPhone}">
                                </div>
                                <input name="email" type="email" placeholder="Email" value="${sessionScope.email}">
                                <input name="address" type="" placeholder="Địa chỉ giao hàng" value="${sessionScope.address}">
                                <input name="note" type="text" placeholder="Ghi chú" style="height: 112px;">

                                <h3>Phương thức thanh toán</h3>

                                <div class="delivery__content-method">
                                    <ul>
                                        <li>
                                            <input type="radio" name="TypeMethod" id="radio-active1" checked value="COD">
                                            <label for="radio-active1">Thanh toán khi nhận hàng (COD)</label>
                                        </li>
    
                                        <li>
                                            <input type="radio" name="TypeMethod" id="radio-active2" value="Transfer">
                                            <label for="radio-active2">Thanh toán chuyển khoản</label>
                                        </li>
    
    
                                        <li>
                                            <input type="radio" name="TypeMethod" id="radio-active3" value="Domestic portal">
                                            <label for="radio-active3">Thanh toán trực tuyến cổng nội địa (ATM/ Internet banking,..)</label>
                                        </li>
    
                                        <li>
                                            <input type="radio" name="TypeMethod" id="radio-active4" value="International gateway">
                                            <label for="radio-active4">Thanh toán trực tuyến cổng quốc tế (Visa/ Mastercard/Paypal,..)</label>
                                        </li>
                                    </ul>
                                </div>

                                <div class="delivery__content-cta">
                                    <div>
                                        <img src="assets/images/icons/Arrow-left.svg" alt="">
                                        <a href="mycart" class="delivery__cta-cart">GIỎ HÀNG</a>
                                    </div>
                                    <button type="submit" class="delivery__cta-payment">HOÀN TẤT ĐƠN HÀNG</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    
                    <%
                        List<Cart> cartOrder =(List<Cart>) session.getAttribute("cartOrder");
                    %>
                    
                    <div class="delivery__content-colr">
                        <div class="delivery__content-pro">
                            <%
                            for(Cart tempCart: cartOrder){   
                            %>
                                <div class="product">
                                    <% String url = new ProductDAO().GetProductImageByProductId(tempCart.getProductDetailId().substring(0, tempCart.getProductDetailId().indexOf("_"))); %>

                                    <img src="assets/images/products/newArrivals/<%= url %>" alt="">
                                    <div class="product__info">
                                        <div>
                                            <p class="name"><%= new ProductDAO().GetProductNameByProductId(tempCart.getProductDetailId().substring(0, tempCart.getProductDetailId().indexOf("_"))) %></p>
                                            <p class="size"><%= tempCart.getProductDetailId() %> - Số Lượng: <%= tempCart.getCount() %> </p>
                                        </div>
                                        <p class="price">Giá cả: <%= new ProductDAO().GetProductCostByProductId(tempCart.getProductDetailId().substring(0, tempCart.getProductDetailId().indexOf("_"))) %> </p>
                                    </div>
                                </div>
                            
                            <% 
                            } 
                            %>
                            
                            

                            <div class="voucher">
                                <input type="text" placeholder="Mã giảm giá">
                                <p>SỬ DỤNG</p>
                            </div>
                            <%
                                Integer provisional = Integer.valueOf(String.valueOf(session.getAttribute("orderTotal")));
                                Integer shippingFee = 30000;
                                Integer total = provisional + shippingFee;
                            %>
                    
                            <div class="provisional">
                                <p>Tạm tính <span><%= provisional %> VNĐ</span></p>
                                <p>Phí vận chuyển <span><%= shippingFee %></span></p>
                            </div>

                            <div class="total">
                                <p>Tổng cộng <span><%= total %> VNĐ</span></p>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </section>
    </div>
    <%@include file="/common/footer.jsp" %>

    <script src="assets/js/overlay-hidden.js"></script>
    <script src="assets/js/backtotop.js"></script>
</body>

</html>