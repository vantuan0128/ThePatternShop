<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Đăng ký</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/font.css" />
        <link rel="stylesheet" href="assets/css/header.css">
        <link rel="stylesheet" href="assets/css/footer.css">
        <link rel="stylesheet" href="assets/images/icons/icomoon/style.css" />
        <link rel="stylesheet" href="assets/css/register.css" />
    </head>

    <body>
        <%@include file="/common/header.jsp" %>
        <section class="control">
            <div class="register-control">
                <ul class="register-control-list">
                    <li>
                        <a href="/ThePatternShop">TRANG CHỦ</a>
                    </li>
                    <li>
                        <a href="#">TÀI KHOẢN</a>
                    </li>
                    <li>
                        <a href="#" style="color: #141414; font-weight: 600;">ĐĂNG KÝ</a>
                    </li>
                </ul>
            </div>
        </section>
        <div class="container">
            <div class="container_wrapper">
                <h1>TẠO TÀI KHOẢN</h1>
                <form action="home" id="registerForm" method="get">
                    <h3>Đăng ký tài khoản để trở thành <span>P-Mem</span> để được nhận ưu đãi nhé!!!</p>

                        <div class="input-box">
                            <input type="text" placeholder="Username *" name="id" id="id" required="required">
                        </div>
                        <div class="input-box">
                            <input type="text" placeholder="Email hoặc số điện thoại *" name="emailOrMobiPhone" id ="emailOrMobiPhone"
                                   required="required">
                        </div>

                        <div class="input-box">
                            <input type="text" placeholder="Họ và tên *" name="name" id="name" required="required">
                        </div>

                        <div class="input-box">
                            <input type="password" placeholder="Mật khẩu *" name="password" id="password" required="required">
                        </div>

                        <div class="input-box">
                            <input type="password" placeholder="Nhập lại mật khẩu *" name="confirmpassword" id="confirmpassword"
                                   required="required">
                        </div>

                        <p style="font-size:16px;
                           color:red;
                           margin-top:20px;"><i>${ms}</i></p>

                        <div class="check-box">
                            <label for=""><input type="checkbox"><span>Tôi đồng ý với &nbsp</span></label>
                            <a class="somerequireaboutus" href=""><span>Điều khoản dịch vụ và chính sách bảo
                                    mật</span></a>
                        </div>

                        <button type="submit" class="submit-btn"><span>Tạo tài khoản</span></button>

                        <div class="link-login">
                            Bạn đã có tài khoản? <a href="login.jsp"><span>Đăng nhập!</span></a>
                        </div>

                </form>
            </div>
        </div>

        <%@include file="/common/footer.jsp" %>
    </body>

</html>