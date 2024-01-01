/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.CustomerDAO;
import entity.Customer;
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
@WebServlet(name = "UpdateProfileServlet", urlPatterns = {"/updateProfile"})
public class UpdateProfileServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        
        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("id");
        
        String name = request.getParameter("name");
        String mobiPhone = request.getParameter("mobiPhone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        
        CustomerDAO dao = new CustomerDAO();
        
        Customer customer = dao.getCustomerById(id);

        customer.setName(name);
        customer.setMobiPhone(mobiPhone);
        customer.setEmail(email);
        customer.setAddress(address);
        
        session.setAttribute("name", name);
        session.setAttribute("email", email);
        session.setAttribute("mobiPhone", mobiPhone);
        session.setAttribute("address", address);
        
        dao.updateCustomer(customer);
        
        response.sendRedirect("profile.jsp");
    }

}
