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
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import Model.User;
import Model.SendEmail;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Sown
 */
@WebServlet(name = "RegisterController", urlPatterns = {"/register"})
public class RegisterController extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

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
        request.getRequestDispatcher("view/register.jsp").forward(request, response);
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
        String user = request.getParameter("user");
        String email = request.getParameter("email");
        String gender = request.getParameter("gender");
        String fullname = request.getParameter("fullname");
        String phone = request.getParameter("phone");

        
        RandomPass rp = new RandomPass();
        
            try {
                UserDAO accountDAO = new UserDAO();
                User.UserBuilder acc = accountDAO.checkAccountExisted(user);
                User.UserBuilder acc2 = accountDAO.checkEmailExisted(email);
                if (acc != null) { // signup enable
                    request.setAttribute("e", "Tài khoản đã tồn tại");
                    request.getRequestDispatcher("view/register.jsp").forward(request, response);
                }
                if (acc2 != null) {

                    request.setAttribute("e", "Email đã tồn tại");
                    request.getRequestDispatcher("view/register.jsp").forward(request, response);

                } else { // signup again
                    String newpass = String.valueOf(rp.newPass());
                    SendEmail SE = new SendEmail();
                    SE.sendEmailPass(email, newpass, user);
                    HttpSession session = request.getSession();
                    session.setAttribute("email", email);

                    
                accountDAO.signup(fullname, gender, email, user, newpass, phone);
                request.getRequestDispatcher("view/thankyou.jsp").forward(request, response);
                }
            } catch (Exception ex) {
                Logger.getLogger(RegisterController.class.getName()).log(Level.SEVERE, null, ex);
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
