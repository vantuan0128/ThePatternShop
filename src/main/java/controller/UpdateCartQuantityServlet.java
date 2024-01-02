/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.CartDAO;
import entity.Cart;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
@WebServlet(name = "UpdateCartQuantityServlet", urlPatterns = {"/updatecart-quantity"})
public class UpdateCartQuantityServlet extends HttpServlet {

     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the product ID and new quantity from the request
        String productId = request.getParameter("productId");
        int newQuantity = Integer.parseInt(request.getParameter("quantity"));
        
         System.out.println(productId);
//        HttpSession session = request.getSession();
//        String id = (String) session.getAttribute("id");
//        new CartDAO().updateCountCart(id, productId, newQuantity);
//        // Send a success response back to the client
//        response.setContentType("application/json");
//        response.getWriter().write("{\"success\": true}");
//        RequestDispatcher dispatcher = request.getRequestDispatcher("/carttable.jsp");
//        dispatcher.forward(request, response);
    }

}
