/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.CartDAO;
import entity.Cart;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
@WebServlet(name = "OrderServlet", urlPatterns = {"/order"})
public class OrderServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String selectedProducts = request.getParameter("selectedProducts");
        String[] productDetailIds = selectedProducts.split(",");
//        for (String productDetailId : productDetailIds) {
//            System.out.println(productDetailId);
//        }
        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("id");
        List<Cart> carts = new CartDAO().getAllCartById(id);
        List<Cart> order = new ArrayList<>();
        int orderTotal = 0;
        for (int i = 0; i < productDetailIds.length; i++){
            for (Cart c: carts){
                if (productDetailIds[i].equals(c.getProductDetailId())){
                    order.add(c);
                    orderTotal += c.getTotal();
                }
            }
        }
        session.setAttribute("cartOrder", order);
        session.setAttribute("orderTotal", orderTotal);
//        System.out.println(order);
//        System.out.println(orderTotal);
        response.sendRedirect("payment.jsp");
//        RequestDispatcher dispatcher = request.getRequestDispatcher("payment.jsp");
//        dispatcher.forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
