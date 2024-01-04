/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import dao.CustomerDAO;
import entity.Customer;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author admin
 */
@WebServlet(name = "DisableCustomer", urlPatterns = {"/admin/disable"})
public class DisableCustomer extends HttpServlet {

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
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String state = "";
        
        CustomerDAO dao = new CustomerDAO();
        Customer customer = dao.getCustomerById(id);
        
        if(customer.getState().equals("Vô hiệu hóa")){
            state = "Hoạt động";
        }
        else {
            state = "Vô hiệu hóa";
        }
        
        dao.updateState(id, state);
        response.sendRedirect(request.getContextPath() + "/admin/GetAllProducts");
    }

}
