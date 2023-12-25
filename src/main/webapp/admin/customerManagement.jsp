<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh sách người dùng</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- <link rel="stylesheet" href="../assets/fontss/fontawesome-free-6.5.1-web/css/all.min.css"> -->
    <link rel="stylesheet" href="../assets/css/admin/reset.css">
    <link rel="stylesheet" href="../assets/css/admin/base.css">
    <link rel="stylesheet" href="../assets/css/admin/style.css">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
        $(document).ready(function () {
            // Đặt sự kiện click cho nút dropdown
            $(".dropdown").click(function () {
                // Ẩn hoặc hiển thị submenu tương ứng
                $(this).parent().find(".sub-menu").toggle();
            });
        });
    </script>
</head>

<body>
    <div class="container">
        <!-- Sidebar -->
        <div class="sidebar">
            <div class="inner-sidebar">
                <div class="sidebar-title">
                    <a href="dashboard.jsp"><img src="../assets/images/admin/logo.jpg" alt="logo"></a>
                    <span>Xin chào, <strong>Admin</strong></span>
                </div>
                <div class="nav-stack">
                    <div class="nav-item">
                        <a href="">
                            <i class="fa-solid fa-house"></i>
                            <span>Tổng quan</span>
                        </a>
                    </div>
                    <div class="nav-item">
                        <div class="nav-item-top">
                            <div class="nav-item-left">
                                <a href="" class="sub-btn">
                                    <i class="fa-solid fa-bag-shopping"></i>
                                    <span>Sản phẩm</span>
                                    <a href=""><i class="fa-solid fa-circle-plus circle-plus"></i></a>
                                    <i class="dropdown fa-solid fa-chevron-down"></i></a>
                                <div class="sub-menu">
                                    <div class="hidden-menu">
                                        <a href="" class="sub-item">Tổng quan</a>
                                        <a href="productManagement.jsp" class="sub-item">Quản lý sản phẩm</a>
                                        <a href="addProduct.jsp" class="sub-item">Thêm sản phẩm</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="nav-item">
                        <div class="nav-item-top">
                            <div class="nav-item-left">
                                <a href="" class="sub-btn">
                                    <i class="fa-solid fa-user"></i>
                                    <span>Khách hàng</span>
                                    <!-- <a href=""><i class="fa-solid fa-circle-plus circle-plus"></i></a> -->
                                </a>
                                <i class="dropdown fa-solid fa-chevron-down"></i>
                                <div class="sub-menu">
                                    <div class="hidden-menu">
                                        <a href="" class="sub-item">Tổng quan</a>
                                        <a href="customerManagement.jsp" class="sub-item">Danh sách khách hàng</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="nav-item">
                        <a href="">
                            <i class="fa-solid fa-shop"></i>
                            <span>Shop</span>
                        </a>
                    </div>
                    <div class="nav-item">
                        <div class="nav-item-top">
                            <a href="">
                                <i class="fa-solid fa-chart-simple"></i>
                                <span>Doanh Thu</span>
                            </a>
                            <span class="show-item"><i class="dropdown fa-solid fa-chevron-down"></i></span>
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
                    <img src="../assets/images/admin/team3.jpg" alt="">
                </div>
            </div>

            <div class="dashboard">
                <div class="inner-dashboard">
                    <h1>Danh sách người dùng</h1>
                    <div class="content">
                        <div class="sitcky-title">
                            <div class="left">
                                <div class="box"></div>
                                <span><strong>Người dùng</strong></span>
                            </div>
                            <div class="right">
                                <div class="search">
                                    <button class="btn icon-search"><i
                                            class="fa-solid fa-magnifying-glass"></i></button>
                                    <input type="text" class="input-search" placeholder="Search or type a command">
                                </div>
                            </div>
                        </div>

                        <!-- table  -->
                        <table>
                            <tr class="title">
                                <th class="name">
                                    <input type="checkbox" class="check-box">
                                    <span>Tên</span>
                                </th>
                                <th>Email</th>
                                <th>Trạng thái</th>
                                <th>Vai trò</th>
                                <th>Thao tác</th>
                            </tr>
                            <tr class="person">
                                <td class="person-name">
                                    <input type="checkbox" class="check-box">
                                    <img src="../assets/images/admin/team1.jpg" alt="avatar">
                                    <div class="person-infor">
                                        <span><strong>Nguyễn Quốc Đạt</strong></span>
                                        <span>@username</span>
                                    </div>
                                </td>
                                <td class="email">mail1234@gmail.com</td>
                                <td class="active"><span>Hoạt động</span></td>
                                <td class="role"><strong>Admin</strong></td>
                                <td class="operation"><strong>...</strong></td>
                            </tr>
                            <tr class="person">
                                <td class="person-name">
                                    <input type="checkbox" class="check-box">
                                    <img src="../assets/images/admin/team1.jpg" alt="avatar">
                                    <div class="person-infor">
                                        <span><strong>Nguyễn Văn Tuấn</strong></span>
                                        <span>@username</span>
                                    </div>
                                </td>
                                <td class="email">mail1234@gmail.com</td>
                                <td class="active"><span>Hoạt động</span></td>
                                <td class="role"><strong>User</strong></td>
                                <td class="operation"><strong>...</strong></td>
                            </tr>
                            <tr class="person">
                                <td class="person-name">
                                    <input type="checkbox" class="check-box">
                                    <img src="../assets/images/admin/avt2.jpg" alt="avatar">
                                    <div class="person-infor">
                                        <span><strong>Nguyễn Thị Thanh Thủy</strong></span>
                                        <span>@username</span>
                                    </div>
                                </td>
                                <td class="email">mail1234@gmail.com</td>
                                <td class="active unactive"><span>Vô hiệu hóa</span></td>
                                <td class="role"><strong>User</strong></td>
                                <td class="operation"><strong>...</strong></td>
                            </tr>
                            <tr class="person">
                                <td class="person-name">
                                    <input type="checkbox" class="check-box">
                                    <img src="../assets/images/admin/avt1.jpg" alt="avatar">
                                    <div class="person-infor">
                                        <span><strong>Nguyễn Hồng Nhung</strong></span>
                                        <span>@username</span>
                                    </div>
                                </td>
                                <td class="email">mail1234@gmail.com</td>
                                <td class="active"><span>Hoạt động</span></td>
                                <td class="role"><strong>User</strong></td>
                                <td class="operation"><strong>...</strong></td>
                            </tr>
                        </table>
                        <div class="load-more">
                            <button class="btn btn-load">Load more</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</body>

</html>