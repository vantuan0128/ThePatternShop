<%-- 
    Document   : allproducts
    Created on : Dec 29, 2023, 1:53:22 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cart</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="assets/css/font.css" />
        <link type="text/css" rel="stylesheet" href="assets/css/swiper-bundle.min.css">
        <link type="text/css" rel="stylesheet" href="assets/css/header.css">
        <link type="text/css" rel="stylesheet" href="assets/css/footer.css">
        <link type="text/css" rel="stylesheet" href="assets/images/icons/icomoon/style.css" />
        <link type="text/css" rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
        <link type="text/css" rel="stylesheet" href="assets/css/allproduct.css" />
    </head>

    <body>
        <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
        <script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js">
        </script>


        <%@include file="/common/header.jsp" %>

        <div class="overlay hidden"></div>
        <a href="#top" class="go-top">
            <img src="assets/images/icons/arrow-up.png" alt="">
        </a>

        <div class="container">
            <section id="allproducts" class="allproducts">
                
            </section>
        </div>


        <script src="assets/js/backtotop.js"></script>
        <script src="assets/js/overlay-hidden.js"></script>
    </body>
</html>
