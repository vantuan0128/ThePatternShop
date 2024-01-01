<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Đăng nhập</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/font.css" />
        <link rel="stylesheet" href="assets/css/header.css">
        <link rel="stylesheet" href="assets/css/footer.css">
        <link rel="stylesheet" href="assets/images/icons/icomoon/style.css" />
        <link rel="stylesheet" href="assets/css/login.css" />

    </head>

    <body>
        <%@include file="/common/header.jsp" %>
        <section class="control">
            <div class="login-control">
                <ul class="login-control-list">
                    <li>
                        <a href="/ThePatternShop">TRANG CHỦ</a>
                    </li>
                    <li>
                        <a href="#">TÀI KHOẢN</a>
                    </li>
                    <li>
                        <a href="#" style="color: #141414; font-weight: 600;">ĐĂNG NHẬP</a>
                    </li>
                </ul>
            </div>
        </section>
        <div class="container">
            <div class="container_wrapper">
                <h1>ĐĂNG NHẬP</h1>
                <form action="home" id="loginForm" method="post">
                    <h3>Chào mừng bạn quay trở lại, khám phá ưu đãi mới nhất nhé!</p>

                        <div class="input-box">
                            <input type="text" placeholder="Username *" name="id" required="required">
                        </div>

                        <div class="input-box">
                            <input type="password" placeholder="Mật Khẩu *" name="password" required="required">
                        </div>
                        <p style="font-size:16px; 
                            color:red;
                            margin-top:20px;"><i>${ms1}</i></p>
                        <div class="remember-forgot">
                            <label for=""><input type="checkbox"><span>Ghi nhớ mật khẩu</span></label>
                            <a class="forget_passord" href=""><span>Bạn quên mật khẩu?</span></a>
                        </div>

                        <button type="submit" class="submit-btn"><span>Đăng nhập</span></button>

                        <div class="others">
                            <div class="others_line"></div>
                            <span>hoặc</span>
                            <div class="others_line"></div>
                        </div>
                        <button type="submit" class="submit-btn__social">
                            <a href="https://accounts.google.com/v3/signin/identifier?dsh=S1275217451%3A1672677796752648&continue=https%3A%2F%2Fwww.google.com%2F&ec=GAZAmgQ&hl=vi&passive=true&flowName=GlifWebSignIn&flowEntry=ServiceLogin&ifkv=AeAAQh7FAdyGmegyOhOkgLuHs9QppGhn1t5DsI94yTvqyQmkC8TA40lKLAfkYB_9bxXeI_44jvKkFg">
                                <img src="assets/images/icons/Google.png" alt="Google"></a>
                            <a href="https://accounts.google.com/v3/signin/identifier?dsh=S1275217451%3A1672677796752648&continue=https%3A%2F%2Fwww.google.com%2F&ec=GAZAmgQ&hl=vi&passive=true&flowName=GlifWebSignIn&flowEntry=ServiceLogin&ifkv=AeAAQh7FAdyGmegyOhOkgLuHs9QppGhn1t5DsI94yTvqyQmkC8TA40lKLAfkYB_9bxXeI_44jvKkFg">
                                <span>Đăng nhập với Google</span></a>

                        </button>

                        <button type="submit" class="submit-btn__social">
                            <a href="https://www.facebook.com/">
                                <img src="assets/images/icons/Facebook.png" alt=""></a>
                            <a href="https://accounts.google.com/v3/signin/identifier?dsh=S1275217451%3A1672677796752648&continue=https%3A%2F%2Fwww.google.com%2F&ec=GAZAmgQ&hl=vi&passive=true&flowName=GlifWebSignIn&flowEntry=ServiceLogin&ifkv=AeAAQh7FAdyGmegyOhOkgLuHs9QppGhn1t5DsI94yTvqyQmkC8TA40lKLAfkYB_9bxXeI_44jvKkFg">
                                <span>Đăng nhập với Facebook</span></a>
                        </button>
                        <div class="link-register">
                            Bạn chưa có tài khoản? <a href="register.jsp"><span>Đăng ký ngay!</span></a>
                        </div>


                </form>
            </div>
        </div>

        <%@include file="/common/footer.jsp" %>
        <script src="assets/js/script.js"></script>

    </body>

</html>