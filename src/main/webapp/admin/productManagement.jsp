<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tổng quan</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="assets/css/product.css">
</head>

<body>
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

        <div class="dashboard">
            <h1>Quản lý sản phẩm</h1>
            <div class="content">
                <div class="content-top">
                    <div class="content-title">
                        <h3>Sản phẩm</h3>
                        <div class="search-box">
                            <i class="fa-solid fa-magnifying-glass"></i>
                            <input type="text" class="input-search btn-search" placeholder="Tìm kiếm sản phẩm">
                        </div>
                    </div>
                    <div class="arrange">
                        <i class="fa-solid fa-bars"></i>
                        <i class="fa-solid fa-grip-vertical"></i>
                    </div>
                </div>

                <!-- Table -->
                <table>
                    <tr>
                        <th class="product-all">
                            <input type="checkbox" class="check-box">
                            <span>Tất cả</span>
                        </th>
                        <th>Đơn giá</th>
                        <th class="active">Trạng thái</th>
                        <th>Doanh Thu</th>
                        <th>Số lượng</th>
                        <th>Lượt xem</th>
                    </tr>
                    <tr class="product-content">
                        <td class="shirt-product">
                            <input type="checkbox" class="check-box">
                            <img src="./assets/images/swt1.webp" alt="product">
                            <span><strong>Cotton Sweater</strong></span>
                        </td>
                        <td>349.000 VNĐ</td>
                        <td class="active"><span>Còn hàng</span></td>
                        <td>34M VNĐ</td>
                        <td>100</td>
                        <td>1001</td>
                    </tr>
                    <tr class="product-content">
                        <td class="shirt-product">
                            <input type="checkbox" class="check-box">
                            <img src="./assets/images/swt.webp" alt="product">
                            <span><strong>Merino Wool Sweater</strong></span>
                        </td>
                        <td>349.000 VNĐ</td>
                        <td class="active"><span>Còn hàng</span></td>
                        <td>34M VNĐ</td>
                        <td>100</td>
                        <td>1001</td>
                    </tr>
                    <tr class="product-content">
                        <td class="shirt-product">
                            <input type="checkbox" class="check-box">
                            <img src="./assets/images/swt2.jpg" alt="product">
                            <span><strong>Cotton Sweater</strong></span>
                        </td>
                        <td>349.000 VNĐ</td>
                        <td class="active"><span>Còn hàng</span></td>
                        <td>34M VNĐ</td>
                        <td>100</td>
                        <td>1001</td>
                    </tr>
                    <tr class="product-content">
                        <td class="shirt-product">
                            <input type="checkbox" class="check-box">
                            <img src="./assets/images/swt3.webp" alt="product">
                            <span><strong>Cotton Shirt</strong></span>
                        </td>
                        <td>349.000 VNĐ</td>
                        <td class="active"><span>Còn hàng</span></td>
                        <td>34M VNĐ</td>
                        <td>100</td>
                        <td>1001</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

</body>

</html>