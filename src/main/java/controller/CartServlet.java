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
@WebServlet(name = "CartServlet", urlPatterns = {"/mycart"})
public class CartServlet extends HttpServlet {

    private CartDAO cartDAO = new CartDAO();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session.getAttribute("id") != null) {
            String id = String.valueOf(session.getAttribute("id"));
            System.out.println(id);
            List<Cart> carts = (List<Cart>) cartDAO.getAllCartById(id);
            System.out.println(carts);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/carttable.jsp");
            dispatcher.forward(request, response);
        } else {
            response.sendRedirect("login.jsp");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        
//        String action = request.getParameter("action");
//        if ("updateQuantity".equals(action)) {
//            String productDetailId = request.getParameter("productDetailId");
//            int quantity = Integer.parseInt(request.getParameter("currentQuantity"));
//            HttpSession session = request.getSession();
//            try {
//                // Update the quantity in the database
//                // You will need to implement this method
//                String id = String.valueOf(session.getAttribute("id"));
//                new CartDAO().updateCountCart(id, productDetailId, quantity);
//
//                response.setContentType("application/json");
//                response.getWriter().write("{\"success\": " + "}");
//            } catch (Exception e) {
//                // Handle any exceptions that occurred while updating the database
//                response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
//                response.getWriter().write("{\"error\": \"An error occurred while updating the quantity in the database\"}");
//            }
//        }
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
