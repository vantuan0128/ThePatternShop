/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import dao.ProductDAO;
import dao.ProductDetailDAO;
import entity.Product;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author admin
 */
@WebServlet(name = "DeleteProduct", urlPatterns = {"/admin/DeleteProduct"})
public class DeleteProduct extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private static final long serialVersionUID = 1L;
    private ProductDAO productDAO;
    @Override
    public void init() {
        productDAO = new ProductDAO();
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
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
        String id = String.valueOf(request.getParameter("productID"));
        System.out.println(id);
        Product productTemp = productDAO.getProductById(id);
        String fileName = productTemp.getProductImage();
        File uploads = new File("D:\\Ky VII\\Web\\ThePatternShop\\src\\main\\webapp\\assets\\images\\products\\newArrivals" + "\\" + fileName);
        File uploads2 = new File("D:\\Ky VII\\Web\\ThePatternShop\\src\\main\\webapp\\admin\\assets\\images\\products\\newArrivals" + "\\" + fileName);
        if (uploads.delete()){
            System.out.println("File deleted 1 successfully");
        }
        else{
            System.out.println("ERR");
        }
        if (uploads2.delete()){
            System.out.println("File deleted 2 successfully");
        }
        else{
            System.out.println("ERR");
        }
        new ProductDetailDAO().deleteProductDetailByProductId(id);
        productDAO.deleteProduct(id);
        response.sendRedirect("/ThePatternShop/admin/GetAllProducts");
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
