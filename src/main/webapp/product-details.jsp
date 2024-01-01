<%-- Document : product-details Created on : Nov 19, 2023, 10:19:43 AM Author : admin --%>

<%@page import="entity.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Chi tiết sản phẩm</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" href="assets/css/font.css" />
        <link rel="stylesheet" href="assets/css/header.css">
        <link rel="stylesheet" href="assets/css/footer.css">
        <link rel="stylesheet" href="assets/css/swiper-bundle.min.css">
        <link rel="stylesheet" href="assets/images/icons/icomoon/style.css" />
        <link rel="stylesheet" type="text/css"
            href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
        <link rel="stylesheet" href="assets/css/product-detail.css" />
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
        <% 
            Product product = (Product)request.getAttribute("product");
        %>
        <div class="container">
            <section class="product" id="product">
                <div class="product__detail">
                    <div class="product__detail-control">
                        <ul class="detail__control-list">
                            <li>
                                <a href="/ThePatternShop">TRANG CHỦ</a>
                            </li>
                            <li>
                                <a href="#">SẢN PHẨM</a>
                            </li>
                            <li>
                                <a href="#" style="color: #141414; font-weight: 600;">CHI TIẾT SẢN PHẨM</a>
                            </li>
                        </ul>
                    </div>

                    <div class="product__detail-container">
                        <div class="detail__img">
                            <div class="detail__img-colr">
                                <img src="assets/images/products/newArrivals/<%=product.getProductImage()%>" alt="" style="width: 100%;">
                            </div>
                        </div>

                        <div class="detail__container">
                            <div class="detail__content">
                                <div class="detail__content-title">
                                    <p class="detail__content-head"><%= product.getProductName() %></p>
                                    <p class="detail__content-code">Mã sản phẩm: <%= product.getProductId() %></p>
                                    <p class="detail__content-status">
                                        Tình trạng: <span>CÒN HÀNG</span>
                                    </p>
                                </div>

                                <p class="detail__content-price"><%= product.getProductCost() %> VND</p>

                                <div class="detail__content-quantity">
                                    <p>SỐ LƯỢNG</p>
                                    <div>
                                        <img src="assets/images/icons/Minus.svg" alt="" onclick="decrementQuantity()">
                                        <span class="content-quantity" id="quantity">01</span>
                                        <img src="assets/images/icons/Plus.svg" alt="" onclick="incrementQuantity()">
                                    </div>
                                </div>

                                <div class="detail__content-color">
                                    <p>MÀU SẮC</p>
                                    <div>
                                        <img class="selected" src="assets/images/icons/Black.png" alt="" onclick="selectColor(this)">
                                        <img src="assets/images/icons/Gray.png" alt="" onclick="selectColor(this)">
                                        <img src="assets/images/icons/Brown.png" alt="" onclick="selectColor(this)">
                                    </div>
                                </div>

                                <div class="detail__content-size">
                                    <p>KÍCH CỠ</p>
                                    <ul>
                                        <li class="active" onclick="changeSize(this)">
                                            <span>M</span>
                                        </li>
                                        <li onclick="changeSize(this)">
                                            <span>L</span>
                                        </li>
                                        <li onclick="changeSize(this)">
                                            <span>XL</span>
                                        </li>
                                        <li onclick="changeSize(this)">
                                            <span>2XL</span>
                                        </li>
                                    </ul>
                                    <div class="detail__content-size-suggest">
                                        <img src="assets/images/icons/Ruler.svg" alt="">
                                        <p>Gợi ý chọn size</p>
                                    </div>
                                </div>
                            </div>

                            <!-- <div class="detail__content-cta">
                                <p class="cta__second">THÊM VÀO GIỎ HÀNG</p>
                                <p class="cta__primary">MUA NGAY</p>
                            </div> -->

                            <form method="POST" action="addtocart" class="detail__content-cta">
                                <input type="hidden" name="productId" value="<%= product.getProductId() %>">
                                <input type="hidden" name="sizeId" id="_size-input">
                                <input type="hidden" name="colorId" id="_color-input">
                                <input type="hidden" name="quantity" id="_quantity-input">
                                <button type="submit" class="cta__second">THÊM VÀO GIỎ HÀNG</button>
                                <a href="buynow"><p class="">MUA NGAY</p></a>
                            </form>
                        </div>
                    </div>
                </div>

                <!-- product description -->
                <div class="product__des">
                    <div class="product__des-item">
                        <div class="des__item-content">
                            <p class="des__item-head">MÔ TẢ</p>
                            <img src="assets/images/icons/Arrow-down.svg" alt="" class="des__item-icon" id="count1" onclick="toggleContent(this)">
                        </div>
                        <p id="des__item-content1" class="product__des-list hidden-content">
                            <%= product.getProductDescription() %>
                            </p>
                    </div>
                    <div class="product__des-item">
                        <div class="des__item-content">
                            <p class="des__item-head">THÔNG SỐ SẢN PHẨM</p>
                            <img src="assets/images/icons/Arrow-down.svg" alt="" class="des__item-icon" id="count2" onclick="toggleContent(this)">
                        </div>
                        <p id="des__item-content2" class="product__des-list hidden-content">
                            - mày có những size gì?
                            <br>
                            - mày có những màu gì ?
                            <br>
                            - số lượng còn lại bao nhiêu ?
                        </p>
                    </div>

                    <div class="product__des-item">
                        <div class="des__item-content">
                            <p class="des__item-head">CÁCH THỨC MUA HÀNG</p>
                            <img src="assets/images/icons/Arrow-down.svg" alt="" class="des__item-icon" id="count3" onclick="toggleContent(this)">
                        </div>
                        <p id="des__item-content3" class="product__des-list hidden-content">
                            - Sản phẩm Áo nỉ chui đầu Corduroy Bomber CB123 chính là mẫu
                            thiết kế mới nhất
                            cho mùa đông này
                        </p>
                    </div>

                    <div class="product__des-item">
                        <div class="des__item-content">
                            <p class="des__item-head">CHÍNH SÁCH ĐỔI HÀNG</p>
                            <img src="assets/images/icons/Arrow-down.svg" alt="" class="des__item-icon" id="count4" onclick="toggleContent(this)">
                        </div>
                        <p id="des__item-content4" class="product__des-list hidden-content">
                            - Sản phẩm Áo nỉ chui đầu Corduroy Bomber CB123 chính là mẫu
                            thiết kế mới nhất
                            cho mùa đông này
                        </p>
                    </div>
                </div>





                <!-- <div class="product__suggest">
                    <p class="product__suggest-head">CÓ THỂ BẠN SẼ THÍCH</p>
                    <ul class="product__suggest-list">
                        <li class="product__suggest-item">
                            <img src="./icon/Line/Heart.svg" alt="" class="product__suggest-icon">
                            <span>HÀNG MỚI</span>
                            <img src="./imgs/product-details/5.png" alt="" class="product__suggest-img">
                            <div class="product__suggest-content">
                                <div class="suggest__content-title">
                                    <p class="name">Basic Raglan Sweater</p>
                                    <p class="price">280.000 VNĐ</p>
                                </div>
                                <div class="suggest__content-color">
                                    <img src="./imgs/product-details/Color 4.png" alt="">
                                    <img src="./imgs/product-details/Color 5.png" alt="">
                                    <img src="./imgs/product-details/Color 6.png" alt="">
                                </div>
                            </div>
                        </li>
                        <li class="product__suggest-item">
                            <img src="./icon/Line/Heart.svg" alt="" class="product__suggest-icon">
                            <span>HÀNG MỚI</span>
                            <img src="./imgs/product-details/6.png" alt="" class="product__suggest-img">
                            <div class="product__suggest-content">
                                <div class="suggest__content-title">
                                    <p class="name">Basic Trousers</p>
                                    <p class="price">289.000 VNĐ</p>
                                </div>
                                <div class="suggest__content-color">
                                    <img src="./imgs/product-details/Color 5.png" alt="">
                                    <img src="./imgs/product-details/Color 6.png" alt="">
                                    <img src="./imgs/product-details/Color 7.png" alt="">
                                </div>
                            </div>
                        </li>
                        <li class="product__suggest-item">
                            <img src="assets/images/icons/Heart.svg" alt="" class="product__suggest-icon">
                            <span>Trending</span>
                            <img src="./imgs/product-details/7.png" alt="" class="product__suggest-img">
                            <div class="product__suggest-content">
                                <div class="suggest__content-title">
                                    <p class="name">Zip-up Hoodie</p>
                                    <p class="price">350.000 VNĐ</p>
                                </div>
                                <div class="suggest__content-color">
                                    <img src="./imgs/product-details/Color 4.png" alt="">
                                    <img src="./imgs/product-details/Color 5.png" alt="">
                                    <img src="./imgs/product-details/Color 6.png" alt="">
                                </div>
                            </div>
                        </li>
                    </ul>
                </div> -->
            </section>
        </div>

        <%@include file="/common/footer.jsp" %>
        <script>
            // size Selected
            function changeSize(element) {
                document.querySelectorAll('.detail__content-size ul li').forEach(function(item) {
                    item.classList.remove('active');
                });
                element.classList.add('active');
                document.getElementById('_size-input').value = element.textContent;

            }
            // color Selected
            function selectColor(element) {
                let colorImages = document.querySelectorAll('.detail__content-color img');
                colorImages.forEach(img => img.classList.remove('selected'));
                element.classList.add('selected');
                document.getElementById('_color-input').value = element.alt;
                console.log(element.alt);
            }

            // counter
            let currentQuantity = 1;

            function incrementQuantity() {
                currentQuantity++;
                updateQuantity();
            }

            function decrementQuantity() {
                if (currentQuantity > 1) {
                    currentQuantity--;
                    updateQuantity();
                }
            }

            function updateQuantity() {
                if (currentQuantity < 10) {
                    document.getElementById('quantity').innerText = '0' + currentQuantity;
                    return;
                }
                document.getElementById('quantity').innerText = currentQuantity;
                document.getElementById('_quantity-input').value = currentQuantity;
            }


            function toggleContent(element) {
                var contentId = "des__item-content" + element.id.slice(-1);
                var content = document.getElementById(contentId);
                if (content) {
                    if (content.classList.contains("hidden-content")) {
                        content.classList.remove("hidden-content");
                        element.style.transform = 'rotate(180deg)';
                        
                    } else {
                        content.classList.add("hidden-content");
                        element.style.transform = 'rotate(0deg)';
                    }
                } else {
                    console.error("Element not found: " + contentId);
                }
            }
        </script>
        <script src="assets/js/backtotop.js"></script>
        <script src="assets/js/overlay-hidden.js"></script>
    </body>

</html>