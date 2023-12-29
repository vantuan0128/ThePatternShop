<%-- Document : cart Created on : Dec 26, 2023, 10:52:21 AM Author : admin --%>

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
        <link type="text/css" rel="stylesheet" href="assets/css/carttable.css" />
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
            <section class="cart" id="cart">
                <div class="cart__detail">
                    <div class="cart__detail-control">
                        <ul class="detail__control-list">
                            <li>
                                <a href="/ThePatternShop">TRANG CHỦ</a>
                            </li>
                            <li>
                                <a href="#" style="color: #141414; font-weight: 600;">GIỎ HÀNG</a>
                            </li>
                        </ul>
                    </div>

                    <div class="cart__container">
                        <p class="cart__container-head">GIỎ HÀNG CỦA BẠN</p>
                        <div class="cart__container-board">
                            <table class="cart__board-pro">
                                <thead class="cart__board-title">
                                    <tr class="cart__title-list">
                                        <th>SẢN PHẨM</th>
                                        <th>TÊN SẢN PHẨM</th>
                                        <th>MÔ TẢ</th>
                                        <th>ĐƠN GIÁ</th>
                                        <th>SỐ LƯỢNG</th>
                                        <th>TỔNG</th>
                                        <th>THAO TÁC</th>
                                        <th><span>CHỌN</span>&nbsp<input type="checkbox" id="select-all" checked style="width:16px; height: 16px;"></th>
                                    </tr> 
                                </thead>

                                <tbody class="cart__board-list">
                                    <tr class="cart__board-content">
                                        <td><img src="assets/images/products/newArrivals/Fr1_01.png" alt=""></td>
                                        <td>Corduroy Bomber</td>
                                        <td>Đen - Size M</td>
                                        <td class="cart__pro-cost">349000 VNĐ</td>
                                        <td>
                                            <div class="cart__board-quantity">
                                                <p class="quantity-decrease">-</p>
                                                <p class="cart__pro-quantity">01</p>
                                                <p class="quantity-increase">+</p>
                                            </div>
                                        </td>
                                        <td class="cart__pro-total">349000 VNĐ</td>
                                        <td class="cart__pro-btn-delete"><a href=""><span style="color: #DB4040; text-decoration: underline;">XÓA</span></a></td>
                                        <td class="cart__pro-checkbox"><input type="checkbox" style="width:16px; height: 16px;"></td>
                                    </tr>


                                    <tr class="cart__board-content">
                                        <td><img src="assets/images/products/newArrivals/Fr1_01.png" alt=""></td>
                                        <td>Corduroy Bombe</td>
                                        <td>Đen - Size M</td>
                                        <td class="cart__pro-cost">349000 VNĐ</td>
                                        <td>
                                            <div class="cart__board-quantity">
                                                <p class="quantity-decrease">-</p>
                                                <p class="cart__pro-quantity">01</p>
                                                <p class="quantity-increase">+</p>
                                            </div>
                                        </td>
                                        <td class="cart__pro-total">349000 VNĐ</td>
                                        <td class="cart__pro-btn-delete"><a href=""><span style="color: #DB4040; text-decoration: underline;">XÓA</span></a></td>
                                        <td class="cart__pro-checkbox"><input type="checkbox" style="width:16px; height: 16px;"></td>
                                    </tr>
                                </tbody>
                            </table>

                            
                            <div class="cart__board-total">
                                <p class="cart__gross" id="sumPro">TỔNG SẢN PHẨM: <span>0</span></p>
                                <p class="cart__provisional" id="sumTotal">TẠM TÍNH: <span>0 VNĐ</span></p>
                            </div>
                        </div>
                        <div class="cart__container-cta">
                            <a href="all-product-sale.html" class="cart__cta-conti">TIẾP TỤC MUA SẮM</a>
                            <a href="./payment.html" class="cart__cta-payment">TIẾN HÀNH THANH TOÁN</a>
                        </div>
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
                            <img src="./icon/Line/Heart.svg" alt="" class="product__suggest-icon">
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
            window.onload = function() {
                var checkboxes = document.querySelectorAll('.cart__pro-checkbox input');
                for (var i = 0; i < checkboxes.length; i++) {
                    checkboxes[i].checked = true;
                }
                updateTotal();
            };
            document.getElementById('select-all').addEventListener('change', function() {
                var checkboxes = document.querySelectorAll('.cart__pro-checkbox input');
                for (var i = 0; i < checkboxes.length; i++) {
                    checkboxes[i].checked = this.checked;
                }
                updateTotal();
            });

            let rows = document.querySelectorAll('.cart__board-content');
            rows.forEach(row => {
                let increaseButton = row.querySelector('.quantity-increase');
                increaseButton.addEventListener('click', function() {
                    updateQuantity(row, 1);
                    updateTotal();
                });

                let decreateButton = row.querySelector('.quantity-decrease');
                decreateButton.addEventListener('click', function() {
                    updateQuantity(row, -1);
                    updateTotal();
                });

                let checkbox = row.querySelector('.cart__pro-checkbox input');
                checkbox.addEventListener('change', function() {
                    updateCheckbox(row, checkbox.checked);
                    updateTotal();
                });
            });

            function updateTotal(){
                let rows = document.querySelectorAll('.cart__board-content');
                var sumTotalElement = document.getElementById("sumTotal").querySelector("span");
                var totalProElement = document.getElementById("sumPro").querySelector("span");

                var totalPro = 0;
                var sumTotal = 0;

                rows.forEach(row => {
                    var quantityElement = row.querySelector(".cart__pro-quantity");
                    var totalElement = row.querySelector(".cart__pro-total");
                    var checkbox = row.querySelector(".cart__pro-checkbox").querySelector("input");
            
                    var currentQuantity = parseInt(quantityElement.innerText);
                    var currentTotal = parseFloat(totalElement.innerText.replace(" VNĐ", "").replace(",", ""));
            
                    if (checkbox.checked) {
                        sumTotal += currentTotal;
                        totalPro += currentQuantity;
                    }
                });

                sumTotalElement.innerText = sumTotal + " VNĐ";
                totalProElement.innerText = totalPro;
            }

            function updateQuantity(row, change){
                var quantityElement = row.querySelector(".cart__pro-quantity");
                var priceElement = row.querySelector(".cart__pro-cost");
                var totalElement = row.querySelector(".cart__pro-total");
                var checkbox = row.querySelector(".cart__pro-checkbox").querySelector("input");
                var sumTotalElement = document.getElementById("sumTotal").querySelector("span");
                var totalProElement = document.getElementById("sumPro").querySelector("span");

                var currentQuantity = parseInt(quantityElement.innerText);
                var price = parseFloat(priceElement.innerText.replace(" VNĐ", "").replace(",", ""));
                currentQuantity += change;
                if (currentQuantity < 1) {
                    currentQuantity = 1; 
                }
            
                if(currentQuantity < 10){
                    quantityElement.innerText = '0' + currentQuantity;
                }
                else{
                    quantityElement.innerText = currentQuantity;
                }
                var newTotal = (price * currentQuantity);
                totalElement.innerText = newTotal + " VNĐ";
            }

            function updateCheckbox(row, isChecked){
                var totalElement = row.querySelector(".cart__pro-total");
                var quantityElement = row.querySelector(".cart__pro-quantity");
                var sumTotalElement = document.getElementById("sumTotal").querySelector("span");
                var totalProElement = document.getElementById("sumPro").querySelector("span");

                var total = parseInt(totalElement.innerText.replace(" VNĐ", "").replace(",", ""));
                var sumTotal = parseInt(sumTotalElement.innerText.replace(" VNĐ", "").replace(",", ""));
                
                var quantity = parseInt(quantityElement.innerText);
                var totalPro = parseInt(totalProElement.innerText);
                if (isChecked) {
                    sumTotal += total;
                    totalPro += quantity;
                } 
                else {
                    sumTotal -= total;
                    totalPro -= quantity;
                }
                sumTotalElement.innerText = sumTotal + ' VNĐ';
                totalProElement.innerText = totalPro;
            }

        </script>
        <script src="assets/js/overlay-hidden.js"></script>
        <script src="assets/js/backtotop.js"></script>
    </body>
</html>