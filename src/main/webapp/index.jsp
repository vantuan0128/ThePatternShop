
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pattern</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="assets/css/font.css"/>
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/footer.css">
    <link rel="stylesheet" href="assets/images/icons/icomoon/style.css"/>
    <link rel="stylesheet" href="assets/css/index.css"/>

</head>
<body>
    <%@include file="/common/header.jsp" %>

    <div class="header-banner">
        <div class="header-banner__slider">

            <div class="button-explore-now">
                <a href="">
                    <img src="assets/images/explore-now.png" alt="">
                </a>
            </div>

            <!-- img-banner -->
            <div class="header-banner__slides">
                <input type="radio" name="radio-btn" id="radio1">
                <input type="radio" name="radio-btn" id="radio2">
                <input type="radio" name="radio-btn" id="radio3">
                <input type="radio" name="radio-btn" id="radio4">

                <div class="slide first">
                    <img src="assets/images/banners/B1.png" alt="">
                </div>
                <div class="slide">
                    <img src="assets/images/banners/B2.png" alt="">
                </div>
                <div class="slide">
                    <img src="assets/images/banners/B3.png" alt="">
                </div>
                <div class="slide">
                    <img src="assets/images/banners/B4.png" alt="">
                </div>

                <div class="navigation-auto">
                    <div class="auto-btn1"></div>
                    <div class="auto-btn2"></div>
                    <div class="auto-btn3"></div>
                    <div class="auto-btn4"></div>
                </div>
            </div>

            <div class="navigation-manual">
                <label for="radio1" class="manual-btn"></label>
                <label for="radio2" class="manual-btn"></label>
                <label for="radio3" class="manual-btn"></label>
                <label for="radio4" class="manual-btn"></label>
            </div>

        </div>
    </div>

    <%@include file="/common/footer.jsp" %>
    <script src="assets/js/script.js"></script>

</body>
</html>
