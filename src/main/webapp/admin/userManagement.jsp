<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Trang Chủ</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="./assets/css/userManagement.css">
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
                                <button class="btn icon-search"><i class="fa-solid fa-magnifying-glass"></i></button>
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
                                <img src="./assets/images/team1.jpg" alt="avatar">
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
                                <img src="./assets/images/team1.jpg" alt="avatar">
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
                                <img src="./assets/images/avt2.jpg" alt="avatar">
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
                                <img src="./assets/images/avt1.jpg" alt="avatar">
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
</body>

</html>