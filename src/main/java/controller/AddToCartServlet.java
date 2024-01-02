/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.CartDAO;
import entity.Cart;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
@WebServlet(name = "AddToCart", urlPatterns = {"/addtocart"})
public class AddToCartServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("id");
        if (id != null){
            String productId = request.getParameter("productId");
            String colorId = String.valueOf(request.getParameter("colorId"));
            String sizeId = String.valueOf(request.getParameter("sizeId"));
            int count = Integer.valueOf(request.getParameter("quantity"));
    //        System.out.println(productId + " " + colorId + " " + sizeId + " " + count);
            boolean ok = true;
            int currentCount = 0;
            List<Cart> carts = new CartDAO().getAllCart();
            for (Cart c: carts){
                if(c.getProductDetailId().equals(productId + "_" + colorId + "_" + sizeId)){
                    currentCount = c.getCount();
                    ok = false;
                    break;
                }
            }
            if(!ok){
                new CartDAO().updateCountCart(id, productId + "_" + colorId + "_" + sizeId, currentCount + count);
            }
            else{
                new CartDAO().insertToCart(id, productId + "_" + colorId + "_" + sizeId , count);
            }
            RequestDispatcher dispatcher = request.getRequestDispatcher("/carttable.jsp");
            dispatcher.forward(request, response);
        }
        else{
            response.sendRedirect("login.jsp");
        }
        
    }
}
