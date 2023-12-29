/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package web.admin;

import dao.ProductDAO;
import entity.Product;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author admin
 */
@MultipartConfig(fileSizeThreshold=1024*1024*2,
                 maxFileSize=1024*1024*10,
                 maxRequestSize=1024*1024*50)
@WebServlet(name = "AddProduct", urlPatterns = {"/admin/AddProduct"})
public class AddProduct extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProductDAO productDAO;
    
    @Override
    public void init() {
        productDAO = new ProductDAO();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        addProduct(request, response);
        
    }
    
    private void addProduct(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String id = request.getParameter("Id");
        String name = request.getParameter("Name");
        String description = request.getParameter("Description");
        int cost = Integer.valueOf(request.getParameter("Cost"));
        
        Part filePart = request.getPart("imageInput"); 
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // Lấy tên file
        InputStream fileContent = filePart.getInputStream(); // Lấy nội dung file
        File uploads = new File("D:\\Ky VII\\Web\\ThePatternShop\\src\\main\\webapp\\assets\\images\\products\\newArrivals");
//        System.out.println("D:\\Ky VII\\Web\\ThePatternShop\\src\\main\\webapp\\assets\\images\\products\\newArrivals");
        File file = new File(uploads, fileName);
        
        File uploads2 = new File("D:\\Ky VII\\Web\\ThePatternShop\\src\\main\\webapp\\admin\\assets\\images\\products\\newArrivals");
        File file2 = new File(uploads2, fileName);
        
        Product newproduct = new Product(id, name, fileName, description, cost, true);
        productDAO.insertProduct(newproduct);
        
        ByteArrayOutputStream buffer = new ByteArrayOutputStream();
        byte[] bytes = new byte[1024];
        int len;
        while ((len = fileContent.read(bytes)) != -1) {
            buffer.write(bytes, 0, len);
        }
        byte[] data = buffer.toByteArray();

        try (InputStream input1 = new ByteArrayInputStream(data)) {
            Files.copy(input1, file.toPath());
        }

        try (InputStream input2 = new ByteArrayInputStream(data)) {
            Files.copy(input2, file2.toPath());
        }
        

        response.sendRedirect("/ThePatternShop/admin/GetAllProducts");
//        response.setContentType("text/html;charset=UTF-8");
//        try ( PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet AddProduct</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet AddProduct at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
    }
    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length()-1);
            }
        }
        return "";
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
