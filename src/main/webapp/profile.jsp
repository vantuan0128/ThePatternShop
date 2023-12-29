<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thông tin tài khoản</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <link rel="stylesheet" href="assets/css/font.css" />
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/footer.css">
    <link rel="stylesheet" href="assets/css/swiper-bundle.min.css">
    <link rel="stylesheet" href="assets/images/icons/icomoon/style.css" />
    <link rel="stylesheet" type="text/css"
        href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
    <link rel="stylesheet" href="assets/css/profile.css" />
</head>

<body>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript"
        src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>


    <%@include file="/common/header.jsp" %>
    <div class="overlay hidden"></div>

    <a href="#top" class="go-top">
        <img src="assets/images/icons/arrow-up.png" alt="">
    </a>
	<div class="container">
		<section id="profile">
			<div class="profile__detail">
				<div class="profile__detail-control">
					<ul class="detail__control-list" id="no-script">
						<li>
							<a href="/ThePatternShop">TRANG CHỦ</a>
						</li>
						<li>
							<a href="#" style="color: #141414; font-weight: 600 !important;">TÀI KHOẢN</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="content">
				<div class="selection-list">
					<div class="welcome">
						<img src="./assets/images/logo/logo.png" alt="Logo">
						<span>Xin chào, <b>Nguyễn Văn Tuấn</b></span>
					</div>
					<div class="infor-list">
						<ul>
							<li><a href="#" onClick="showContent('content1',this)" class="sub-item">THÔNG TIN TÀI KHOẢN</a></li>
							<li><a href="#" onClick="showContent('content2',this)" class="sub-item">ĐỔI MẬT KHẨU</a></li>
							<li><a href="#" onClick="showContent('content3',this)" class="sub-item">QUẢN LÝ ĐƠN HÀNG</a></li>
							<li><a href="#" class="sub-item">WISH LIST</a></li>
							<li><a href="#" class="sub-item" style="color: red; text-decoration:underline">ĐĂNG XUẤT</a></li>
						</ul>
					</div>
				</div>
	
				<div class="inner-account">
					<div class="tab-content profile" id="content1">
						<form>
							<div>
								<label for="full-name"><b>Họ và tên <span class="star">*</span></b></label>
								<input type="text" class="full-name" placeholder="Nhập tên của bạn">
							</div>
							<div>
								<label for="phone-number"><b>Số điện thoại <span class="star">*</span></b></label>
								<input type="text" class="phone-number" placeholder="Nhập số điện thoại của bạn">
							</div>
							<div>
								<label for="birthday"><b>Ngày sinh <span class="star">*</span></b></label>
								<input type="date" class="birthday" placeholder="dd/mm/yy">
							</div>
							<div>
								<label for=""><b>Tỉnh/Thành phố <span class="star">*</span></b></label>
								<select class="form-select form-select-sm mb-3" id="city" aria-label=".form-select-sm">
									<option value="" selected>Chọn Tỉnh/Thành phố</option>
								</select>
								<label for=""><b>Chọn Quận/Huyện <span class="star">*</span></b></label>
								<select class="form-select form-select-sm mb-3" id="district" aria-label=".form-select-sm">
									<option value="" selected>Chọn Quận/Huyện</option>
								</select>
								<label for=""><b>Chọn Phường/Xã <span class="star">*</span></b></label>
								<select class="form-select form-select-sm" id="ward" aria-label=".form-select-sm">
									<option value="" selected>Chọn Phường/Xã</option>
								</select>
							</div>
							<div>
							</div>
							<div>
								<label for="address"><b>Địa chỉ chi tiết <span class="star">*</span></b></label>
								<input type="text" class="address" placeholder="Địa chỉ chi tiết">
							</div>
							<input type="submit" id="button" value="CẬP NHẬT">
						</form>
					</div>
	
					<!-- Doi mat khau -->
					<div class="tab-content change-password" id="content2">
						<form>
							<div>
								<label for=""><b>Mật khẩu cũ <span class="star">*</span></b></label>
								<input type="text" placeholder="Nhập mật khẩu cũ">
							</div>
							<div>
								<label for=""><b>Mật khẩu mới <span class="star">*</span></b></label>
								<input type="text" placeholder="Nhập mật khẩu mới">
							</div>
							<div>
								<label for=""><b>Xác nhận mật khẩu mới <span class="star">*</span></b></label>
								<input type="text" placeholder="Xác nhận mật khẩu mới">
							</div>
							<input type="submit" value="CẬP NHẬT">
						</form>
					</div>
	
					<!-- Quan ly don hang -->
					<div class="tab-content order" id="content3">
						<table>
							<thead>
								<tr>
									<th>MÃ ĐƠN HÀNG</th>
									<th>NGÀY</th>
									<th>TỔNG ĐƠN</th>
									<th>TRẠNG THÁI</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>CB123</td>
									<td>30/11/2023</td>
									<td>349.000 VNĐ</td>
									<td>THÀNH CÔNG</td>
								</tr>
								<tr>
									<td>CB123</td>
									<td>30/10/2023</td>
									<td>349.000 VNĐ</td>
									<td>THÀNH CÔNG</td>
								</tr>
							</tbody>
	
							
						</table>
					</div>
	
				</div>
			</div>
		</section>

		
	</div>

	<!-- <div class="inner-logo">
		<img src="./assets/images/logo/logo-footer.png" alt="logo">
		<span>THANK YOU FOR SHOPPING WITH US!</span>
	</div> -->

    <%@include file="/common/footer.jsp" %>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"></script>
	<script src="assets/js/backtotop.js"></script>
	<script src="assets/js/overlay-hidden.js"></script>
    <script src="./assets/js/profile.js"></script>
</body>

</html>