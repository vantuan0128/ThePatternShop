<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!-- <!DOCTYPE html>
<html>

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang Chủ</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="assets/css/product.css">
    <link rel="stylesheet" href="assets/css/addProduct.css">
</head>

<body> -->
    <div class="wrapper">
        <div class="top-bar">
            <div class="left">
                <div class="search">
                    <button class="btn icon-search"><i class="fa-solid fa-magnifying-glass"></i></button>
                    <input type="text" class="input-search" placeholder="Search or type a command">
                </div>
            </div>
            <div class="right">
                <button class="btn btn-create">
                    <i class="fa-solid fa-plus"></i>
                    <span>Create</span>
                </button>
                <i class="icon-top-nav fa-solid fa-message"></i>
                <i class="icon-top-nav fa-regular fa-bell"></i>
                <img src="./assets/images/team3.jpg" alt="">
            </div>
        </div>

        <div class="content">
            <div class="content-box">
                <div class="inner-content">
                    <h1>Thêm sản phẩm mới</h1>
                    <div class="product-infor">
                        <h3>Tên và Mô tả sản phẩm</h3>
                        <form action="AddProduct" method="POST" enctype="multipart/form-data">
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
                                <input type="file" name="imageInput" id="imageInput" accept="image/*" multiple >                                 
                            </div>
                            <h3>Thuộc tính</h3>
                            <div class="product__size-color">
                                <div class="product__select-category" id="select-size">
                                    <label for="size"><b>Kích thước</b></label>
                                    <div class="product__checkbox-group">
                                        <input type="checkbox" id="SCheckbox" class="checkbox" data-category="size">
                                        <label for="SCheckbox">S</label>
                                    </div>
                                    <div class="product__checkbox-group">
                                        <input type="checkbox" id="MCheckbox" class="checkbox" data-category="size">
                                        <label for="MCheckbox">M</label>
                                    </div>
                                    <div class="product__checkbox-group">
                                        <!-- <input type="checkbox" id="size3" name="size" value="L"> -->
                                        <input type="checkbox" id="LCheckbox" class="checkbox" data-category="size">
                                        <label for="LCheckbox">L</label>
                                    </div>
                                    <div class="product__checkbox-group">
                                        <!-- <input type="checkbox" id="size4" name="size" value="XL"> -->
                                        <input type="checkbox" id="XLCheckbox" class="checkbox" data-category="size">
                                        <label for="XLCheckbox">XL</label>
                                    </div>
                                    <div class="product__checkbox-group">
                                        <!-- <input type="checkbox" id="size5" name="size" value="2XL"> -->
                                        <input type="checkbox" id="2XLCheckbox" class="checkbox" data-category="size">
                                        <label for="2XLCheckbox">2XL</label>
                                    </div>
                                </div>

                                <div class="product__select-category" id="select-color">
                                    <label for="color"><b>Màu sắc</b></label>
                                    <div class="product__checkbox-group">
                                        <input type="checkbox" id="grayCheckbox" class="checkbox" data-category="color">
                                        <div class="product__checkbox-color color1"></div>
                                    </div>
                                    <div class="product__checkbox-group">
                                        <input type="checkbox" id="brownCheckbox" class="checkbox" data-category="color">
                                        <div class="product__checkbox-color color2"></div>
                                    </div>
                                    <div class="product__checkbox-group">
                                        <input type="checkbox" id="blackCheckbox" class="checkbox" data-category="color">
                                        <div class="product__checkbox-color color3"></div>
                                    </div>
                                    <div class="product__checkbox-group">
                                        <input type="checkbox" id="whiteCheckbox" class="checkbox" data-category="color">
                                        <div class="product__checkbox-color color4"></div>
                                    </div>
                                    <div class="product__checkbox-group">
                                        <input type="checkbox" id="redCheckbox" class="checkbox" data-category="color">
                                        <div class="product__checkbox-color color5"></div>
                                    </div>
                                </div>
                            </div>

                            <h3>Xác nhận số lượng</h3>
                            <table class="product__table-result">
                                <thead>
                                    <tr>
                                        <th>Kích thước</th>
                                        <th>Màu sắc</th>
                                        <th>Số lượng</th>
                                    </tr>
                                </thead>
                                <tbody id="resultTable">
                                </tbody>
                            </table>

                            <div class="form-save">
                                <button class="btn save--btn">Lưu nháp</button>
                                <button type="submit" class="btn up--btn">Đăng ngay</button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="preview">
                    <div class="inner-preview">
                        <div class="preview-title">
                            <span><strong>Preview</strong></span>
                            <i class="fa-solid fa-expand"></i>
                        </div>
                        <div class="preview-top">
                            <img src="./assets/images/swt2.jpg" alt="sweater">
                            <div class="sale">
                                <span>SALE OFF</span>
                                <i class="fa-regular fa-heart"></i>
                            </div>
                        </div>
                        <div class="preview-bottom">
                            <div class="bottom-left">
                                <span>Cotton Sweater</span>
                                <span><strong>280.000 VNĐ</strong></span>
                            </div>
                            <div class="bottom-right">
                                <div></div>
                                <div></div>
                                <div></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!-- </body>
</html> -->