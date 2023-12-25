<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Quản lý sản phẩm</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- <link rel="stylesheet" href="../assets/fontss/fontawesome-free-6.5.1-web/css/all.min.css"> -->
	<link rel="stylesheet" href="../assets/css/admin/reset.css">
	<link rel="stylesheet" href="../assets/css/admin/base.css">
	<link rel="stylesheet" href="../assets/css/admin/style.css">
	<link rel="stylesheet" href="../assets/css/admin/productStyle.css">
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
					<button class="btn btn-create">
						<i class="fa-solid fa-plus"></i>
						<span>Create</span>
					</button>
					<i class="icon-top-nav fa-solid fa-message"></i>
					<i class="icon-top-nav fa-regular fa-bell"></i>
					<img src="../assets/images/admin/team3.jpg" alt="">
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
								<img src="../assets/images/admin/swt1.webp" alt="product">
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
								<img src="../assets/images/admin/swt.webp" alt="product">
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
								<img src="../assets/images/admin/swt2.jpg" alt="product">
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
								<img src="../assets/images/admin/swt3.webp" alt="product">
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
	</div>


</body>

</html>