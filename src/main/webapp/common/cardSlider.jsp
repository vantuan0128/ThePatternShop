<%-- 
    Document   : cardSlider
    Created on : Dec 30, 2023, 9:51:05 AM
    Author     : admin
--%>

<%@page import="java.util.List"%>
<%@page import="entity.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
    List<Product> listproducts = (List<Product>) request.getAttribute("PRODUCT_LIST");
%>
<div class="slide-container">
    <div class="card-wrapper">
        <% for(Product tempProduct : listproducts){ 
            %>
            <div class="card">
                <div class="card-container">
                    <div class="image-content">
                        <a href="LoadProductDetail?Id=<%= tempProduct.getId()%>">
                            <img src="assets/images/products/newArrivals/<%= tempProduct.getImage()%>" alt="Front">

                        </a>
                    </div>
                </div>

                <div class="card-category">
                    <div class="card-category__infor">
                        <p style="font-weight: 400;
                           font-size: 20px;
                           line-height: 26px;">
                           <%= tempProduct.getName()%></p>
                        <p style="    margin-top: 8px;
                           font-weight: 700;
                           font-size: 22px;
                           line-height: 22px;">
                           <%= tempProduct.getCost()%> VNĐ</p>
                    </div>

                    <div class="card-category__color"
                         style="display: flex; justify-content:space-between; gap: 8px;">
                        <img src="assets/images/icons/colors/Color_01.png" alt="" style="width: 24px; height:24px">
                        <img src="assets/images/icons/colors/Color_02.png" alt="" style="width: 24px; height:24px">
                        <img src="assets/images/icons/colors/Color_03.png" alt="" style="width: 24px; height:24px">
                    </div>
                </div>
            </div>
        <% } %>
    </div>
</div>