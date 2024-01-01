<%-- Document : payment Created on : Dec 26, 2023, 6:51:46 PM Author : admin --%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thanh toán</title>
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
                            <form action="#">
                                <div class="form__list">
                                    <input type="text" placeholder="Họ và tên">
                                    <input type="tel" placeholder="Số điện thoại">
                                </div>
                                <input type="email" placeholder="Email">
                                <input type="" placeholder="Địa chỉ giao hàng">
                                <input type="text" placeholder="Ghi chú" style="height: 112px;">
                                
                                <!-- <div class="delivery__content-method"> -->
                                    <!-- <p class="delivery__content-head">PHƯƠNG THỨC THANH TOÁN</p>
                                    <div class="delivery__content-choose">
                                        <div>
                                            <input type="radio" name="Type" id="radio-active1" checked>
                                            <p>Thanh toán khi nhận hàng ( COD )</p>
                                        </div>
                                        <div>
                                            <input type="radio" name="Type" id="radio-active2">
                                            <p>Thanh toán chuyển khoản</p>
                                        </div>
                                        <div>
                                            <input type="radio" name="Type" id="radio-active3">
                                            <p>Thanh toán trực tuyến cổng nội địa (ATM/ Internet banking,..)</p>
                                        </div>
                                        <div>
                                            <input type="radio" name="Type" id="radio-active4">
                                            <p>Thanh toán trực tuyến cổng quốc tế (Visa/ Mastercard/Paypal,..)</p>
                                        </div>
                                    </div> -->
                                <!-- </div> -->

                                <h3>Phương thức thanh toán</h3>

                                <div class="delivery__content-method">
                                    <ul>
                                        <li>
                                            <input type="radio" name="TypeMethod" id="radio-active1" checked>
                                            <label for="radio-active1">Thanh toán khi nhận hàng (COD)</label>
                                        </li>
    
                                        <li>
                                            <input type="radio" name="TypeMethod" id="radio-active2">
                                            <label for="radio-active2">Thanh toán chuyển khoản</label>
                                        </li>
    
    
                                        <li>
                                            <input type="radio" name="TypeMethod" id="radio-active3">
                                            <label for="radio-active3">Thanh toán trực tuyến cổng nội địa (ATM/ Internet banking,..)</label>
                                        </li>
    
                                        <li>
                                            <input type="radio" name="TypeMethod" id="radio-active4">
                                            <label for="radio-active4">Thanh toán trực tuyến cổng quốc tế (Visa/ Mastercard/Paypal,..)</label>
                                        </li>
                                    </ul>
                                </div>

                                <div class="delivery__content-cta">
                                    <div>
                                        <img src="assets/images/icons/Arrow-left.svg" alt="">
                                        <a href="" class="delivery__cta-cart">GIỎ HÀNG</a>
                                    </div>
                                    <button type="submit" class="delivery__cta-payment">HOÀN TẤT ĐƠN HÀNG</button>
                                </div>
                            </form>
                        </div>

                        
                    </div>

                    <div class="delivery__content-colr">
                        <div class="delivery__content-pro">
                            <div class="product">
                                <img src="assets/images/1.png" alt="">
                                <div class="product__info">
                                    <div>
                                        <p class="name">Corduroy Bomber</p>
                                        <p class="size">Q: 01 - Black - XL </p>
                                    </div>
                                    <p class="price">349.000 VNĐ</p>
                                </div>
                            </div>

                            <div class="product">
                                <img src="assets/images/1.png" alt="">
                                <div class="product__info">
                                    <div>
                                        <p class="name">Corduroy Bomber</p>
                                        <p class="size">Q: 01 - Black - XL </p>
                                    </div>
                                    <p class="price">349.000 VNĐ</p>
                                </div>
                            </div>


                            <div class="product">
                                <img src="assets/images/1.png" alt="">
                                <div class="product__info">
                                    <div>
                                        <p class="name">Corduroy Bomber</p>
                                        <p class="size">Q: 01 - Black - XL </p>
                                    </div>
                                    <p class="price">349.000 VNĐ</p>
                                </div>
                            </div>

                            <div class="voucher">
                                <input type="text" placeholder="Mã giảm giá">
                                <p>SỬ DỤNG</p>
                            </div>

                            <div class="provisional">
                                <p>Tạm tính <span>349.000 VNĐ</span></p>
                                <p>Phí vận chuyển <span>-</span></p>
                            </div>

                            <div class="total">
                                <p>Tổng cộng <span>349.000 VNĐ</span></p>
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