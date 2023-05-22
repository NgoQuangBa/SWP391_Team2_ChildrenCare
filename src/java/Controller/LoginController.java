/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.UserDAO;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import Model.User;


/**
 *
 * @author LeHaNam
 */
@WebServlet(name = "LoginController", urlPatterns = {"/login"})
public class LoginController extends HttpServlet {
//        processRequest(request, response);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        Cookie[] cookies = request.getCookies();
//        String username = null;
//        String password = null;
//        for (Cookie cooky : cookies) { // kiểm tra cookie 
//            if (cooky.getName().equals("username")) {
//                username = cooky.getValue();
//            }
//            if (cooky.getName().equals("password")) {
//                password = cooky.getValue();
//            }
//            if (username != null && password != null) {
//                break;
//            }
//        }
//        if (username != null && password != null) {
//            User account = new UserDAO().login(username, password);
//            if (account != null) { //cookie hợp lệ
//                request.getSession().setAttribute("account", account);
//                response.sendRedirect("services");
//                return;
//            }
//        }
        request.getRequestDispatcher("/view/login.jsp").forward(request, response);
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

        HttpSession session = request.getSession();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean remember = request.getParameter("remember") != null;

        User account = new UserDAO().login(username, password);
        if (account == null) {
            request.setAttribute("error", "Tài khoản hoặc mật khẩu không đúng");
            request.getRequestDispatcher("/view/login.jsp").forward(request, response);
        } else {
            if (remember) {
                //lưu vào cookie
                Cookie uCookie = new Cookie("username", username);
                uCookie.setMaxAge(-1);
                Cookie pCookie = new Cookie("password", password);
                pCookie.setMaxAge(-1);
                response.addCookie(uCookie);
                response.addCookie(pCookie);
//                session.setMaxInactiveInterval(-1);
            }
            request.getSession().setAttribute("username", username);
            request.getSession().setAttribute("account", account);
            response.sendRedirect("home");
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
