<%@page contentType="text/html" pageEncoding="UTF-8" %>

    <!DOCTYPE html>
    <html>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pattern</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="assets/css/font.css" />
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/footer.css">
    <link rel="stylesheet" href="assets/images/icons/icomoon/style.css" />
    <link rel="stylesheet" href="assets/css/register.css" />

    </head>

    <body>
        <%@include file="/common/header.jsp" %>
            <div class="pos-user-at">
                <div class="pos-user-at__title">
                    <div class="homepage">Trang chủ</div>
                    <div class="space">|</div>
                    <div class="product">Tài khoản</div>
                    <div class="space">|</div>
                    <div class="sale">Đăng Ký</div>
                </div>

            </div>

            <div class="devide" style="width: 1216px; border-top: 1px solid black; margin-left:145px">
            </div>
            <div class="container">
                <div class="container_wrapper">
                    <h1>TẠO TÀI KHOẢN</h1>
                    <form action="register" id="registerForm">
                        <h3>Đăng ký tài khoản để trở thành <span>P-Mem</span> để được nhận ưu đãi nhé!!!</p>

                        <div class="input-box">
                            <input type="text" placeholder="Email hoặc số điện thoại *" name="Username" required="required">
                        </div>

                        <div class="input-box">
                            <input type="text" placeholder="Họ và tên *" name="Name" required="required">
                        </div>

                        <div class="input-box">
                            <input type="text" placeholder="DD/MM/YYYY *" name="Dateofbirth" required="required">
                        </div>

                        <div class="input-box">
                            <input type="password" placeholder="Mật khẩu *" name="Password" required="required">
                        </div>

                        <div class="input-box">
                            <input type="password" placeholder="Nhập lại mật khẩu *" name="Confirmpassword" required="required">
                        </div>
                        <div class="check-box">
                            <label for=""><input type="checkbox"><span>Tôi đồng ý với &nbsp</span></label>
                            <a class="somerequireaboutus" href=""><span>Điều khoản dịch vụ và chính sách bảo mật</span></a>
                        </div>

                        <button type="submit" class="submit-btn"><span>Tạo tài khoản</span></button>

                        <div class="link-login">
                            Bạn đã có tài khoản? <a href="login.jsp"><span>Đăng nhập!</span></a>
                        </div>

                    </form>
                </div>
            </div>

            <%@include file="/common/footer.jsp" %>
                <script src="assets/js/script.js"></script>

    </body>

    </html>