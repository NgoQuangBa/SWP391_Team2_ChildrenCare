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
import jakarta.servlet.http.HttpSession;
import Model.User;
import Model.SendEmail;

/**
 *
 * @author Sown
 */
@WebServlet(name = "ResetController", urlPatterns = {"/reset"})
public class ResetController extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {

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
        request.getRequestDispatcher("view/reset.jsp").forward(request, response);
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
        String email = request.getParameter("email");
        UserDAO dao = new UserDAO();
        RandomPass rp = new RandomPass();
        try {
            User.UserBuilder acc = dao.checkEmailExisted(email);
            if (acc != null) {
                String otp = String.valueOf(rp.newOTP());
                SendEmail SE = new SendEmail();
                User.UserBuilder a = new UserDAO().getUserByEmail(email);
                String user = "";
                SE.sendEmailOTP(email, otp, user);
                HttpSession session = request.getSession();
                session.setAttribute("email", email);
                session.setAttribute("otp", otp);
                request.getRequestDispatcher("view/otp.jsp").forward(request, response);
//                dao.resetPassword(newpass, email);
//                request.getRequestDispatcher("thankyou.jsp").forward(request, response);

            } else {
                String text = "Email không tồn tại, vui lòng nhập lại!";
                request.setAttribute("e", text);
                request.getRequestDispatcher("view/reset.jsp").forward(request, response);
            }

        } catch (Exception ex) {
            Logger.getLogger(ResetController.class.getName()).log(Level.SEVERE, null, ex);
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
