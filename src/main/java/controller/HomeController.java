/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.CustomerDAO;
import entity.Customer;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import static util.SecurityUtil.md5;

/**
 *
 * @author admin
 */
@WebServlet(name = "HomeController", urlPatterns = {"/home"})
public class HomeController extends HttpServlet {

    CustomerDAO dao = new CustomerDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String password = request.getParameter("password");

        Customer a = dao.check(id, (password));

        HttpSession session = request.getSession();

        if (a != null) {

            if (a.getState().equals("Hoạt động")) {
                session.setAttribute("id", id);
                session.setAttribute("name", a.getName());
                session.setAttribute("email", a.getEmail());
                session.setAttribute("mobiPhone", a.getMobiPhone());
                session.setAttribute("address", a.getAddress());
                session.setAttribute("password", (password));

                if (id.equals("admin")) {
                    response.sendRedirect(request.getContextPath() + "/admin/GetAllProducts");
                } else {
                    response.sendRedirect("/ThePatternShop");
                }
            }
            else {
                String message1 = "Tài khoản tạm thời đang bị vô hiệu hóa !";
                request.setAttribute("ms1", message1);
                request.getRequestDispatcher("/login.jsp").forward(request, response);
            }
        } else {
            String message1 = "Thông tin không chính xác, vui lòng nhập lại !";
            request.setAttribute("ms1", message1);
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }

//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String id = request.getParameter("id");
//        String name = request.getParameter("name");
//        String password = request.getParameter("password");
//        String emailOrMobiPhone = request.getParameter("emailOrMobiPhone");
//
//        Customer a = dao.check(id, password);
//
//        HttpSession session = request.getSession();
//
//        String lowerId = id.toLowerCase();
//
//        if (lowerId.equals("admin")) {
//            String message2 = "Không thể đăng ký với tên đăng nhập này !";
//            request.setAttribute("ms", message2);
//            request.getRequestDispatcher("/register.jsp").forward(request, response);
//        } else {
//            if (a != null || dao.checkExisted(id)) {
//                String message2 = "Thông tin đã bị trùng, vui lòng nhập lại !";
//                System.out.println(message2);
//                request.setAttribute("ms", message2);
//                request.getRequestDispatcher("/register.jsp").forward(request, response);
//            } else {
//                Customer customer = new Customer(id, password, name, emailOrMobiPhone);
//                dao.insertCustomer(customer);
//                response.sendRedirect("login.jsp");
//            }
//        }
//    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String confirmpasswod = request.getParameter("confirmpassword");
        String emailOrMobiPhone = request.getParameter("emailOrMobiPhone");

        Customer a = dao.check(id, password);

        HttpSession session = request.getSession();

        String lowerId = id.toLowerCase();
        if (lowerId.equals("admin")) {
            String message2 = "Không thể đăng ký với tên đăng nhập này !";
            request.setAttribute("ms", message2);
            request.getRequestDispatcher("/register.jsp").forward(request, response);
        } else {
            String message2 = "";
            if (a != null || dao.checkExisted(id)) {
                message2 = "Tài khoản đăng ký đã bị trùng, vui lòng chọn tên khác !";
                System.out.println(message2);
                request.setAttribute("ms", message2);
                request.getRequestDispatcher("/register.jsp").forward(request, response);
            } else if (password.length() < 5) {
                message2 = "Độ dài mật khẩu tối thiểu là 5 !";
                System.out.println(message2);
                request.setAttribute("ms", message2);
                request.getRequestDispatcher("/register.jsp").forward(request, response);
            } else if (!password.equals(confirmpasswod)) {
                message2 = "Xác nhận mật khẩu không khớp, vui lòng nhập lại !";
                System.out.println(message2);
                request.setAttribute("ms", message2);
                request.getRequestDispatcher("/register.jsp").forward(request, response);
            } else {
                Customer customer = new Customer(id, (password), name, emailOrMobiPhone);
                dao.insertCustomer(customer);
                response.sendRedirect("login.jsp");
            }

        }

    }
}
