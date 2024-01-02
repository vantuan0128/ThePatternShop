<%@page import="dao.OrderDAO" %>
<%@page import="entity.Order" %>
<%@page import="entity.Order" %>
<%@page import="java.util.List" %>
<%@page import="java.util.List" %>
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
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
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
							<a href="#"
								style="color: #141414; font-weight: 600 !important;">TÀI
								KHOẢN</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="content">
				<div class="selection-list">
					<div class="welcome">
						<img src="./assets/images/logo/logo.png" alt="Logo">
						<span>Xin chào, <b>${sessionScope.name}</b></span>
					</div>
					<div class="infor-list">
						<ul>
							<li><a href="#" onClick="showContent('content1',this)"
									class="sub-item">THÔNG TIN TÀI KHOẢN</a></li>
							<li><a href="#" onClick="showContent('content2',this)"
									class="sub-item">ĐỔI MẬT KHẨU</a></li>
							<li><a href="#" onClick="showContent('content3',this)"
									class="sub-item">QUẢN LÝ ĐƠN HÀNG</a></li>
							<li><a href="#" class="sub-item">WISH LIST</a></li>
							<li><a href="logout" class="sub-item"
									style="color: red; text-decoration:underline">ĐĂNG
									XUẤT</a></li>
						</ul>
					</div>
				</div>

				<div class="inner-account">
					<div class="tab-content profile" id="content1">
						<form action="updateProfile" id="updateForm" method="post">
							<div>
								<label for="full-name"><b>Họ và tên <span
											class="star">*</span></b></label>
								<input type="text" class="full-name" name="name"
									placeholder="Nhập tên của bạn"
									value="${sessionScope.name}">
							</div>
							<div>
								<label for="phone-number"><b>Số điện thoại <span
											class="star">*</span></b></label>
								<input type="text" class="phone-number" name="mobiPhone"
									placeholder="Nhập số điện thoại của bạn"
									value="${sessionScope.mobiPhone}">
							</div>
							<div>
								<label for="email"><b>Email <span
											class="star">*</span></b></label>
								<input type="text" class="birthday" name="email"
									placeholder="Email" value="${sessionScope.email}">
							</div>
							<div>
							</div>
							<div>
								<label for="address"><b>Địa chỉ chi tiết <span
											class="star">*</span></b></label>
								<input type="text" class="address" name="address"
									placeholder="Địa chỉ chi tiết"
									value="${sessionScope.address}">
							</div>
							<input type="submit" id="button" value="CẬP NHẬT">
						</form>
					</div>

					<!-- Doi mat khau -->
					<div class="tab-content change-password" id="content2">
						<form action="updatePassword" id="updatePasswordForm" method="post">
							<div>
								<label for=""><b>Mật khẩu cũ <span
											class="star">*</span></b></label>
								<input type="text" placeholder="Nhập mật khẩu cũ">
							</div>
							<div>
								<label for=""><b>Mật khẩu mới <span
											class="star">*</span></b></label>
								<input type="text" placeholder="Nhập mật khẩu mới"
									name="newPassword">
							</div>
							<div>
								<label for=""><b>Xác nhận mật khẩu mới <span
											class="star">*</span></b></label>
								<input type="text" placeholder="Xác nhận mật khẩu mới">
							</div>
							<input type="submit" value="CẬP NHẬT">
						</form>
					</div>

					<!-- Quan ly don hang -->
					<div class="tab-content order" id="content3">
						<% String id=(String)session.getAttribute("id"); List<Order> order =
							new OrderDAO().getOrderById(id) ;
							%>
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
									<% for (Order ord: order){ %>
										<tr>
											<td>
												<%= ord.getOrderId() %>
											</td>
											<td>
												<%= ord.getCreatedDate() %>
											</td>
											<td>
												<%= ord.getTotal()%> VNĐ
											</td>
											<td>
												<%= ord.getState() %>
											</td>
										</tr>
										<% } %>
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
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"></script>
	<script src="assets/js/backtotop.js"></script>
	<script src="assets/js/overlay-hidden.js"></script>
	<script src="./assets/js/profile.js"></script>
</body>

</html>