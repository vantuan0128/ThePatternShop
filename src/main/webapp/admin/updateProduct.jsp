<%-- 
    Document   : updateProduct
    Created on : Dec 31, 2023, 9:45:34 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Trang Chủ</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./assets/fontss/fontawesome-free-6.5.1-web/css/all.min.css">
        <link rel="stylesheet" href="./assets/css/reset.css">
        <link rel="stylesheet" href="./assets/css/base.css">
        <link rel="stylesheet" href="./assets/css/dashboard.css">
        <link rel="stylesheet" href="./assets/css/updateProduct.css">

    </head>
    <body>
        <div class="content" id="addproduct">
            <div class="inner-content__addproduct">
                <h1>Chỉnh sửa thông tin sản phẩm</h1>
                <div class="product-infor">
                    <h3>Tên và Mô tả sản phẩm</h3>
                    <form action="AddProduct" method="POST" enctype="multipart/form-data">
                        <label class="product-infor__title"><strong>Mã Sản Phẩm</strong></label>
                        <input type="text" class="box-title" name="Id">

                        <label class="product-infor__title"><strong>Tiêu đề sản phẩm</strong></label>
                        <input type="text" class="box-title" name="Name">
                        <label class="product-infor__title" for=""><strong>Mô tả sản phẩm</strong></label>
                        <div class="text-box">
                            <div class="box-top">
                                <div class="top-left">
                                    <i class="fa-solid fa-bold"></i>
                                    <i class="fa-solid fa-italic"></i>
                                    <i class="fa-solid fa-underline"></i>
                                    <i class="fa-regular fa-face-smile"></i>
                                    <i class="fa-solid fa-link"></i>
                                    <i class="fa-solid fa-align-justify"></i>
                                    <i class="fa-solid fa-align-center"></i>
                                </div>
                                <div class="top-right">
                                    <i class="fa-solid fa-arrow-left"></i>
                                    <i class="fa-solid fa-arrow-right"></i>
                                </div>
                            </div>
                            <textarea name="Description" id="" cols="30" rows="10"></textarea>
                        </div>
                        <h3>Hình ảnh</h3>
                        <div class="product-images">
                            <input type="file" name="imageInput" id="imageInput" accept="image/*" multiple>
                        </div>
                        <h3>Giá sản phẩm</h3>
                        <div class="product__box-price">
                            <span>VNĐ</span>
                            <input type="text" name="Cost">
                        </div>

                        <div class="form-save">
                            <a href="#"><button class="btn save--btn">Hủy</button></a>
                            <button type="submit" class="btn up--btn">Cập nhật</button>
                        </div>
                    </form>
                </div>
            </div>

            <div class="product__preview">
                <div class="product__card">
                    <div class="product__card-container">
                        <div class="product__image-content">
                            <a href="">
                                <img src="assets/images/products/newArrivals/A3.png" alt="Front">
                            </a>
                        </div>
                    </div>
                    <div class="product__card-category">
                        <div class="card__category__infor">
                            <p style="font-weight: 400;
                               font-size: 20px;
                               line-height: 26px;">
                               aa</p>
                            <p style="    margin-top: 8px;
                               font-weight: 700;
                               font-size: 22px;
                               line-height: 22px;">
                               111 VNĐ</p>
                        </div>

                        <div class="card__category-color"
                         style="display: flex; justify-content:space-between; gap: 8px;">
                            <img src="assets/images/icons/colors/Color_01.png" alt="" style="width: 24px; height:24px">
                            <img src="assets/images/icons/colors/Color_02.png" alt="" style="width: 24px; height:24px">
                            <img src="assets/images/icons/colors/Color_03.png" alt="" style="width: 24px; height:24px">
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
