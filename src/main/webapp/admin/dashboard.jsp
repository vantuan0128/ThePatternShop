<%@page import="entity.Customer"%>
<%@page import="dao.CustomerDAO"%>
<%@page import="java.util.List"%>
<%@page import="entity.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

    </head>

    <body>
        <div class="container">
            <!-- Sidebar -->
            <div class="sidebar">
                <div class="inner-sidebar">
                    <div class="sidebar-title">
                        <a href="#" onClick="changeContent('overview')" class="logo"><img src="./assets/images/logo.jpg"
                                                                                          alt="logo"></a>
                        <span>Xin chào, <strong>Admin</strong></span>
                    </div>
                    <div class="nav-stack">
                        <div class="nav-item">
                            <a href="#" onclick="changeContent('overview')">
                                <i class=" fa-solid fa-house"></i>
                                <span>Tổng quan</span>
                            </a>
                        </div>
                        <div class="nav-item">
                            <div class="nav-item-top">
                                <div class="nav-item-left">
                                    <a href="#" class="sub-btn">
                                        <i class="fa-solid fa-bag-shopping"></i>
                                        <span>Sản phẩm</span>
                                        <a href=""><i class="fa-solid fa-circle-plus circle-plus"></i></a>
                                        <i class="dropdown fa-solid fa-chevron-down"></i></a>
                                    <div class="sub-menu">
                                        <div class="hidden-menu">
                                            <a href="#" class="sub-item" onClick="changeContent('manageproduct')">Quản
                                                lý sản
                                                phẩm</a>
                                            <a href="#" class="sub-item" onClick="changeContent('addproduct')">Thêm sản
                                                phẩm</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="nav-item">
                            <div class="nav-item-top">
                                <div class="nav-item-left">
                                    <a href="#" class="sub-btn" onClick="changeContent('manageuser')">
                                        <i class="fa-solid fa-user"></i>
                                        <span>Khách hàng</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="nav-item">
                            <a href="">
                                <i class="fa-solid fa-shop"></i>
                                <span>Shop</span>
                            </a>
                        </div>
                        <div class="nav-item" onClick="changeContent('overview')">
                            <div class="nav-item-top">
                                <a href="#">
                                    <i class="fa-solid fa-chart-simple"></i>
                                    <span>Doanh Thu</span>
                                </a>
                                <!-- <span class="show-item"><i class="dropdown fa-solid fa-chevron-down"></i></span> -->
                            </div>
                        </div>
                        <div class="nav-item">
                            <a href="">
                                <i class="fa-solid fa-gear"></i>
                                <span>Quảng cáo</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- wrapper -->
            <div id="content-container" class="main__content">
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
                        <a href="logout2"><span>Log out</span></a>
                    </div>
                </div>

                <div class="content__wrapper">
                    <!-- overview -->
                    <div class="content" id="overview">
                        <div class="inner-content__overview">
                            <h1>Tổng quan</h1>
                            <img src="./assets/images/dashboard2.jpg" alt="">
                            <img src="./assets/images/dashboard1.jpg" alt="">
                        </div>
                        <div class="inner-content__overview-right">
                            <div class="overview__preview">
                                <div class="overview__inner-preview">
                                    <div class="overview__inner-preview__title">
                                        <div></div>
                                        <h2>Sản phẩm nổi bật</h2>
                                    </div>
                                    <div class="preview-listproduct">
                                        <div class="preview-listproduct__title">
                                            <span>Sản phẩm</span>
                                            <span>Doanh thu</span>
                                        </div>
                                        <div class="preview-product-main">
                                            <div class="preview-left">
                                                <img src="./assets/images/swt1.webp" alt="">
                                                <span><b>Cotton Sweater</b></span>
                                            </div>
                                            <div class="preview-right">
                                                <span>34M VNĐ</span>
                                                <span claas="active"><b>Active</b></span>
                                            </div>
                                        </div>
                                        <div class="preview-product-main">
                                            <div class="preview-left">
                                                <img src="./assets/images/swt3.webp" alt="">
                                                <span><b>Cotton Sweater</b></span>
                                            </div>
                                            <div class="preview-right">
                                                <span>34M VNĐ</span>
                                                <span claas="active"><b>Active</b></span>
                                            </div>
                                        </div>
                                        <div class="preview-product-main">
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
                                    <button class="btn load-all-product"><b>All products</b></button>
                                </div>
                            </div>

                            <div class="overview__preview">
                                <div class="overview__inner-preview">
                                    <div class="overview__inner-preview__title">
                                        <div></div>
                                        <h2>Yêu cầu hoàn trả</h2>
                                    </div>
                                    <div class="preview-listproduct">
                                        <div><i class="fa-solid fa-bag-shopping"></i></div>
                                        <div>You have <b>52 open refund requests</b> to action. This includes <b>8 new
                                                requests</b>.
                                            👀</div>
                                    </div>
                                    <button class="btn load-all-product"><b>Review refund requests</b></button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- manage product-->
                    <div class="content" id="manageproduct">
                        <div class="content__manageproduct">
                            <h1>Quản lý sản phẩm</h1>
                            <div class="content__manageproduct-main">
                                <div class="content__manageproduct-top">
                                    <div class="content__manageproduct-top-title">
                                        <h3>Sản phẩm</h3>
                                        <div class="content__manageproduct-top-search-box">
                                            <i class="fa-solid fa-magnifying-glass"></i>
                                            <input type="text" class="input-search btn-search"
                                                   placeholder="Tìm kiếm sản phẩm">
                                        </div>
                                    </div>
                                    <div class="content__manageproduct-arrange">
                                        <i class="fa-solid fa-bars"></i>
                                        <i class="fa-solid fa-grip-vertical"></i>
                                    </div>
                                </div>
                                <%
                                    List<Product> listproducts = (List<Product>) request.getAttribute("PRODUCT_LIST");
                                %>
                                <!-- Table -->
                                <table class="content__manageproduct-table">
                                    <thead>
                                        <tr>
                                            <th class="content__manageproduct-allproduct">
                                                <input type="checkbox" class="check-box">
                                                <span>Tất cả</span>
                                            </th>
                                            <th>Đơn giá</th>
                                            <th>Số lượng</th>
                                            <th class="active">Trạng thái</th>
                                            <th>Thao tác</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <% for(Product tempProduct : listproducts){ 
                                        %>
                                        <tr class="manageproduct__product-item">
                                            <td class="manageproduct__product-first-col">
                                                <input type="checkbox" class="check-box">
                                                <img src="./assets/images/products/newArrivals/<%= tempProduct.getProductImage()%>" alt="product">
                                                <span><strong><%= tempProduct.getProductName()%></strong></span>
                                            </td>
                                            <td><%= tempProduct.getProductCost()%> VNĐ</td>
                                            <td>100</td>
                                            <td class="active"><span>Còn hàng</span></td>
                                            <td><a href="EditProduct?productID=<%= tempProduct.getProductId()%>">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; 
                                                <a href="DeleteProduct?productID=<%= tempProduct.getProductId()%>">Delete</a></td>
                                        </tr>
                                       <% } %>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>

                    <!-- manage user-->
                    <div class="content" id="manageuser">
                        <div class="content__manageuser">
                            <h1>Danh sách người dùng</h1>
                            <div class="content__manageuser-main">
                                <div class="content__manageuser-top">
                                    <div class="content__manageuser-top-left">
                                        <div class="box"></div>
                                        <span><strong>Người dùng</strong></span>
                                    </div>
                                    <div class="content__manageuser-top-right">
                                        <div class="search">
                                            <button class="btn icon-search"><i
                                                    class="fa-solid fa-magnifying-glass"></i></button>
                                            <input type="text" class="input-search"
                                                   placeholder="Search or type a command">
                                        </div>
                                    </div>
                                </div>

                                <table class="content__manageuser-table">
                                    <thead>
                                        <tr>
                                            <th class="content__manageuser-alluser">
                                                <input type="checkbox" class="alluser__check-box">
                                                <span>Tên</span>
                                            </th>
                                            <th>Email</th>
                                            <th>Vai trò</th>
                                            <th>Trạng thái</th>
                                            <th>Thao tác</th>
                                        </tr>
                                    </thead>

                                    <tbody id="tbodyUser">
                                        <%
                                            CustomerDAO dao = new CustomerDAO();
                                            List<Customer> customer = dao.getAllCustomer();
                                            for (Customer c : customer) {
                                        %>
                                        <tr class="manageuser__user-item">
                                            <td class="manageuser__user-first-col">
                                                <input type="checkbox" class="user__check-box">
                                                <img src="assets/images/team1.png" alt="user">
                                                <div class="manageuser__user-name">
                                                    <span><strong><%= c.getName() %></strong></span>
                                                    <span><%= c.getId() %></span>
                                                </div>
                                            </td>
                                            <td class="manageuser__user-email"><%= c.getEmail() %></td>
                                            

                                            <% if (c.getId().equals("admin")) {
                                            %>
                                            <td class="manageuser__user-role"><strong>Admin</strong></td>    
                                            <% 
                                            } else {
                                            %>
                                            <td class="manageuser__user-role"><strong>User</strong></td>    
                                            <% 
                                                }
                                            %>

                                            <% if(c.getState().equals("Hoạt động")) {
                                            %>
                                            
                                            <td class="manageuser__user-status"><span>Hoạt động</span></td>                                                                                                               
                                            <td class="manageuser__user-operation"><strong><a style="text-decoration:none; color: #1A1D1F;" href="disable?id=<%= c.getId()%>">Vô hiệu hóa</a></strong></td>
                                            
                                            <% 
                                                } else {
                                            %>
                                            
                                            <td class="manageuser__user-status"><span>Vô hiệu hóa</span></td>                                                                                       
                                            <td class="manageuser__user-operation"><strong><a style="text-decoration:none; color: #1A1D1F;" href="disable?id=<%= c.getId()%>">Kích hoạt</a></strong></td>
                                            
                                            <% 
                                                }
                                            %>
                                        </tr>
                                        
                                        <%
                                            }
                                        %>
                                    </tbody>
                                </table>

                                <div class="content__manageuser__load-more">
                                    <button id="loadMoreUser" class="btn btn-load">Load more</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- add product -->
                    <div class="content" id="addproduct">
                        <div class="inner-content__addproduct">
                            <h1>Thêm sản phẩm mới</h1>
                            <div class="product-infor">
                                <h3>Tên và Mô tả sản phẩm</h3>
                                <form action="addproduct" method="POST" enctype="multipart/form-data">
                                    <label class="product-infor__title"><strong>Mã Sản Phẩm</strong></label>
                                    <input type="text" class="box-title" name="productId">

                                    <label class="product-infor__title"><strong>Tiêu đề sản phẩm</strong></label>
                                    <input type="text" class="box-title" name="productName" id="productNameInput">
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
                                        <textarea name="productDescription" id="" cols="30" rows="10"></textarea>
                                    </div>
                                    <h3>Hình ảnh</h3>
                                    <div class="product-images">
                                        <input type="file" name="imageInput" id="imageInput" accept="image/*" multiple>
                                    </div>
                                    <h3>Giá sản phẩm</h3>
                                    <div class="product__box-price">
                                        <span>VNĐ</span>
                                        <input type="text" name="productCost" id="productCostInput">
                                    </div>

                                    <!-- <div class="product-prices">
                                        <h3>Giá sản phẩm</h3>
                                        <span><b>Đơn giá</b></span>
                                        <div class="box-price">
                                            <span>VNĐ</span>
                                            <input type="text">
                                        </div>
                                    </div> -->
                                    <h3>Thuộc tính</h3>
                                    <div class="product__size-color">
                                        <div class="product__select-category" id="select-size">
                                            <label for="size"><b>Kích thước</b></label>
                                            <div class="product__checkbox-group">
                                                <input type="checkbox" id="SCheckbox" class="checkbox"
                                                       data-category="size">
                                                <label for="SCheckbox">S</label>
                                            </div>
                                            <div class="product__checkbox-group">
                                                <input type="checkbox" id="MCheckbox" class="checkbox"
                                                       data-category="size">
                                                <label for="MCheckbox">M</label>
                                            </div>
                                            <div class="product__checkbox-group">
                                                <!-- <input type="checkbox" id="size3" name="size" value="L"> -->
                                                <input type="checkbox" id="LCheckbox" class="checkbox"
                                                       data-category="size">
                                                <label for="LCheckbox">L</label>
                                            </div>
                                            <div class="product__checkbox-group">
                                                <!-- <input type="checkbox" id="size4" name="size" value="XL"> -->
                                                <input type="checkbox" id="XLCheckbox" class="checkbox"
                                                       data-category="size">
                                                <label for="XLCheckbox">XL</label>
                                            </div>
                                            <div class="product__checkbox-group">
                                                <!-- <input type="checkbox" id="size5" name="size" value="2XL"> -->
                                                <input type="checkbox" id="2XLCheckbox" class="checkbox"
                                                       data-category="size">
                                                <label for="2XLCheckbox">2XL</label>
                                            </div>
                                        </div>

                                        <div class="product__select-category" id="select-color">
                                            <label for="color"><b>Màu sắc</b></label>
                                            <div class="product__checkbox-group">
                                                <input type="checkbox" id="GrayCheckbox" class="checkbox"
                                                       data-category="color">
                                                <div class="product__checkbox-color color1"></div>
                                            </div>
                                            <div class="product__checkbox-group">
                                                <input type="checkbox" id="BrownCheckbox" class="checkbox"
                                                       data-category="color">
                                                <div class="product__checkbox-color color2"></div>
                                            </div>
                                            <div class="product__checkbox-group">
                                                <input type="checkbox" id="BlackCheckbox" class="checkbox"
                                                       data-category="color">
                                                <div class="product__checkbox-color color3"></div>
                                            </div>
                                            <div class="product__checkbox-group">
                                                <input type="checkbox" id="WhiteCheckbox" class="checkbox"
                                                       data-category="color">
                                                <div class="product__checkbox-color color4"></div>
                                            </div>
                                            <div class="product__checkbox-group">
                                                <input type="checkbox" id="RedCheckbox" class="checkbox"
                                                       data-category="color">
                                                <div class="product__checkbox-color color5"></div>
                                            </div>
                                            <div class="product__checkbox-group">
                                                <input type="checkbox" id="GreenCheckbox" class="checkbox"
                                                       data-category="color">
                                                <div class="product__checkbox-color color6"></div>
                                            </div>
                                            <div class="product__checkbox-group">
                                                <input type="checkbox" id="BeigeCheckbox" class="checkbox"
                                                       data-category="color">
                                                <div class="product__checkbox-color color7"></div>
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

                        <div class="product__preview">
                            <div class="product__card">
                                <div class="product__card-container">
                                    <div id="product__imgupload" class="product__image-content">
                                        <img src="" alt="Ảnh mẫu">
                                    </div>
                                </div>
                                <div class="product__card-category">
                                    <div class="card__category__infor">
                                        <p id="productNameDisplay" style="font-weight: 400;
                                           font-size: 20px;
                                           line-height: 26px;">
                                           </p>
                                        <p id="productCostDisplay" style="margin-top: 8px;
                                           font-weight: 700;
                                           font-size: 22px;
                                           line-height: 22px;">
                                           </p>
                                    </div>

                                    <div class="card__category-color"
                                     style="display: flex; justify-content:space-between; gap: 8px;">
                                        <img src="assets/images/icons/Black.png" alt="" style="width: 24px; height:24px">
                                        <img src="assets/images/icons/Gray.png" alt="" style="width: 24px; height:24px">
                                        <img src="assets/images/icons/Brown.png" alt="" style="width: 24px; height:24px">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

        <script src="<c:url value='https://code.jquery.com/jquery-3.6.4.min.js'/>"></script>
        <script src="<c:url value='assets/js/script.js'/>"></script>
    </body>

</html>