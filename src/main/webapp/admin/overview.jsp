<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang Chủ</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="./assets/css/product.css">
    <link rel="stylesheet" href="./assets/css/overview.css">
    <link rel="stylesheet" href="./assets/css/addProduct.css">    
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
                <i class="icon-top-nav fa-solid fa-message"></i>
                <i class="icon-top-nav fa-regular fa-bell"></i>
                <img src="./assets/images/team3.jpg" alt="">
            </div>
        </div>

        <div class="content">
            <div class="inner-content">
                <h1>Tổng quan</h1>
                <img src="./assets/images/dashboard2.jpg" alt="">
                <img src="./assets/images/dashboard1.jpg" alt="">
            </div>
            <div class="inner-content-right">
                <div class="preview">
                    <div class="inner-preview">
                        <div class="title">
                            <div></div>
                            <h2>Sản phẩm nổi bật</h2>
                        </div>
                        <div class="preview-content">
                            <div class="preview-title">
                                <span>Sản phẩm</span>
                                <span>Doanh thu</span>
                            </div>
                            <div class="preview-product">
                                <div class="preview-left">
                                    <img src="./assets/images/swt1.webp" alt="">
                                    <span><b>Cotton Sweater</b></span>
                                </div>
                                <div class="preview-right">
                                    <span>34M VNĐ</span>
                                    <span claas="active"><b>Active</b></span>
                                </div>
                            </div>
                            <div class="preview-product">
                                <div class="preview-left">
                                    <img src="./assets/images/swt3.webp" alt="">
                                    <span><b>Cotton Sweater</b></span>
                                </div>
                                <div class="preview-right">
                                    <span>34M VNĐ</span>
                                    <span claas="active"><b>Active</b></span>
                                </div>
                            </div>
                            <div class="preview-product">
                                <div class="preview-left">
                                    <img src="./assets/images/swt2.jpg" alt="">
                                    <span><b>Cotton Sweater</b></span>
                                </div>
                                <div class="preview-right">
                                    <span>34M VNĐ</span>
                                    <span claas="active"><b>Active</b></span>
                                </div>
                            </div>
                        </div>
                        <button class="btn all-product"><b>All products</b></button>
                    </div>
                </div>
                <div class="preview">
                    <div class="inner-preview">
                        <div class="title">
                            <div></div>
                            <h2>Yêu cầu hoàn trả</h2>
                        </div>
                        <div class="preview-content">
                            <div><i class="fa-solid fa-bag-shopping"></i></div>
                            <div>You have <b>52 open refund requests</b> to action. This includes <b>8 new
                                    requests</b>. 👀</div>
                        </div>
                        <button class="btn all-product"><b>Review refund requests</b></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>