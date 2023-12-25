
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
	<link rel="stylesheet" href="../assets/css/admin/addProductStyle.css">
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
				<div class="content-box">
					<div class="inner-content">
						<h1>Thêm sản phẩm mới</h1>
						<div class="product-infor">
							<h3>Tên và Mô tả sản phẩm</h3>
							<form action="">
								<label for=""><strong>Tiêu đề sản phẩm</strong></label>
								<input type="text" class="box-title">
								<label for=""><strong>Mô tả sản phẩm</strong></label>
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
									<textarea name="" id="" cols="30" rows="10"></textarea>
								</div>
							</form>
							<div class="product-func">
								<span><strong>Các tính năng chính</strong></span>
								<div class="box">
									<input type="text" placeholder="Giá trị">
									<input type="text" placeholder="Giá trị">
									<input type="text" placeholder="Giá trị">
									<input type="text" placeholder="Giá trị">
								</div>
							</div>
						</div>

						<!-- Hinh anh va CTA -->
						<div class="product-images">
							<h3>Hình ảnh và CTA</h3>
							<span><b>Ảnh bìa</b></span>
							<div class="choose-img">
								<input type="file" id="imageInput" accept="image/*" multiple>
								<!-- <button onclick="handleImageSelection()">Chọn ảnh</button> -->
							</div>
							<span><b>Dropdown</b></span>
							<form action="">
								<select name="" id=""></select>
							</form>
						</div>

						<div class="product-prices">
							<h3>Giá sản phẩm</h3>
							<span><b>Đơn giá</b></span>
							<div class="box-price">
								<span>VNĐ</span>
								<input type="text">
							</div>
						</div>

						<div class="product-attribute">
							<h3>Danh mục và thuộc tính</h3>
							<form action="">
								<div class="list">
									<label for="list-attribute">Danh mục</label>
									<select name="" id="list-attribute">
										<option value="shirt">T-Shirt</option>
										<option value="sweater">Sweater</option>
										<option value="polo">Polo</option>
										<option value="jacket">Jacket</option>
										<option value="jogger">Jogger</option>
									</select>
								</div>
								<div class="select-category">
									<div class="col1">
										<label for="size"><b>Kích thước</b></label>
										<div class="box-size">
											<span><input type="checkbox"><b>S</b></span>
											<span><input type="checkbox"><b>M</b></span>
											<span><input type="checkbox"><b>L</b></span>
											<span><input type="checkbox"><b>XL</b></span>
											<span><input type="checkbox"><b>2XL</b></span>
										</div>
									</div>
									<div class="col2">
										<label for="color"><b>Màu sắc</b></label>
										<div class="box-choose">
											<span><input type="checkbox">
												<div class="box-color color1"></div>
											</span>
											<span><input type="checkbox">
												<div class="box-color color2"></div>
											</span>
											<span><input type="checkbox">
												<div class="box-color color3"></div>
											</span>
											<span><input type="checkbox">
												<div class="box-color color4"></div>
											</span>
											<span><input type="checkbox">
												<div class="box-color color5"></div>
											</span>
										</div>
									</div>
								</div>
							</form>
						</div>

						<div class="product-images">
							<h3>Dữ liệu sản phẩm</h3>
							<span><b>Content</b></span>
							<div class="choose-img">
								<input type="file" id="imageInput" accept="image/*" multiple>
								<!-- <button onclick="handleImageSelection()">Chọn ảnh</button> -->
							</div>
							<span><b>Fonts</b></span>
							<div class="choose-img">
								<input type="file" id="imageInput" accept="image/*" multiple>
								<!-- <button onclick="handleImageSelection()">Chọn ảnh</button> -->
							</div>
						</div>

						<div class="prodcut-comment">
							<h3>Thảo luận</h3>
							<span><b>Message to reviewer</b></span>
							<div class="box-text"><textarea name="" id="" cols="30" rows="10"></textarea></div>
						</div>
						<!-- Footer -->
					</div>
					<div class="preview">
						<div class="inner-preview">
							<div class="preview-title">
								<span><strong>Preview</strong></span>
								<i class="fa-solid fa-expand"></i>
							</div>
							<div class="preview-top">
								<img src="../assets/images/admin/swt2.jpg" alt="sweater">
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
				<footer class="footer">
					<div class="save">
						<button class="btn save--btn">Lưu nháp</button>
						<button class="btn up--btn">Đăng ngay</button>
					</div>
				</footer>
			</div>
		</div>
	</div>


</body>

</html>