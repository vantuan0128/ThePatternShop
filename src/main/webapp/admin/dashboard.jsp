<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>

<!-- <head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Quản lý sản phẩm</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- <link rel="stylesheet" href="../assets/fontss/fontawesome-free-6.5.1-web/css/all.min.css"> -->
	<link rel="stylesheet" href="assets/css/admin/reset.css">
	<link rel="stylesheet" href="assets/css/admin/base.css">
	<link rel="stylesheet" href="assets/css/admin/style.css">
	<link rel="stylesheet" href="assets/css/admin/productStyle.css">
	<link rel="stylesheet" href="assets/css/admin/addProductStyle.css">
	<link rel="stylesheet" href="assets/css/admin/dashboardStyle.css">
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	<script>
		$(document).ready(function () {
			// Đặt sự kiện click cho nút dropdown
			$(".dropdown").click(function () {
				// Ẩn hoặc hiển thị submenu tương ứng
				$(this).parent().find(".sub-menu").toggle();
			});
		});
		function handleImageSelection() {
			const imageInput = document.getElementById('imageInput');

			// Kiểm tra xem người dùng đã chọn ít nhất một tệp tin hay không
			if (imageInput.files.length > 0) {
				const selectedImages = Array.from(imageInput.files);

				// Xử lý các tệp tin đã chọn ở đây (ví dụ: hiển thị thông tin về mỗi tệp)
				selectedImages.forEach((file, index) => {
					console.log(`Image ${index + 1}: ${file.name}`);
				});
			} else {
				alert('Vui lòng chọn ít nhất một ảnh.');
			}
		}
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
			<div class="content">
				<div class="inner-content">
					<h1>Tổng quan</h1>
					<img src="../assets/images/admin/dashboard2.jpg" alt="">
					<img src="../assets/images/admin/dashboard1.jpg" alt="">
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
										<img src="../assets/images/admin/swt1.webp" alt="">
										<span><b>Cotton Sweater</b></span>
									</div>
									<div class="preview-right">
										<span>34M VNĐ</span>
										<span claas="active"><b>Active</b></span>
									</div>
								</div>
								<div class="preview-product">
									<div class="preview-left">
										<img src="../assets/images/admin/swt3.webp" alt="">
										<span><b>Cotton Sweater</b></span>
									</div>
									<div class="preview-right">
										<span>34M VNĐ</span>
										<span claas="active"><b>Active</b></span>
									</div>
								</div>
								<div class="preview-product">
									<div class="preview-left">
										<img src="../assets/images/admin/swt2.jpg" alt="">
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
	</div>
</body>

</html>