/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.CartDAO;
import dao.OrderDAO;
import dao.ProductDetailDAO;
import entity.Cart;
import entity.Order;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import util.DateFormatUtil;
import util.RandomString;

/**
 *
 * @author admin
 */
@WebServlet(name = "PaymentServlet", urlPatterns = {"/payment"})
public class PaymentServlet extends HttpServlet {

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
//        response.setContentType("text/html;charset=UTF-8");
//        try ( PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet PaymentServlet</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet PaymentServlet at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
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
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("id");
        List<Cart> cartOrder = (List<Cart>) session.getAttribute("cartOrder");
        if (cartOrder == null){
            System.out.println("ERR");
            return;
        }
        int orderTotal = (int) session.getAttribute("orderTotal");
        String name = request.getParameter("name");
        String mobiPhone = request.getParameter("mobiPhone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String state = "Đang Giao";
        String note = request.getParameter("note");
        String paymentMethod = request.getParameter("TypeMethod");
        String orderId = RandomString.getAlphaNumericString(16);
        
        String createdDate = DateFormatUtil.Format(LocalDateTime.now());
        String deliveryDate = DateFormatUtil.Format(LocalDateTime.now().plusDays(3));
        for (int i = 0; i < cartOrder.size(); ++i){
            Order ord = new Order(orderId, id, "Staff001", cartOrder.get(i).getProductDetailId(), createdDate, address, state, paymentMethod, note, deliveryDate, orderTotal);
            String productDetailId = cartOrder.get(i).getProductDetailId();
            new OrderDAO().insertOrder(ord);
            int count = cartOrder.get(i).getCount();
            int currentQuantity = new ProductDetailDAO().getQuantityByProductDetailId(productDetailId);
            new ProductDetailDAO().updateProductDetailQuantity(productDetailId, currentQuantity - count);
            new CartDAO().deleteFromCart(id, productDetailId);
        }
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PaymentServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PaymentServlet at " + request.getContextPath() + "</h1>");
            out.println("<h1>" + " " + id + " " + "AA" + "</h1>");
            out.println(name);
            out.println(mobiPhone);
            out.println(address);
            out.println(note);
            out.println(email);
            out.println(paymentMethod);
            out.println(createdDate);
            out.println(deliveryDate);
            out.println("</body>");
            out.println("</html>");
        }
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
